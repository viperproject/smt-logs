// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:08:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/fwd.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/fwd-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_31: Ref, f_36: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_31, f_36] }
  Heap[o_31, $allocated] ==> Heap[Heap[o_31, f_36], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_9: Ref, f_13: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_9, f_13] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_9, f_13) ==> Heap[o_9, f_13] == ExhaleHeap[o_9, f_13]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27), ExhaleHeap[null, PredicateMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> Heap[null, PredicateMaskField(pm_f_27)] == ExhaleHeap[null, PredicateMaskField(pm_f_27)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_27, f_13] }
    Heap[null, PredicateMaskField(pm_f_27)][o2_27, f_13] ==> Heap[o2_27, f_13] == ExhaleHeap[o2_27, f_13]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27), ExhaleHeap[null, WandMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> Heap[null, WandMaskField(pm_f_27)] == ExhaleHeap[null, WandMaskField(pm_f_27)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_27, f_13] }
    Heap[null, WandMaskField(pm_f_27)][o2_27, f_13] ==> Heap[o2_27, f_13] == ExhaleHeap[o2_27, f_13]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_9: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_9, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_9, $allocated] ==> ExhaleHeap[o_9, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_31: Ref, f_54: (Field A B), v: B ::
  { Heap[o_31, f_54:=v] }
  succHeap(Heap, Heap[o_31, f_54:=v])
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
function  neverTriggered4(i_13_1: int): bool;
function  neverTriggered5(i_15: int): bool;
function  neverTriggered6(i_17: int): bool;
function  neverTriggered7(i_19: int): bool;
function  neverTriggered8(i_20_1: int): bool;
function  neverTriggered9(i_21: int): bool;
function  neverTriggered10(i_22_1: int): bool;
function  neverTriggered11(i_23: int): bool;
function  neverTriggered12(i_3: int): bool;
function  neverTriggered13(i_7_1: int): bool;
function  neverTriggered14(i_11_1: int): bool;
function  neverTriggered15(i_13_1: int): bool;
function  neverTriggered16(i_15: int): bool;
function  neverTriggered17(i_17: int): bool;
function  neverTriggered18(i_18_1: int): bool;
function  neverTriggered19(i_19: int): bool;
function  neverTriggered20(i_20_1: int): bool;
function  neverTriggered21(i_23: int): bool;
function  neverTriggered22(i_26: int): bool;
function  neverTriggered23(i_29_1: int): bool;
function  neverTriggered24(i_30_2: int): bool;
function  neverTriggered25(i_31_1: int): bool;
function  neverTriggered26(i_32_2: int): bool;
function  neverTriggered27(i_33_1: int): bool;
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

const unique Integer_value: Field NormalField int;
axiom !IsPredicateField(Integer_value);
axiom !IsWandField(Integer_value);

// ==================================================
// Translation of method loop_main_54
// ==================================================

procedure loop_main_54(this: Ref, len: int, ar: (Seq Ref), br: (Seq Ref), cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var i_7: int;
  var j_7: int;
  var i_8: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_9: int;
  var i_10: int;
  var i_11: int;
  var i_12: int;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 < len;
    assume state(Heap, Mask);
    assume Seq#Length(ar) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { ar[i], ar[j] } 0 <= i && (i < |ar| && (0 <= j && (j < |ar| && i != j))) ==> ar[i] != ar[j])
      if (*) {
        if (0 <= i_14 && (i_14 < Seq#Length(ar) && (0 <= j_5 && (j_5 < Seq#Length(ar) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@14.12--14.106) [49130]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@14.12--14.106) [49131]"}
            i_14 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (fwd.vpr@14.12--14.106) [49132]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (fwd.vpr@14.12--14.106) [49133]"}
            j_5 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(ar, i_1), Seq#Index(ar, j_1) }
      0 <= i_1 && (i_1 < Seq#Length(ar) && (0 <= j_1 && (j_1 < Seq#Length(ar) && i_1 != j_1))) ==> Seq#Index(ar, i_1) != Seq#Index(ar, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@15.13--15.81) [49134]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@15.13--15.81) [49135]"}
            i_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@15.13--15.81) [49136]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, len), i_3)) && Seq#Contains(Seq#Range(0, len), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_3) != Seq#Index(ar, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(ar, i_3)) && invRecv1(Seq#Index(ar, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) ==> Seq#Index(ar, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv1(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(br) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { br[i], br[j] } 0 <= i && (i < |br| && (0 <= j && (j < |br| && i != j))) ==> br[i] != br[j])
      if (*) {
        if (0 <= i_4 && (i_4 < Seq#Length(br) && (0 <= j_6 && (j_6 < Seq#Length(br) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@17.12--17.106) [49137]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@17.12--17.106) [49138]"}
            i_4 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (fwd.vpr@17.12--17.106) [49139]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (fwd.vpr@17.12--17.106) [49140]"}
            j_6 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(br, i_5), Seq#Index(br, j_3_1) }
      0 <= i_5 && (i_5 < Seq#Length(br) && (0 <= j_3_1 && (j_3_1 < Seq#Length(br) && i_5 != j_3_1))) ==> Seq#Index(br, i_5) != Seq#Index(br, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_6)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@18.13--18.81) [49141]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@18.13--18.81) [49142]"}
            i_6 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@18.13--18.81) [49143]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, len), i_7_1)) && Seq#Contains(Seq#Range(0, len), i_7_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_7_1) != Seq#Index(br, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
        Seq#Contains(Seq#Range(0, len), i_7_1) && NoPerm < 1 / 2 ==> qpRange2(Seq#Index(br, i_7_1)) && invRecv2(Seq#Index(br, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> Seq#Index(br, invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@18.13--18.81) [49144]"}
      (forall i_7_1: int ::
      { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
      Seq#Contains(Seq#Range(0, len), i_7_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
        Seq#Contains(Seq#Range(0, len), i_7_1) && 1 / 2 > NoPerm ==> Seq#Index(br, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv2(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { cr[i], cr[j] } 0 <= i && (i < |cr| && (0 <= j && (j < |cr| && i != j))) ==> cr[i] != cr[j])
      if (*) {
        if (0 <= i_7 && (i_7 < Seq#Length(cr) && (0 <= j_7 && (j_7 < Seq#Length(cr) && i_7 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@20.12--20.106) [49145]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@20.12--20.106) [49146]"}
            i_7 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (fwd.vpr@20.12--20.106) [49147]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (fwd.vpr@20.12--20.106) [49148]"}
            j_7 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5_1: int ::
      { Seq#Index(cr, i_9_1), Seq#Index(cr, j_5_1) }
      0 <= i_9_1 && (i_9_1 < Seq#Length(cr) && (0 <= j_5_1 && (j_5_1 < Seq#Length(cr) && i_9_1 != j_5_1))) ==> Seq#Index(cr, i_9_1) != Seq#Index(cr, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_8)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@21.13--21.81) [49149]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@21.13--21.81) [49150]"}
            i_8 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@21.13--21.81) [49151]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, len), i_11_1)) && Seq#Contains(Seq#Range(0, len), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(cr, i_11_1)) && invRecv3(Seq#Index(cr, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(cr, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) ==> Seq#Index(cr, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv3(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume Seq#Length(ar) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_9)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@23.12--23.80) [49152]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@23.12--23.80) [49153]"}
            i_9 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@23.12--23.80) [49154]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, len), i_13_1)) && Seq#Contains(Seq#Range(0, len), i_13_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_13_1) != Seq#Index(ar, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) && NoPerm < 1 / 2 ==> qpRange4(Seq#Index(ar, i_13_1)) && invRecv4(Seq#Index(ar, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < 1 / 2) && qpRange4(o_4) ==> Seq#Index(ar, invRecv4(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@23.12--23.80) [49155]"}
      (forall i_13_1: int ::
      { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
      Seq#Contains(Seq#Range(0, len), i_13_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < 1 / 2) && qpRange4(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv4(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < 1 / 2) && qpRange4(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@25.12--25.80) [49156]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@25.12--25.80) [49157]"}
            i_10 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@25.12--25.80) [49158]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, len), i_15)) && Seq#Contains(Seq#Range(0, len), i_15_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_15) != Seq#Index(br, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && NoPerm < 1 / 2 ==> qpRange5(Seq#Index(br, i_15)) && invRecv5(Seq#Index(br, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < 1 / 2) && qpRange5(o_4) ==> Seq#Index(br, invRecv5(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@25.12--25.80) [49159]"}
      (forall i_15: int ::
      { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
      Seq#Contains(Seq#Range(0, len), i_15) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && 1 / 2 > NoPerm ==> Seq#Index(br, i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < 1 / 2) && qpRange5(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv5(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < 1 / 2) && qpRange5(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_11)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@27.12--27.80) [49160]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@27.12--27.80) [49161]"}
            i_11 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@27.12--27.80) [49162]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && Seq#Contains(Seq#Range(0, len), i_17)) && Seq#Contains(Seq#Range(0, len), i_17_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_17) != Seq#Index(cr, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) && NoPerm < FullPerm ==> qpRange6(Seq#Index(cr, i_17)) && invRecv6(Seq#Index(cr, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(cr, invRecv6(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) ==> Seq#Index(cr, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv6(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } (i in [1 - 1..len - 1)) ==> acc(ar[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len - 1), i_12)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@28.12--28.88) [49163]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@28.12--28.88) [49164]"}
            i_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@28.12--28.88) [49165]"}
      (forall i_19: int, i_19_1: int ::
      
      (((i_19 != i_19_1 && Seq#Contains(Seq#Range(0, len - 1), i_19)) && Seq#Contains(Seq#Range(0, len - 1), i_19_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_19) != Seq#Index(ar, i_19_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_19: int ::
        { Seq#Index(ar, i_19) } { Seq#Index(ar, i_19) }
        Seq#Contains(Seq#Range(0, len - 1), i_19) && NoPerm < 1 / 2 ==> qpRange7(Seq#Index(ar, i_19)) && invRecv7(Seq#Index(ar, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(Seq#Range(0, len - 1), invRecv7(o_4)) && NoPerm < 1 / 2) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@28.12--28.88) [49166]"}
      (forall i_19: int ::
      { Seq#Index(ar, i_19) } { Seq#Index(ar, i_19) }
      Seq#Contains(Seq#Range(0, len - 1), i_19) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_19: int ::
        { Seq#Index(ar, i_19) } { Seq#Index(ar, i_19) }
        Seq#Contains(Seq#Range(0, len - 1), i_19) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_19) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len - 1), invRecv7(o_4)) && NoPerm < 1 / 2) && qpRange7(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv7(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len - 1), invRecv7(o_4)) && NoPerm < 1 / 2) && qpRange7(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[|ar| - 1].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[|ar| - 1] into ar might be negative. (fwd.vpr@29.11--29.49) [49167]"}
        Seq#Length(ar) - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[|ar| - 1] into ar might exceed sequence length. (fwd.vpr@29.11--29.49) [49168]"}
        Seq#Length(ar) - 1 < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@29.11--29.49) [49169]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, Seq#Length(ar) - 1) != null;
    PostMask := PostMask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value:=PostMask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- fwd.vpr@31.3--31.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |ar| == len might not hold. (fwd.vpr@22.11--22.22) [49170]"}
      Seq#Length(ar) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of loop_main_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@23.12--23.80) [49171]"}
        (forall i_20_1: int ::
        { Seq#Index(ar, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(ar, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) && dummyFunction(Heap[Seq#Index(ar, i_20_1), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@23.12--23.80) [49172]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered8(i_20_1), neverTriggered8(i_20_2) }
        (((i_20_1 != i_20_2 && Seq#Contains(Seq#Range(0, len), i_20_1)) && Seq#Contains(Seq#Range(0, len), i_20_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_20_1) != Seq#Index(ar, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@23.12--23.80) [49173]"}
        (forall i_20_1: int ::
        { Seq#Index(ar, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(ar, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) ==> Mask[Seq#Index(ar, i_20_1), Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_20_1: int ::
        { Seq#Index(ar, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(ar, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) && NoPerm < 1 / 2 ==> qpRange8(Seq#Index(ar, i_20_1)) && invRecv8(Seq#Index(ar, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < 1 / 2 && qpRange8(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |br| == len might not hold. (fwd.vpr@24.11--24.22) [49174]"}
      Seq#Length(br) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of loop_main_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@25.12--25.80) [49175]"}
        (forall i_21: int ::
        { Seq#Index(br, i_21) } { Seq#ContainsTrigger(Seq#Range(0, len), i_21) } { Seq#Contains(Seq#Range(0, len), i_21) } { Seq#Index(br, i_21) }
        Seq#Contains(Seq#Range(0, len), i_21) && dummyFunction(Heap[Seq#Index(br, i_21), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@25.12--25.80) [49176]"}
        (forall i_21: int, i_21_1: int ::
        { neverTriggered9(i_21), neverTriggered9(i_21_1) }
        (((i_21 != i_21_1 && Seq#Contains(Seq#Range(0, len), i_21)) && Seq#Contains(Seq#Range(0, len), i_21_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_21) != Seq#Index(br, i_21_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access br[i].Integer_value (fwd.vpr@25.12--25.80) [49177]"}
        (forall i_21: int ::
        { Seq#Index(br, i_21) } { Seq#ContainsTrigger(Seq#Range(0, len), i_21) } { Seq#Contains(Seq#Range(0, len), i_21) } { Seq#Index(br, i_21) }
        Seq#Contains(Seq#Range(0, len), i_21) ==> Mask[Seq#Index(br, i_21), Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver br[i]
      assume (forall i_21: int ::
        { Seq#Index(br, i_21) } { Seq#ContainsTrigger(Seq#Range(0, len), i_21) } { Seq#Contains(Seq#Range(0, len), i_21) } { Seq#Index(br, i_21) }
        Seq#Contains(Seq#Range(0, len), i_21) && NoPerm < 1 / 2 ==> qpRange9(Seq#Index(br, i_21)) && invRecv9(Seq#Index(br, i_21)) == i_21
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv9(o_4)) && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> Seq#Index(br, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv9(o_4)) && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> Seq#Index(br, invRecv9(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv9(o_4)) && (NoPerm < 1 / 2 && qpRange9(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |cr| == len might not hold. (fwd.vpr@26.11--26.22) [49178]"}
      Seq#Length(cr) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@27.12--27.80) [49179]"}
        (forall i_22_1: int, i_22_2: int ::
        { neverTriggered10(i_22_1), neverTriggered10(i_22_2) }
        (((i_22_1 != i_22_2 && Seq#Contains(Seq#Range(0, len), i_22_1)) && Seq#Contains(Seq#Range(0, len), i_22_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_22_1) != Seq#Index(cr, i_22_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (fwd.vpr@27.12--27.80) [49180]"}
        (forall i_22_1: int ::
        { Seq#Index(cr, i_22_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_22_1) } { Seq#Contains(Seq#Range(0, len), i_22_1) } { Seq#Index(cr, i_22_1) }
        Seq#Contains(Seq#Range(0, len), i_22_1) ==> Mask[Seq#Index(cr, i_22_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver cr[i]
      assume (forall i_22_1: int ::
        { Seq#Index(cr, i_22_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_22_1) } { Seq#Contains(Seq#Range(0, len), i_22_1) } { Seq#Index(cr, i_22_1) }
        Seq#Contains(Seq#Range(0, len), i_22_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(cr, i_22_1)) && invRecv10(Seq#Index(cr, i_22_1)) == i_22_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(cr, invRecv10(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(cr, invRecv10(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of loop_main_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@28.12--28.88) [49181]"}
        (forall i_23: int ::
        { Seq#Index(ar, i_23) } { Seq#Index(ar, i_23) }
        Seq#Contains(Seq#Range(0, len - 1), i_23) && dummyFunction(Heap[Seq#Index(ar, i_23), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@28.12--28.88) [49182]"}
        (forall i_23: int, i_23_1: int ::
        { neverTriggered11(i_23), neverTriggered11(i_23_1) }
        (((i_23 != i_23_1 && Seq#Contains(Seq#Range(0, len - 1), i_23)) && Seq#Contains(Seq#Range(0, len - 1), i_23_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_23) != Seq#Index(ar, i_23_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@28.12--28.88) [49183]"}
        (forall i_23: int ::
        { Seq#Index(ar, i_23) } { Seq#Index(ar, i_23) }
        Seq#Contains(Seq#Range(0, len - 1), i_23) ==> Mask[Seq#Index(ar, i_23), Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_23: int ::
        { Seq#Index(ar, i_23) } { Seq#Index(ar, i_23) }
        Seq#Contains(Seq#Range(0, len - 1), i_23) && NoPerm < 1 / 2 ==> qpRange11(Seq#Index(ar, i_23)) && invRecv11(Seq#Index(ar, i_23)) == i_23
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        Seq#Contains(Seq#Range(0, len - 1), invRecv11(o_4)) && (NoPerm < 1 / 2 && qpRange11(o_4)) ==> Seq#Index(ar, invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len - 1), invRecv11(o_4)) && (NoPerm < 1 / 2 && qpRange11(o_4)) ==> Seq#Index(ar, invRecv11(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len - 1), invRecv11(o_4)) && (NoPerm < 1 / 2 && qpRange11(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := 1 / 2;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@29.11--29.49) [49184]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access ar[|ar| - 1].Integer_value (fwd.vpr@29.11--29.49) [49185]"}
        perm <= Mask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value];
    }
    Mask := Mask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value:=Mask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method send_body_100
// ==================================================

procedure send_body_100(this: Ref, ar: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@36.12--36.43) [49186]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@36.12--36.43) [49187]"}
        i < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@36.12--36.43) [49188]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i) != null;
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- fwd.vpr@38.3--38.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method recv_body_102
// ==================================================

procedure recv_body_102(this: Ref, ar: (Seq Ref), i: int) returns ()
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
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 < i;
    assume i - 1 < Seq#Length(ar);
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
    
    // -- Check definedness of acc(ar[i - 1].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (fwd.vpr@43.11--43.46) [49189]"}
        i - 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (fwd.vpr@43.11--43.46) [49190]"}
        i - 1 < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@43.11--43.46) [49191]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i - 1) != null;
    PostMask := PostMask[Seq#Index(ar, i - 1), Integer_value:=PostMask[Seq#Index(ar, i - 1), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- fwd.vpr@45.3--45.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Postcondition of recv_body_102 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@43.11--43.46) [49192]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of recv_body_102 might not hold. There might be insufficient permission to access ar[i - 1].Integer_value (fwd.vpr@43.11--43.46) [49193]"}
        perm <= Mask[Seq#Index(ar, i - 1), Integer_value];
    }
    Mask := Mask[Seq#Index(ar, i - 1), Integer_value:=Mask[Seq#Index(ar, i - 1), Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method loop_body_54
// ==================================================

procedure loop_body_54(this: Ref, len: int, ar: (Seq Ref), br: (Seq Ref), i: int, cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < len;
    assume state(Heap, Mask);
    assume Seq#Length(ar) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@51.12--51.43) [49194]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@51.12--51.43) [49195]"}
        i < Seq#Length(ar);
    perm := FullPerm;
    assume Seq#Index(ar, i) != null;
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(br) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(br[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@53.12--53.43) [49196]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@53.12--53.43) [49197]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@53.12--53.43) [49198]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    Mask := Mask[Seq#Index(br, i), Integer_value:=Mask[Seq#Index(br, i), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(cr[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@55.12--55.43) [49199]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@55.12--55.43) [49200]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    Mask := Mask[Seq#Index(cr, i), Integer_value:=Mask[Seq#Index(cr, i), Integer_value] + perm];
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
    assume Seq#Length(ar) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@58.11--58.42) [49201]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@58.11--58.42) [49202]"}
        i < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@58.11--58.42) [49203]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i) != null;
    PostMask := PostMask[Seq#Index(ar, i), Integer_value:=PostMask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(br[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@60.11--60.42) [49204]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@60.11--60.42) [49205]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@60.11--60.42) [49206]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    PostMask := PostMask[Seq#Index(br, i), Integer_value:=PostMask[Seq#Index(br, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(cr[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@62.11--62.42) [49207]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@62.11--62.42) [49208]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    PostMask := PostMask[Seq#Index(cr, i), Integer_value:=PostMask[Seq#Index(cr, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      
      // -- Check definedness of acc(ar[i - 1].Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might be negative. (fwd.vpr@63.11--63.58) [49209]"}
          i - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i - 1] into ar might exceed sequence length. (fwd.vpr@63.11--63.58) [49210]"}
          i - 1 < Seq#Length(ar);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@63.11--63.58) [49211]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar, i - 1) != null;
      PostMask := PostMask[Seq#Index(ar, i - 1), Integer_value:=PostMask[Seq#Index(ar, i - 1), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (i == Seq#Length(ar) - 1) {
      
      // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@64.11--64.62) [49212]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@64.11--64.62) [49213]"}
          i < Seq#Length(ar);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@64.11--64.62) [49214]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar, i) != null;
      PostMask := PostMask[Seq#Index(ar, i), Integer_value:=PostMask[Seq#Index(ar, i), Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: ar[i].Integer_value := br[i].Integer_value + 1 -- fwd.vpr@66.3--66.49
    
    // -- Check definedness of ar[i]
      assert {:msg "  Assignment might fail. Index ar[i] into ar might be negative. (fwd.vpr@66.3--66.49) [49215]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index ar[i] into ar might exceed sequence length. (fwd.vpr@66.3--66.49) [49216]"}
        i < Seq#Length(ar);
    
    // -- Check definedness of br[i].Integer_value + 1
      assert {:msg "  Assignment might fail. Index br[i] into br might be negative. (fwd.vpr@66.3--66.49) [49217]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index br[i] into br might exceed sequence length. (fwd.vpr@66.3--66.49) [49218]"}
        i < Seq#Length(br);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access br[i].Integer_value (fwd.vpr@66.3--66.49) [49219]"}
        HasDirectPerm(Mask, Seq#Index(br, i), Integer_value);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@66.3--66.49) [49220]"}
      FullPerm == Mask[Seq#Index(ar, i), Integer_value];
    Heap := Heap[Seq#Index(ar, i), Integer_value:=Heap[Seq#Index(br, i), Integer_value] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- fwd.vpr@67.3--69.4
    if (i < len - 1) {
      
      // -- Translating statement: send_body_100(this, ar, i) -- fwd.vpr@68.5--68.31
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method send_body_100 might not hold. Assertion 0 <= i might not hold. (fwd.vpr@68.5--68.31) [49221]"}
            0 <= i;
          assert {:msg "  The precondition of method send_body_100 might not hold. Assertion i < |ar| might not hold. (fwd.vpr@68.5--68.31) [49222]"}
            i < Seq#Length(ar);
          perm := 1 / 2;
          assert {:msg "  The precondition of method send_body_100 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@68.5--68.31) [49223]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method send_body_100 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@68.5--68.31) [49224]"}
              perm <= Mask[Seq#Index(ar, i), Integer_value];
          }
          Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i > 0) -- fwd.vpr@70.3--73.4
    if (i > 0) {
      
      // -- Translating statement: recv_body_102(this, ar, i) -- fwd.vpr@71.5--71.31
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method recv_body_102 might not hold. Assertion 0 < i might not hold. (fwd.vpr@71.5--71.31) [49225]"}
            0 < i;
          assert {:msg "  The precondition of method recv_body_102 might not hold. Assertion i - 1 < |ar| might not hold. (fwd.vpr@71.5--71.31) [49226]"}
            i - 1 < Seq#Length(ar);
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (fwd.vpr@71.5--71.31) [49227]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(ar, i - 1) != null;
          Mask := Mask[Seq#Index(ar, i - 1), Integer_value:=Mask[Seq#Index(ar, i - 1), Integer_value] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: cr[i].Integer_value := ar[i - 1].Integer_value + 2 -- fwd.vpr@72.5--72.55
        
        // -- Check definedness of cr[i]
          assert {:msg "  Assignment might fail. Index cr[i] into cr might be negative. (fwd.vpr@72.5--72.55) [49228]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index cr[i] into cr might exceed sequence length. (fwd.vpr@72.5--72.55) [49229]"}
            i < Seq#Length(cr);
        
        // -- Check definedness of ar[i - 1].Integer_value + 2
          assert {:msg "  Assignment might fail. Index ar[i - 1] into ar might be negative. (fwd.vpr@72.5--72.55) [49230]"}
            i - 1 >= 0;
          assert {:msg "  Assignment might fail. Index ar[i - 1] into ar might exceed sequence length. (fwd.vpr@72.5--72.55) [49231]"}
            i - 1 < Seq#Length(ar);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[i - 1].Integer_value (fwd.vpr@72.5--72.55) [49232]"}
            HasDirectPerm(Mask, Seq#Index(ar, i - 1), Integer_value);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access cr[i].Integer_value (fwd.vpr@72.5--72.55) [49233]"}
          FullPerm == Mask[Seq#Index(cr, i), Integer_value];
        Heap := Heap[Seq#Index(cr, i), Integer_value:=Heap[Seq#Index(ar, i - 1), Integer_value] + 2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion 0 <= i might not hold. (fwd.vpr@56.11--56.32) [49234]"}
      0 <= i;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion i < len might not hold. (fwd.vpr@56.11--56.32) [49235]"}
      i < len;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |ar| == len might not hold. (fwd.vpr@57.11--57.22) [49236]"}
      Seq#Length(ar) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@58.11--58.42) [49237]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@58.11--58.42) [49238]"}
        perm <= Mask[Seq#Index(ar, i), Integer_value];
    }
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] - perm];
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |br| == len might not hold. (fwd.vpr@59.11--59.22) [49239]"}
      Seq#Length(br) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@60.11--60.42) [49240]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access br[i].Integer_value (fwd.vpr@60.11--60.42) [49241]"}
        perm <= Mask[Seq#Index(br, i), Integer_value];
    }
    Mask := Mask[Seq#Index(br, i), Integer_value:=Mask[Seq#Index(br, i), Integer_value] - perm];
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |cr| == len might not hold. (fwd.vpr@61.11--61.22) [49242]"}
      Seq#Length(cr) == len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (fwd.vpr@62.11--62.42) [49243]"}
        perm <= Mask[Seq#Index(cr, i), Integer_value];
    }
    Mask := Mask[Seq#Index(cr, i), Integer_value:=Mask[Seq#Index(cr, i), Integer_value] - perm];
    if (i > 0) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of loop_body_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@63.11--63.58) [49244]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access ar[i - 1].Integer_value (fwd.vpr@63.11--63.58) [49245]"}
          perm <= Mask[Seq#Index(ar, i - 1), Integer_value];
      }
      Mask := Mask[Seq#Index(ar, i - 1), Integer_value:=Mask[Seq#Index(ar, i - 1), Integer_value] - perm];
    }
    if (i == Seq#Length(ar) - 1) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of loop_body_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@64.11--64.62) [49246]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@64.11--64.62) [49247]"}
          perm <= Mask[Seq#Index(ar, i), Integer_value];
      }
      Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method zero_array
// ==================================================

procedure zero_array(this: Ref, ar: (Seq Ref), br: (Seq Ref), cr: (Seq Ref), len: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var i_16: int;
  var j_18: int;
  var i_18: int;
  var QPMask: MaskType;
  var i_13: int;
  var j_12: int;
  var i_20: int;
  var i_22: int;
  var j_14: int;
  var i_24: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_29: int;
  var i_30: int;
  var i_31: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i_21: int;
  var j_6_1: int;
  var i_24_1: int;
  var j_8: int;
  var i_27: int;
  var j_10_2: int;
  var ExhaleHeap: HeapType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 < len;
    assume state(Heap, Mask);
    assume Seq#Length(ar) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { ar[i], ar[j] } 0 <= i && (i < |ar| && (0 <= j && (j < |ar| && i != j))) ==> ar[i] != ar[j])
      if (*) {
        if (0 <= i_16 && (i_16 < Seq#Length(ar) && (0 <= j_18 && (j_18 < Seq#Length(ar) && i_16 != j_18)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@79.12--79.106) [49248]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@79.12--79.106) [49249]"}
            i_16 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (fwd.vpr@79.12--79.106) [49250]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (fwd.vpr@79.12--79.106) [49251]"}
            j_18 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(ar, i_1), Seq#Index(ar, j_1) }
      0 <= i_1 && (i_1 < Seq#Length(ar) && (0 <= j_1 && (j_1 < Seq#Length(ar) && i_1 != j_1))) ==> Seq#Index(ar, i_1) != Seq#Index(ar, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_18)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@80.13--80.81) [49252]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@80.13--80.81) [49253]"}
            i_18 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@80.13--80.81) [49254]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, len), i_3)) && Seq#Contains(Seq#Range(0, len), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_3) != Seq#Index(ar, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) && NoPerm < FullPerm ==> qpRange12(Seq#Index(ar, i_3)) && invRecv12(Seq#Index(ar, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(ar, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) ==> Seq#Index(ar, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv12(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(br) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { br[i], br[j] } 0 <= i && (i < |br| && (0 <= j && (j < |br| && i != j))) ==> br[i] != br[j])
      if (*) {
        if (0 <= i_13 && (i_13 < Seq#Length(br) && (0 <= j_12 && (j_12 < Seq#Length(br) && i_13 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@82.12--82.106) [49255]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@82.12--82.106) [49256]"}
            i_13 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (fwd.vpr@82.12--82.106) [49257]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (fwd.vpr@82.12--82.106) [49258]"}
            j_12 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(br, i_5), Seq#Index(br, j_3_1) }
      0 <= i_5 && (i_5 < Seq#Length(br) && (0 <= j_3_1 && (j_3_1 < Seq#Length(br) && i_5 != j_3_1))) ==> Seq#Index(br, i_5) != Seq#Index(br, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_20)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@83.13--83.81) [49259]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@83.13--83.81) [49260]"}
            i_20 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@83.13--83.81) [49261]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, len), i_7_1)) && Seq#Contains(Seq#Range(0, len), i_7_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_7_1) != Seq#Index(br, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
        Seq#Contains(Seq#Range(0, len), i_7_1) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(br, i_7_1)) && invRecv13(Seq#Index(br, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4) ==> Seq#Index(br, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@83.13--83.81) [49262]"}
      (forall i_7_1: int ::
      { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
      Seq#Contains(Seq#Range(0, len), i_7_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
        Seq#Contains(Seq#Range(0, len), i_7_1) && 1 / 2 > NoPerm ==> Seq#Index(br, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv13(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { cr[i], cr[j] } 0 <= i && (i < |cr| && (0 <= j && (j < |cr| && i != j))) ==> cr[i] != cr[j])
      if (*) {
        if (0 <= i_22 && (i_22 < Seq#Length(cr) && (0 <= j_14 && (j_14 < Seq#Length(cr) && i_22 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@85.12--85.106) [49263]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@85.12--85.106) [49264]"}
            i_22 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (fwd.vpr@85.12--85.106) [49265]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (fwd.vpr@85.12--85.106) [49266]"}
            j_14 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5_1: int ::
      { Seq#Index(cr, i_9_1), Seq#Index(cr, j_5_1) }
      0 <= i_9_1 && (i_9_1 < Seq#Length(cr) && (0 <= j_5_1 && (j_5_1 < Seq#Length(cr) && i_9_1 != j_5_1))) ==> Seq#Index(cr, i_9_1) != Seq#Index(cr, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_24)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@86.13--86.81) [49267]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@86.13--86.81) [49268]"}
            i_24 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@86.13--86.81) [49269]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, len), i_11_1)) && Seq#Contains(Seq#Range(0, len), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) && NoPerm < FullPerm ==> qpRange14(Seq#Index(cr, i_11_1)) && invRecv14(Seq#Index(cr, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(cr, invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) ==> Seq#Index(cr, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv14(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume Seq#Length(ar) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_29)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (fwd.vpr@88.12--88.80) [49270]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (fwd.vpr@88.12--88.80) [49271]"}
            i_29 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@88.12--88.80) [49272]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, len), i_13_1)) && Seq#Contains(Seq#Range(0, len), i_13_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_13_1) != Seq#Index(ar, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) && NoPerm < FullPerm ==> qpRange15(Seq#Index(ar, i_13_1)) && invRecv15(Seq#Index(ar, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(ar, invRecv15(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) ==> Seq#Index(ar, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv15(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_30)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (fwd.vpr@90.12--90.80) [49273]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (fwd.vpr@90.12--90.80) [49274]"}
            i_30 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@90.12--90.80) [49275]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, len), i_15)) && Seq#Contains(Seq#Range(0, len), i_15_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_15) != Seq#Index(br, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(br, i_15)) && invRecv16(Seq#Index(br, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < 1 / 2) && qpRange16(o_4) ==> Seq#Index(br, invRecv16(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (fwd.vpr@90.12--90.80) [49276]"}
      (forall i_15: int ::
      { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
      Seq#Contains(Seq#Range(0, len), i_15) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && 1 / 2 > NoPerm ==> Seq#Index(br, i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < 1 / 2) && qpRange16(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv16(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < 1 / 2) && qpRange16(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_31)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (fwd.vpr@92.12--92.80) [49277]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (fwd.vpr@92.12--92.80) [49278]"}
            i_31 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@92.12--92.80) [49279]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && Seq#Contains(Seq#Range(0, len), i_17)) && Seq#Contains(Seq#Range(0, len), i_17_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_17) != Seq#Index(cr, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) && NoPerm < FullPerm ==> qpRange17(Seq#Index(cr, i_17)) && invRecv17(Seq#Index(cr, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> Seq#Index(cr, invRecv17(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) ==> Seq#Index(cr, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv17(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert |ar| == len -- fwd.vpr@94.3--94.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |ar| == len might not hold. (fwd.vpr@94.10--94.21) [49280]"}
      Seq#Length(ar) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |br| == len -- fwd.vpr@95.3--95.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |br| == len might not hold. (fwd.vpr@95.10--95.21) [49281]"}
      Seq#Length(br) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |cr| == len -- fwd.vpr@96.3--96.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |cr| == len might not hold. (fwd.vpr@96.10--96.21) [49282]"}
      Seq#Length(cr) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: loop_main_54(this, len, ar, br, cr) -- fwd.vpr@97.3--97.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion 0 < len might not hold. (fwd.vpr@97.3--97.38) [49283]"}
        0 < len;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |ar| == len might not hold. (fwd.vpr@97.3--97.38) [49284]"}
        Seq#Length(ar) == len;
      if (*) {
        if (0 <= i_21 && (i_21 < Seq#Length(ar) && (0 <= j_6_1 && (j_6_1 < Seq#Length(ar) && i_21 != j_6_1)))) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion ar[i] != ar[j] might not hold. (fwd.vpr@97.3--97.38) [49285]"}
            Seq#Index(ar, i_21) != Seq#Index(ar, j_6_1);
        }
        assume false;
      }
      assume (forall i_22_1_1: int, j_7_1_1: int ::
        { Seq#Index(ar, i_22_1_1), Seq#Index(ar, j_7_1_1) }
        0 <= i_22_1_1 && (i_22_1_1 < Seq#Length(ar) && (0 <= j_7_1_1 && (j_7_1_1 < Seq#Length(ar) && i_22_1_1 != j_7_1_1))) ==> Seq#Index(ar, i_22_1_1) != Seq#Index(ar, j_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver ar[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49286]"}
          (forall i_23: int, i_23_1: int ::
          { neverTriggered21(i_23), neverTriggered21(i_23_1) }
          (((i_23 != i_23_1 && Seq#Contains(Seq#Range(0, len), i_23)) && Seq#Contains(Seq#Range(0, len), i_23_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_23) != Seq#Index(ar, i_23_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@97.3--97.38) [49287]"}
          (forall i_23: int ::
          { Seq#Index(ar, i_23) } { Seq#ContainsTrigger(Seq#Range(0, len), i_23) } { Seq#Contains(Seq#Range(0, len), i_23) } { Seq#Index(ar, i_23) }
          Seq#Contains(Seq#Range(0, len), i_23) ==> Mask[Seq#Index(ar, i_23), Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver ar[i]
        assume (forall i_23: int ::
          { Seq#Index(ar, i_23) } { Seq#ContainsTrigger(Seq#Range(0, len), i_23) } { Seq#Contains(Seq#Range(0, len), i_23) } { Seq#Index(ar, i_23) }
          Seq#Contains(Seq#Range(0, len), i_23) && NoPerm < FullPerm ==> qpRange21(Seq#Index(ar, i_23)) && invRecv21(Seq#Index(ar, i_23)) == i_23
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          Seq#Contains(Seq#Range(0, len), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(ar, invRecv21(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(0, len), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(ar, invRecv21(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |br| == len might not hold. (fwd.vpr@97.3--97.38) [49288]"}
        Seq#Length(br) == len;
      if (*) {
        if (0 <= i_24_1 && (i_24_1 < Seq#Length(br) && (0 <= j_8 && (j_8 < Seq#Length(br) && i_24_1 != j_8)))) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion br[i] != br[j] might not hold. (fwd.vpr@97.3--97.38) [49289]"}
            Seq#Index(br, i_24_1) != Seq#Index(br, j_8);
        }
        assume false;
      }
      assume (forall i_25_1: int, j_9_1_1: int ::
        { Seq#Index(br, i_25_1), Seq#Index(br, j_9_1_1) }
        0 <= i_25_1 && (i_25_1 < Seq#Length(br) && (0 <= j_9_1_1 && (j_9_1_1 < Seq#Length(br) && i_25_1 != j_9_1_1))) ==> Seq#Index(br, i_25_1) != Seq#Index(br, j_9_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method loop_main_54 might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@97.3--97.38) [49290]"}
          (forall i_26: int ::
          { Seq#Index(br, i_26) } { Seq#ContainsTrigger(Seq#Range(0, len), i_26) } { Seq#Contains(Seq#Range(0, len), i_26) } { Seq#Index(br, i_26) }
          Seq#Contains(Seq#Range(0, len), i_26) && dummyFunction(Heap[Seq#Index(br, i_26), Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver br[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49291]"}
          (forall i_26: int, i_26_1: int ::
          { neverTriggered22(i_26), neverTriggered22(i_26_1) }
          (((i_26 != i_26_1 && Seq#Contains(Seq#Range(0, len), i_26)) && Seq#Contains(Seq#Range(0, len), i_26_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_26) != Seq#Index(br, i_26_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access br[i].Integer_value (fwd.vpr@97.3--97.38) [49292]"}
          (forall i_26: int ::
          { Seq#Index(br, i_26) } { Seq#ContainsTrigger(Seq#Range(0, len), i_26) } { Seq#Contains(Seq#Range(0, len), i_26) } { Seq#Index(br, i_26) }
          Seq#Contains(Seq#Range(0, len), i_26) ==> Mask[Seq#Index(br, i_26), Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver br[i]
        assume (forall i_26: int ::
          { Seq#Index(br, i_26) } { Seq#ContainsTrigger(Seq#Range(0, len), i_26) } { Seq#Contains(Seq#Range(0, len), i_26) } { Seq#Index(br, i_26) }
          Seq#Contains(Seq#Range(0, len), i_26) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(br, i_26)) && invRecv22(Seq#Index(br, i_26)) == i_26
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          Seq#Contains(Seq#Range(0, len), invRecv22(o_4)) && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> Seq#Index(br, invRecv22(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(0, len), invRecv22(o_4)) && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> Seq#Index(br, invRecv22(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv22(o_4)) && (NoPerm < 1 / 2 && qpRange22(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |cr| == len might not hold. (fwd.vpr@97.3--97.38) [49293]"}
        Seq#Length(cr) == len;
      if (*) {
        if (0 <= i_27 && (i_27 < Seq#Length(cr) && (0 <= j_10_2 && (j_10_2 < Seq#Length(cr) && i_27 != j_10_2)))) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion cr[i] != cr[j] might not hold. (fwd.vpr@97.3--97.38) [49294]"}
            Seq#Index(cr, i_27) != Seq#Index(cr, j_10_2);
        }
        assume false;
      }
      assume (forall i_28_1_1: int, j_11_1: int ::
        { Seq#Index(cr, i_28_1_1), Seq#Index(cr, j_11_1) }
        0 <= i_28_1_1 && (i_28_1_1 < Seq#Length(cr) && (0 <= j_11_1 && (j_11_1 < Seq#Length(cr) && i_28_1_1 != j_11_1))) ==> Seq#Index(cr, i_28_1_1) != Seq#Index(cr, j_11_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver cr[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49295]"}
          (forall i_29_1: int, i_29_2: int ::
          { neverTriggered23(i_29_1), neverTriggered23(i_29_2) }
          (((i_29_1 != i_29_2 && Seq#Contains(Seq#Range(0, len), i_29_1)) && Seq#Contains(Seq#Range(0, len), i_29_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_29_1) != Seq#Index(cr, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (fwd.vpr@97.3--97.38) [49296]"}
          (forall i_29_1: int ::
          { Seq#Index(cr, i_29_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_29_1) } { Seq#Contains(Seq#Range(0, len), i_29_1) } { Seq#Index(cr, i_29_1) }
          Seq#Contains(Seq#Range(0, len), i_29_1) ==> Mask[Seq#Index(cr, i_29_1), Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver cr[i]
        assume (forall i_29_1: int ::
          { Seq#Index(cr, i_29_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_29_1) } { Seq#Contains(Seq#Range(0, len), i_29_1) } { Seq#Index(cr, i_29_1) }
          Seq#Contains(Seq#Range(0, len), i_29_1) && NoPerm < FullPerm ==> qpRange23(Seq#Index(cr, i_29_1)) && invRecv23(Seq#Index(cr, i_29_1)) == i_29_1
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          Seq#Contains(Seq#Range(0, len), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(cr, invRecv23(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(0, len), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4)) ==> Seq#Index(cr, invRecv23(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv23(o_4)) && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume Seq#Length(ar) == len;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49297]"}
        (forall i_30_2: int, i_30_3: int ::
        
        (((i_30_2 != i_30_3 && Seq#Contains(Seq#Range(0, len), i_30_2)) && Seq#Contains(Seq#Range(0, len), i_30_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_30_2) != Seq#Index(ar, i_30_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_30_2: int ::
          { Seq#Index(ar, i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_30_2) } { Seq#Contains(Seq#Range(0, len), i_30_2) } { Seq#Index(ar, i_30_2) }
          Seq#Contains(Seq#Range(0, len), i_30_2) && NoPerm < 1 / 2 ==> qpRange24(Seq#Index(ar, i_30_2)) && invRecv24(Seq#Index(ar, i_30_2)) == i_30_2
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4) ==> Seq#Index(ar, invRecv24(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (fwd.vpr@97.3--97.38) [49298]"}
        (forall i_30_2: int ::
        { Seq#Index(ar, i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_30_2) } { Seq#Contains(Seq#Range(0, len), i_30_2) } { Seq#Index(ar, i_30_2) }
        Seq#Contains(Seq#Range(0, len), i_30_2) ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_30_2: int ::
          { Seq#Index(ar, i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_30_2) } { Seq#Contains(Seq#Range(0, len), i_30_2) } { Seq#Index(ar, i_30_2) }
          Seq#Contains(Seq#Range(0, len), i_30_2) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_30_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv24(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Seq#Length(br) == len;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49299]"}
        (forall i_31_1: int, i_31_2: int ::
        
        (((i_31_1 != i_31_2 && Seq#Contains(Seq#Range(0, len), i_31_1)) && Seq#Contains(Seq#Range(0, len), i_31_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_31_1) != Seq#Index(br, i_31_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_31_1: int ::
          { Seq#Index(br, i_31_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_31_1) } { Seq#Contains(Seq#Range(0, len), i_31_1) } { Seq#Index(br, i_31_1) }
          Seq#Contains(Seq#Range(0, len), i_31_1) && NoPerm < 1 / 2 ==> qpRange25(Seq#Index(br, i_31_1)) && invRecv25(Seq#Index(br, i_31_1)) == i_31_1
        );
        assume (forall o_4: Ref ::
          { invRecv25(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv25(o_4)) && NoPerm < 1 / 2) && qpRange25(o_4) ==> Seq#Index(br, invRecv25(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (fwd.vpr@97.3--97.38) [49300]"}
        (forall i_31_1: int ::
        { Seq#Index(br, i_31_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_31_1) } { Seq#Contains(Seq#Range(0, len), i_31_1) } { Seq#Index(br, i_31_1) }
        Seq#Contains(Seq#Range(0, len), i_31_1) ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_31_1: int ::
          { Seq#Index(br, i_31_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_31_1) } { Seq#Contains(Seq#Range(0, len), i_31_1) } { Seq#Index(br, i_31_1) }
          Seq#Contains(Seq#Range(0, len), i_31_1) && 1 / 2 > NoPerm ==> Seq#Index(br, i_31_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, len), invRecv25(o_4)) && NoPerm < 1 / 2) && qpRange25(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv25(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv25(o_4)) && NoPerm < 1 / 2) && qpRange25(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Seq#Length(cr) == len;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49301]"}
        (forall i_32_2: int, i_32_3: int ::
        
        (((i_32_2 != i_32_3 && Seq#Contains(Seq#Range(0, len), i_32_2)) && Seq#Contains(Seq#Range(0, len), i_32_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_32_2) != Seq#Index(cr, i_32_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_32_2: int ::
          { Seq#Index(cr, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_32_2) } { Seq#Contains(Seq#Range(0, len), i_32_2) } { Seq#Index(cr, i_32_2) }
          Seq#Contains(Seq#Range(0, len), i_32_2) && NoPerm < FullPerm ==> qpRange26(Seq#Index(cr, i_32_2)) && invRecv26(Seq#Index(cr, i_32_2)) == i_32_2
        );
        assume (forall o_4: Ref ::
          { invRecv26(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv26(o_4)) && NoPerm < FullPerm) && qpRange26(o_4) ==> Seq#Index(cr, invRecv26(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_32_2: int ::
          { Seq#Index(cr, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_32_2) } { Seq#Contains(Seq#Range(0, len), i_32_2) } { Seq#Index(cr, i_32_2) }
          Seq#Contains(Seq#Range(0, len), i_32_2) ==> Seq#Index(cr, i_32_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, len), invRecv26(o_4)) && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv26(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv26(o_4)) && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@97.3--97.38) [49302]"}
        (forall i_33_1: int, i_33_2: int ::
        
        (((i_33_1 != i_33_2 && Seq#Contains(Seq#Range(0, len - 1), i_33_1)) && Seq#Contains(Seq#Range(0, len - 1), i_33_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_33_1) != Seq#Index(ar, i_33_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_33_1: int ::
          { Seq#Index(ar, i_33_1) } { Seq#Index(ar, i_33_1) }
          Seq#Contains(Seq#Range(0, len - 1), i_33_1) && NoPerm < 1 / 2 ==> qpRange27(Seq#Index(ar, i_33_1)) && invRecv27(Seq#Index(ar, i_33_1)) == i_33_1
        );
        assume (forall o_4: Ref ::
          { invRecv27(o_4) }
          (Seq#Contains(Seq#Range(0, len - 1), invRecv27(o_4)) && NoPerm < 1 / 2) && qpRange27(o_4) ==> Seq#Index(ar, invRecv27(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (fwd.vpr@97.3--97.38) [49303]"}
        (forall i_33_1: int ::
        { Seq#Index(ar, i_33_1) } { Seq#Index(ar, i_33_1) }
        Seq#Contains(Seq#Range(0, len - 1), i_33_1) ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_33_1: int ::
          { Seq#Index(ar, i_33_1) } { Seq#Index(ar, i_33_1) }
          Seq#Contains(Seq#Range(0, len - 1), i_33_1) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_33_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, len - 1), invRecv27(o_4)) && NoPerm < 1 / 2) && qpRange27(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv27(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len - 1), invRecv27(o_4)) && NoPerm < 1 / 2) && qpRange27(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (fwd.vpr@97.3--97.38) [49304]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar, Seq#Length(ar) - 1) != null;
      Mask := Mask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value:=Mask[Seq#Index(ar, Seq#Length(ar) - 1), Integer_value] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |ar| == len might not hold. (fwd.vpr@87.11--87.22) [49305]"}
      Seq#Length(ar) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (fwd.vpr@88.12--88.80) [49306]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered18(i_18_1), neverTriggered18(i_18_2) }
        (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, len), i_18_1)) && Seq#Contains(Seq#Range(0, len), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_18_1) != Seq#Index(ar, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access ar[i].Integer_value (fwd.vpr@88.12--88.80) [49307]"}
        (forall i_18_1: int ::
        { Seq#Index(ar, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_18_1) } { Seq#Contains(Seq#Range(0, len), i_18_1) } { Seq#Index(ar, i_18_1) }
        Seq#Contains(Seq#Range(0, len), i_18_1) ==> Mask[Seq#Index(ar, i_18_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_18_1: int ::
        { Seq#Index(ar, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_18_1) } { Seq#Contains(Seq#Range(0, len), i_18_1) } { Seq#Index(ar, i_18_1) }
        Seq#Contains(Seq#Range(0, len), i_18_1) && NoPerm < FullPerm ==> qpRange18(Seq#Index(ar, i_18_1)) && invRecv18(Seq#Index(ar, i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(ar, invRecv18(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> Seq#Index(ar, invRecv18(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |br| == len might not hold. (fwd.vpr@89.11--89.22) [49308]"}
      Seq#Length(br) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of zero_array might not hold. Fraction 1 / 2 might be negative. (fwd.vpr@90.12--90.80) [49309]"}
        (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) && dummyFunction(Heap[Seq#Index(br, i_19), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (fwd.vpr@90.12--90.80) [49310]"}
        (forall i_19: int, i_19_1: int ::
        { neverTriggered19(i_19), neverTriggered19(i_19_1) }
        (((i_19 != i_19_1 && Seq#Contains(Seq#Range(0, len), i_19)) && Seq#Contains(Seq#Range(0, len), i_19_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_19) != Seq#Index(br, i_19_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access br[i].Integer_value (fwd.vpr@90.12--90.80) [49311]"}
        (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) ==> Mask[Seq#Index(br, i_19), Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver br[i]
      assume (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) && NoPerm < 1 / 2 ==> qpRange19(Seq#Index(br, i_19)) && invRecv19(Seq#Index(br, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> Seq#Index(br, invRecv19(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> Seq#Index(br, invRecv19(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < 1 / 2 && qpRange19(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |cr| == len might not hold. (fwd.vpr@91.11--91.22) [49312]"}
      Seq#Length(cr) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (fwd.vpr@92.12--92.80) [49313]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered20(i_20_1), neverTriggered20(i_20_2) }
        (((i_20_1 != i_20_2 && Seq#Contains(Seq#Range(0, len), i_20_1)) && Seq#Contains(Seq#Range(0, len), i_20_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_20_1) != Seq#Index(cr, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access cr[i].Integer_value (fwd.vpr@92.12--92.80) [49314]"}
        (forall i_20_1: int ::
        { Seq#Index(cr, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(cr, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) ==> Mask[Seq#Index(cr, i_20_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver cr[i]
      assume (forall i_20_1: int ::
        { Seq#Index(cr, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(cr, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) && NoPerm < FullPerm ==> qpRange20(Seq#Index(cr, i_20_1)) && invRecv20(Seq#Index(cr, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> Seq#Index(cr, invRecv20(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> Seq#Index(cr, invRecv20(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}