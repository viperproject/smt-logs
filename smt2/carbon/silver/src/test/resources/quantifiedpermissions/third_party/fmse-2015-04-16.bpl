// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:40:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/fmse-2015-04-16.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/fmse-2015-04-16-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(i_3: int): bool;
function  neverTriggered2(i_7_1: int): bool;
function  neverTriggered3(i_11_1: int): bool;
function  neverTriggered4(i_13_1: int): bool;
function  neverTriggered5(i_15: int): bool;
function  neverTriggered6(i_17: int): bool;
function  neverTriggered7(i_26: int): bool;
function  neverTriggered8(i_27: int): bool;
function  neverTriggered9(i_28: int): bool;
function  neverTriggered10(i_37: int): bool;
function  neverTriggered11(i_38: int): bool;
function  neverTriggered12(i_39: int): bool;
function  neverTriggered13(i_49: int): bool;
function  neverTriggered14(i_51: int): bool;
function  neverTriggered15(i_53: int): bool;
function  neverTriggered16(i_62: int): bool;
function  neverTriggered17(i_63: int): bool;
function  neverTriggered18(i_64: int): bool;
function  neverTriggered19(i_69: int): bool;
function  neverTriggered20(i_70: int): bool;
function  neverTriggered21(i_71: int): bool;
function  neverTriggered22(i_80: int): bool;
function  neverTriggered23(i_81: int): bool;
function  neverTriggered24(i_82: int): bool;
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

const unique Exercise4__Integer_value: Field NormalField int;
axiom !IsPredicateField(Exercise4__Integer_value);
axiom !IsWandField(Exercise4__Integer_value);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Exercise4__zip
// ==================================================

