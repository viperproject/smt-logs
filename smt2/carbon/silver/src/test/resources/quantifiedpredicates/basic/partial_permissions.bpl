// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:40:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/partial_permissions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/partial_permissions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_3: Ref): bool;
function  neverTriggered3(x_4: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_2_2: Ref): bool;
function  neverTriggered6(x_3: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_4: Ref): bool;
function  neverTriggered9(x_7: Ref): bool;
function  neverTriggered10(x_9_2: Ref): bool;
function  neverTriggered11(x_10_1: Ref): bool;
function  neverTriggered12(x_1: Ref): bool;
function  neverTriggered13(x_3: Ref): bool;
function  neverTriggered14(x_5: Ref): bool;
function  neverTriggered15(x_6: Ref): bool;
function  neverTriggered16(x_7: Ref): bool;
function  neverTriggered17(x_1: Ref): bool;
function  neverTriggered18(x_3: Ref): bool;
function  neverTriggered19(x_8_1: Ref): bool;
function  neverTriggered20(x_10_1: Ref): bool;
function  neverTriggered21(x_12_2: Ref): bool;
function  neverTriggered22(x_17_1: Ref): bool;
function  neverTriggered23(x_3: Ref): bool;
function  neverTriggered24(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_1_1_1: Ref): Ref;
function  invRecv2(r_2_1_1: Ref): Ref;
function  invRecv3(r_3_1: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(r_1_1_1: Ref): Ref;
function  invRecv8(r_2_1_1: Ref): Ref;
function  invRecv9(r_3_1: Ref): Ref;
function  invRecv10(r_4_1_1: Ref): Ref;
function  invRecv11(r_5_1_1: Ref): Ref;
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
function  invRecv24(r_1_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_1_1_1: Ref): bool;
function  qpRange2(r_2_1_1: Ref): bool;
function  qpRange3(r_3_1: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(r_1_1_1: Ref): bool;
function  qpRange8(r_2_1_1: Ref): bool;
function  qpRange9(r_3_1: Ref): bool;
function  qpRange10(r_4_1_1: Ref): bool;
function  qpRange11(r_5_1_1: Ref): bool;
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
function  qpRange24(r_1_1_1: Ref): bool;

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

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(r_1: Ref): Field PredicateType_pred FrameType;
function  pred#sm(r_1: Ref): Field PredicateType_pred PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(pred_3(r_1)) }
  PredicateMaskField(pred_3(r_1)) == pred#sm(r_1)
);
axiom (forall r_1: Ref ::
  { pred_3(r_1) }
  IsPredicateField(pred_3(r_1))
);
axiom (forall r_1: Ref ::
  { pred_3(r_1) }
  getPredWandId(pred_3(r_1)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { pred_3(r_1), pred_3(r2) }
  pred_3(r_1) == pred_3(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { pred#sm(r_1), pred#sm(r2) }
  pred#sm(r_1) == pred#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { pred#trigger(Heap, pred_3(r_1)) }
  pred#everUsed(pred_3(r_1))
);

procedure pred#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred
    
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
// Translation of method t1
// ==================================================

procedure t1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { pred(x) } true ==> acc(pred(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@12.14--12.71) [108329]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (x_1 != x_1_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Heap[null, pred_3(x_1)] }
        NoPerm < wildcard ==> invRecv1(x_1) == x_1 && qpRange1(x_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv1(r_1_1_1) }
        NoPerm < wildcard && qpRange1(r_1_1_1) ==> invRecv1(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        NoPerm < wildcard && qpRange1(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv1(r_1_1_1) == r_1_1_1) && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !(NoPerm < wildcard && qpRange1(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: t1(r) -- partial_permissions.vpr@14.5--14.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      havoc QPMask;
      // wildcard assumptions
      havoc wildcard;
      assert {:msg "  The precondition of method t1 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@14.5--14.10) [108330]"}
        (forall x_3: Ref ::
        
        Mask[null, pred_3(x_3)] > NoPerm
      );
      assume (forall x_3: Ref ::
        
        wildcard < Mask[null, pred_3(x_3)]
      );
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method t1 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@14.5--14.10) [108331]"}
          (forall r_2_1_1: Ref ::
          { invRecv2(r_2_1_1) }
          qpRange2(r_2_1_1) ==> wildcard >= NoPerm
        );
      
      // -- check if receiver acc(pred(x), wildcard) is injective
        assert {:msg "  The precondition of method t1 might not hold. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@14.5--14.10) [108332]"}
          (forall x_3: Ref, x_3_1: Ref ::
          { neverTriggered2(x_3), neverTriggered2(x_3_1) }
          (x_3 != x_3_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method t1 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@14.5--14.10) [108333]"}
          (forall x_3: Ref ::
          { Heap[null, pred_3(x_3)] } { Mask[null, pred_3(x_3)] } { Heap[null, pred_3(x_3)] }
          Mask[null, pred_3(x_3)] > NoPerm
        );
      
      // -- assumptions for inverse of receiver acc(pred(x), wildcard)
        assume (forall x_3: Ref ::
          { Heap[null, pred_3(x_3)] } { Mask[null, pred_3(x_3)] } { Heap[null, pred_3(x_3)] }
          NoPerm < wildcard ==> invRecv2(x_3) == x_3 && qpRange2(x_3)
        );
        assume (forall r_2_1_1: Ref ::
          { invRecv2(r_2_1_1) }
          NoPerm < wildcard && qpRange2(r_2_1_1) ==> invRecv2(r_2_1_1) == r_2_1_1
        );
      
      // -- assume permission updates
        assume (forall r_2_1_1: Ref ::
          { QPMask[null, pred_3(r_2_1_1)] }
          NoPerm < wildcard && qpRange2(r_2_1_1) ==> invRecv2(r_2_1_1) == r_2_1_1 && QPMask[null, pred_3(r_2_1_1)] == Mask[null, pred_3(r_2_1_1)] - wildcard
        );
        assume (forall r_2_1_1: Ref ::
          { QPMask[null, pred_3(r_2_1_1)] }
          !(NoPerm < wildcard && qpRange2(r_2_1_1)) ==> QPMask[null, pred_3(r_2_1_1)] == Mask[null, pred_3(r_2_1_1)]
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t1(r) -- partial_permissions.vpr@15.5--15.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      havoc QPMask;
      // wildcard assumptions
      havoc wildcard;
      assert {:msg "  The precondition of method t1 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@15.5--15.10) [108334]"}
        (forall x_4: Ref ::
        
        Mask[null, pred_3(x_4)] > NoPerm
      );
      assume (forall x_4: Ref ::
        
        wildcard < Mask[null, pred_3(x_4)]
      );
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method t1 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@15.5--15.10) [108335]"}
          (forall r_3_1: Ref ::
          { invRecv3(r_3_1) }
          qpRange3(r_3_1) ==> wildcard >= NoPerm
        );
      
      // -- check if receiver acc(pred(x), wildcard) is injective
        assert {:msg "  The precondition of method t1 might not hold. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@15.5--15.10) [108336]"}
          (forall x_4: Ref, x_4_1: Ref ::
          { neverTriggered3(x_4), neverTriggered3(x_4_1) }
          (x_4 != x_4_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method t1 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@15.5--15.10) [108337]"}
          (forall x_4: Ref ::
          { Heap[null, pred_3(x_4)] } { Mask[null, pred_3(x_4)] } { Heap[null, pred_3(x_4)] }
          Mask[null, pred_3(x_4)] > NoPerm
        );
      
      // -- assumptions for inverse of receiver acc(pred(x), wildcard)
        assume (forall x_4: Ref ::
          { Heap[null, pred_3(x_4)] } { Mask[null, pred_3(x_4)] } { Heap[null, pred_3(x_4)] }
          NoPerm < wildcard ==> invRecv3(x_4) == x_4 && qpRange3(x_4)
        );
        assume (forall r_3_1: Ref ::
          { invRecv3(r_3_1) }
          NoPerm < wildcard && qpRange3(r_3_1) ==> invRecv3(r_3_1) == r_3_1
        );
      
      // -- assume permission updates
        assume (forall r_3_1: Ref ::
          { QPMask[null, pred_3(r_3_1)] }
          NoPerm < wildcard && qpRange3(r_3_1) ==> invRecv3(r_3_1) == r_3_1 && QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)] - wildcard
        );
        assume (forall r_3_1: Ref ::
          { QPMask[null, pred_3(r_3_1)] }
          !(NoPerm < wildcard && qpRange3(r_3_1)) ==> QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)]
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { x.f } true ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@19.14--19.63) [108338]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (x_1 != x_1_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (qpRange4(o_4) ==> invRecv4(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!qpRange4(o_4) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: t2(r) -- partial_permissions.vpr@21.5--21.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      havoc QPMask;
      // wild card assumptions
      havoc wildcard;
      assert {:msg "  The precondition of method t2 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@21.5--21.10) [108339]"}
        (forall x_2_2: Ref ::
        
        Mask[x_2_2, f_7] > NoPerm
      );
      assume (forall x_2_2: Ref ::
        
        wildcard < Mask[x_2_2, f_7]
      );
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method t2 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@21.5--21.10) [108340]"}
          (forall x_2_2: Ref ::
          { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[x_2_2, f_7] }
          dummyFunction(Heap[x_2_2, f_7]) ==> wildcard >= NoPerm
        );
      
      // -- check if receiver x is injective
        assert {:msg "  The precondition of method t2 might not hold. Quantified resource x.f might not be injective. (partial_permissions.vpr@21.5--21.10) [108341]"}
          (forall x_2_2: Ref, x_2_3: Ref ::
          { neverTriggered5(x_2_2), neverTriggered5(x_2_3) }
          (x_2_2 != x_2_3 && NoPerm < wildcard) && NoPerm < wildcard ==> x_2_2 != x_2_3
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method t2 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@21.5--21.10) [108342]"}
          (forall x_2_2: Ref ::
          { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[x_2_2, f_7] }
          Mask[x_2_2, f_7] > NoPerm
        );
      
      // -- assumptions for inverse of receiver x
        assume (forall x_2_2: Ref ::
          { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[x_2_2, f_7] }
          NoPerm < wildcard ==> qpRange5(x_2_2) && invRecv5(x_2_2) == x_2_2
        );
        assume (forall o_4: Ref ::
          { invRecv5(o_4) }
          NoPerm < wildcard && qpRange5(o_4) ==> invRecv5(o_4) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (NoPerm < wildcard && qpRange5(o_4) ==> invRecv5(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(NoPerm < wildcard && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t2(r) -- partial_permissions.vpr@22.5--22.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      havoc QPMask;
      // wild card assumptions
      havoc wildcard;
      assert {:msg "  The precondition of method t2 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@22.5--22.10) [108343]"}
        (forall x_3: Ref ::
        
        Mask[x_3, f_7] > NoPerm
      );
      assume (forall x_3: Ref ::
        
        wildcard < Mask[x_3, f_7]
      );
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method t2 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@22.5--22.10) [108344]"}
          (forall x_3: Ref ::
          { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
          dummyFunction(Heap[x_3, f_7]) ==> wildcard >= NoPerm
        );
      
      // -- check if receiver x is injective
        assert {:msg "  The precondition of method t2 might not hold. Quantified resource x.f might not be injective. (partial_permissions.vpr@22.5--22.10) [108345]"}
          (forall x_3: Ref, x_3_1: Ref ::
          { neverTriggered6(x_3), neverTriggered6(x_3_1) }
          (x_3 != x_3_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method t2 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@22.5--22.10) [108346]"}
          (forall x_3: Ref ::
          { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
          Mask[x_3, f_7] > NoPerm
        );
      
      // -- assumptions for inverse of receiver x
        assume (forall x_3: Ref ::
          { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
          NoPerm < wildcard ==> qpRange6(x_3) && invRecv6(x_3) == x_3
        );
        assume (forall o_4: Ref ::
          { invRecv6(o_4) }
          NoPerm < wildcard && qpRange6(o_4) ==> invRecv6(o_4) == o_4
        );
      
      // -- assume permission updates for field f
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (NoPerm < wildcard && qpRange6(o_4) ==> invRecv6(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(NoPerm < wildcard && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
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
    
    // -- Check definedness of (forall x: Ref :: { pred(x) } true ==> acc(pred(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@26.14--26.71) [108347]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered7(x_1), neverTriggered7(x_1_1) }
        (x_1 != x_1_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Heap[null, pred_3(x_1)] }
        NoPerm < wildcard ==> invRecv7(x_1) == x_1 && qpRange7(x_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv7(r_1_1_1) }
        NoPerm < wildcard && qpRange7(r_1_1_1) ==> invRecv7(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        NoPerm < wildcard && qpRange7(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv7(r_1_1_1) == r_1_1_1) && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !(NoPerm < wildcard && qpRange7(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
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
    
    // -- Check definedness of (forall x: Ref :: { pred(x) } true ==> acc(pred(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@27.14--27.71) [108348]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered8(x_4), neverTriggered8(x_4_1) }
        (x_4 != x_4_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
      );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { PostHeap[null, pred_3(x_4)] } { PostMask[null, pred_3(x_4)] } { PostHeap[null, pred_3(x_4)] }
        NoPerm < wildcard ==> invRecv8(x_4) == x_4 && qpRange8(x_4)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv8(r_2_1_1) }
        NoPerm < wildcard && qpRange8(r_2_1_1) ==> invRecv8(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        NoPerm < wildcard && qpRange8(r_2_1_1) ==> (NoPerm < wildcard ==> invRecv8(r_2_1_1) == r_2_1_1) && QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        !(NoPerm < wildcard && qpRange8(r_2_1_1)) ==> QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { pred(x) } true ==> acc(pred(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@28.14--28.71) [108349]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered9(x_7), neverTriggered9(x_7_1) }
        (x_7 != x_7_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_7 != x_7_1
      );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { PostHeap[null, pred_3(x_7)] } { PostMask[null, pred_3(x_7)] } { PostHeap[null, pred_3(x_7)] }
        NoPerm < wildcard ==> invRecv9(x_7) == x_7 && qpRange9(x_7)
      );
      assume (forall r_3_1: Ref ::
        { invRecv9(r_3_1) }
        NoPerm < wildcard && qpRange9(r_3_1) ==> invRecv9(r_3_1) == r_3_1
      );
    
    // -- Define updated permissions
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        NoPerm < wildcard && qpRange9(r_3_1) ==> (NoPerm < wildcard ==> invRecv9(r_3_1) == r_3_1) && QPMask[null, pred_3(r_3_1)] == PostMask[null, pred_3(r_3_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        !(NoPerm < wildcard && qpRange9(r_3_1)) ==> QPMask[null, pred_3(r_3_1)] == PostMask[null, pred_3(r_3_1)]
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
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@27.14--27.71) [108350]"}
      (forall x_9_2: Ref ::
      
      Mask[null, pred_3(x_9_2)] > NoPerm
    );
    assume (forall x_9_2: Ref ::
      
      wildcard < Mask[null, pred_3(x_9_2)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of t3 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@27.14--27.71) [108351]"}
        (forall r_4_1_1: Ref ::
        { invRecv10(r_4_1_1) }
        qpRange10(r_4_1_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@27.14--27.71) [108352]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered10(x_9_2), neverTriggered10(x_9_3) }
        (x_9_2 != x_9_3 && NoPerm < wildcard) && NoPerm < wildcard ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@27.14--27.71) [108353]"}
        (forall x_9_2: Ref ::
        { Heap[null, pred_3(x_9_2)] } { Mask[null, pred_3(x_9_2)] } { Heap[null, pred_3(x_9_2)] }
        Mask[null, pred_3(x_9_2)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), wildcard)
      assume (forall x_9_2: Ref ::
        { Heap[null, pred_3(x_9_2)] } { Mask[null, pred_3(x_9_2)] } { Heap[null, pred_3(x_9_2)] }
        NoPerm < wildcard ==> invRecv10(x_9_2) == x_9_2 && qpRange10(x_9_2)
      );
      assume (forall r_4_1_1: Ref ::
        { invRecv10(r_4_1_1) }
        NoPerm < wildcard && qpRange10(r_4_1_1) ==> invRecv10(r_4_1_1) == r_4_1_1
      );
    
    // -- assume permission updates
      assume (forall r_4_1_1: Ref ::
        { QPMask[null, pred_3(r_4_1_1)] }
        NoPerm < wildcard && qpRange10(r_4_1_1) ==> invRecv10(r_4_1_1) == r_4_1_1 && QPMask[null, pred_3(r_4_1_1)] == Mask[null, pred_3(r_4_1_1)] - wildcard
      );
      assume (forall r_4_1_1: Ref ::
        { QPMask[null, pred_3(r_4_1_1)] }
        !(NoPerm < wildcard && qpRange10(r_4_1_1)) ==> QPMask[null, pred_3(r_4_1_1)] == Mask[null, pred_3(r_4_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@28.14--28.71) [108354]"}
      (forall x_10_1: Ref ::
      
      Mask[null, pred_3(x_10_1)] > NoPerm
    );
    assume (forall x_10_1: Ref ::
      
      wildcard < Mask[null, pred_3(x_10_1)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of t3 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@28.14--28.71) [108355]"}
        (forall r_5_1_1: Ref ::
        { invRecv11(r_5_1_1) }
        qpRange11(r_5_1_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@28.14--28.71) [108356]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered11(x_10_1), neverTriggered11(x_10_2) }
        (x_10_1 != x_10_2 && NoPerm < wildcard) && NoPerm < wildcard ==> x_10_1 != x_10_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access pred(x) (partial_permissions.vpr@28.14--28.71) [108357]"}
        (forall x_10_1: Ref ::
        { Heap[null, pred_3(x_10_1)] } { Mask[null, pred_3(x_10_1)] } { Heap[null, pred_3(x_10_1)] }
        Mask[null, pred_3(x_10_1)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), wildcard)
      assume (forall x_10_1: Ref ::
        { Heap[null, pred_3(x_10_1)] } { Mask[null, pred_3(x_10_1)] } { Heap[null, pred_3(x_10_1)] }
        NoPerm < wildcard ==> invRecv11(x_10_1) == x_10_1 && qpRange11(x_10_1)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv11(r_5_1_1) }
        NoPerm < wildcard && qpRange11(r_5_1_1) ==> invRecv11(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, pred_3(r_5_1_1)] }
        NoPerm < wildcard && qpRange11(r_5_1_1) ==> invRecv11(r_5_1_1) == r_5_1_1 && QPMask[null, pred_3(r_5_1_1)] == Mask[null, pred_3(r_5_1_1)] - wildcard
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, pred_3(r_5_1_1)] }
        !(NoPerm < wildcard && qpRange11(r_5_1_1)) ==> QPMask[null, pred_3(r_5_1_1)] == Mask[null, pred_3(r_5_1_1)]
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
// Translation of method t4
// ==================================================

procedure t4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
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
    
    // -- Check definedness of (forall x: Ref :: { x.f } true ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@32.14--32.63) [108358]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (x_1 != x_1_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        qpRange12(x_1) && invRecv12(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (qpRange12(o_4) ==> invRecv12(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!qpRange12(o_4) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Check definedness of (forall x: Ref :: { x.f } true ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@33.14--33.63) [108359]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (x_3 != x_3_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { PostHeap[x_3, f_7] }
        qpRange13(x_3) && invRecv13(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        qpRange13(o_4) ==> invRecv13(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { PostHeap[x_3, f_7] }
        x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (qpRange13(o_4) ==> invRecv13(o_4) == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!qpRange13(o_4) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { x.f } true ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@34.14--34.63) [108360]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (x_5 != x_5_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { PostHeap[x_5, f_7] }
        qpRange14(x_5) && invRecv14(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { PostHeap[x_5, f_7] }
        x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (qpRange14(o_4) ==> invRecv14(o_4) == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!qpRange14(o_4) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@33.14--33.63) [108361]"}
      (forall x_6: Ref ::
      
      Mask[x_6, f_7] > NoPerm
    );
    assume (forall x_6: Ref ::
      
      wildcard < Mask[x_6, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of t4 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@33.14--33.63) [108362]"}
        (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Heap[x_6, f_7] }
        dummyFunction(Heap[x_6, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@33.14--33.63) [108363]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered15(x_6), neverTriggered15(x_6_1) }
        (x_6 != x_6_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_6 != x_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@33.14--33.63) [108364]"}
        (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Heap[x_6, f_7] }
        Mask[x_6, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Heap[x_6, f_7] }
        NoPerm < wildcard ==> qpRange15(x_6) && invRecv15(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        NoPerm < wildcard && qpRange15(o_4) ==> invRecv15(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (NoPerm < wildcard && qpRange15(o_4) ==> invRecv15(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(NoPerm < wildcard && qpRange15(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@34.14--34.63) [108365]"}
      (forall x_7: Ref ::
      
      Mask[x_7, f_7] > NoPerm
    );
    assume (forall x_7: Ref ::
      
      wildcard < Mask[x_7, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of t4 might not hold. Fraction wildcard might be negative. (partial_permissions.vpr@34.14--34.63) [108366]"}
        (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { Heap[x_7, f_7] }
        dummyFunction(Heap[x_7, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@34.14--34.63) [108367]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered16(x_7), neverTriggered16(x_7_1) }
        (x_7 != x_7_1 && NoPerm < wildcard) && NoPerm < wildcard ==> x_7 != x_7_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access x.f (partial_permissions.vpr@34.14--34.63) [108368]"}
        (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { Heap[x_7, f_7] }
        Mask[x_7, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { Heap[x_7, f_7] }
        NoPerm < wildcard ==> qpRange16(x_7) && invRecv16(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        NoPerm < wildcard && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (NoPerm < wildcard && qpRange16(o_4) ==> invRecv16(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(NoPerm < wildcard && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method t5
// ==================================================

procedure t5(r_1: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var x_5: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var x_14_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (partial_permissions.vpr@40.14--40.63) [108369]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange17(x_1) && invRecv17(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (Seq#Contains(xs, invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> invRecv17(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[x_1, f_7] }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> invRecv17(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, 1 / 3)) -- partial_permissions.vpr@42.5--42.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, 1 / 3))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 3 might be negative. (partial_permissions.vpr@42.12--42.59) [108370]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
        Seq#Contains(xs, x_3) && dummyFunction(Heap[x_3, f_7]) ==> 1 / 3 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@42.12--42.59) [108371]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered18(x_3), neverTriggered18(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < 1 / 3) && NoPerm < 1 / 3 ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@42.12--42.59) [108372]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
        Seq#Contains(xs, x_3) ==> Mask[x_3, f_7] >= 1 / 3
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[x_3, f_7] }
        Seq#Contains(xs, x_3) && NoPerm < 1 / 3 ==> qpRange18(x_3) && invRecv18(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < 1 / 3 && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < 1 / 3 && qpRange18(o_4)) ==> invRecv18(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - 1 / 3) && (!(Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < 1 / 3 && qpRange18(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: assert (forall x: Ref :: { x.f } (x in xs) ==> perm(x.f) == 2 / 3) -- partial_permissions.vpr@43.5--43.66
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> perm(x.f) == 2 / 3)
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(xs, x_5)) {
        assert {:msg "  Assert might fail. Assertion perm(x.f) == 2 / 3 might not hold. (partial_permissions.vpr@43.12--43.66) [108373]"}
          Mask[x_5, f_7] == 2 / 3;
      }
      assume false;
    }
    assume (forall x_6_1_1: Ref ::
      { Heap[x_6_1_1, f_7] }
      Seq#Contains(xs, x_6_1_1) ==> Mask[x_6_1_1, f_7] == 2 / 3
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard)) -- partial_permissions.vpr@44.5--44.64
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@44.12--44.64) [108374]"}
      (forall x_8_1: Ref ::
      
      Seq#Contains(xs, x_8_1) ==> AssertMask[x_8_1, f_7] > NoPerm
    );
    assume (forall x_8_1: Ref ::
      
      Seq#Contains(xs, x_8_1) ==> wildcard < AssertMask[x_8_1, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (partial_permissions.vpr@44.12--44.64) [108375]"}
        (forall x_8_1: Ref ::
        { AssertHeap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { AssertHeap[x_8_1, f_7] }
        Seq#Contains(xs, x_8_1) && dummyFunction(AssertHeap[x_8_1, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@44.12--44.64) [108376]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered19(x_8_1), neverTriggered19(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@44.12--44.64) [108377]"}
        (forall x_8_1: Ref ::
        { AssertHeap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { AssertHeap[x_8_1, f_7] }
        Seq#Contains(xs, x_8_1) ==> AssertMask[x_8_1, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { AssertHeap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { AssertHeap[x_8_1, f_7] }
        Seq#Contains(xs, x_8_1) && NoPerm < wildcard ==> qpRange19(x_8_1) && invRecv19(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        Seq#Contains(xs, invRecv19(o_4)) && (NoPerm < wildcard && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv19(o_4)) && (NoPerm < wildcard && qpRange19(o_4)) ==> invRecv19(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - wildcard) && (!(Seq#Contains(xs, invRecv19(o_4)) && (NoPerm < wildcard && qpRange19(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard)) -- partial_permissions.vpr@45.5--45.64
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@45.12--45.64) [108378]"}
      (forall x_10_1: Ref ::
      
      Seq#Contains(xs, x_10_1) ==> AssertMask[x_10_1, f_7] > NoPerm
    );
    assume (forall x_10_1: Ref ::
      
      Seq#Contains(xs, x_10_1) ==> wildcard < AssertMask[x_10_1, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (partial_permissions.vpr@45.12--45.64) [108379]"}
        (forall x_10_1: Ref ::
        { AssertHeap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { AssertHeap[x_10_1, f_7] }
        Seq#Contains(xs, x_10_1) && dummyFunction(AssertHeap[x_10_1, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@45.12--45.64) [108380]"}
        (forall x_10_1: Ref, x_10_2: Ref ::
        { neverTriggered20(x_10_1), neverTriggered20(x_10_2) }
        (((x_10_1 != x_10_2 && Seq#Contains(xs, x_10_1)) && Seq#Contains(xs, x_10_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> x_10_1 != x_10_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@45.12--45.64) [108381]"}
        (forall x_10_1: Ref ::
        { AssertHeap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { AssertHeap[x_10_1, f_7] }
        Seq#Contains(xs, x_10_1) ==> AssertMask[x_10_1, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_10_1: Ref ::
        { AssertHeap[x_10_1, f_7] } { QPMask[x_10_1, f_7] } { AssertHeap[x_10_1, f_7] }
        Seq#Contains(xs, x_10_1) && NoPerm < wildcard ==> qpRange20(x_10_1) && invRecv20(x_10_1) == x_10_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < wildcard && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < wildcard && qpRange20(o_4)) ==> invRecv20(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - wildcard) && (!(Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < wildcard && qpRange20(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, perm(x.f))) -- partial_permissions.vpr@46.5--46.65
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, perm(x.f)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction perm(x.f) might be negative. (partial_permissions.vpr@46.12--46.65) [108382]"}
        (forall x_12_2: Ref ::
        { Heap[x_12_2, f_7] } { QPMask[x_12_2, f_7] } { Heap[x_12_2, f_7] }
        Seq#Contains(xs, x_12_2) && dummyFunction(Heap[x_12_2, f_7]) ==> Mask[x_12_2, f_7] >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@46.12--46.65) [108383]"}
        (forall x_12_2: Ref, x_12_3: Ref ::
        { neverTriggered21(x_12_2), neverTriggered21(x_12_3) }
        (((x_12_2 != x_12_3 && Seq#Contains(xs, x_12_2)) && Seq#Contains(xs, x_12_3)) && NoPerm < Mask[x_12_2, f_7]) && NoPerm < Mask[x_12_3, f_7] ==> x_12_2 != x_12_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@46.12--46.65) [108384]"}
        (forall x_12_2: Ref ::
        { Heap[x_12_2, f_7] } { QPMask[x_12_2, f_7] } { Heap[x_12_2, f_7] }
        Seq#Contains(xs, x_12_2) ==> Mask[x_12_2, f_7] >= Mask[x_12_2, f_7]
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_12_2: Ref ::
        { Heap[x_12_2, f_7] } { QPMask[x_12_2, f_7] } { Heap[x_12_2, f_7] }
        Seq#Contains(xs, x_12_2) && NoPerm < Mask[x_12_2, f_7] ==> qpRange21(x_12_2) && invRecv21(x_12_2) == x_12_2
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        Seq#Contains(xs, invRecv21(o_4)) && (NoPerm < Mask[invRecv21(o_4), f_7] && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv21(o_4)) && (NoPerm < Mask[invRecv21(o_4), f_7] && qpRange21(o_4)) ==> invRecv21(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - Mask[invRecv21(o_4), f_7]) && (!(Seq#Contains(xs, invRecv21(o_4)) && (NoPerm < Mask[invRecv21(o_4), f_7] && qpRange21(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: assert (forall x: Ref :: { x.f } (x in xs) ==> perm(x.f) == none) -- partial_permissions.vpr@47.5--47.65
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> perm(x.f) == none)
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(xs, x_14_1)) {
        assert {:msg "  Assert might fail. Assertion perm(x.f) == none might not hold. (partial_permissions.vpr@47.12--47.65) [108385]"}
          Mask[x_14_1, f_7] == NoPerm;
      }
      assume false;
    }
    assume (forall x_15_1: Ref ::
      { Heap[x_15_1, f_7] }
      Seq#Contains(xs, x_15_1) ==> Mask[x_15_1, f_7] == NoPerm
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard)) -- partial_permissions.vpr@50.5--50.64
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of (forall x: Ref :: { x.f } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@50.12--50.64) [108386]"}
      (forall x_17_1: Ref ::
      
      Seq#Contains(xs, x_17_1) ==> AssertMask[x_17_1, f_7] > NoPerm
    );
    assume (forall x_17_1: Ref ::
      
      Seq#Contains(xs, x_17_1) ==> wildcard < AssertMask[x_17_1, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (partial_permissions.vpr@50.12--50.64) [108387]"}
        (forall x_17_1: Ref ::
        { AssertHeap[x_17_1, f_7] } { QPMask[x_17_1, f_7] } { AssertHeap[x_17_1, f_7] }
        Seq#Contains(xs, x_17_1) && dummyFunction(AssertHeap[x_17_1, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@50.12--50.64) [108388]"}
        (forall x_17_1: Ref, x_17_2: Ref ::
        { neverTriggered22(x_17_1), neverTriggered22(x_17_2) }
        (((x_17_1 != x_17_2 && Seq#Contains(xs, x_17_1)) && Seq#Contains(xs, x_17_2)) && NoPerm < wildcard) && NoPerm < wildcard ==> x_17_1 != x_17_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@50.12--50.64) [108389]"}
        (forall x_17_1: Ref ::
        { AssertHeap[x_17_1, f_7] } { QPMask[x_17_1, f_7] } { AssertHeap[x_17_1, f_7] }
        Seq#Contains(xs, x_17_1) ==> AssertMask[x_17_1, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_17_1: Ref ::
        { AssertHeap[x_17_1, f_7] } { QPMask[x_17_1, f_7] } { AssertHeap[x_17_1, f_7] }
        Seq#Contains(xs, x_17_1) && NoPerm < wildcard ==> qpRange22(x_17_1) && invRecv22(x_17_1) == x_17_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        Seq#Contains(xs, invRecv22(o_4)) && (NoPerm < wildcard && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv22(o_4)) && (NoPerm < wildcard && qpRange22(o_4)) ==> invRecv22(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - wildcard) && (!(Seq#Contains(xs, invRecv22(o_4)) && (NoPerm < wildcard && qpRange22(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6(r_1: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> x != null) -- partial_permissions.vpr@56.5--56.59
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x != null)
      if (*) {
        assume false;
      }
    assume (forall x_1: Ref ::
      { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
      Seq#Contains(xs, x_1) ==> x_1 != null
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard)) -- partial_permissions.vpr@59.5--59.68
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@59.12--59.68) [108390]"}
      (forall x_3: Ref ::
      
      Seq#Contains(xs, x_3) ==> Mask[x_3, f_7] > NoPerm
    );
    assume (forall x_3: Ref ::
      
      Seq#Contains(xs, x_3) ==> wildcard < Mask[x_3, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (partial_permissions.vpr@59.12--59.68) [108391]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && dummyFunction(Heap[x_3, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (partial_permissions.vpr@59.12--59.68) [108392]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered23(x_3), neverTriggered23(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (partial_permissions.vpr@59.12--59.68) [108393]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> Mask[x_3, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < wildcard ==> qpRange23(x_3) && invRecv23(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < wildcard && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < wildcard && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Seq#Contains(xs, invRecv23(o_4)) && (NoPerm < wildcard && qpRange23(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method t7
// ==================================================

procedure t7(r_1: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale (forall x: Ref :: { pred(x) } (x in xs) ==> acc(pred(x), wildcard)) -- partial_permissions.vpr@66.5--66.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { pred(x) } (x in xs) ==> acc(pred(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access pred(x) (partial_permissions.vpr@66.12--66.72) [108394]"}
      (forall x_1: Ref ::
      
      Seq#Contains(xs, x_1) ==> Mask[null, pred_3(x_1)] > NoPerm
    );
    assume (forall x_1: Ref ::
      
      Seq#Contains(xs, x_1) ==> wildcard < Mask[null, pred_3(x_1)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (partial_permissions.vpr@66.12--66.72) [108395]"}
        (forall r_1_1_1: Ref ::
        { invRecv24(r_1_1_1) }
        Seq#Contains(xs, invRecv24(r_1_1_1)) && qpRange24(r_1_1_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(pred(x), wildcard) is injective
      assert {:msg "  Exhale might fail. Quantified resource pred(x) might not be injective. (partial_permissions.vpr@66.12--66.72) [108396]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered24(x_1), neverTriggered24(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred(x) (partial_permissions.vpr@66.12--66.72) [108397]"}
        (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Heap[null, pred_3(x_1)] }
        Seq#Contains(xs, x_1) ==> Mask[null, pred_3(x_1)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), wildcard)
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(x_1)] } { Mask[null, pred_3(x_1)] } { Heap[null, pred_3(x_1)] }
        Seq#Contains(xs, x_1) && NoPerm < wildcard ==> invRecv24(x_1) == x_1 && qpRange24(x_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv24(r_1_1_1) }
        (Seq#Contains(xs, invRecv24(r_1_1_1)) && NoPerm < wildcard) && qpRange24(r_1_1_1) ==> invRecv24(r_1_1_1) == r_1_1_1
      );
    
    // -- assume permission updates
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        (Seq#Contains(xs, invRecv24(r_1_1_1)) && NoPerm < wildcard) && qpRange24(r_1_1_1) ==> invRecv24(r_1_1_1) == r_1_1_1 && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] - wildcard
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !((Seq#Contains(xs, invRecv24(r_1_1_1)) && NoPerm < wildcard) && qpRange24(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
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
}