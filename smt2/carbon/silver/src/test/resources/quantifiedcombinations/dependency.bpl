// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:14:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/dependency.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/dependency-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_47: Ref, f_43: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_47, f_43] }
  Heap[o_47, $allocated] ==> Heap[Heap[o_47, f_43], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref, f_32: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, f_32] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_28, f_32) ==> Heap[o_28, f_32] == ExhaleHeap[o_28, f_32]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23), ExhaleHeap[null, PredicateMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> Heap[null, PredicateMaskField(pm_f_23)] == ExhaleHeap[null, PredicateMaskField(pm_f_23)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, PredicateMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23), ExhaleHeap[null, WandMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> Heap[null, WandMaskField(pm_f_23)] == ExhaleHeap[null, WandMaskField(pm_f_23)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, WandMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_28, $allocated] ==> ExhaleHeap[o_28, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_47: Ref, f_51: (Field A B), v: B ::
  { Heap[o_47, f_51:=v] }
  succHeap(Heap, Heap[o_47, f_51:=v])
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
function  neverTriggered2(x_5: Ref): bool;
function  neverTriggered3(x_8_1: Ref): bool;
function  neverTriggered4(x_3: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_7: Ref): bool;
function  neverTriggered7(x_12_2: Ref): bool;
function  neverTriggered8(x_1: Ref): bool;
function  neverTriggered9(x_9_2: Ref): bool;
function  neverTriggered10(x_14_1: Ref): bool;
function  neverTriggered11(x_1: Ref): bool;
function  neverTriggered12(x_3: Ref): bool;
function  neverTriggered13(x_6: Ref): bool;
function  neverTriggered14(x_8_1: Ref): bool;
function  neverTriggered15(x_10_1: Ref): bool;
function  neverTriggered16(x_11_1: Ref): bool;
function  neverTriggered17(x_1: Ref): bool;
function  neverTriggered18(x_3: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_3: Ref): bool;
function  neverTriggered21(x_9_2: Ref): bool;
function  neverTriggered22(x_11_1: Ref): bool;
function  neverTriggered23(x_16_1: Ref): bool;
function  neverTriggered24(x_17_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(x_2_1: Ref): Ref;
function  invRecv6(x_8_1_1: Ref): Ref;
function  invRecv7(x_13_1: Ref): Ref;
function  invRecv8(x_2_1: Ref): Ref;
function  invRecv9(x_10_1_1: Ref): Ref;
function  invRecv10(x_15_1: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(i: int): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(i_1: int): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(i_2_1: int): Ref;
function  invRecv17(recv: Ref): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(x_4_1_1: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(x_12_1: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(x_18_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(x_2_1: Ref): bool;
function  qpRange6(x_8_1_1: Ref): bool;
function  qpRange7(x_13_1: Ref): bool;
function  qpRange8(x_2_1: Ref): bool;
function  qpRange9(x_10_1_1: Ref): bool;
function  qpRange10(x_15_1: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(i: int): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(i_1: int): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(i_2_1: int): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(x_4_1_1: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(x_12_1: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(x_18_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: get_val
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
const unique vals_1: Field NormalField (Seq int);
axiom !IsPredicateField(vals_1);
axiom !IsWandField(vals_1);

// ==================================================
// Translation of function get_val
// ==================================================

// Uninterpreted function definitions
function  get_val(Heap: HeapType, xs: (Seq Ref), i: int): Ref;
function  get_val'(Heap: HeapType, xs: (Seq Ref), i: int): Ref;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { get_val(Heap, xs, i) }
  get_val(Heap, xs, i) == get_val'(Heap, xs, i) && dummyFunction(get_val#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { get_val'(Heap, xs, i) }
  dummyFunction(get_val#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), get_val(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < Seq#Length(xs) ==> get_val(Heap, xs, i) == Seq#Index(xs, i)
);

// Framing axioms
function  get_val#frame(frame: FrameType, xs: (Seq Ref), i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), get_val'(Heap, xs, i) }
  state(Heap, Mask) ==> get_val'(Heap, xs, i) == get_val#frame(EmptyFrame, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  get_val#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  get_val#triggerStateless(xs: (Seq Ref), i: int): Ref;

// Check contract well-formedness and postcondition
procedure get_val#definedness(xs: (Seq Ref), i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[i]
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (dependency.vpr@16.3--20.4) [102344]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (dependency.vpr@16.3--20.4) [102345]"}
        i < Seq#Length(xs);
  
  // -- Translate function body
    Result := Seq#Index(xs, i);
}

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
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate pred2
// ==================================================

type PredicateType_pred2;
function  pred2(i: int): Field PredicateType_pred2 FrameType;
function  pred2#sm(i: int): Field PredicateType_pred2 PMaskType;
axiom (forall i: int ::
  { PredicateMaskField(pred2(i)) }
  PredicateMaskField(pred2(i)) == pred2#sm(i)
);
axiom (forall i: int ::
  { pred2(i) }
  IsPredicateField(pred2(i))
);
axiom (forall i: int ::
  { pred2(i) }
  getPredWandId(pred2(i)) == 1
);
function  pred2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall i: int, i2_1: int ::
  { pred2(i), pred2(i2_1) }
  pred2(i) == pred2(i2_1) ==> i == i2_1
);
axiom (forall i: int, i2_1: int ::
  { pred2#sm(i), pred2#sm(i2_1) }
  pred2#sm(i) == pred2#sm(i2_1) ==> i == i2_1
);

axiom (forall Heap: HeapType, i: int ::
  { pred2#trigger(Heap, pred2(i)) }
  pred2#everUsed(pred2(i))
);

procedure pred2#definedness(i: int) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of pred2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume i > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_10: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_11: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_9_2: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@23.12--23.59) [102346]"}
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_10)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@23.12--23.59) [102347]"}
            HasDirectPerm(Mask, x_10, f_7);
        }
        assume false;
      }
    assume (forall x_3: Ref ::
      { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
      Seq#Contains(xs, x_3) ==> Heap[x_3, f_7] > 0
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@24.11--24.58) [102348]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> qpRange2(x_5) && invRecv2(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> x_5 != null
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_11)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@24.11--24.58) [102349]"}
            HasDirectPerm(PostMask, x_11, f_7);
        }
        assume false;
      }
    assume (forall x_7: Ref ::
      { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
      Seq#Contains(xs, x_7) ==> PostHeap[x_7, f_7] > 0
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@24.11--24.58) [102350]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered3(x_8_1), neverTriggered3(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access x.f (dependency.vpr@24.11--24.58) [102351]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> qpRange3(x_8_1) && invRecv3(x_8_1) == x_8_1
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
    if (*) {
      if (Seq#Contains(xs, x_9_2)) {
        assert {:msg "  Postcondition of m1 might not hold. Assertion x.f > 0 might not hold. (dependency.vpr@24.11--24.58) [102352]"}
          Heap[x_9_2, f_7] > 0;
      }
      assume false;
    }
    assume (forall x_10_1_1: Ref ::
      { Seq#ContainsTrigger(xs, x_10_1_1) } { Seq#Contains(xs, x_10_1_1) }
      Seq#Contains(xs, x_10_1_1) ==> Heap[x_10_1_1, f_7] > 0
    );
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
  var x_38: Ref;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_38)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@30.12--30.59) [102353]"}
            HasDirectPerm(Mask, x_38, f_7);
        }
        assume false;
      }
    assume (forall x_1: Ref ::
      { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
      Seq#Contains(xs, x_1) ==> Heap[x_1, f_7] > 0
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@30.12--30.59) [102354]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange4(x_3) && invRecv4(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method m3_a
// ==================================================

procedure m3_a(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_18: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_13: Ref;
  var x_14_1: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@35.12--35.82) [102355]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered5(x_1), neverTriggered5(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv5(x_1) == x_1 && qpRange5(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv5(x_2_1) }
        (Seq#Contains(xs, invRecv5(x_2_1)) && NoPerm < FullPerm) && qpRange5(x_2_1) ==> invRecv5(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv5(x_2_1)) && NoPerm < FullPerm) && qpRange5(x_2_1) ==> (NoPerm < FullPerm ==> invRecv5(x_2_1) == x_2_1) && QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv5(x_2_1)) && NoPerm < FullPerm) && qpRange5(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
      if (*) {
        if (Seq#Contains(xs, x_18)) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_18));
          assume UnfoldingHeap[null, pred_3(x_18)] == FrameFragment(UnfoldingHeap[x_18, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@35.12--35.82) [102356]"}
              perm <= UnfoldingMask[null, pred_3(x_18)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_18):=UnfoldingMask[null, pred_3(x_18)] - perm];
          perm := FullPerm;
          assume x_18 != null;
          UnfoldingMask := UnfoldingMask[x_18, f_7:=UnfoldingMask[x_18, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x_18):=Heap[null, pred#sm(x_18)][x_18, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume state(Heap, Mask);
    assume Seq#Contains(xs, y);
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
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@37.11--37.80) [102357]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered6(x_7), neverTriggered6(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
      );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[null, pred_3(x_7)] } { PostMask[null, pred_3(x_7)] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> invRecv6(x_7) == x_7 && qpRange6(x_7)
      );
      assume (forall x_8_1_1: Ref ::
        { invRecv6(x_8_1_1) }
        (Seq#Contains(xs, invRecv6(x_8_1_1)) && NoPerm < FullPerm) && qpRange6(x_8_1_1) ==> invRecv6(x_8_1_1) == x_8_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, pred_3(x_8_1_1)] }
        (Seq#Contains(xs, invRecv6(x_8_1_1)) && NoPerm < FullPerm) && qpRange6(x_8_1_1) ==> (NoPerm < FullPerm ==> invRecv6(x_8_1_1) == x_8_1_1) && QPMask[null, pred_3(x_8_1_1)] == PostMask[null, pred_3(x_8_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, pred_3(x_8_1_1)] }
        !((Seq#Contains(xs, invRecv6(x_8_1_1)) && NoPerm < FullPerm) && qpRange6(x_8_1_1)) ==> QPMask[null, pred_3(x_8_1_1)] == PostMask[null, pred_3(x_8_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
      if (*) {
        if (Seq#Contains(xs, x_13)) {
          UnfoldingHeap := PostHeap;
          UnfoldingMask := PostMask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_13));
          assume UnfoldingHeap[null, pred_3(x_13)] == FrameFragment(UnfoldingHeap[x_13, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@37.11--37.80) [102358]"}
              perm <= UnfoldingMask[null, pred_3(x_13)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_13):=UnfoldingMask[null, pred_3(x_13)] - perm];
          perm := FullPerm;
          assume x_13 != null;
          UnfoldingMask := UnfoldingMask[x_13, f_7:=UnfoldingMask[x_13, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            PostHeap := PostHeap[null, pred#sm(x_13):=PostHeap[null, pred#sm(x_13)][x_13, f_7:=true]];
            assume state(PostHeap, PostMask);
        }
        assume false;
      }
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
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@37.11--37.80) [102359]"}
        (forall x_12_2: Ref, x_12_3: Ref ::
        { neverTriggered7(x_12_2), neverTriggered7(x_12_3) }
        (((x_12_2 != x_12_3 && Seq#Contains(xs, x_12_2)) && Seq#Contains(xs, x_12_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_12_2 != x_12_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_a might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@37.11--37.80) [102360]"}
        (forall x_12_2: Ref ::
        { Heap[null, pred_3(x_12_2)] } { Mask[null, pred_3(x_12_2)] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) ==> Mask[null, pred_3(x_12_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_12_2: Ref ::
        { Heap[null, pred_3(x_12_2)] } { Mask[null, pred_3(x_12_2)] } { Seq#ContainsTrigger(xs, x_12_2) } { Seq#Contains(xs, x_12_2) }
        Seq#Contains(xs, x_12_2) && NoPerm < FullPerm ==> invRecv7(x_12_2) == x_12_2 && qpRange7(x_12_2)
      );
      assume (forall x_13_1: Ref ::
        { invRecv7(x_13_1) }
        (Seq#Contains(xs, invRecv7(x_13_1)) && NoPerm < FullPerm) && qpRange7(x_13_1) ==> invRecv7(x_13_1) == x_13_1
      );
    
    // -- assume permission updates
      assume (forall x_13_1: Ref ::
        { QPMask[null, pred_3(x_13_1)] }
        (Seq#Contains(xs, invRecv7(x_13_1)) && NoPerm < FullPerm) && qpRange7(x_13_1) ==> invRecv7(x_13_1) == x_13_1 && QPMask[null, pred_3(x_13_1)] == Mask[null, pred_3(x_13_1)] - FullPerm
      );
      assume (forall x_13_1: Ref ::
        { QPMask[null, pred_3(x_13_1)] }
        !((Seq#Contains(xs, invRecv7(x_13_1)) && NoPerm < FullPerm) && qpRange7(x_13_1)) ==> QPMask[null, pred_3(x_13_1)] == Mask[null, pred_3(x_13_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(xs, x_14_1)) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_14_1));
          assume UnfoldingHeap[null, pred_3(x_14_1)] == FrameFragment(UnfoldingHeap[x_14_1, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Postcondition of m3_a might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@37.11--37.80) [102361]"}
              perm <= UnfoldingMask[null, pred_3(x_14_1)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_14_1):=UnfoldingMask[null, pred_3(x_14_1)] - perm];
          perm := FullPerm;
          assume x_14_1 != null;
          UnfoldingMask := UnfoldingMask[x_14_1, f_7:=UnfoldingMask[x_14_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume false;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3_b
// ==================================================

procedure m3_b(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_25: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_15: Ref;
  var x_12_2: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@41.12--41.83) [102362]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered8(x_1), neverTriggered8(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv8(x_1) == x_1 && qpRange8(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv8(x_2_1) }
        (Seq#Contains(xs, invRecv8(x_2_1)) && NoPerm < FullPerm) && qpRange8(x_2_1) ==> invRecv8(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv8(x_2_1)) && NoPerm < FullPerm) && qpRange8(x_2_1) ==> (NoPerm < FullPerm ==> invRecv8(x_2_1) == x_2_1) && QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv8(x_2_1)) && NoPerm < FullPerm) && qpRange8(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == Mask[null, pred_3(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
      if (*) {
        if (Seq#Contains(xs, x_25)) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_25));
          assume UnfoldingHeap[null, pred_3(x_25)] == FrameFragment(UnfoldingHeap[x_25, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@41.12--41.83) [102363]"}
              perm <= UnfoldingMask[null, pred_3(x_25)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_25):=UnfoldingMask[null, pred_3(x_25)] - perm];
          perm := FullPerm;
          assume x_25 != null;
          UnfoldingMask := UnfoldingMask[x_25, f_7:=UnfoldingMask[x_25, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x_25):=Heap[null, pred#sm(x_25)][x_25, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume state(Heap, Mask);
    assume Seq#Contains(xs, y);
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
      if (*) {
        if (Seq#Contains(xs, x_15)) {
          UnfoldingHeap := PostHeap;
          UnfoldingMask := PostMask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_15));
          assume UnfoldingHeap[null, pred_3(x_15)] == FrameFragment(UnfoldingHeap[x_15, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@44.11--44.82) [102364]"}
              perm <= UnfoldingMask[null, pred_3(x_15)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_15):=UnfoldingMask[null, pred_3(x_15)] - perm];
          perm := FullPerm;
          assume x_15 != null;
          UnfoldingMask := UnfoldingMask[x_15, f_7:=UnfoldingMask[x_15, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            PostHeap := PostHeap[null, pred#sm(x_15):=PostHeap[null, pred#sm(x_15)][x_15, f_7:=true]];
            assume state(PostHeap, PostMask);
        }
        assume false;
      }
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@44.11--44.82) [102365]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered9(x_9_2), neverTriggered9(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[null, pred_3(x_9_2)] } { PostMask[null, pred_3(x_9_2)] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> invRecv9(x_9_2) == x_9_2 && qpRange9(x_9_2)
      );
      assume (forall x_10_1_1: Ref ::
        { invRecv9(x_10_1_1) }
        (Seq#Contains(xs, invRecv9(x_10_1_1)) && NoPerm < FullPerm) && qpRange9(x_10_1_1) ==> invRecv9(x_10_1_1) == x_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        (Seq#Contains(xs, invRecv9(x_10_1_1)) && NoPerm < FullPerm) && qpRange9(x_10_1_1) ==> (NoPerm < FullPerm ==> invRecv9(x_10_1_1) == x_10_1_1) && QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_10_1_1: Ref ::
        { QPMask[null, pred_3(x_10_1_1)] }
        !((Seq#Contains(xs, invRecv9(x_10_1_1)) && NoPerm < FullPerm) && qpRange9(x_10_1_1)) ==> QPMask[null, pred_3(x_10_1_1)] == PostMask[null, pred_3(x_10_1_1)]
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
    if (*) {
      if (Seq#Contains(xs, x_12_2)) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_12_2));
          assume UnfoldingHeap[null, pred_3(x_12_2)] == FrameFragment(UnfoldingHeap[x_12_2, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Postcondition of m3_b might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@44.11--44.82) [102366]"}
              perm <= UnfoldingMask[null, pred_3(x_12_2)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_12_2):=UnfoldingMask[null, pred_3(x_12_2)] - perm];
          perm := FullPerm;
          assume x_12_2 != null;
          UnfoldingMask := UnfoldingMask[x_12_2, f_7:=UnfoldingMask[x_12_2, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume false;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@44.11--44.82) [102367]"}
        (forall x_14_1: Ref, x_14_2: Ref ::
        { neverTriggered10(x_14_1), neverTriggered10(x_14_2) }
        (((x_14_1 != x_14_2 && Seq#Contains(xs, x_14_1)) && Seq#Contains(xs, x_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_14_1 != x_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3_b might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@44.11--44.82) [102368]"}
        (forall x_14_1: Ref ::
        { Heap[null, pred_3(x_14_1)] } { Mask[null, pred_3(x_14_1)] } { Seq#ContainsTrigger(xs, x_14_1) } { Seq#Contains(xs, x_14_1) }
        Seq#Contains(xs, x_14_1) ==> Mask[null, pred_3(x_14_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_14_1: Ref ::
        { Heap[null, pred_3(x_14_1)] } { Mask[null, pred_3(x_14_1)] } { Seq#ContainsTrigger(xs, x_14_1) } { Seq#Contains(xs, x_14_1) }
        Seq#Contains(xs, x_14_1) && NoPerm < FullPerm ==> invRecv10(x_14_1) == x_14_1 && qpRange10(x_14_1)
      );
      assume (forall x_15_1: Ref ::
        { invRecv10(x_15_1) }
        (Seq#Contains(xs, invRecv10(x_15_1)) && NoPerm < FullPerm) && qpRange10(x_15_1) ==> invRecv10(x_15_1) == x_15_1
      );
    
    // -- assume permission updates
      assume (forall x_15_1: Ref ::
        { QPMask[null, pred_3(x_15_1)] }
        (Seq#Contains(xs, invRecv10(x_15_1)) && NoPerm < FullPerm) && qpRange10(x_15_1) ==> invRecv10(x_15_1) == x_15_1 && QPMask[null, pred_3(x_15_1)] == Mask[null, pred_3(x_15_1)] - FullPerm
      );
      assume (forall x_15_1: Ref ::
        { QPMask[null, pred_3(x_15_1)] }
        !((Seq#Contains(xs, invRecv10(x_15_1)) && NoPerm < FullPerm) && qpRange10(x_15_1)) ==> QPMask[null, pred_3(x_15_1)] == Mask[null, pred_3(x_15_1)]
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
// Translation of method m4
// ==================================================

procedure m4(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ix_25: Ref;
  var jx_25: Ref;
  var x_26: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ix_8: Ref;
  var jx_8: Ref;
  var x_27: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ix_4_1: Ref;
  var jx_4_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@48.12--48.48) [102369]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange11(x_1) && invRecv11(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(xs, invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Ref, jx: Ref :: { (ix in xs), (jx in xs) } (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f)
      if (*) {
        if (Seq#Contains(xs, ix_25) && (Seq#Contains(xs, jx_25) && ix_25 != jx_25)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ix.f (dependency.vpr@49.12--49.88) [102370]"}
            HasDirectPerm(Mask, ix_25, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access jx.f (dependency.vpr@49.12--49.88) [102371]"}
            HasDirectPerm(Mask, jx_25, f_7);
        }
        assume false;
      }
    assume (forall ix_1: Ref, jx_1: Ref ::
      { Seq#ContainsTrigger(xs, ix_1), Seq#ContainsTrigger(xs, jx_1) } { Seq#ContainsTrigger(xs, ix_1), Seq#Contains(xs, jx_1) } { Seq#Contains(xs, ix_1), Seq#ContainsTrigger(xs, jx_1) } { Seq#Contains(xs, ix_1), Seq#Contains(xs, jx_1) }
      Seq#Contains(xs, ix_1) && (Seq#Contains(xs, jx_1) && ix_1 != jx_1) ==> Heap[ix_1, f_7] != Heap[jx_1, f_7]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(x.f), write))
      if (*) {
        if (Seq#Contains(xs, x_26)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@50.12--50.55) [102372]"}
            HasDirectPerm(Mask, x_26, f_7);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred2(x.f), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred2(x.f) might not be injective. (dependency.vpr@50.12--50.55) [102373]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered12(x_3), neverTriggered12(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_3, f_7] != Heap[x_3_1, f_7]
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[null, pred2(Heap[x_3, f_7])] } { Mask[null, pred2(Heap[x_3, f_7])] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv12(Heap[x_3, f_7]) == x_3 && qpRange12(Heap[x_3, f_7])
      );
      assume (forall i: int ::
        { invRecv12(i) }
        (Seq#Contains(xs, invRecv12(i)) && NoPerm < FullPerm) && qpRange12(i) ==> Heap[invRecv12(i), f_7] == i
      );
    
    // -- Define updated permissions
      assume (forall i: int ::
        { QPMask[null, pred2(i)] }
        (Seq#Contains(xs, invRecv12(i)) && NoPerm < FullPerm) && qpRange12(i) ==> (NoPerm < FullPerm ==> Heap[invRecv12(i), f_7] == i) && QPMask[null, pred2(i)] == Mask[null, pred2(i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall i: int ::
        { QPMask[null, pred2(i)] }
        !((Seq#Contains(xs, invRecv12(i)) && NoPerm < FullPerm) && qpRange12(i)) ==> QPMask[null, pred2(i)] == Mask[null, pred2(i)]
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@51.11--51.47) [102374]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[x_6, f_7] } { QPMask[x_6, f_7] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> qpRange13(x_6) && invRecv13(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { PostHeap[x_6, f_7] } { QPMask[x_6, f_7] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> invRecv13(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall ix: Ref, jx: Ref :: { (ix in xs), (jx in xs) } (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f)
      if (*) {
        if (Seq#Contains(xs, ix_8) && (Seq#Contains(xs, jx_8) && ix_8 != jx_8)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ix.f (dependency.vpr@52.11--52.87) [102375]"}
            HasDirectPerm(PostMask, ix_8, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access jx.f (dependency.vpr@52.11--52.87) [102376]"}
            HasDirectPerm(PostMask, jx_8, f_7);
        }
        assume false;
      }
    assume (forall ix_3: Ref, jx_3: Ref ::
      { Seq#ContainsTrigger(xs, ix_3), Seq#ContainsTrigger(xs, jx_3) } { Seq#ContainsTrigger(xs, ix_3), Seq#Contains(xs, jx_3) } { Seq#Contains(xs, ix_3), Seq#ContainsTrigger(xs, jx_3) } { Seq#Contains(xs, ix_3), Seq#Contains(xs, jx_3) }
      Seq#Contains(xs, ix_3) && (Seq#Contains(xs, jx_3) && ix_3 != jx_3) ==> PostHeap[ix_3, f_7] != PostHeap[jx_3, f_7]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(x.f), write))
      if (*) {
        if (Seq#Contains(xs, x_27)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@53.11--53.54) [102377]"}
            HasDirectPerm(PostMask, x_27, f_7);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred2(x.f), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred2(x.f) might not be injective. (dependency.vpr@53.11--53.54) [102378]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered14(x_8_1), neverTriggered14(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_8_1, f_7] != PostHeap[x_8_2, f_7]
      );
    
    // -- Define Inverse Function
      assume (forall x_8_1: Ref ::
        { PostHeap[null, pred2(PostHeap[x_8_1, f_7])] } { PostMask[null, pred2(PostHeap[x_8_1, f_7])] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> invRecv14(PostHeap[x_8_1, f_7]) == x_8_1 && qpRange14(PostHeap[x_8_1, f_7])
      );
      assume (forall i_1: int ::
        { invRecv14(i_1) }
        (Seq#Contains(xs, invRecv14(i_1)) && NoPerm < FullPerm) && qpRange14(i_1) ==> PostHeap[invRecv14(i_1), f_7] == i_1
      );
    
    // -- Define updated permissions
      assume (forall i_1: int ::
        { QPMask[null, pred2(i_1)] }
        (Seq#Contains(xs, invRecv14(i_1)) && NoPerm < FullPerm) && qpRange14(i_1) ==> (NoPerm < FullPerm ==> PostHeap[invRecv14(i_1), f_7] == i_1) && QPMask[null, pred2(i_1)] == PostMask[null, pred2(i_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall i_1: int ::
        { QPMask[null, pred2(i_1)] }
        !((Seq#Contains(xs, invRecv14(i_1)) && NoPerm < FullPerm) && qpRange14(i_1)) ==> QPMask[null, pred2(i_1)] == PostMask[null, pred2(i_1)]
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@51.11--51.47) [102379]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered15(x_10_1), neverTriggered15(x_10_2) }
        (((x_10_1 != x_10_2 && Seq#Contains(xs, x_10_1)) && Seq#Contains(xs, x_10_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_10_1 != x_10_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access x.f (dependency.vpr@51.11--51.47) [102380]"}
        (forall x_10_1: Ref ::
        { Heap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) ==> Mask[x_10_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_10_1: Ref ::
        { Heap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { Seq#ContainsTrigger(xs, x_10_1) } { Seq#Contains(xs, x_10_1) }
        Seq#Contains(xs, x_10_1) && NoPerm < FullPerm ==> qpRange15(x_10_1) && invRecv15(x_10_1) == x_10_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        Seq#Contains(xs, invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(xs, ix_4_1) && (Seq#Contains(xs, jx_4_1) && ix_4_1 != jx_4_1)) {
        assert {:msg "  Postcondition of m4 might not hold. Assertion ix.f != jx.f might not hold. (dependency.vpr@52.11--52.87) [102381]"}
          Heap[ix_4_1, f_7] != Heap[jx_4_1, f_7];
      }
      assume false;
    }
    assume (forall ix_5_1: Ref, jx_5_1: Ref ::
      { Seq#ContainsTrigger(xs, ix_5_1), Seq#ContainsTrigger(xs, jx_5_1) } { Seq#ContainsTrigger(xs, ix_5_1), Seq#Contains(xs, jx_5_1) } { Seq#Contains(xs, ix_5_1), Seq#ContainsTrigger(xs, jx_5_1) } { Seq#Contains(xs, ix_5_1), Seq#Contains(xs, jx_5_1) }
      Seq#Contains(xs, ix_5_1) && (Seq#Contains(xs, jx_5_1) && ix_5_1 != jx_5_1) ==> Heap[ix_5_1, f_7] != Heap[jx_5_1, f_7]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred2(x.f), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred2(x.f) might not be injective. (dependency.vpr@53.11--53.54) [102382]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered16(x_11_1), neverTriggered16(x_11_2) }
        (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_11_1, f_7] != Heap[x_11_2, f_7]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access pred2(x.f) (dependency.vpr@53.11--53.54) [102383]"}
        (forall x_11_1: Ref ::
        { Heap[null, pred2(Heap[x_11_1, f_7])] } { Mask[null, pred2(Heap[x_11_1, f_7])] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> Mask[null, pred2(Heap[x_11_1, f_7])] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred2(x.f), write)
      assume (forall x_11_1: Ref ::
        { Heap[null, pred2(Heap[x_11_1, f_7])] } { Mask[null, pred2(Heap[x_11_1, f_7])] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> invRecv16(Heap[x_11_1, f_7]) == x_11_1 && qpRange16(Heap[x_11_1, f_7])
      );
      assume (forall i_2_1: int ::
        { invRecv16(i_2_1) }
        (Seq#Contains(xs, invRecv16(i_2_1)) && NoPerm < FullPerm) && qpRange16(i_2_1) ==> Heap[invRecv16(i_2_1), f_7] == i_2_1
      );
    
    // -- assume permission updates
      assume (forall i_2_1: int ::
        { QPMask[null, pred2(i_2_1)] }
        (Seq#Contains(xs, invRecv16(i_2_1)) && NoPerm < FullPerm) && qpRange16(i_2_1) ==> Heap[invRecv16(i_2_1), f_7] == i_2_1 && QPMask[null, pred2(i_2_1)] == Mask[null, pred2(i_2_1)] - FullPerm
      );
      assume (forall i_2_1: int ::
        { QPMask[null, pred2(i_2_1)] }
        !((Seq#Contains(xs, invRecv16(i_2_1)) && NoPerm < FullPerm) && qpRange16(i_2_1)) ==> QPMask[null, pred2(i_2_1)] == Mask[null, pred2(i_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
  var x_28: Ref;
  var QPMask: MaskType;
  var x_39: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && x.g > 0 ==> acc(x.f, write))
      if (*) {
        if (Seq#Contains(xs, x_28)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (dependency.vpr@58.12--58.88) [102384]"}
            HasDirectPerm(Mask, x_28, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (dependency.vpr@58.12--58.88) [102385]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (Seq#Contains(xs, x_1) && Heap[x_1, g] > 0)) && (Seq#Contains(xs, x_1_1) && Heap[x_1_1, g] > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        (Seq#Contains(xs, x_1) && Heap[x_1, g] > 0) && NoPerm < FullPerm ==> qpRange17(x_1) && invRecv17(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        ((Seq#Contains(xs, invRecv17(o_4)) && Heap[invRecv17(o_4), g] > 0) && NoPerm < FullPerm) && qpRange17(o_4) ==> invRecv17(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && Heap[x_1, g] > 0 ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((Seq#Contains(xs, invRecv17(o_4)) && Heap[invRecv17(o_4), g] > 0) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> invRecv17(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((Seq#Contains(xs, invRecv17(o_4)) && Heap[invRecv17(o_4), g] > 0) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && x.f > 0 ==> acc(x.g, write))
      if (*) {
        if (Seq#Contains(xs, x_39)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (dependency.vpr@58.12--58.88) [102386]"}
            HasDirectPerm(Mask, x_39, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (dependency.vpr@58.12--58.88) [102387]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (Seq#Contains(xs, x_3) && Heap[x_3, f_7] > 0)) && (Seq#Contains(xs, x_3_1) && Heap[x_3_1, f_7] > 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        (Seq#Contains(xs, x_3) && Heap[x_3, f_7] > 0) && NoPerm < FullPerm ==> qpRange18(x_3) && invRecv18(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        ((Seq#Contains(xs, invRecv18(o_4)) && Heap[invRecv18(o_4), f_7] > 0) && NoPerm < FullPerm) && qpRange18(o_4) ==> invRecv18(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && Heap[x_3, f_7] > 0 ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((Seq#Contains(xs, invRecv18(o_4)) && Heap[invRecv18(o_4), f_7] > 0) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> invRecv18(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((Seq#Contains(xs, invRecv18(o_4)) && Heap[invRecv18(o_4), f_7] > 0) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
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
// Translation of method m6
// ==================================================

procedure m6(xs: (Seq Ref), b1: int, b2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_40: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_41: Ref;
  var x_19_1: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (dependency.vpr@62.12--62.151) [102388]"}
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
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@62.12--62.151) [102389]"}
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0))
      if (*) {
        if (Seq#Contains(xs, x_40)) {
          if (b1 > 0) {
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume pred#trigger(UnfoldingHeap, pred_3(x_40));
            assume UnfoldingHeap[null, pred_3(x_40)] == FrameFragment(UnfoldingHeap[x_40, f_7]);
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@62.12--62.151) [102390]"}
                perm <= UnfoldingMask[null, pred_3(x_40)];
            }
            UnfoldingMask := UnfoldingMask[null, pred_3(x_40):=UnfoldingMask[null, pred_3(x_40)] - perm];
            perm := FullPerm;
            assume x_40 != null;
            UnfoldingMask := UnfoldingMask[x_40, f_7:=UnfoldingMask[x_40, f_7] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              Heap := Heap[null, pred#sm(x_40):=Heap[null, pred#sm(x_40)][x_40, f_7:=true]];
              assume state(Heap, Mask);
          }
          if (b1 > 0) {
            if (b2 > 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (dependency.vpr@62.12--62.151) [102391]"}
                HasDirectPerm(Mask, x_40, g);
            }
          }
        }
        assume false;
      }
    assume (forall x_7: Ref ::
      { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
      Seq#Contains(xs, x_7) ==> b1 > 0 ==> b2 > 0 ==> Heap[x_7, g] > 0
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (dependency.vpr@63.11--63.150) [102392]"}
      (forall x_9_2: Ref, x_9_3: Ref ::
      
      (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
    );
    
    // -- Define Inverse Function
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> qpRange21(x_9_2) && invRecv21(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (Seq#Contains(xs, invRecv21(o_4)) && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_9_2: Ref ::
        { PostHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) ==> x_9_2 != null
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
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@63.11--63.150) [102393]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered22(x_11_1), neverTriggered22(x_11_2) }
        (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
      );
    
    // -- Define Inverse Function
      assume (forall x_11_1: Ref ::
        { PostHeap[null, pred_3(x_11_1)] } { PostMask[null, pred_3(x_11_1)] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> invRecv22(x_11_1) == x_11_1 && qpRange22(x_11_1)
      );
      assume (forall x_12_1: Ref ::
        { invRecv22(x_12_1) }
        (Seq#Contains(xs, invRecv22(x_12_1)) && NoPerm < FullPerm) && qpRange22(x_12_1) ==> invRecv22(x_12_1) == x_12_1
      );
    
    // -- Define updated permissions
      assume (forall x_12_1: Ref ::
        { QPMask[null, pred_3(x_12_1)] }
        (Seq#Contains(xs, invRecv22(x_12_1)) && NoPerm < FullPerm) && qpRange22(x_12_1) ==> (NoPerm < FullPerm ==> invRecv22(x_12_1) == x_12_1) && QPMask[null, pred_3(x_12_1)] == PostMask[null, pred_3(x_12_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_12_1: Ref ::
        { QPMask[null, pred_3(x_12_1)] }
        !((Seq#Contains(xs, invRecv22(x_12_1)) && NoPerm < FullPerm) && qpRange22(x_12_1)) ==> QPMask[null, pred_3(x_12_1)] == PostMask[null, pred_3(x_12_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0))
      if (*) {
        if (Seq#Contains(xs, x_41)) {
          if (b1 > 0) {
            UnfoldingHeap := PostHeap;
            UnfoldingMask := PostMask;
            assume pred#trigger(UnfoldingHeap, pred_3(x_41));
            assume UnfoldingHeap[null, pred_3(x_41)] == FrameFragment(UnfoldingHeap[x_41, f_7]);
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access pred(x) (dependency.vpr@63.11--63.150) [102394]"}
                perm <= UnfoldingMask[null, pred_3(x_41)];
            }
            UnfoldingMask := UnfoldingMask[null, pred_3(x_41):=UnfoldingMask[null, pred_3(x_41)] - perm];
            perm := FullPerm;
            assume x_41 != null;
            UnfoldingMask := UnfoldingMask[x_41, f_7:=UnfoldingMask[x_41, f_7] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              PostHeap := PostHeap[null, pred#sm(x_41):=PostHeap[null, pred#sm(x_41)][x_41, f_7:=true]];
              assume state(PostHeap, PostMask);
          }
          if (b1 > 0) {
            if (b2 > 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (dependency.vpr@63.11--63.150) [102395]"}
                HasDirectPerm(PostMask, x_41, g);
            }
          }
        }
        assume false;
      }
    assume (forall x_15_2: Ref ::
      { Seq#ContainsTrigger(xs, x_15_2) } { Seq#Contains(xs, x_15_2) }
      Seq#Contains(xs, x_15_2) ==> b1 > 0 ==> b2 > 0 ==> PostHeap[x_15_2, g] > 0
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
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (dependency.vpr@63.11--63.150) [102396]"}
        (forall x_16_1: Ref, x_16_2: Ref ::
        { neverTriggered23(x_16_1), neverTriggered23(x_16_2) }
        (((x_16_1 != x_16_2 && Seq#Contains(xs, x_16_1)) && Seq#Contains(xs, x_16_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_16_1 != x_16_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access x.g (dependency.vpr@63.11--63.150) [102397]"}
        (forall x_16_1: Ref ::
        { Heap[x_16_1, g] } { QPMask[x_16_1, g] } { Seq#ContainsTrigger(xs, x_16_1) } { Seq#Contains(xs, x_16_1) }
        Seq#Contains(xs, x_16_1) ==> Mask[x_16_1, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_16_1: Ref ::
        { Heap[x_16_1, g] } { QPMask[x_16_1, g] } { Seq#ContainsTrigger(xs, x_16_1) } { Seq#Contains(xs, x_16_1) }
        Seq#Contains(xs, x_16_1) && NoPerm < FullPerm ==> qpRange23(x_16_1) && invRecv23(x_16_1) == x_16_1
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
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (dependency.vpr@63.11--63.150) [102398]"}
        (forall x_17_1: Ref, x_17_2: Ref ::
        { neverTriggered24(x_17_1), neverTriggered24(x_17_2) }
        (((x_17_1 != x_17_2 && Seq#Contains(xs, x_17_1)) && Seq#Contains(xs, x_17_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_17_1 != x_17_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@63.11--63.150) [102399]"}
        (forall x_17_1: Ref ::
        { Heap[null, pred_3(x_17_1)] } { Mask[null, pred_3(x_17_1)] } { Seq#ContainsTrigger(xs, x_17_1) } { Seq#Contains(xs, x_17_1) }
        Seq#Contains(xs, x_17_1) ==> Mask[null, pred_3(x_17_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_17_1: Ref ::
        { Heap[null, pred_3(x_17_1)] } { Mask[null, pred_3(x_17_1)] } { Seq#ContainsTrigger(xs, x_17_1) } { Seq#Contains(xs, x_17_1) }
        Seq#Contains(xs, x_17_1) && NoPerm < FullPerm ==> invRecv24(x_17_1) == x_17_1 && qpRange24(x_17_1)
      );
      assume (forall x_18_1: Ref ::
        { invRecv24(x_18_1) }
        (Seq#Contains(xs, invRecv24(x_18_1)) && NoPerm < FullPerm) && qpRange24(x_18_1) ==> invRecv24(x_18_1) == x_18_1
      );
    
    // -- assume permission updates
      assume (forall x_18_1: Ref ::
        { QPMask[null, pred_3(x_18_1)] }
        (Seq#Contains(xs, invRecv24(x_18_1)) && NoPerm < FullPerm) && qpRange24(x_18_1) ==> invRecv24(x_18_1) == x_18_1 && QPMask[null, pred_3(x_18_1)] == Mask[null, pred_3(x_18_1)] - FullPerm
      );
      assume (forall x_18_1: Ref ::
        { QPMask[null, pred_3(x_18_1)] }
        !((Seq#Contains(xs, invRecv24(x_18_1)) && NoPerm < FullPerm) && qpRange24(x_18_1)) ==> QPMask[null, pred_3(x_18_1)] == Mask[null, pred_3(x_18_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(xs, x_19_1)) {
        if (b1 > 0) {
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume pred#trigger(UnfoldingHeap, pred_3(x_19_1));
            assume UnfoldingHeap[null, pred_3(x_19_1)] == FrameFragment(UnfoldingHeap[x_19_1, f_7]);
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access pred(x) (dependency.vpr@63.11--63.150) [102400]"}
                perm <= UnfoldingMask[null, pred_3(x_19_1)];
            }
            UnfoldingMask := UnfoldingMask[null, pred_3(x_19_1):=UnfoldingMask[null, pred_3(x_19_1)] - perm];
            perm := FullPerm;
            assume x_19_1 != null;
            UnfoldingMask := UnfoldingMask[x_19_1, f_7:=UnfoldingMask[x_19_1, f_7] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (b1 > 0) {
          if (b2 > 0) {
            assert {:msg "  Postcondition of m6 might not hold. Assertion x.g > 0 might not hold. (dependency.vpr@63.11--63.150) [102401]"}
              Heap[x_19_1, g] > 0;
          }
        }
      }
      assume false;
    }
    assume (forall x_20_1: Ref ::
      { Seq#ContainsTrigger(xs, x_20_1) } { Seq#Contains(xs, x_20_1) }
      Seq#Contains(xs, x_20_1) ==> b1 > 0 ==> b2 > 0 ==> Heap[x_20_1, g] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}