procedure Exercise4__zip(diz: Ref, a_2: (Seq Ref), b_24: (Seq Ref), res: (Seq Ref)) returns ()
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_9: int;
  var i_10: int;
  var i_11: int;
  var i_12: int;
  var i_16: int;
  var i_18: int;
  var i_13: int;
  var __flatten_5: Ref;
  var __flatten_6: Ref;
  var __flatten_8: Ref;
  var __flatten_9: Ref;
  var k: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_40: int;
  var i_42: int;
  var i_44: int;
  var i_46: int;
  var ExhaleHeap: HeapType;
  var __flatten_3: int;
  var __flatten_10: int;
  var __flatten_2: int;
  var __flatten_7: int;
  var __flatten_1: int;
  var __flatten_4: int;
  var i_20: int;
  var i_22: int;
  var i_24: int;
  var i_29: int;
  var i_30: int;
  var i_31: int;
  var i_32: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_72: int;
  var i_74: int;
  var i_76: int;
  var i_78: int;
  var i_33: int;
  var i_88: int;
  var i_34: int;
  var i_91: int;
  var i_35: int;
  var i_94: int;
  var i_36: int;
  var i_97: int;
  var i_29_1: int;
  var i_31_1: int;
  var i_33_1: int;
  var i_35_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == Seq#Length(b_24);
    assume state(Heap, Mask);
    assume Seq#Length(res) == 2 * Seq#Length(a_2);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { a[i], a[j] } 0 <= i && (i < |a| && (0 <= j && (j < |a| && i != j))) ==> a[i] != a[j])
      if (*) {
        if (0 <= i_14 && (i_14 < Seq#Length(a_2) && (0 <= j_5 && (j_5 < Seq#Length(a_2) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@15.12--15.102) [5974]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@15.12--15.102) [5975]"}
            i_14 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might be negative. (fmse-2015-04-16.vpr@15.12--15.102) [5976]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[j] into a might exceed sequence length. (fmse-2015-04-16.vpr@15.12--15.102) [5977]"}
            j_5 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(a_2, i_1), Seq#Index(a_2, j_1) }
      0 <= i_1 && (i_1 < Seq#Length(a_2) && (0 <= j_1 && (j_1 < Seq#Length(a_2) && i_1 != j_1))) ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@16.13--16.85) [5978]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@16.13--16.85) [5979]"}
            i_2 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@16.13--16.85) [5980]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_3) != Seq#Index(a_2, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(a_2, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3) } { Seq#Index(a_2, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(a_2, i_3)) && invRecv1(Seq#Index(a_2, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(a_2, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(a_2, i_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_3) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3) } { Seq#Index(a_2, i_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_3) ==> Seq#Index(a_2, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { b[i], b[j] } 0 <= i && (i < |b| && (0 <= j && (j < |b| && i != j))) ==> b[i] != b[j])
      if (*) {
        if (0 <= i_4 && (i_4 < Seq#Length(b_24) && (0 <= j_6 && (j_6 < Seq#Length(b_24) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@17.12--17.102) [5981]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@17.12--17.102) [5982]"}
            i_4 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might be negative. (fmse-2015-04-16.vpr@17.12--17.102) [5983]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[j] into b might exceed sequence length. (fmse-2015-04-16.vpr@17.12--17.102) [5984]"}
            j_6 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(b_24, i_5), Seq#Index(b_24, j_3_1) }
      0 <= i_5 && (i_5 < Seq#Length(b_24) && (0 <= j_3_1 && (j_3_1 < Seq#Length(b_24) && i_5 != j_3_1))) ==> Seq#Index(b_24, i_5) != Seq#Index(b_24, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_6)) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@18.13--18.85) [5985]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@18.13--18.85) [5986]"}
            i_6 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@18.13--18.85) [5987]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_7_1) != Seq#Index(b_24, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(b_24, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_1) } { Seq#Index(b_24, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(b_24, i_7_1)) && invRecv2(Seq#Index(b_24, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(b_24, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(b_24, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_1) } { Seq#Index(b_24, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_7_1) ==> Seq#Index(b_24, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(b_24, invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { res[i], res[j] } 0 <= i && (i < |res| && (0 <= j && (j < |res| && i != j))) ==> res[i] != res[j])
      if (*) {
        if (0 <= i_7 && (i_7 < Seq#Length(res) && (0 <= j_7 && (j_7 < Seq#Length(res) && i_7 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@19.12--19.110) [5988]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@19.12--19.110) [5989]"}
            i_7 < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. Index res[j] into res might be negative. (fmse-2015-04-16.vpr@19.12--19.110) [5990]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[j] into res might exceed sequence length. (fmse-2015-04-16.vpr@19.12--19.110) [5991]"}
            j_7 < Seq#Length(res);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5_1: int ::
      { Seq#Index(res, i_9_1), Seq#Index(res, j_5_1) }
      0 <= i_9_1 && (i_9_1 < Seq#Length(res) && (0 <= j_5_1 && (j_5_1 < Seq#Length(res) && i_9_1 != j_5_1))) ==> Seq#Index(res, i_9_1) != Seq#Index(res, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(res)), i_8)) {
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@20.13--20.89) [5992]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@20.13--20.89) [5993]"}
            i_8 < Seq#Length(res);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@20.13--20.89) [5994]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_1)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_11_1) != Seq#Index(res, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(res, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_11_1) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_1) } { Seq#Index(res, i_11_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(res, i_11_1)) && invRecv3(Seq#Index(res, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(res, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(res, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_11_1) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_1) } { Seq#Index(res, i_11_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11_1) ==> Seq#Index(res, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(res, invRecv3(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume Seq#Length(res) == 2 * Seq#Length(a_2);
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == Seq#Length(b_24);
    assume state(PostHeap, PostMask);
    assume Seq#Length(res) == 2 * Seq#Length(b_24);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_9)) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@24.12--24.84) [5995]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@24.12--24.84) [5996]"}
            i_9 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@24.12--24.84) [5997]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_1)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_13_1) != Seq#Index(a_2, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_1) } { Seq#Index(a_2, i_13_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(a_2, i_13_1)) && invRecv4(Seq#Index(a_2, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(a_2, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(a_2, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_1) } { Seq#Index(a_2, i_13_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_13_1) ==> Seq#Index(a_2, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv4(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@25.12--25.84) [5998]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@25.12--25.84) [5999]"}
            i_10 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@25.12--25.84) [6000]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_15) != Seq#Index(b_24, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_15) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15) } { Seq#Index(b_24, i_15) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15) && NoPerm < FullPerm ==> qpRange5(Seq#Index(b_24, i_15)) && invRecv5(Seq#Index(b_24, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(b_24, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(b_24, i_15) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_15) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15) } { Seq#Index(b_24, i_15) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_15) ==> Seq#Index(b_24, i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(b_24, invRecv5(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(res)), i_11)) {
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@26.12--26.88) [6001]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@26.12--26.88) [6002]"}
            i_11 < Seq#Length(res);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@26.12--26.88) [6003]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_17) != Seq#Index(res, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(res, i_17) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_17) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17) } { Seq#Index(res, i_17) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17) && NoPerm < FullPerm ==> qpRange6(Seq#Index(res, i_17)) && invRecv6(Seq#Index(res, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(res, invRecv6(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(res, i_17) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_17) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17) } { Seq#Index(res, i_17) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_17) ==> Seq#Index(res, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(res, invRecv6(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_12)) {
          assert {:msg "  Contract might not be well-formed. Index res[2 * i] into res might be negative. (fmse-2015-04-16.vpr@27.12--27.107) [6004]"}
            2 * i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[2 * i] into res might exceed sequence length. (fmse-2015-04-16.vpr@27.12--27.107) [6005]"}
            2 * i_12 < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[2 * i].Ref__Integer_value (fmse-2015-04-16.vpr@27.12--27.107) [6006]"}
            HasDirectPerm(PostMask, Seq#Index(res, 2 * i_12), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@27.12--27.107) [6007]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@27.12--27.107) [6008]"}
            i_12 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@27.12--27.107) [6009]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_12), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_19: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_19) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_19) } { Seq#Index(a_2, i_19) }
      Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_19) ==> PostHeap[Seq#Index(res, 2 * i_19), Ref__Integer_value] == PostHeap[Seq#Index(a_2, i_19), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 1 && i < |res|) ==> res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value)
      if (*) {
        if (0 <= i_16 && (i_16 mod 2 == 1 && i_16 < Seq#Length(res))) {
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@49.12--49.131) [6010]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@49.12--49.131) [6011]"}
            i_16 < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@49.12--49.131) [6012]"}
            HasDirectPerm(PostMask, Seq#Index(res, i_16), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i \ 2] into b might be negative. (fmse-2015-04-16.vpr@49.12--49.131) [6013]"}
            i_16 div 2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i \ 2] into b might exceed sequence length. (fmse-2015-04-16.vpr@49.12--49.131) [6014]"}
            i_16 div 2 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@49.12--49.131) [6015]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_16 div 2), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_21: int ::
      { Seq#Index(res, i_21) }
      0 <= i_21 && (i_21 mod 2 == 1 && i_21 < Seq#Length(res)) ==> PostHeap[Seq#Index(res, i_21), Ref__Integer_value] == PostHeap[Seq#Index(b_24, i_21 div 2), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_18)) {
          assert {:msg "  Contract might not be well-formed. Index res[2 * i + 1] into res might be negative. (fmse-2015-04-16.vpr@50.12--50.111) [6016]"}
            2 * i_18 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[2 * i + 1] into res might exceed sequence length. (fmse-2015-04-16.vpr@50.12--50.111) [6017]"}
            2 * i_18 + 1 < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[2 * i + 1].Ref__Integer_value (fmse-2015-04-16.vpr@50.12--50.111) [6018]"}
            HasDirectPerm(PostMask, Seq#Index(res, 2 * i_18 + 1), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@50.12--50.111) [6019]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@50.12--50.111) [6020]"}
            i_18 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@50.12--50.111) [6021]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_18), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_23: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_23) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_23) } { Seq#Index(b_24, i_23) }
      Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_23) ==> PostHeap[Seq#Index(res, 2 * i_23 + 1), Ref__Integer_value] == PostHeap[Seq#Index(b_24, i_23), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 0 && i < |res|) ==> res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value)
      if (*) {
        if (0 <= i_13 && (i_13 mod 2 == 0 && i_13 < Seq#Length(res))) {
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@51.12--51.131) [6022]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@51.12--51.131) [6023]"}
            i_13 < Seq#Length(res);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@51.12--51.131) [6024]"}
            HasDirectPerm(PostMask, Seq#Index(res, i_13), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index a[i \ 2] into a might be negative. (fmse-2015-04-16.vpr@51.12--51.131) [6025]"}
            i_13 div 2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i \ 2] into a might exceed sequence length. (fmse-2015-04-16.vpr@51.12--51.131) [6026]"}
            i_13 div 2 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@51.12--51.131) [6027]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_13 div 2), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_25: int ::
      { Seq#Index(res, i_25) }
      0 <= i_25 && (i_25 mod 2 == 0 && i_25 < Seq#Length(res)) ==> PostHeap[Seq#Index(res, i_25), Ref__Integer_value] == PostHeap[Seq#Index(a_2, i_25 div 2), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_9, $allocated];
  
  // -- Translating statement: k := 0 -- fmse-2015-04-16.vpr@64.3--64.9
    k := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (k < |res|) -- fmse-2015-04-16.vpr@65.3--92.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= k might not hold on entry. Assertion 0 <= k might not hold. (fmse-2015-04-16.vpr@66.15--66.21) [6028]"}
          0 <= k;
        assert {:msg "  Loop invariant k % 2 == 0 might not hold on entry. Assertion k % 2 == 0 might not hold. (fmse-2015-04-16.vpr@67.15--67.25) [6029]"}
          k mod 2 == 0;
        assert {:msg "  Loop invariant k <= |res| might not hold on entry. Assertion k <= |res| might not hold. (fmse-2015-04-16.vpr@68.15--68.25) [6030]"}
          k <= Seq#Length(res);
        assert {:msg "  Loop invariant |a| == |b| might not hold on entry. Assertion |a| == |b| might not hold. (fmse-2015-04-16.vpr@69.15--69.25) [6031]"}
          Seq#Length(a_2) == Seq#Length(b_24);
        assert {:msg "  Loop invariant |res| == 2 * |a| might not hold on entry. Assertion |res| == 2 * |a| might not hold. (fmse-2015-04-16.vpr@70.15--70.31) [6032]"}
          Seq#Length(res) == 2 * Seq#Length(a_2);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write)) might not hold on entry. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@71.16--71.88) [6033]"}
            (forall i_37: int, i_37_1: int ::
            { neverTriggered10(i_37), neverTriggered10(i_37_1) }
            (((i_37 != i_37_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_37) != Seq#Index(a_2, i_37_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@71.16--71.88) [6034]"}
            (forall i_37: int ::
            { Seq#Index(a_2, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37) } { Seq#Index(a_2, i_37) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37) ==> Mask[Seq#Index(a_2, i_37), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a[i]
          assume (forall i_37: int ::
            { Seq#Index(a_2, i_37) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_37) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37) } { Seq#Index(a_2, i_37) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_37) && NoPerm < FullPerm ==> qpRange10(Seq#Index(a_2, i_37)) && invRecv10(Seq#Index(a_2, i_37)) == i_37
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(a_2, invRecv10(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> Seq#Index(a_2, invRecv10(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv10(o_4)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write)) might not hold on entry. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@72.16--72.88) [6035]"}
            (forall i_38: int, i_38_1: int ::
            { neverTriggered11(i_38), neverTriggered11(i_38_1) }
            (((i_38 != i_38_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_38) != Seq#Index(b_24, i_38_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@72.16--72.88) [6036]"}
            (forall i_38: int ::
            { Seq#Index(b_24, i_38) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_38) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38) } { Seq#Index(b_24, i_38) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38) ==> Mask[Seq#Index(b_24, i_38), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b[i]
          assume (forall i_38: int ::
            { Seq#Index(b_24, i_38) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_38) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38) } { Seq#Index(b_24, i_38) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_38) && NoPerm < FullPerm ==> qpRange11(Seq#Index(b_24, i_38)) && invRecv11(Seq#Index(b_24, i_38)) == i_38
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(b_24, invRecv11(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> Seq#Index(b_24, invRecv11(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver res[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write)) might not hold on entry. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@73.16--73.92) [6037]"}
            (forall i_39: int, i_39_1: int ::
            { neverTriggered12(i_39), neverTriggered12(i_39_1) }
            (((i_39 != i_39_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_39) != Seq#Index(res, i_39_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write)) might not hold on entry. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@73.16--73.92) [6038]"}
            (forall i_39: int ::
            { Seq#Index(res, i_39) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_39) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39) } { Seq#Index(res, i_39) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39) ==> Mask[Seq#Index(res, i_39), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver res[i]
          assume (forall i_39: int ::
            { Seq#Index(res, i_39) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_39) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39) } { Seq#Index(res, i_39) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_39) && NoPerm < FullPerm ==> qpRange12(Seq#Index(res, i_39)) && invRecv12(Seq#Index(res, i_39)) == i_39
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(res, invRecv12(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(res, invRecv12(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= i_40 && (i_40 mod 2 == 0 && i_40 < k)) {
            assert {:msg "  Loop invariant (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 0 && i < k) ==> res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value) might not hold on entry. Assertion res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@74.16--74.131) [6039]"}
              Heap[Seq#Index(res, i_40), Ref__Integer_value] == Heap[Seq#Index(a_2, i_40 div 2), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_41_1: int ::
          { Seq#Index(res, i_41_1) }
          0 <= i_41_1 && (i_41_1 mod 2 == 0 && i_41_1 < k) ==> Heap[Seq#Index(res, i_41_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_41_1 div 2), Ref__Integer_value]
        );
        if (*) {
          if (0 <= i_42 && (i_42 mod 2 == 1 && i_42 < k)) {
            assert {:msg "  Loop invariant (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 1 && i < k) ==> res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value) might not hold on entry. Assertion res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@75.16--75.131) [6040]"}
              Heap[Seq#Index(res, i_42), Ref__Integer_value] == Heap[Seq#Index(b_24, i_42 div 2), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_43_1: int ::
          { Seq#Index(res, i_43_1) }
          0 <= i_43_1 && (i_43_1 mod 2 == 1 && i_43_1 < k) ==> Heap[Seq#Index(res, i_43_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_43_1 div 2), Ref__Integer_value]
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, k div 2), i_44)) {
            assert {:msg "  Loop invariant (forall i: Int :: { a[i] } (i in [0..k \ 2)) ==> res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value) might not hold on entry. Assertion res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@76.16--76.113) [6041]"}
              Heap[Seq#Index(res, 2 * i_44), Ref__Integer_value] == Heap[Seq#Index(a_2, i_44), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_45_1: int ::
          { Seq#Index(a_2, i_45_1) }
          Seq#Contains(Seq#Range(0, k div 2), i_45_1) ==> Heap[Seq#Index(res, 2 * i_45_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_45_1), Ref__Integer_value]
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, k div 2), i_46)) {
            assert {:msg "  Loop invariant (forall i: Int :: { b[i] } (i in [0..k \ 2)) ==> res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value) might not hold on entry. Assertion res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@77.16--77.117) [6042]"}
              Heap[Seq#Index(res, 2 * i_46 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_46), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_47_1: int ::
          { Seq#Index(b_24, i_47_1) }
          Seq#Contains(Seq#Range(0, k div 2), i_47_1) ==> Heap[Seq#Index(res, 2 * i_47_1 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_47_1), Ref__Integer_value]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc k, __flatten_3, __flatten_10, __flatten_9, __flatten_2, __flatten_7, __flatten_8, __flatten_6, __flatten_1, __flatten_4, __flatten_5;
      assume Heap[__flatten_9, $allocated];
      assume Heap[__flatten_8, $allocated];
      assume Heap[__flatten_6, $allocated];
      assume Heap[__flatten_5, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= k;
        assume state(Heap, Mask);
        assume k mod 2 == 0;
        assume state(Heap, Mask);
        assume k <= Seq#Length(res);
        assume state(Heap, Mask);
        assume Seq#Length(a_2) == Seq#Length(b_24);
        assume state(Heap, Mask);
        assume Seq#Length(res) == 2 * Seq#Length(a_2);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_20)) {
              assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@71.16--71.88) [6043]"}
                i_20 >= 0;
              assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@71.16--71.88) [6044]"}
                i_20 < Seq#Length(a_2);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@71.16--71.88) [6045]"}
          (forall i_49: int, i_49_1: int ::
          
          (((i_49 != i_49_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_49) != Seq#Index(a_2, i_49_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_49: int ::
            { Seq#Index(a_2, i_49) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_49) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49) } { Seq#Index(a_2, i_49) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49) && NoPerm < FullPerm ==> qpRange13(Seq#Index(a_2, i_49)) && invRecv13(Seq#Index(a_2, i_49)) == i_49
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(a_2, invRecv13(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_49: int ::
            { Seq#Index(a_2, i_49) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_49) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49) } { Seq#Index(a_2, i_49) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_49) ==> Seq#Index(a_2, i_49) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_22)) {
              assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@72.16--72.88) [6046]"}
                i_22 >= 0;
              assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@72.16--72.88) [6047]"}
                i_22 < Seq#Length(b_24);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@72.16--72.88) [6048]"}
          (forall i_51: int, i_51_1: int ::
          
          (((i_51 != i_51_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_51) != Seq#Index(b_24, i_51_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_51: int ::
            { Seq#Index(b_24, i_51) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_51) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51) } { Seq#Index(b_24, i_51) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51) && NoPerm < FullPerm ==> qpRange14(Seq#Index(b_24, i_51)) && invRecv14(Seq#Index(b_24, i_51)) == i_51
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(b_24, invRecv14(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_51: int ::
            { Seq#Index(b_24, i_51) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_51) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51) } { Seq#Index(b_24, i_51) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_51) ==> Seq#Index(b_24, i_51) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(b_24, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(res)), i_24)) {
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@73.16--73.92) [6049]"}
                i_24 >= 0;
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@73.16--73.92) [6050]"}
                i_24 < Seq#Length(res);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@73.16--73.92) [6051]"}
          (forall i_53: int, i_53_1: int ::
          
          (((i_53 != i_53_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_53) != Seq#Index(res, i_53_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_53: int ::
            { Seq#Index(res, i_53) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_53) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53) } { Seq#Index(res, i_53) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53) && NoPerm < FullPerm ==> qpRange15(Seq#Index(res, i_53)) && invRecv15(Seq#Index(res, i_53)) == i_53
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> Seq#Index(res, invRecv15(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_53: int ::
            { Seq#Index(res, i_53) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_53) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53) } { Seq#Index(res, i_53) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_53) ==> Seq#Index(res, i_53) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(res, invRecv15(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv15(o_4)) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 0 && i < k) ==> res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value)
          if (*) {
            if (0 <= i_29 && (i_29 mod 2 == 0 && i_29 < k)) {
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@74.16--74.131) [6052]"}
                i_29 >= 0;
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@74.16--74.131) [6053]"}
                i_29 < Seq#Length(res);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@74.16--74.131) [6054]"}
                HasDirectPerm(Mask, Seq#Index(res, i_29), Ref__Integer_value);
              assert {:msg "  Contract might not be well-formed. Index a[i \ 2] into a might be negative. (fmse-2015-04-16.vpr@74.16--74.131) [6055]"}
                i_29 div 2 >= 0;
              assert {:msg "  Contract might not be well-formed. Index a[i \ 2] into a might exceed sequence length. (fmse-2015-04-16.vpr@74.16--74.131) [6056]"}
                i_29 div 2 < Seq#Length(a_2);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@74.16--74.131) [6057]"}
                HasDirectPerm(Mask, Seq#Index(a_2, i_29 div 2), Ref__Integer_value);
            }
            assume false;
          }
        assume (forall i_55: int ::
          { Seq#Index(res, i_55) }
          0 <= i_55 && (i_55 mod 2 == 0 && i_55 < k) ==> Heap[Seq#Index(res, i_55), Ref__Integer_value] == Heap[Seq#Index(a_2, i_55 div 2), Ref__Integer_value]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 1 && i < k) ==> res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value)
          if (*) {
            if (0 <= i_30 && (i_30 mod 2 == 1 && i_30 < k)) {
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@75.16--75.131) [6058]"}
                i_30 >= 0;
              assert {:msg "  Contract might not be well-formed. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@75.16--75.131) [6059]"}
                i_30 < Seq#Length(res);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@75.16--75.131) [6060]"}
                HasDirectPerm(Mask, Seq#Index(res, i_30), Ref__Integer_value);
              assert {:msg "  Contract might not be well-formed. Index b[i \ 2] into b might be negative. (fmse-2015-04-16.vpr@75.16--75.131) [6061]"}
                i_30 div 2 >= 0;
              assert {:msg "  Contract might not be well-formed. Index b[i \ 2] into b might exceed sequence length. (fmse-2015-04-16.vpr@75.16--75.131) [6062]"}
                i_30 div 2 < Seq#Length(b_24);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@75.16--75.131) [6063]"}
                HasDirectPerm(Mask, Seq#Index(b_24, i_30 div 2), Ref__Integer_value);
            }
            assume false;
          }
        assume (forall i_57: int ::
          { Seq#Index(res, i_57) }
          0 <= i_57 && (i_57 mod 2 == 1 && i_57 < k) ==> Heap[Seq#Index(res, i_57), Ref__Integer_value] == Heap[Seq#Index(b_24, i_57 div 2), Ref__Integer_value]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { a[i] } (i in [0..k \ 2)) ==> res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value)
          if (*) {
            if (Seq#Contains(Seq#Range(0, k div 2), i_31)) {
              assert {:msg "  Contract might not be well-formed. Index res[2 * i] into res might be negative. (fmse-2015-04-16.vpr@76.16--76.113) [6064]"}
                2 * i_31 >= 0;
              assert {:msg "  Contract might not be well-formed. Index res[2 * i] into res might exceed sequence length. (fmse-2015-04-16.vpr@76.16--76.113) [6065]"}
                2 * i_31 < Seq#Length(res);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[2 * i].Ref__Integer_value (fmse-2015-04-16.vpr@76.16--76.113) [6066]"}
                HasDirectPerm(Mask, Seq#Index(res, 2 * i_31), Ref__Integer_value);
              assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@76.16--76.113) [6067]"}
                i_31 >= 0;
              assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@76.16--76.113) [6068]"}
                i_31 < Seq#Length(a_2);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@76.16--76.113) [6069]"}
                HasDirectPerm(Mask, Seq#Index(a_2, i_31), Ref__Integer_value);
            }
            assume false;
          }
        assume (forall i_59: int ::
          { Seq#Index(a_2, i_59) }
          Seq#Contains(Seq#Range(0, k div 2), i_59) ==> Heap[Seq#Index(res, 2 * i_59), Ref__Integer_value] == Heap[Seq#Index(a_2, i_59), Ref__Integer_value]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { b[i] } (i in [0..k \ 2)) ==> res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value)
          if (*) {
            if (Seq#Contains(Seq#Range(0, k div 2), i_32)) {
              assert {:msg "  Contract might not be well-formed. Index res[2 * i + 1] into res might be negative. (fmse-2015-04-16.vpr@77.16--77.117) [6070]"}
                2 * i_32 + 1 >= 0;
              assert {:msg "  Contract might not be well-formed. Index res[2 * i + 1] into res might exceed sequence length. (fmse-2015-04-16.vpr@77.16--77.117) [6071]"}
                2 * i_32 + 1 < Seq#Length(res);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res[2 * i + 1].Ref__Integer_value (fmse-2015-04-16.vpr@77.16--77.117) [6072]"}
                HasDirectPerm(Mask, Seq#Index(res, 2 * i_32 + 1), Ref__Integer_value);
              assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@77.16--77.117) [6073]"}
                i_32 >= 0;
              assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@77.16--77.117) [6074]"}
                i_32 < Seq#Length(b_24);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@77.16--77.117) [6075]"}
                HasDirectPerm(Mask, Seq#Index(b_24, i_32), Ref__Integer_value);
            }
            assume false;
          }
        assume (forall i_61: int ::
          { Seq#Index(b_24, i_61) }
          Seq#Contains(Seq#Range(0, k div 2), i_61) ==> Heap[Seq#Index(res, 2 * i_61 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_61), Ref__Integer_value]
        );
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
        assume 0 <= k;
        assume k mod 2 == 0;
        assume k <= Seq#Length(res);
        assume Seq#Length(a_2) == Seq#Length(b_24);
        assume Seq#Length(res) == 2 * Seq#Length(a_2);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@71.16--71.88) [6076]"}
          (forall i_62: int, i_62_1: int ::
          
          (((i_62 != i_62_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_62) != Seq#Index(a_2, i_62_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_62: int ::
            { Seq#Index(a_2, i_62) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_62) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62) } { Seq#Index(a_2, i_62) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62) && NoPerm < FullPerm ==> qpRange16(Seq#Index(a_2, i_62)) && invRecv16(Seq#Index(a_2, i_62)) == i_62
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(a_2, invRecv16(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_62: int ::
            { Seq#Index(a_2, i_62) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_62) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62) } { Seq#Index(a_2, i_62) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_62) ==> Seq#Index(a_2, i_62) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv16(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@72.16--72.88) [6077]"}
          (forall i_63: int, i_63_1: int ::
          
          (((i_63 != i_63_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_63) != Seq#Index(b_24, i_63_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_63: int ::
            { Seq#Index(b_24, i_63) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_63) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63) } { Seq#Index(b_24, i_63) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63) && NoPerm < FullPerm ==> qpRange17(Seq#Index(b_24, i_63)) && invRecv17(Seq#Index(b_24, i_63)) == i_63
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> Seq#Index(b_24, invRecv17(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_63: int ::
            { Seq#Index(b_24, i_63) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_63) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63) } { Seq#Index(b_24, i_63) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_63) ==> Seq#Index(b_24, i_63) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(b_24, invRecv17(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv17(o_4)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@73.16--73.92) [6078]"}
          (forall i_64: int, i_64_1: int ::
          
          (((i_64 != i_64_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_64) != Seq#Index(res, i_64_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_64: int ::
            { Seq#Index(res, i_64) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_64) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64) } { Seq#Index(res, i_64) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64) && NoPerm < FullPerm ==> qpRange18(Seq#Index(res, i_64)) && invRecv18(Seq#Index(res, i_64)) == i_64
          );
          assume (forall o_4: Ref ::
            { invRecv18(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4) ==> Seq#Index(res, invRecv18(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_64: int ::
            { Seq#Index(res, i_64) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_64) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64) } { Seq#Index(res, i_64) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_64) ==> Seq#Index(res, i_64) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(res, invRecv18(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv18(o_4)) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall i_65: int ::
          { Seq#Index(res, i_65) }
          0 <= i_65 && (i_65 mod 2 == 0 && i_65 < k) ==> Heap[Seq#Index(res, i_65), Ref__Integer_value] == Heap[Seq#Index(a_2, i_65 div 2), Ref__Integer_value]
        );
        assume (forall i_66: int ::
          { Seq#Index(res, i_66) }
          0 <= i_66 && (i_66 mod 2 == 1 && i_66 < k) ==> Heap[Seq#Index(res, i_66), Ref__Integer_value] == Heap[Seq#Index(b_24, i_66 div 2), Ref__Integer_value]
        );
        assume (forall i_67: int ::
          { Seq#Index(a_2, i_67) }
          Seq#Contains(Seq#Range(0, k div 2), i_67) ==> Heap[Seq#Index(res, 2 * i_67), Ref__Integer_value] == Heap[Seq#Index(a_2, i_67), Ref__Integer_value]
        );
        assume (forall i_68: int ::
          { Seq#Index(b_24, i_68) }
          Seq#Contains(Seq#Range(0, k div 2), i_68) ==> Heap[Seq#Index(res, 2 * i_68 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_68), Ref__Integer_value]
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume k < Seq#Length(res);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_5 := a[k \ 2] -- fmse-2015-04-16.vpr@79.5--79.28
            
            // -- Check definedness of a[k \ 2]
              assert {:msg "  Assignment might fail. Index a[k \ 2] into a might be negative. (fmse-2015-04-16.vpr@79.5--79.28) [6079]"}
                k div 2 >= 0;
              assert {:msg "  Assignment might fail. Index a[k \ 2] into a might exceed sequence length. (fmse-2015-04-16.vpr@79.5--79.28) [6080]"}
                k div 2 < Seq#Length(a_2);
            __flatten_5 := Seq#Index(a_2, k div 2);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_4 := __flatten_5.Ref__Integer_value -- fmse-2015-04-16.vpr@80.5--80.50
            
            // -- Check definedness of __flatten_5.Ref__Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (fmse-2015-04-16.vpr@80.5--80.50) [6081]"}
                HasDirectPerm(Mask, __flatten_5, Ref__Integer_value);
            __flatten_4 := Heap[__flatten_5, Ref__Integer_value];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_1 := __flatten_4 -- fmse-2015-04-16.vpr@81.5--81.31
            __flatten_1 := __flatten_4;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_6 := res[k] -- fmse-2015-04-16.vpr@82.5--82.26
            
            // -- Check definedness of res[k]
              assert {:msg "  Assignment might fail. Index res[k] into res might be negative. (fmse-2015-04-16.vpr@82.5--82.26) [6082]"}
                k >= 0;
              assert {:msg "  Assignment might fail. Index res[k] into res might exceed sequence length. (fmse-2015-04-16.vpr@82.5--82.26) [6083]"}
                k < Seq#Length(res);
            __flatten_6 := Seq#Index(res, k);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_1 -- fmse-2015-04-16.vpr@83.5--83.50
            assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (fmse-2015-04-16.vpr@83.5--83.50) [6084]"}
              FullPerm == Mask[__flatten_6, Ref__Integer_value];
            Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_8 := b[k \ 2] -- fmse-2015-04-16.vpr@84.5--84.28
            
            // -- Check definedness of b[k \ 2]
              assert {:msg "  Assignment might fail. Index b[k \ 2] into b might be negative. (fmse-2015-04-16.vpr@84.5--84.28) [6085]"}
                k div 2 >= 0;
              assert {:msg "  Assignment might fail. Index b[k \ 2] into b might exceed sequence length. (fmse-2015-04-16.vpr@84.5--84.28) [6086]"}
                k div 2 < Seq#Length(b_24);
            __flatten_8 := Seq#Index(b_24, k div 2);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value -- fmse-2015-04-16.vpr@85.5--85.50
            
            // -- Check definedness of __flatten_8.Ref__Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (fmse-2015-04-16.vpr@85.5--85.50) [6087]"}
                HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
            __flatten_7 := Heap[__flatten_8, Ref__Integer_value];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_2 := __flatten_7 -- fmse-2015-04-16.vpr@86.5--86.31
            __flatten_2 := __flatten_7;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_9 := res[k + 1] -- fmse-2015-04-16.vpr@87.5--87.30
            
            // -- Check definedness of res[k + 1]
              assert {:msg "  Assignment might fail. Index res[k + 1] into res might be negative. (fmse-2015-04-16.vpr@87.5--87.30) [6088]"}
                k + 1 >= 0;
              assert {:msg "  Assignment might fail. Index res[k + 1] into res might exceed sequence length. (fmse-2015-04-16.vpr@87.5--87.30) [6089]"}
                k + 1 < Seq#Length(res);
            __flatten_9 := Seq#Index(res, k + 1);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_9.Ref__Integer_value := __flatten_2 -- fmse-2015-04-16.vpr@88.5--88.50
            assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (fmse-2015-04-16.vpr@88.5--88.50) [6090]"}
              FullPerm == Mask[__flatten_9, Ref__Integer_value];
            Heap := Heap[__flatten_9, Ref__Integer_value:=__flatten_2];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_10 := k + 2 -- fmse-2015-04-16.vpr@89.5--89.26
            __flatten_10 := k + 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_3 := __flatten_10 -- fmse-2015-04-16.vpr@90.5--90.32
            __flatten_3 := __flatten_10;
            assume state(Heap, Mask);
          
          // -- Translating statement: k := __flatten_3 -- fmse-2015-04-16.vpr@91.5--91.21
            k := __flatten_3;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= k might not be preserved. Assertion 0 <= k might not hold. (fmse-2015-04-16.vpr@66.15--66.21) [6091]"}
          0 <= k;
        assert {:msg "  Loop invariant k % 2 == 0 might not be preserved. Assertion k % 2 == 0 might not hold. (fmse-2015-04-16.vpr@67.15--67.25) [6092]"}
          k mod 2 == 0;
        assert {:msg "  Loop invariant k <= |res| might not be preserved. Assertion k <= |res| might not hold. (fmse-2015-04-16.vpr@68.15--68.25) [6093]"}
          k <= Seq#Length(res);
        assert {:msg "  Loop invariant |a| == |b| might not be preserved. Assertion |a| == |b| might not hold. (fmse-2015-04-16.vpr@69.15--69.25) [6094]"}
          Seq#Length(a_2) == Seq#Length(b_24);
        assert {:msg "  Loop invariant |res| == 2 * |a| might not be preserved. Assertion |res| == 2 * |a| might not hold. (fmse-2015-04-16.vpr@70.15--70.31) [6095]"}
          Seq#Length(res) == 2 * Seq#Length(a_2);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write)) might not be preserved. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@71.16--71.88) [6096]"}
            (forall i_69: int, i_69_1: int ::
            { neverTriggered19(i_69), neverTriggered19(i_69_1) }
            (((i_69 != i_69_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_69) != Seq#Index(a_2, i_69_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|a|)) } { a[i] } (i in [0..|a|)) ==> acc(a[i].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@71.16--71.88) [6097]"}
            (forall i_69: int ::
            { Seq#Index(a_2, i_69) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_69) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69) } { Seq#Index(a_2, i_69) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69) ==> Mask[Seq#Index(a_2, i_69), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver a[i]
          assume (forall i_69: int ::
            { Seq#Index(a_2, i_69) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_69) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69) } { Seq#Index(a_2, i_69) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_69) && NoPerm < FullPerm ==> qpRange19(Seq#Index(a_2, i_69)) && invRecv19(Seq#Index(a_2, i_69)) == i_69
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(a_2, invRecv19(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(a_2, invRecv19(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver b[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write)) might not be preserved. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@72.16--72.88) [6098]"}
            (forall i_70: int, i_70_1: int ::
            { neverTriggered20(i_70), neverTriggered20(i_70_1) }
            (((i_70 != i_70_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_70) != Seq#Index(b_24, i_70_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|b|)) } { b[i] } (i in [0..|b|)) ==> acc(b[i].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@72.16--72.88) [6099]"}
            (forall i_70: int ::
            { Seq#Index(b_24, i_70) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_70) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70) } { Seq#Index(b_24, i_70) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70) ==> Mask[Seq#Index(b_24, i_70), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver b[i]
          assume (forall i_70: int ::
            { Seq#Index(b_24, i_70) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_70) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70) } { Seq#Index(b_24, i_70) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_70) && NoPerm < FullPerm ==> qpRange20(Seq#Index(b_24, i_70)) && invRecv20(Seq#Index(b_24, i_70)) == i_70
          );
          assume (forall o_4: Ref ::
            { invRecv20(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> Seq#Index(b_24, invRecv20(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> Seq#Index(b_24, invRecv20(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver res[i] is injective
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write)) might not be preserved. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@73.16--73.92) [6100]"}
            (forall i_71: int, i_71_1: int ::
            { neverTriggered21(i_71), neverTriggered21(i_71_1) }
            (((i_71 != i_71_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_71) != Seq#Index(res, i_71_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { (i in [0..|res|)) } { res[i] } (i in [0..|res|)) ==> acc(res[i].Ref__Integer_value, write)) might not be preserved. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@73.16--73.92) [6101]"}
            (forall i_71: int ::
            { Seq#Index(res, i_71) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_71) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71) } { Seq#Index(res, i_71) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71) ==> Mask[Seq#Index(res, i_71), Ref__Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver res[i]
          assume (forall i_71: int ::
            { Seq#Index(res, i_71) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_71) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71) } { Seq#Index(res, i_71) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), i_71) && NoPerm < FullPerm ==> qpRange21(Seq#Index(res, i_71)) && invRecv21(Seq#Index(res, i_71)) == i_71
          );
          assume (forall o_4: Ref ::
            { invRecv21(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(res, invRecv21(o_4)) == o_4
          );
        
        // -- assume permission updates for field Ref__Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Ref__Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4)) ==> Seq#Index(res, invRecv21(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv21(o_4)) && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= i_72 && (i_72 mod 2 == 0 && i_72 < k)) {
            assert {:msg "  Loop invariant (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 0 && i < k) ==> res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value) might not be preserved. Assertion res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@74.16--74.131) [6102]"}
              Heap[Seq#Index(res, i_72), Ref__Integer_value] == Heap[Seq#Index(a_2, i_72 div 2), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_73_1: int ::
          { Seq#Index(res, i_73_1) }
          0 <= i_73_1 && (i_73_1 mod 2 == 0 && i_73_1 < k) ==> Heap[Seq#Index(res, i_73_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_73_1 div 2), Ref__Integer_value]
        );
        if (*) {
          if (0 <= i_74 && (i_74 mod 2 == 1 && i_74 < k)) {
            assert {:msg "  Loop invariant (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 1 && i < k) ==> res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value) might not be preserved. Assertion res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@75.16--75.131) [6103]"}
              Heap[Seq#Index(res, i_74), Ref__Integer_value] == Heap[Seq#Index(b_24, i_74 div 2), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_75_1: int ::
          { Seq#Index(res, i_75_1) }
          0 <= i_75_1 && (i_75_1 mod 2 == 1 && i_75_1 < k) ==> Heap[Seq#Index(res, i_75_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_75_1 div 2), Ref__Integer_value]
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, k div 2), i_76)) {
            assert {:msg "  Loop invariant (forall i: Int :: { a[i] } (i in [0..k \ 2)) ==> res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value) might not be preserved. Assertion res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@76.16--76.113) [6104]"}
              Heap[Seq#Index(res, 2 * i_76), Ref__Integer_value] == Heap[Seq#Index(a_2, i_76), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_77_1: int ::
          { Seq#Index(a_2, i_77_1) }
          Seq#Contains(Seq#Range(0, k div 2), i_77_1) ==> Heap[Seq#Index(res, 2 * i_77_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_77_1), Ref__Integer_value]
        );
        if (*) {
          if (Seq#Contains(Seq#Range(0, k div 2), i_78)) {
            assert {:msg "  Loop invariant (forall i: Int :: { b[i] } (i in [0..k \ 2)) ==> res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value) might not be preserved. Assertion res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@77.16--77.117) [6105]"}
              Heap[Seq#Index(res, 2 * i_78 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_78), Ref__Integer_value];
          }
          assume false;
        }
        assume (forall i_79_1: int ::
          { Seq#Index(b_24, i_79_1) }
          Seq#Contains(Seq#Range(0, k div 2), i_79_1) ==> Heap[Seq#Index(res, 2 * i_79_1 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_79_1), Ref__Integer_value]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(k < Seq#Length(res));
      assume state(Heap, Mask);
      assume 0 <= k;
      assume k mod 2 == 0;
      assume k <= Seq#Length(res);
      assume Seq#Length(a_2) == Seq#Length(b_24);
      assume Seq#Length(res) == 2 * Seq#Length(a_2);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@71.16--71.88) [6106]"}
        (forall i_80: int, i_80_1: int ::
        
        (((i_80 != i_80_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_80) != Seq#Index(a_2, i_80_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_80: int ::
          { Seq#Index(a_2, i_80) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_80) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80) } { Seq#Index(a_2, i_80) }
          Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80) && NoPerm < FullPerm ==> qpRange22(Seq#Index(a_2, i_80)) && invRecv22(Seq#Index(a_2, i_80)) == i_80
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4) ==> Seq#Index(a_2, invRecv22(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_80: int ::
          { Seq#Index(a_2, i_80) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_80) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80) } { Seq#Index(a_2, i_80) }
          Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_80) ==> Seq#Index(a_2, i_80) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv22(o_4)) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@72.16--72.88) [6107]"}
        (forall i_81: int, i_81_1: int ::
        
        (((i_81 != i_81_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_81) != Seq#Index(b_24, i_81_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_81: int ::
          { Seq#Index(b_24, i_81) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_81) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81) } { Seq#Index(b_24, i_81) }
          Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81) && NoPerm < FullPerm ==> qpRange23(Seq#Index(b_24, i_81)) && invRecv23(Seq#Index(b_24, i_81)) == i_81
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4) ==> Seq#Index(b_24, invRecv23(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_81: int ::
          { Seq#Index(b_24, i_81) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_81) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81) } { Seq#Index(b_24, i_81) }
          Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_81) ==> Seq#Index(b_24, i_81) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(b_24, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv23(o_4)) && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@73.16--73.92) [6108]"}
        (forall i_82: int, i_82_1: int ::
        
        (((i_82 != i_82_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_82) != Seq#Index(res, i_82_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_82: int ::
          { Seq#Index(res, i_82) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_82) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82) } { Seq#Index(res, i_82) }
          Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82) && NoPerm < FullPerm ==> qpRange24(Seq#Index(res, i_82)) && invRecv24(Seq#Index(res, i_82)) == i_82
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4) ==> Seq#Index(res, invRecv24(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_82: int ::
          { Seq#Index(res, i_82) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_82) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82) } { Seq#Index(res, i_82) }
          Seq#Contains(Seq#Range(0, Seq#Length(res)), i_82) ==> Seq#Index(res, i_82) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(res, invRecv24(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i_83: int ::
        { Seq#Index(res, i_83) }
        0 <= i_83 && (i_83 mod 2 == 0 && i_83 < k) ==> Heap[Seq#Index(res, i_83), Ref__Integer_value] == Heap[Seq#Index(a_2, i_83 div 2), Ref__Integer_value]
      );
      assume (forall i_84: int ::
        { Seq#Index(res, i_84) }
        0 <= i_84 && (i_84 mod 2 == 1 && i_84 < k) ==> Heap[Seq#Index(res, i_84), Ref__Integer_value] == Heap[Seq#Index(b_24, i_84 div 2), Ref__Integer_value]
      );
      assume (forall i_85: int ::
        { Seq#Index(a_2, i_85) }
        Seq#Contains(Seq#Range(0, k div 2), i_85) ==> Heap[Seq#Index(res, 2 * i_85), Ref__Integer_value] == Heap[Seq#Index(a_2, i_85), Ref__Integer_value]
      );
      assume (forall i_86: int ::
        { Seq#Index(b_24, i_86) }
        Seq#Contains(Seq#Range(0, k div 2), i_86) ==> Heap[Seq#Index(res, 2 * i_86 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_86), Ref__Integer_value]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert k == |res| -- fmse-2015-04-16.vpr@93.3--93.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion k == |res| might not hold. (fmse-2015-04-16.vpr@93.10--93.20) [6109]"}
      k == Seq#Length(res);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |res| \ 2 == k \ 2 -- fmse-2015-04-16.vpr@94.3--94.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |res| \ 2 == k \ 2 might not hold. (fmse-2015-04-16.vpr@94.10--94.28) [6110]"}
      Seq#Length(res) div 2 == k div 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { a[i] }
  //     (i in [0..|res| \ 2)) ==>
  //     res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value) -- fmse-2015-04-16.vpr@95.3--95.113
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { a[i] } (i in [0..|res| \ 2)) ==> res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_33)) {
          assert {:msg "  Assert might fail. Index res[2 * i] into res might be negative. (fmse-2015-04-16.vpr@95.11--95.112) [6111]"}
            2 * i_33 >= 0;
          assert {:msg "  Assert might fail. Index res[2 * i] into res might exceed sequence length. (fmse-2015-04-16.vpr@95.11--95.112) [6112]"}
            2 * i_33 < Seq#Length(res);
          assert {:msg "  Assert might fail. There might be insufficient permission to access res[2 * i].Ref__Integer_value (fmse-2015-04-16.vpr@95.11--95.112) [6113]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(res, 2 * i_33), Ref__Integer_value);
          assert {:msg "  Assert might fail. Index a[i] into a might be negative. (fmse-2015-04-16.vpr@95.11--95.112) [6114]"}
            i_33 >= 0;
          assert {:msg "  Assert might fail. Index a[i] into a might exceed sequence length. (fmse-2015-04-16.vpr@95.11--95.112) [6115]"}
            i_33 < Seq#Length(a_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@95.11--95.112) [6116]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(a_2, i_33), Ref__Integer_value);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_88)) {
        assert {:msg "  Assert might fail. Assertion res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@95.11--95.112) [6117]"}
          Heap[Seq#Index(res, 2 * i_88), Ref__Integer_value] == Heap[Seq#Index(a_2, i_88), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_89_1: int ::
      { Seq#Index(a_2, i_89_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_89_1) ==> Heap[Seq#Index(res, 2 * i_89_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_89_1), Ref__Integer_value]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { res[i] }
  //     0 <= i && (i % 2 == 1 && i < |res|) ==>
  //     res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value) -- fmse-2015-04-16.vpr@96.3--96.131
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 1 && i < |res|) ==> res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value)
      if (*) {
        if (0 <= i_34 && (i_34 mod 2 == 1 && i_34 < Seq#Length(res))) {
          assert {:msg "  Assert might fail. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@96.11--96.130) [6118]"}
            i_34 >= 0;
          assert {:msg "  Assert might fail. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@96.11--96.130) [6119]"}
            i_34 < Seq#Length(res);
          assert {:msg "  Assert might fail. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@96.11--96.130) [6120]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(res, i_34), Ref__Integer_value);
          assert {:msg "  Assert might fail. Index b[i \ 2] into b might be negative. (fmse-2015-04-16.vpr@96.11--96.130) [6121]"}
            i_34 div 2 >= 0;
          assert {:msg "  Assert might fail. Index b[i \ 2] into b might exceed sequence length. (fmse-2015-04-16.vpr@96.11--96.130) [6122]"}
            i_34 div 2 < Seq#Length(b_24);
          assert {:msg "  Assert might fail. There might be insufficient permission to access b[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@96.11--96.130) [6123]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(b_24, i_34 div 2), Ref__Integer_value);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_91 && (i_91 mod 2 == 1 && i_91 < Seq#Length(res))) {
        assert {:msg "  Assert might fail. Assertion res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@96.11--96.130) [6124]"}
          Heap[Seq#Index(res, i_91), Ref__Integer_value] == Heap[Seq#Index(b_24, i_91 div 2), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_92_1: int ::
      { Seq#Index(res, i_92_1) }
      0 <= i_92_1 && (i_92_1 mod 2 == 1 && i_92_1 < Seq#Length(res)) ==> Heap[Seq#Index(res, i_92_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_92_1 div 2), Ref__Integer_value]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { b[i] }
  //     (i in [0..|res| \ 2)) ==>
  //     res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value) -- fmse-2015-04-16.vpr@97.3--97.117
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { b[i] } (i in [0..|res| \ 2)) ==> res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_35)) {
          assert {:msg "  Assert might fail. Index res[2 * i + 1] into res might be negative. (fmse-2015-04-16.vpr@97.11--97.116) [6125]"}
            2 * i_35 + 1 >= 0;
          assert {:msg "  Assert might fail. Index res[2 * i + 1] into res might exceed sequence length. (fmse-2015-04-16.vpr@97.11--97.116) [6126]"}
            2 * i_35 + 1 < Seq#Length(res);
          assert {:msg "  Assert might fail. There might be insufficient permission to access res[2 * i + 1].Ref__Integer_value (fmse-2015-04-16.vpr@97.11--97.116) [6127]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(res, 2 * i_35 + 1), Ref__Integer_value);
          assert {:msg "  Assert might fail. Index b[i] into b might be negative. (fmse-2015-04-16.vpr@97.11--97.116) [6128]"}
            i_35 >= 0;
          assert {:msg "  Assert might fail. Index b[i] into b might exceed sequence length. (fmse-2015-04-16.vpr@97.11--97.116) [6129]"}
            i_35 < Seq#Length(b_24);
          assert {:msg "  Assert might fail. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@97.11--97.116) [6130]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(b_24, i_35), Ref__Integer_value);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_94)) {
        assert {:msg "  Assert might fail. Assertion res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@97.11--97.116) [6131]"}
          Heap[Seq#Index(res, 2 * i_94 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_94), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_95_1: int ::
      { Seq#Index(b_24, i_95_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(res) div 2), i_95_1) ==> Heap[Seq#Index(res, 2 * i_95_1 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_95_1), Ref__Integer_value]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { res[i] }
  //     0 <= i && (i % 2 == 0 && i < |res|) ==>
  //     res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value) -- fmse-2015-04-16.vpr@98.3--98.131
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { res[i] } 0 <= i && (i % 2 == 0 && i < |res|) ==> res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value)
      if (*) {
        if (0 <= i_36 && (i_36 mod 2 == 0 && i_36 < Seq#Length(res))) {
          assert {:msg "  Assert might fail. Index res[i] into res might be negative. (fmse-2015-04-16.vpr@98.11--98.130) [6132]"}
            i_36 >= 0;
          assert {:msg "  Assert might fail. Index res[i] into res might exceed sequence length. (fmse-2015-04-16.vpr@98.11--98.130) [6133]"}
            i_36 < Seq#Length(res);
          assert {:msg "  Assert might fail. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@98.11--98.130) [6134]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(res, i_36), Ref__Integer_value);
          assert {:msg "  Assert might fail. Index a[i \ 2] into a might be negative. (fmse-2015-04-16.vpr@98.11--98.130) [6135]"}
            i_36 div 2 >= 0;
          assert {:msg "  Assert might fail. Index a[i \ 2] into a might exceed sequence length. (fmse-2015-04-16.vpr@98.11--98.130) [6136]"}
            i_36 div 2 < Seq#Length(a_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a[i \ 2].Ref__Integer_value (fmse-2015-04-16.vpr@98.11--98.130) [6137]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(a_2, i_36 div 2), Ref__Integer_value);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_97 && (i_97 mod 2 == 0 && i_97 < Seq#Length(res))) {
        assert {:msg "  Assert might fail. Assertion res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@98.11--98.130) [6138]"}
          Heap[Seq#Index(res, i_97), Ref__Integer_value] == Heap[Seq#Index(a_2, i_97 div 2), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_98_1: int ::
      { Seq#Index(res, i_98_1) }
      0 <= i_98_1 && (i_98_1 mod 2 == 0 && i_98_1 < Seq#Length(res)) ==> Heap[Seq#Index(res, i_98_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_98_1 div 2), Ref__Integer_value]
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion |res| == 2 * |a| might not hold. (fmse-2015-04-16.vpr@21.11--21.27) [6139]"}
      Seq#Length(res) == 2 * Seq#Length(a_2);
    assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion |a| == |b| might not hold. (fmse-2015-04-16.vpr@22.11--22.21) [6140]"}
      Seq#Length(a_2) == Seq#Length(b_24);
    assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion |res| == 2 * |b| might not hold. (fmse-2015-04-16.vpr@23.11--23.27) [6141]"}
      Seq#Length(res) == 2 * Seq#Length(b_24);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@24.12--24.84) [6142]"}
        (forall i_26: int, i_26_1: int ::
        { neverTriggered7(i_26), neverTriggered7(i_26_1) }
        (((i_26 != i_26_1 && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26)) && Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_26) != Seq#Index(a_2, i_26_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Exercise4__zip might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (fmse-2015-04-16.vpr@24.12--24.84) [6143]"}
        (forall i_26: int ::
        { Seq#Index(a_2, i_26) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_26) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26) } { Seq#Index(a_2, i_26) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26) ==> Mask[Seq#Index(a_2, i_26), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_26: int ::
        { Seq#Index(a_2, i_26) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_26) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26) } { Seq#Index(a_2, i_26) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_26) && NoPerm < FullPerm ==> qpRange7(Seq#Index(a_2, i_26)) && invRecv7(Seq#Index(a_2, i_26)) == i_26
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(a_2, invRecv7(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(a_2, invRecv7(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(a_2)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@25.12--25.84) [6144]"}
        (forall i_27: int, i_27_1: int ::
        { neverTriggered8(i_27), neverTriggered8(i_27_1) }
        (((i_27 != i_27_1 && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27)) && Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(b_24, i_27) != Seq#Index(b_24, i_27_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Exercise4__zip might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (fmse-2015-04-16.vpr@25.12--25.84) [6145]"}
        (forall i_27: int ::
        { Seq#Index(b_24, i_27) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_27) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27) } { Seq#Index(b_24, i_27) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27) ==> Mask[Seq#Index(b_24, i_27), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_27: int ::
        { Seq#Index(b_24, i_27) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_27) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27) } { Seq#Index(b_24, i_27) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_27) && NoPerm < FullPerm ==> qpRange8(Seq#Index(b_24, i_27)) && invRecv8(Seq#Index(b_24, i_27)) == i_27
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(b_24, invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(b_24, invRecv8(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(b_24)), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver res[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource res[i].Ref__Integer_value might not be injective. (fmse-2015-04-16.vpr@26.12--26.88) [6146]"}
        (forall i_28: int, i_28_1: int ::
        { neverTriggered9(i_28), neverTriggered9(i_28_1) }
        (((i_28 != i_28_1 && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28)) && Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(res, i_28) != Seq#Index(res, i_28_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Exercise4__zip might not hold. There might be insufficient permission to access res[i].Ref__Integer_value (fmse-2015-04-16.vpr@26.12--26.88) [6147]"}
        (forall i_28: int ::
        { Seq#Index(res, i_28) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_28) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28) } { Seq#Index(res, i_28) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28) ==> Mask[Seq#Index(res, i_28), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver res[i]
      assume (forall i_28: int ::
        { Seq#Index(res, i_28) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(res)), i_28) } { Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28) } { Seq#Index(res, i_28) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), i_28) && NoPerm < FullPerm ==> qpRange9(Seq#Index(res, i_28)) && invRecv9(Seq#Index(res, i_28)) == i_28
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(res, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(res, invRecv9(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(res)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_29_1)) {
        assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion res[2 * i].Ref__Integer_value == a[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@27.12--27.107) [6148]"}
          Heap[Seq#Index(res, 2 * i_29_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_29_1), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_30_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(a_2)), i_30_1) } { Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_30_1) } { Seq#Index(a_2, i_30_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(a_2)), i_30_1) ==> Heap[Seq#Index(res, 2 * i_30_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_30_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_31_1 && (i_31_1 mod 2 == 1 && i_31_1 < Seq#Length(res))) {
        assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion res[i].Ref__Integer_value == b[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@49.12--49.131) [6149]"}
          Heap[Seq#Index(res, i_31_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_31_1 div 2), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_32_1: int ::
      { Seq#Index(res, i_32_1) }
      0 <= i_32_1 && (i_32_1 mod 2 == 1 && i_32_1 < Seq#Length(res)) ==> Heap[Seq#Index(res, i_32_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_32_1 div 2), Ref__Integer_value]
    );
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_33_1)) {
        assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion res[2 * i + 1].Ref__Integer_value == b[i].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@50.12--50.111) [6150]"}
          Heap[Seq#Index(res, 2 * i_33_1 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_33_1), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_34_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(b_24)), i_34_1) } { Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_34_1) } { Seq#Index(b_24, i_34_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(b_24)), i_34_1) ==> Heap[Seq#Index(res, 2 * i_34_1 + 1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_34_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_35_1 && (i_35_1 mod 2 == 0 && i_35_1 < Seq#Length(res))) {
        assert {:msg "  Postcondition of Exercise4__zip might not hold. Assertion res[i].Ref__Integer_value == a[i \ 2].Ref__Integer_value might not hold. (fmse-2015-04-16.vpr@51.12--51.131) [6151]"}
          Heap[Seq#Index(res, i_35_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_35_1 div 2), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_36_1: int ::
      { Seq#Index(res, i_36_1) }
      0 <= i_36_1 && (i_36_1 mod 2 == 0 && i_36_1 < Seq#Length(res)) ==> Heap[Seq#Index(res, i_36_1), Ref__Integer_value] == Heap[Seq#Index(a_2, i_36_1 div 2), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Exercise4__Exercise4
// ==================================================

procedure Exercise4__Exercise4() returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var __flatten_11: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_11, $allocated];
  
  // -- Translating statement: __flatten_11 := new(Exercise4__Integer_value) -- fmse-2015-04-16.vpr@106.3--106.48
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    __flatten_11 := freshObj;
    Mask := Mask[__flatten_11, Exercise4__Integer_value:=Mask[__flatten_11, Exercise4__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz := __flatten_11 -- fmse-2015-04-16.vpr@107.3--107.22
    diz := __flatten_11;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- fmse-2015-04-16.vpr@108.3--108.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- fmse-2015-04-16.vpr@109.3--109.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (fmse-2015-04-16.vpr@109.10--109.29) [6152]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- fmse-2015-04-16.vpr@110.3--110.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Exercise4__Exercise4 might not hold. Assertion sys__result != null might not hold. (fmse-2015-04-16.vpr@102.11--102.30) [6153]"}
      sys__result != null;
}