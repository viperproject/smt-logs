// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:09:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/back.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/back-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(i_9_1: int): bool;
function  neverTriggered4(i_13_1: int): bool;
function  neverTriggered5(i_15: int): bool;
function  neverTriggered6(i_17: int): bool;
function  neverTriggered7(i_19: int): bool;
function  neverTriggered8(i_20_1: int): bool;
function  neverTriggered9(i_21: int): bool;
function  neverTriggered10(i_22_1: int): bool;
function  neverTriggered11(i_3: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_11_1: int): bool;
function  neverTriggered14(i_13_1: int): bool;
function  neverTriggered15(i_15: int): bool;
function  neverTriggered16(i_17: int): bool;
function  neverTriggered17(i_18_1: int): bool;
function  neverTriggered18(i_19: int): bool;
function  neverTriggered19(i_20_1: int): bool;
function  neverTriggered20(i_23: int): bool;
function  neverTriggered21(i_24_1: int): bool;
function  neverTriggered22(i_27: int): bool;
function  neverTriggered23(i_30_2: int): bool;
function  neverTriggered24(i_31_1: int): bool;
function  neverTriggered25(i_32_2: int): bool;
function  neverTriggered26(i_33_1: int): bool;
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
  var perm: Perm;
  var i_4: int;
  var i_6: int;
  var j_2: int;
  var i_7: int;
  var i_8: int;
  var j_3: int;
  var i_9: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_10: int;
  var i_11: int;
  var i_12: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), ar[j] } { (j in [0..len)), ar[i] } { ar[i], ar[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_14) && (Seq#Contains(Seq#Range(0, len), j_5) && i_14 != j_5)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@14.12--14.98) [52862]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@14.12--14.98) [52863]"}
            i_14 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (back.vpr@14.12--14.98) [52864]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (back.vpr@14.12--14.98) [52865]"}
            j_5 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#ContainsTrigger(Seq#Range(0, len), j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#Contains(Seq#Range(0, len), j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#ContainsTrigger(Seq#Range(0, len), j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#Contains(Seq#Range(0, len), j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#Index(ar, j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#Index(ar, j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_1), Seq#Index(ar, i_1) } { Seq#Contains(Seq#Range(0, len), j_1), Seq#Index(ar, i_1) } { Seq#Index(ar, i_1), Seq#Index(ar, j_1) }
      Seq#Contains(Seq#Range(0, len), i_1) && (Seq#Contains(Seq#Range(0, len), j_1) && i_1 != j_1) ==> Seq#Index(ar, i_1) != Seq#Index(ar, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_2)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@15.13--15.81) [52866]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@15.13--15.81) [52867]"}
            i_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@15.13--15.81) [52868]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, len), i_3)) && Seq#Contains(Seq#Range(0, len), i_3_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_3) != Seq#Index(ar, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) && NoPerm < 1 / 2 ==> qpRange1(Seq#Index(ar, i_3)) && invRecv1(Seq#Index(ar, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@15.13--15.81) [52869]"}
      (forall i_3: int ::
      { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
      Seq#Contains(Seq#Range(0, len), i_3) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv1(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv1(o_4)) && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[0].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[0] into ar might exceed sequence length. (back.vpr@16.12--16.43) [52870]"}
        0 < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@16.12--16.43) [52871]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, 0) != null;
    Mask := Mask[Seq#Index(ar, 0), Integer_value:=Mask[Seq#Index(ar, 0), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ar[i] } (i in [0 + 1..|ar| - 1 + 1)) ==> acc(ar[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_4)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@17.13--17.94) [52872]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@17.13--17.94) [52873]"}
            i_4 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@17.13--17.94) [52874]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_5)) && Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_5_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_5) != Seq#Index(ar, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(ar, i_5) } { Seq#Index(ar, i_5) }
        Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_5) && NoPerm < 1 / 2 ==> qpRange2(Seq#Index(ar, i_5)) && invRecv2(Seq#Index(ar, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> Seq#Index(ar, invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@17.13--17.94) [52875]"}
      (forall i_5: int ::
      { Seq#Index(ar, i_5) } { Seq#Index(ar, i_5) }
      Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_5) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(ar, i_5) } { Seq#Index(ar, i_5) }
        Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_5) && 1 / 2 > NoPerm ==> Seq#Index(ar, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(ar, invRecv2(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv2(o_4)) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), br[j] } { (j in [0..len)), br[i] } { br[i], br[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_6) && (Seq#Contains(Seq#Range(0, len), j_2) && i_6 != j_2)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@19.12--19.98) [52876]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@19.12--19.98) [52877]"}
            i_6 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (back.vpr@19.12--19.98) [52878]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (back.vpr@19.12--19.98) [52879]"}
            j_2 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall i_7_1: int, j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1), Seq#ContainsTrigger(Seq#Range(0, len), j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1), Seq#Contains(Seq#Range(0, len), j_3_1) } { Seq#Contains(Seq#Range(0, len), i_7_1), Seq#ContainsTrigger(Seq#Range(0, len), j_3_1) } { Seq#Contains(Seq#Range(0, len), i_7_1), Seq#Contains(Seq#Range(0, len), j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1), Seq#Index(br, j_3_1) } { Seq#Contains(Seq#Range(0, len), i_7_1), Seq#Index(br, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_3_1), Seq#Index(br, i_7_1) } { Seq#Contains(Seq#Range(0, len), j_3_1), Seq#Index(br, i_7_1) } { Seq#Index(br, i_7_1), Seq#Index(br, j_3_1) }
      Seq#Contains(Seq#Range(0, len), i_7_1) && (Seq#Contains(Seq#Range(0, len), j_3_1) && i_7_1 != j_3_1) ==> Seq#Index(br, i_7_1) != Seq#Index(br, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_7)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@20.13--20.81) [52880]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@20.13--20.81) [52881]"}
            i_7 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@20.13--20.81) [52882]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, len), i_9_1)) && Seq#Contains(Seq#Range(0, len), i_9_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_9_1) != Seq#Index(br, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1) } { Seq#Contains(Seq#Range(0, len), i_9_1) } { Seq#Index(br, i_9_1) }
        Seq#Contains(Seq#Range(0, len), i_9_1) && NoPerm < 1 / 2 ==> qpRange3(Seq#Index(br, i_9_1)) && invRecv3(Seq#Index(br, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4) ==> Seq#Index(br, invRecv3(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@20.13--20.81) [52883]"}
      (forall i_9_1: int ::
      { Seq#Index(br, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1) } { Seq#Contains(Seq#Range(0, len), i_9_1) } { Seq#Index(br, i_9_1) }
      Seq#Contains(Seq#Range(0, len), i_9_1) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(br, i_9_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1) } { Seq#Contains(Seq#Range(0, len), i_9_1) } { Seq#Index(br, i_9_1) }
        Seq#Contains(Seq#Range(0, len), i_9_1) && 1 / 2 > NoPerm ==> Seq#Index(br, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv3(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv3(o_4)) && NoPerm < 1 / 2) && qpRange3(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), cr[j] } { (j in [0..len)), cr[i] } { cr[i], cr[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_8) && (Seq#Contains(Seq#Range(0, len), j_3) && i_8 != j_3)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@22.12--22.98) [52884]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@22.12--22.98) [52885]"}
            i_8 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (back.vpr@22.12--22.98) [52886]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (back.vpr@22.12--22.98) [52887]"}
            j_3 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall i_11_1: int, j_5_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1), Seq#ContainsTrigger(Seq#Range(0, len), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1), Seq#Contains(Seq#Range(0, len), j_5_1) } { Seq#Contains(Seq#Range(0, len), i_11_1), Seq#ContainsTrigger(Seq#Range(0, len), j_5_1) } { Seq#Contains(Seq#Range(0, len), i_11_1), Seq#Contains(Seq#Range(0, len), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1), Seq#Index(cr, j_5_1) } { Seq#Contains(Seq#Range(0, len), i_11_1), Seq#Index(cr, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_5_1), Seq#Index(cr, i_11_1) } { Seq#Contains(Seq#Range(0, len), j_5_1), Seq#Index(cr, i_11_1) } { Seq#Index(cr, i_11_1), Seq#Index(cr, j_5_1) }
      Seq#Contains(Seq#Range(0, len), i_11_1) && (Seq#Contains(Seq#Range(0, len), j_5_1) && i_11_1 != j_5_1) ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_9)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@23.13--23.81) [52888]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@23.13--23.81) [52889]"}
            i_9 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@23.13--23.81) [52890]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, len), i_13_1)) && Seq#Contains(Seq#Range(0, len), i_13_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_13_1) != Seq#Index(cr, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(cr, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(cr, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(cr, i_13_1)) && invRecv4(Seq#Index(cr, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(cr, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(cr, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(cr, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) ==> Seq#Index(cr, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv4(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume Seq#Length(ar) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@25.12--25.80) [52891]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@25.12--25.80) [52892]"}
            i_10 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@25.12--25.80) [52893]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, len), i_15)) && Seq#Contains(Seq#Range(0, len), i_15_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_15) != Seq#Index(ar, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(ar, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(ar, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && NoPerm < FullPerm ==> qpRange5(Seq#Index(ar, i_15)) && invRecv5(Seq#Index(ar, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_15: int ::
        { Seq#Index(ar, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(ar, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) ==> Seq#Index(ar, i_15) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv5(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
        if (Seq#Contains(Seq#Range(0, len), i_11)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@27.12--27.80) [52894]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@27.12--27.80) [52895]"}
            i_11 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@27.12--27.80) [52896]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && Seq#Contains(Seq#Range(0, len), i_17)) && Seq#Contains(Seq#Range(0, len), i_17_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_17) != Seq#Index(br, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(br, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(br, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) && NoPerm < 1 / 2 ==> qpRange6(Seq#Index(br, i_17)) && invRecv6(Seq#Index(br, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < 1 / 2) && qpRange6(o_4) ==> Seq#Index(br, invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@27.12--27.80) [52897]"}
      (forall i_17: int ::
      { Seq#Index(br, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(br, i_17) }
      Seq#Contains(Seq#Range(0, len), i_17) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(br, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(br, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) && 1 / 2 > NoPerm ==> Seq#Index(br, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < 1 / 2) && qpRange6(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv6(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv6(o_4)) && NoPerm < 1 / 2) && qpRange6(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
        if (Seq#Contains(Seq#Range(0, len), i_12)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@29.12--29.80) [52898]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@29.12--29.80) [52899]"}
            i_12 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@29.12--29.80) [52900]"}
      (forall i_19: int, i_19_1: int ::
      
      (((i_19 != i_19_1 && Seq#Contains(Seq#Range(0, len), i_19)) && Seq#Contains(Seq#Range(0, len), i_19_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_19) != Seq#Index(cr, i_19_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_19: int ::
        { Seq#Index(cr, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(cr, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) && NoPerm < FullPerm ==> qpRange7(Seq#Index(cr, i_19)) && invRecv7(Seq#Index(cr, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(cr, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_19: int ::
        { Seq#Index(cr, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(cr, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) ==> Seq#Index(cr, i_19) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv7(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
  
  // -- Translating statement: inhale false -- back.vpr@31.3--31.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |ar| == len might not hold. (back.vpr@24.11--24.22) [52901]"}
      Seq#Length(ar) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@25.12--25.80) [52902]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered8(i_20_1), neverTriggered8(i_20_2) }
        (((i_20_1 != i_20_2 && Seq#Contains(Seq#Range(0, len), i_20_1)) && Seq#Contains(Seq#Range(0, len), i_20_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_20_1) != Seq#Index(ar, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@25.12--25.80) [52903]"}
        (forall i_20_1: int ::
        { Seq#Index(ar, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(ar, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) ==> Mask[Seq#Index(ar, i_20_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_20_1: int ::
        { Seq#Index(ar, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(ar, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(ar, i_20_1)) && invRecv8(Seq#Index(ar, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv8(o_4)) && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |br| == len might not hold. (back.vpr@26.11--26.22) [52904]"}
      Seq#Length(br) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of loop_main_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@27.12--27.80) [52905]"}
        (forall i_21: int ::
        { Seq#Index(br, i_21) } { Seq#ContainsTrigger(Seq#Range(0, len), i_21) } { Seq#Contains(Seq#Range(0, len), i_21) } { Seq#Index(br, i_21) }
        Seq#Contains(Seq#Range(0, len), i_21) && dummyFunction(Heap[Seq#Index(br, i_21), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@27.12--27.80) [52906]"}
        (forall i_21: int, i_21_1: int ::
        { neverTriggered9(i_21), neverTriggered9(i_21_1) }
        (((i_21 != i_21_1 && Seq#Contains(Seq#Range(0, len), i_21)) && Seq#Contains(Seq#Range(0, len), i_21_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_21) != Seq#Index(br, i_21_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access br[i].Integer_value (back.vpr@27.12--27.80) [52907]"}
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
    assert {:msg "  Postcondition of loop_main_54 might not hold. Assertion |cr| == len might not hold. (back.vpr@28.11--28.22) [52908]"}
      Seq#Length(cr) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@29.12--29.80) [52909]"}
        (forall i_22_1: int, i_22_2: int ::
        { neverTriggered10(i_22_1), neverTriggered10(i_22_2) }
        (((i_22_1 != i_22_2 && Seq#Contains(Seq#Range(0, len), i_22_1)) && Seq#Contains(Seq#Range(0, len), i_22_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_22_1) != Seq#Index(cr, i_22_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of loop_main_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (back.vpr@29.12--29.80) [52910]"}
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
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method recv_body_96
// ==================================================

procedure recv_body_96(this: Ref, ar: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@36.11--36.42) [52911]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@36.11--36.42) [52912]"}
        i < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@36.11--36.42) [52913]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i) != null;
    PostMask := PostMask[Seq#Index(ar, i), Integer_value:=PostMask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- back.vpr@38.3--38.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Postcondition of recv_body_96 might not hold. Fraction 1 / 2 might be negative. (back.vpr@36.11--36.42) [52914]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of recv_body_96 might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@36.11--36.42) [52915]"}
        perm <= Mask[Seq#Index(ar, i), Integer_value];
    }
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method send_body_106
// ==================================================

procedure send_body_106(this: Ref, ar: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume -1 <= i;
    assume i + 1 < Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(ar[i + 1].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i + 1] into ar might be negative. (back.vpr@43.12--43.47) [52916]"}
        i + 1 >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i + 1] into ar might exceed sequence length. (back.vpr@43.12--43.47) [52917]"}
        i + 1 < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@43.12--43.47) [52918]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i + 1) != null;
    Mask := Mask[Seq#Index(ar, i + 1), Integer_value:=Mask[Seq#Index(ar, i + 1), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- back.vpr@45.3--45.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method loop_body_54
// ==================================================

procedure loop_body_54(this: Ref, len: int, ar: (Seq Ref), br: (Seq Ref), i: int, cr: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    
    // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@51.12--51.43) [52919]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@51.12--51.43) [52920]"}
        i < Seq#Length(ar);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@51.12--51.43) [52921]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(ar, i) != null;
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (i == 0) {
      
      // -- Check definedness of acc(ar[i].Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@52.12--52.56) [52922]"}
          i >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@52.12--52.56) [52923]"}
          i < Seq#Length(ar);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@52.12--52.56) [52924]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar, i) != null;
      Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (i < Seq#Length(ar) - 1) {
      
      // -- Check definedness of acc(ar[i + 1].Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. Index ar[i + 1] into ar might be negative. (back.vpr@53.12--53.66) [52925]"}
          i + 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index ar[i + 1] into ar might exceed sequence length. (back.vpr@53.12--53.66) [52926]"}
          i + 1 < Seq#Length(ar);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@53.12--53.66) [52927]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(ar, i + 1) != null;
      Mask := Mask[Seq#Index(ar, i + 1), Integer_value:=Mask[Seq#Index(ar, i + 1), Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume Seq#Length(br) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(br[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@55.12--55.43) [52928]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@55.12--55.43) [52929]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@55.12--55.43) [52930]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    Mask := Mask[Seq#Index(br, i), Integer_value:=Mask[Seq#Index(br, i), Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(cr) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(cr[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@57.12--57.43) [52931]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@57.12--57.43) [52932]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    Mask := Mask[Seq#Index(cr, i), Integer_value:=Mask[Seq#Index(cr, i), Integer_value] + perm];
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
    assume 0 <= i;
    assume i < len;
    assume state(PostHeap, PostMask);
    assume Seq#Length(ar) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ar[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@60.11--60.42) [52933]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@60.11--60.42) [52934]"}
        i < Seq#Length(ar);
    perm := FullPerm;
    assume Seq#Index(ar, i) != null;
    PostMask := PostMask[Seq#Index(ar, i), Integer_value:=PostMask[Seq#Index(ar, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(br) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(br[i].Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@62.11--62.42) [52935]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@62.11--62.42) [52936]"}
        i < Seq#Length(br);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@62.11--62.42) [52937]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(br, i) != null;
    PostMask := PostMask[Seq#Index(br, i), Integer_value:=PostMask[Seq#Index(br, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(cr) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(cr[i].Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@64.11--64.42) [52938]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@64.11--64.42) [52939]"}
        i < Seq#Length(cr);
    perm := FullPerm;
    assume Seq#Index(cr, i) != null;
    PostMask := PostMask[Seq#Index(cr, i), Integer_value:=PostMask[Seq#Index(cr, i), Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (i > 0) -- back.vpr@66.3--68.4
    if (i > 0) {
      
      // -- Translating statement: recv_body_96(this, ar, i) -- back.vpr@67.5--67.30
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method recv_body_96 might not hold. Assertion 0 <= i might not hold. (back.vpr@67.5--67.30) [52940]"}
            0 <= i;
          assert {:msg "  The precondition of method recv_body_96 might not hold. Assertion i < |ar| might not hold. (back.vpr@67.5--67.30) [52941]"}
            i < Seq#Length(ar);
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (back.vpr@67.5--67.30) [52942]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Seq#Index(ar, i) != null;
          Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: ar[i].Integer_value := br[i].Integer_value + 1 -- back.vpr@69.3--69.49
    
    // -- Check definedness of ar[i]
      assert {:msg "  Assignment might fail. Index ar[i] into ar might be negative. (back.vpr@69.3--69.49) [52943]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index ar[i] into ar might exceed sequence length. (back.vpr@69.3--69.49) [52944]"}
        i < Seq#Length(ar);
    
    // -- Check definedness of br[i].Integer_value + 1
      assert {:msg "  Assignment might fail. Index br[i] into br might be negative. (back.vpr@69.3--69.49) [52945]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index br[i] into br might exceed sequence length. (back.vpr@69.3--69.49) [52946]"}
        i < Seq#Length(br);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access br[i].Integer_value (back.vpr@69.3--69.49) [52947]"}
        HasDirectPerm(Mask, Seq#Index(br, i), Integer_value);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[i].Integer_value (back.vpr@69.3--69.49) [52948]"}
      FullPerm == Mask[Seq#Index(ar, i), Integer_value];
    Heap := Heap[Seq#Index(ar, i), Integer_value:=Heap[Seq#Index(br, i), Integer_value] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < len - 1) -- back.vpr@70.3--73.4
    if (i < len - 1) {
      
      // -- Translating statement: cr[i].Integer_value := ar[i + 1].Integer_value + 2 -- back.vpr@71.5--71.55
        
        // -- Check definedness of cr[i]
          assert {:msg "  Assignment might fail. Index cr[i] into cr might be negative. (back.vpr@71.5--71.55) [52949]"}
            i >= 0;
          assert {:msg "  Assignment might fail. Index cr[i] into cr might exceed sequence length. (back.vpr@71.5--71.55) [52950]"}
            i < Seq#Length(cr);
        
        // -- Check definedness of ar[i + 1].Integer_value + 2
          assert {:msg "  Assignment might fail. Index ar[i + 1] into ar might be negative. (back.vpr@71.5--71.55) [52951]"}
            i + 1 >= 0;
          assert {:msg "  Assignment might fail. Index ar[i + 1] into ar might exceed sequence length. (back.vpr@71.5--71.55) [52952]"}
            i + 1 < Seq#Length(ar);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[i + 1].Integer_value (back.vpr@71.5--71.55) [52953]"}
            HasDirectPerm(Mask, Seq#Index(ar, i + 1), Integer_value);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access cr[i].Integer_value (back.vpr@71.5--71.55) [52954]"}
          FullPerm == Mask[Seq#Index(cr, i), Integer_value];
        Heap := Heap[Seq#Index(cr, i), Integer_value:=Heap[Seq#Index(ar, i + 1), Integer_value] + 2];
        assume state(Heap, Mask);
      
      // -- Translating statement: send_body_106(this, ar, i) -- back.vpr@72.5--72.31
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method send_body_106 might not hold. Assertion -1 <= i might not hold. (back.vpr@72.5--72.31) [52955]"}
            -1 <= i;
          assert {:msg "  The precondition of method send_body_106 might not hold. Assertion i + 1 < |ar| might not hold. (back.vpr@72.5--72.31) [52956]"}
            i + 1 < Seq#Length(ar);
          perm := 1 / 2;
          assert {:msg "  The precondition of method send_body_106 might not hold. Fraction 1 / 2 might be negative. (back.vpr@72.5--72.31) [52957]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method send_body_106 might not hold. There might be insufficient permission to access ar[i + 1].Integer_value (back.vpr@72.5--72.31) [52958]"}
              perm <= Mask[Seq#Index(ar, i + 1), Integer_value];
          }
          Mask := Mask[Seq#Index(ar, i + 1), Integer_value:=Mask[Seq#Index(ar, i + 1), Integer_value] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion 0 <= i might not hold. (back.vpr@58.11--58.32) [52959]"}
      0 <= i;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion i < len might not hold. (back.vpr@58.11--58.32) [52960]"}
      i < len;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |ar| == len might not hold. (back.vpr@59.11--59.22) [52961]"}
      Seq#Length(ar) == len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@60.11--60.42) [52962]"}
        perm <= Mask[Seq#Index(ar, i), Integer_value];
    }
    Mask := Mask[Seq#Index(ar, i), Integer_value:=Mask[Seq#Index(ar, i), Integer_value] - perm];
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |br| == len might not hold. (back.vpr@61.11--61.22) [52963]"}
      Seq#Length(br) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of loop_body_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@62.11--62.42) [52964]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access br[i].Integer_value (back.vpr@62.11--62.42) [52965]"}
        perm <= Mask[Seq#Index(br, i), Integer_value];
    }
    Mask := Mask[Seq#Index(br, i), Integer_value:=Mask[Seq#Index(br, i), Integer_value] - perm];
    assert {:msg "  Postcondition of loop_body_54 might not hold. Assertion |cr| == len might not hold. (back.vpr@63.11--63.22) [52966]"}
      Seq#Length(cr) == len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop_body_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (back.vpr@64.11--64.42) [52967]"}
        perm <= Mask[Seq#Index(cr, i), Integer_value];
    }
    Mask := Mask[Seq#Index(cr, i), Integer_value:=Mask[Seq#Index(cr, i), Integer_value] - perm];
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_29: int;
  var i_30: int;
  var i_31: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i_21: int;
  var j_6_1: int;
  var perm: Perm;
  var i_25: int;
  var j_8: int;
  var i_28: int;
  var j_10_2: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Length(ar) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), ar[j] } { (j in [0..len)), ar[i] } { ar[i], ar[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> ar[i] != ar[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_16) && (Seq#Contains(Seq#Range(0, len), j_18) && i_16 != j_18)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@78.12--78.96) [52968]"}
            i_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@78.12--78.96) [52969]"}
            i_16 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might be negative. (back.vpr@78.12--78.96) [52970]"}
            j_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[j] into ar might exceed sequence length. (back.vpr@78.12--78.96) [52971]"}
            j_18 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#ContainsTrigger(Seq#Range(0, len), j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#Contains(Seq#Range(0, len), j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#ContainsTrigger(Seq#Range(0, len), j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#Contains(Seq#Range(0, len), j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_1), Seq#Index(ar, j_1) } { Seq#Contains(Seq#Range(0, len), i_1), Seq#Index(ar, j_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_1), Seq#Index(ar, i_1) } { Seq#Contains(Seq#Range(0, len), j_1), Seq#Index(ar, i_1) } { Seq#Index(ar, i_1), Seq#Index(ar, j_1) }
      Seq#Contains(Seq#Range(0, len), i_1) && (Seq#Contains(Seq#Range(0, len), j_1) && i_1 != j_1) ==> Seq#Index(ar, i_1) != Seq#Index(ar, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { ar[i] } (i in [0..len)) ==> acc(ar[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_18)) {
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@79.13--79.81) [52972]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@79.13--79.81) [52973]"}
            i_18 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@79.13--79.81) [52974]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(0, len), i_3)) && Seq#Contains(Seq#Range(0, len), i_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_3) != Seq#Index(ar, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) && NoPerm < FullPerm ==> qpRange11(Seq#Index(ar, i_3)) && invRecv11(Seq#Index(ar, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(ar, invRecv11(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(ar, i_3) } { Seq#ContainsTrigger(Seq#Range(0, len), i_3) } { Seq#Contains(Seq#Range(0, len), i_3) } { Seq#Index(ar, i_3) }
        Seq#Contains(Seq#Range(0, len), i_3) ==> Seq#Index(ar, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv11(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), br[j] } { (j in [0..len)), br[i] } { br[i], br[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> br[i] != br[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_13) && (Seq#Contains(Seq#Range(0, len), j_12) && i_13 != j_12)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@81.12--81.96) [52975]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@81.12--81.96) [52976]"}
            i_13 < Seq#Length(br);
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might be negative. (back.vpr@81.12--81.96) [52977]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[j] into br might exceed sequence length. (back.vpr@81.12--81.96) [52978]"}
            j_12 < Seq#Length(br);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_5), Seq#ContainsTrigger(Seq#Range(0, len), j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_5), Seq#Contains(Seq#Range(0, len), j_3_1) } { Seq#Contains(Seq#Range(0, len), i_5), Seq#ContainsTrigger(Seq#Range(0, len), j_3_1) } { Seq#Contains(Seq#Range(0, len), i_5), Seq#Contains(Seq#Range(0, len), j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_5), Seq#Index(br, j_3_1) } { Seq#Contains(Seq#Range(0, len), i_5), Seq#Index(br, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_3_1), Seq#Index(br, i_5) } { Seq#Contains(Seq#Range(0, len), j_3_1), Seq#Index(br, i_5) } { Seq#Index(br, i_5), Seq#Index(br, j_3_1) }
      Seq#Contains(Seq#Range(0, len), i_5) && (Seq#Contains(Seq#Range(0, len), j_3_1) && i_5 != j_3_1) ==> Seq#Index(br, i_5) != Seq#Index(br, j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { br[i] } (i in [0..len)) ==> acc(br[i].Integer_value, 1 / 2))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_20)) {
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@82.13--82.81) [52979]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@82.13--82.81) [52980]"}
            i_20 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@82.13--82.81) [52981]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, len), i_7_1)) && Seq#Contains(Seq#Range(0, len), i_7_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_7_1) != Seq#Index(br, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(br, i_7_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_7_1) } { Seq#Contains(Seq#Range(0, len), i_7_1) } { Seq#Index(br, i_7_1) }
        Seq#Contains(Seq#Range(0, len), i_7_1) && NoPerm < 1 / 2 ==> qpRange12(Seq#Index(br, i_7_1)) && invRecv12(Seq#Index(br, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < 1 / 2) && qpRange12(o_4) ==> Seq#Index(br, invRecv12(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@82.13--82.81) [52982]"}
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
        ((Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < 1 / 2) && qpRange12(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv12(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv12(o_4)) && NoPerm < 1 / 2) && qpRange12(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..len)), (j in [0..len)) } { (i in [0..len)), cr[j] } { (j in [0..len)), cr[i] } { cr[i], cr[j] } (i in [0..len)) && ((j in [0..len)) && i != j) ==> cr[i] != cr[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_22) && (Seq#Contains(Seq#Range(0, len), j_14) && i_22 != j_14)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@84.12--84.96) [52983]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@84.12--84.96) [52984]"}
            i_22 < Seq#Length(cr);
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might be negative. (back.vpr@84.12--84.96) [52985]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[j] into cr might exceed sequence length. (back.vpr@84.12--84.96) [52986]"}
            j_14 < Seq#Length(cr);
        }
        assume false;
      }
    assume (forall i_9_1: int, j_5_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1), Seq#ContainsTrigger(Seq#Range(0, len), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1), Seq#Contains(Seq#Range(0, len), j_5_1) } { Seq#Contains(Seq#Range(0, len), i_9_1), Seq#ContainsTrigger(Seq#Range(0, len), j_5_1) } { Seq#Contains(Seq#Range(0, len), i_9_1), Seq#Contains(Seq#Range(0, len), j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_9_1), Seq#Index(cr, j_5_1) } { Seq#Contains(Seq#Range(0, len), i_9_1), Seq#Index(cr, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_5_1), Seq#Index(cr, i_9_1) } { Seq#Contains(Seq#Range(0, len), j_5_1), Seq#Index(cr, i_9_1) } { Seq#Index(cr, i_9_1), Seq#Index(cr, j_5_1) }
      Seq#Contains(Seq#Range(0, len), i_9_1) && (Seq#Contains(Seq#Range(0, len), j_5_1) && i_9_1 != j_5_1) ==> Seq#Index(cr, i_9_1) != Seq#Index(cr, j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..len)) } { cr[i] } (i in [0..len)) ==> acc(cr[i].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_24)) {
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@85.13--85.81) [52987]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@85.13--85.81) [52988]"}
            i_24 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@85.13--85.81) [52989]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && Seq#Contains(Seq#Range(0, len), i_11_1)) && Seq#Contains(Seq#Range(0, len), i_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_11_1) != Seq#Index(cr, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) && NoPerm < FullPerm ==> qpRange13(Seq#Index(cr, i_11_1)) && invRecv13(Seq#Index(cr, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(cr, invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(cr, i_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_11_1) } { Seq#Contains(Seq#Range(0, len), i_11_1) } { Seq#Index(cr, i_11_1) }
        Seq#Contains(Seq#Range(0, len), i_11_1) ==> Seq#Index(cr, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv13(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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
      oldMask := Mask;
      oldHeap := Heap;
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
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might be negative. (back.vpr@87.12--87.80) [52990]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[i] into ar might exceed sequence length. (back.vpr@87.12--87.80) [52991]"}
            i_29 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@87.12--87.80) [52992]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && Seq#Contains(Seq#Range(0, len), i_13_1)) && Seq#Contains(Seq#Range(0, len), i_13_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_13_1) != Seq#Index(ar, i_13_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) && NoPerm < FullPerm ==> qpRange14(Seq#Index(ar, i_13_1)) && invRecv14(Seq#Index(ar, i_13_1)) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> Seq#Index(ar, invRecv14(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Seq#Index(ar, i_13_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_13_1) } { Seq#Contains(Seq#Range(0, len), i_13_1) } { Seq#Index(ar, i_13_1) }
        Seq#Contains(Seq#Range(0, len), i_13_1) ==> Seq#Index(ar, i_13_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv14(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv14(o_4)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might be negative. (back.vpr@89.12--89.80) [52993]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index br[i] into br might exceed sequence length. (back.vpr@89.12--89.80) [52994]"}
            i_30 < Seq#Length(br);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@89.12--89.80) [52995]"}
      (forall i_15: int, i_15_1: int ::
      
      (((i_15 != i_15_1 && Seq#Contains(Seq#Range(0, len), i_15)) && Seq#Contains(Seq#Range(0, len), i_15_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_15) != Seq#Index(br, i_15_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_15: int ::
        { Seq#Index(br, i_15) } { Seq#ContainsTrigger(Seq#Range(0, len), i_15) } { Seq#Contains(Seq#Range(0, len), i_15) } { Seq#Index(br, i_15) }
        Seq#Contains(Seq#Range(0, len), i_15) && NoPerm < 1 / 2 ==> qpRange15(Seq#Index(br, i_15)) && invRecv15(Seq#Index(br, i_15)) == i_15
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < 1 / 2) && qpRange15(o_4) ==> Seq#Index(br, invRecv15(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (back.vpr@89.12--89.80) [52996]"}
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
        ((Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < 1 / 2) && qpRange15(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(br, invRecv15(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + 1 / 2) && (!((Seq#Contains(Seq#Range(0, len), invRecv15(o_4)) && NoPerm < 1 / 2) && qpRange15(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might be negative. (back.vpr@91.12--91.80) [52997]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index cr[i] into cr might exceed sequence length. (back.vpr@91.12--91.80) [52998]"}
            i_31 < Seq#Length(cr);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@91.12--91.80) [52999]"}
      (forall i_17: int, i_17_1: int ::
      
      (((i_17 != i_17_1 && Seq#Contains(Seq#Range(0, len), i_17)) && Seq#Contains(Seq#Range(0, len), i_17_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_17) != Seq#Index(cr, i_17_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) && NoPerm < FullPerm ==> qpRange16(Seq#Index(cr, i_17)) && invRecv16(Seq#Index(cr, i_17)) == i_17
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> Seq#Index(cr, invRecv16(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_17: int ::
        { Seq#Index(cr, i_17) } { Seq#ContainsTrigger(Seq#Range(0, len), i_17) } { Seq#Contains(Seq#Range(0, len), i_17) } { Seq#Index(cr, i_17) }
        Seq#Contains(Seq#Range(0, len), i_17) ==> Seq#Index(cr, i_17) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(cr, invRecv16(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
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
  
  // -- Translating statement: assert |ar| == len -- back.vpr@93.3--93.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |ar| == len might not hold. (back.vpr@93.10--93.21) [53000]"}
      Seq#Length(ar) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |br| == len -- back.vpr@94.3--94.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |br| == len might not hold. (back.vpr@94.10--94.21) [53001]"}
      Seq#Length(br) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |cr| == len -- back.vpr@95.3--95.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |cr| == len might not hold. (back.vpr@95.10--95.21) [53002]"}
      Seq#Length(cr) == len;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 < len -- back.vpr@96.3--96.17
    assume 0 < len;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loop_main_54(this, len, ar, br, cr) -- back.vpr@97.3--97.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion 0 < len might not hold. (back.vpr@97.3--97.38) [53003]"}
        0 < len;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |ar| == len might not hold. (back.vpr@97.3--97.38) [53004]"}
        Seq#Length(ar) == len;
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_21) && (Seq#Contains(Seq#Range(0, len), j_6_1) && i_21 != j_6_1)) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion ar[i] != ar[j] might not hold. (back.vpr@97.3--97.38) [53005]"}
            Seq#Index(ar, i_21) != Seq#Index(ar, j_6_1);
        }
        assume false;
      }
      assume (forall i_22_1_1: int, j_7_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, len), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_7_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_22_1_1), Seq#Contains(Seq#Range(0, len), j_7_1_1) } { Seq#Contains(Seq#Range(0, len), i_22_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_7_1_1) } { Seq#Contains(Seq#Range(0, len), i_22_1_1), Seq#Contains(Seq#Range(0, len), j_7_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_22_1_1), Seq#Index(ar, j_7_1_1) } { Seq#Contains(Seq#Range(0, len), i_22_1_1), Seq#Index(ar, j_7_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_7_1_1), Seq#Index(ar, i_22_1_1) } { Seq#Contains(Seq#Range(0, len), j_7_1_1), Seq#Index(ar, i_22_1_1) } { Seq#Index(ar, i_22_1_1), Seq#Index(ar, j_7_1_1) }
        Seq#Contains(Seq#Range(0, len), i_22_1_1) && (Seq#Contains(Seq#Range(0, len), j_7_1_1) && i_22_1_1 != j_7_1_1) ==> Seq#Index(ar, i_22_1_1) != Seq#Index(ar, j_7_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method loop_main_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@97.3--97.38) [53006]"}
          (forall i_23: int ::
          { Seq#Index(ar, i_23) } { Seq#ContainsTrigger(Seq#Range(0, len), i_23) } { Seq#Contains(Seq#Range(0, len), i_23) } { Seq#Index(ar, i_23) }
          Seq#Contains(Seq#Range(0, len), i_23) && dummyFunction(Heap[Seq#Index(ar, i_23), Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver ar[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53007]"}
          (forall i_23: int, i_23_1: int ::
          { neverTriggered20(i_23), neverTriggered20(i_23_1) }
          (((i_23 != i_23_1 && Seq#Contains(Seq#Range(0, len), i_23)) && Seq#Contains(Seq#Range(0, len), i_23_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_23) != Seq#Index(ar, i_23_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@97.3--97.38) [53008]"}
          (forall i_23: int ::
          { Seq#Index(ar, i_23) } { Seq#ContainsTrigger(Seq#Range(0, len), i_23) } { Seq#Contains(Seq#Range(0, len), i_23) } { Seq#Index(ar, i_23) }
          Seq#Contains(Seq#Range(0, len), i_23) ==> Mask[Seq#Index(ar, i_23), Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver ar[i]
        assume (forall i_23: int ::
          { Seq#Index(ar, i_23) } { Seq#ContainsTrigger(Seq#Range(0, len), i_23) } { Seq#Contains(Seq#Range(0, len), i_23) } { Seq#Index(ar, i_23) }
          Seq#Contains(Seq#Range(0, len), i_23) && NoPerm < 1 / 2 ==> qpRange20(Seq#Index(ar, i_23)) && invRecv20(Seq#Index(ar, i_23)) == i_23
        );
        assume (forall o_4: Ref ::
          { invRecv20(o_4) }
          Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> Seq#Index(ar, invRecv20(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> Seq#Index(ar, invRecv20(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv20(o_4)) && (NoPerm < 1 / 2 && qpRange20(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      perm := 1 / 2;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@97.3--97.38) [53009]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access ar[0].Integer_value (back.vpr@97.3--97.38) [53010]"}
          perm <= Mask[Seq#Index(ar, 0), Integer_value];
      }
      Mask := Mask[Seq#Index(ar, 0), Integer_value:=Mask[Seq#Index(ar, 0), Integer_value] - perm];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method loop_main_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@97.3--97.38) [53011]"}
          (forall i_24_1: int ::
          { Seq#Index(ar, i_24_1) } { Seq#Index(ar, i_24_1) }
          Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_24_1) && dummyFunction(Heap[Seq#Index(ar, i_24_1), Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver ar[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53012]"}
          (forall i_24_1: int, i_24_2: int ::
          { neverTriggered21(i_24_1), neverTriggered21(i_24_2) }
          (((i_24_1 != i_24_2 && Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_24_1)) && Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_24_2)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(ar, i_24_1) != Seq#Index(ar, i_24_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@97.3--97.38) [53013]"}
          (forall i_24_1: int ::
          { Seq#Index(ar, i_24_1) } { Seq#Index(ar, i_24_1) }
          Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_24_1) ==> Mask[Seq#Index(ar, i_24_1), Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver ar[i]
        assume (forall i_24_1: int ::
          { Seq#Index(ar, i_24_1) } { Seq#Index(ar, i_24_1) }
          Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), i_24_1) && NoPerm < 1 / 2 ==> qpRange21(Seq#Index(ar, i_24_1)) && invRecv21(Seq#Index(ar, i_24_1)) == i_24_1
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv21(o_4)) && (NoPerm < 1 / 2 && qpRange21(o_4)) ==> Seq#Index(ar, invRecv21(o_4)) == o_4
        );
      
      // -- assume permission updates for field Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          (Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv21(o_4)) && (NoPerm < 1 / 2 && qpRange21(o_4)) ==> Seq#Index(ar, invRecv21(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(1, Seq#Length(ar) - 1 + 1), invRecv21(o_4)) && (NoPerm < 1 / 2 && qpRange21(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |br| == len might not hold. (back.vpr@97.3--97.38) [53014]"}
        Seq#Length(br) == len;
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_25) && (Seq#Contains(Seq#Range(0, len), j_8) && i_25 != j_8)) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion br[i] != br[j] might not hold. (back.vpr@97.3--97.38) [53015]"}
            Seq#Index(br, i_25) != Seq#Index(br, j_8);
        }
        assume false;
      }
      assume (forall i_26_1_1: int, j_9_1_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, len), i_26_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_26_1_1), Seq#Contains(Seq#Range(0, len), j_9_1_1) } { Seq#Contains(Seq#Range(0, len), i_26_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_9_1_1) } { Seq#Contains(Seq#Range(0, len), i_26_1_1), Seq#Contains(Seq#Range(0, len), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_26_1_1), Seq#Index(br, j_9_1_1) } { Seq#Contains(Seq#Range(0, len), i_26_1_1), Seq#Index(br, j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_9_1_1), Seq#Index(br, i_26_1_1) } { Seq#Contains(Seq#Range(0, len), j_9_1_1), Seq#Index(br, i_26_1_1) } { Seq#Index(br, i_26_1_1), Seq#Index(br, j_9_1_1) }
        Seq#Contains(Seq#Range(0, len), i_26_1_1) && (Seq#Contains(Seq#Range(0, len), j_9_1_1) && i_26_1_1 != j_9_1_1) ==> Seq#Index(br, i_26_1_1) != Seq#Index(br, j_9_1_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method loop_main_54 might not hold. Fraction 1 / 2 might be negative. (back.vpr@97.3--97.38) [53016]"}
          (forall i_27: int ::
          { Seq#Index(br, i_27) } { Seq#ContainsTrigger(Seq#Range(0, len), i_27) } { Seq#Contains(Seq#Range(0, len), i_27) } { Seq#Index(br, i_27) }
          Seq#Contains(Seq#Range(0, len), i_27) && dummyFunction(Heap[Seq#Index(br, i_27), Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver br[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource br[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53017]"}
          (forall i_27: int, i_27_1: int ::
          { neverTriggered22(i_27), neverTriggered22(i_27_1) }
          (((i_27 != i_27_1 && Seq#Contains(Seq#Range(0, len), i_27)) && Seq#Contains(Seq#Range(0, len), i_27_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_27) != Seq#Index(br, i_27_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access br[i].Integer_value (back.vpr@97.3--97.38) [53018]"}
          (forall i_27: int ::
          { Seq#Index(br, i_27) } { Seq#ContainsTrigger(Seq#Range(0, len), i_27) } { Seq#Contains(Seq#Range(0, len), i_27) } { Seq#Index(br, i_27) }
          Seq#Contains(Seq#Range(0, len), i_27) ==> Mask[Seq#Index(br, i_27), Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver br[i]
        assume (forall i_27: int ::
          { Seq#Index(br, i_27) } { Seq#ContainsTrigger(Seq#Range(0, len), i_27) } { Seq#Contains(Seq#Range(0, len), i_27) } { Seq#Index(br, i_27) }
          Seq#Contains(Seq#Range(0, len), i_27) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(br, i_27)) && invRecv22(Seq#Index(br, i_27)) == i_27
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
      assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion |cr| == len might not hold. (back.vpr@97.3--97.38) [53019]"}
        Seq#Length(cr) == len;
      if (*) {
        if (Seq#Contains(Seq#Range(0, len), i_28) && (Seq#Contains(Seq#Range(0, len), j_10_2) && i_28 != j_10_2)) {
          assert {:msg "  The precondition of method loop_main_54 might not hold. Assertion cr[i] != cr[j] might not hold. (back.vpr@97.3--97.38) [53020]"}
            Seq#Index(cr, i_28) != Seq#Index(cr, j_10_2);
        }
        assume false;
      }
      assume (forall i_29_1_1: int, j_11_1: int ::
        { Seq#ContainsTrigger(Seq#Range(0, len), i_29_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_29_1_1), Seq#Contains(Seq#Range(0, len), j_11_1) } { Seq#Contains(Seq#Range(0, len), i_29_1_1), Seq#ContainsTrigger(Seq#Range(0, len), j_11_1) } { Seq#Contains(Seq#Range(0, len), i_29_1_1), Seq#Contains(Seq#Range(0, len), j_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_29_1_1), Seq#Index(cr, j_11_1) } { Seq#Contains(Seq#Range(0, len), i_29_1_1), Seq#Index(cr, j_11_1) } { Seq#ContainsTrigger(Seq#Range(0, len), j_11_1), Seq#Index(cr, i_29_1_1) } { Seq#Contains(Seq#Range(0, len), j_11_1), Seq#Index(cr, i_29_1_1) } { Seq#Index(cr, i_29_1_1), Seq#Index(cr, j_11_1) }
        Seq#Contains(Seq#Range(0, len), i_29_1_1) && (Seq#Contains(Seq#Range(0, len), j_11_1) && i_29_1_1 != j_11_1) ==> Seq#Index(cr, i_29_1_1) != Seq#Index(cr, j_11_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver cr[i] is injective
        assert {:msg "  The precondition of method loop_main_54 might not hold. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53021]"}
          (forall i_30_2: int, i_30_3: int ::
          { neverTriggered23(i_30_2), neverTriggered23(i_30_3) }
          (((i_30_2 != i_30_3 && Seq#Contains(Seq#Range(0, len), i_30_2)) && Seq#Contains(Seq#Range(0, len), i_30_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_30_2) != Seq#Index(cr, i_30_3)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method loop_main_54 might not hold. There might be insufficient permission to access cr[i].Integer_value (back.vpr@97.3--97.38) [53022]"}
          (forall i_30_2: int ::
          { Seq#Index(cr, i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_30_2) } { Seq#Contains(Seq#Range(0, len), i_30_2) } { Seq#Index(cr, i_30_2) }
          Seq#Contains(Seq#Range(0, len), i_30_2) ==> Mask[Seq#Index(cr, i_30_2), Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver cr[i]
        assume (forall i_30_2: int ::
          { Seq#Index(cr, i_30_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_30_2) } { Seq#Contains(Seq#Range(0, len), i_30_2) } { Seq#Index(cr, i_30_2) }
          Seq#Contains(Seq#Range(0, len), i_30_2) && NoPerm < FullPerm ==> qpRange23(Seq#Index(cr, i_30_2)) && invRecv23(Seq#Index(cr, i_30_2)) == i_30_2
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
      assert {:msg "  Method call might fail. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53023]"}
        (forall i_31_1: int, i_31_2: int ::
        
        (((i_31_1 != i_31_2 && Seq#Contains(Seq#Range(0, len), i_31_1)) && Seq#Contains(Seq#Range(0, len), i_31_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_31_1) != Seq#Index(ar, i_31_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_31_1: int ::
          { Seq#Index(ar, i_31_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_31_1) } { Seq#Contains(Seq#Range(0, len), i_31_1) } { Seq#Index(ar, i_31_1) }
          Seq#Contains(Seq#Range(0, len), i_31_1) && NoPerm < FullPerm ==> qpRange24(Seq#Index(ar, i_31_1)) && invRecv24(Seq#Index(ar, i_31_1)) == i_31_1
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4) ==> Seq#Index(ar, invRecv24(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_31_1: int ::
          { Seq#Index(ar, i_31_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_31_1) } { Seq#Contains(Seq#Range(0, len), i_31_1) } { Seq#Index(ar, i_31_1) }
          Seq#Contains(Seq#Range(0, len), i_31_1) ==> Seq#Index(ar, i_31_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv24(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, len), invRecv24(o_4)) && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Seq#Length(br) == len;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource br[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53024]"}
        (forall i_32_2: int, i_32_3: int ::
        
        (((i_32_2 != i_32_3 && Seq#Contains(Seq#Range(0, len), i_32_2)) && Seq#Contains(Seq#Range(0, len), i_32_3)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_32_2) != Seq#Index(br, i_32_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_32_2: int ::
          { Seq#Index(br, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_32_2) } { Seq#Contains(Seq#Range(0, len), i_32_2) } { Seq#Index(br, i_32_2) }
          Seq#Contains(Seq#Range(0, len), i_32_2) && NoPerm < 1 / 2 ==> qpRange25(Seq#Index(br, i_32_2)) && invRecv25(Seq#Index(br, i_32_2)) == i_32_2
        );
        assume (forall o_4: Ref ::
          { invRecv25(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv25(o_4)) && NoPerm < 1 / 2) && qpRange25(o_4) ==> Seq#Index(br, invRecv25(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (back.vpr@97.3--97.38) [53025]"}
        (forall i_32_2: int ::
        { Seq#Index(br, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_32_2) } { Seq#Contains(Seq#Range(0, len), i_32_2) } { Seq#Index(br, i_32_2) }
        Seq#Contains(Seq#Range(0, len), i_32_2) ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_32_2: int ::
          { Seq#Index(br, i_32_2) } { Seq#ContainsTrigger(Seq#Range(0, len), i_32_2) } { Seq#Contains(Seq#Range(0, len), i_32_2) } { Seq#Index(br, i_32_2) }
          Seq#Contains(Seq#Range(0, len), i_32_2) && 1 / 2 > NoPerm ==> Seq#Index(br, i_32_2) != null
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
      assert {:msg "  Method call might fail. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@97.3--97.38) [53026]"}
        (forall i_33_1: int, i_33_2: int ::
        
        (((i_33_1 != i_33_2 && Seq#Contains(Seq#Range(0, len), i_33_1)) && Seq#Contains(Seq#Range(0, len), i_33_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_33_1) != Seq#Index(cr, i_33_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_33_1: int ::
          { Seq#Index(cr, i_33_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_33_1) } { Seq#Contains(Seq#Range(0, len), i_33_1) } { Seq#Index(cr, i_33_1) }
          Seq#Contains(Seq#Range(0, len), i_33_1) && NoPerm < FullPerm ==> qpRange26(Seq#Index(cr, i_33_1)) && invRecv26(Seq#Index(cr, i_33_1)) == i_33_1
        );
        assume (forall o_4: Ref ::
          { invRecv26(o_4) }
          (Seq#Contains(Seq#Range(0, len), invRecv26(o_4)) && NoPerm < FullPerm) && qpRange26(o_4) ==> Seq#Index(cr, invRecv26(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_33_1: int ::
          { Seq#Index(cr, i_33_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_33_1) } { Seq#Contains(Seq#Range(0, len), i_33_1) } { Seq#Index(cr, i_33_1) }
          Seq#Contains(Seq#Range(0, len), i_33_1) ==> Seq#Index(cr, i_33_1) != null
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
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |ar| == len might not hold. (back.vpr@86.11--86.22) [53027]"}
      Seq#Length(ar) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[i].Integer_value might not be injective. (back.vpr@87.12--87.80) [53028]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered17(i_18_1), neverTriggered17(i_18_2) }
        (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, len), i_18_1)) && Seq#Contains(Seq#Range(0, len), i_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, i_18_1) != Seq#Index(ar, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access ar[i].Integer_value (back.vpr@87.12--87.80) [53029]"}
        (forall i_18_1: int ::
        { Seq#Index(ar, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_18_1) } { Seq#Contains(Seq#Range(0, len), i_18_1) } { Seq#Index(ar, i_18_1) }
        Seq#Contains(Seq#Range(0, len), i_18_1) ==> Mask[Seq#Index(ar, i_18_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[i]
      assume (forall i_18_1: int ::
        { Seq#Index(ar, i_18_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_18_1) } { Seq#Contains(Seq#Range(0, len), i_18_1) } { Seq#Index(ar, i_18_1) }
        Seq#Contains(Seq#Range(0, len), i_18_1) && NoPerm < FullPerm ==> qpRange17(Seq#Index(ar, i_18_1)) && invRecv17(Seq#Index(ar, i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4)) ==> Seq#Index(ar, invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4)) ==> Seq#Index(ar, invRecv17(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv17(o_4)) && (NoPerm < FullPerm && qpRange17(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |br| == len might not hold. (back.vpr@88.11--88.22) [53030]"}
      Seq#Length(br) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of zero_array might not hold. Fraction 1 / 2 might be negative. (back.vpr@89.12--89.80) [53031]"}
        (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) && dummyFunction(Heap[Seq#Index(br, i_19), Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver br[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource br[i].Integer_value might not be injective. (back.vpr@89.12--89.80) [53032]"}
        (forall i_19: int, i_19_1: int ::
        { neverTriggered18(i_19), neverTriggered18(i_19_1) }
        (((i_19 != i_19_1 && Seq#Contains(Seq#Range(0, len), i_19)) && Seq#Contains(Seq#Range(0, len), i_19_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(br, i_19) != Seq#Index(br, i_19_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access br[i].Integer_value (back.vpr@89.12--89.80) [53033]"}
        (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) ==> Mask[Seq#Index(br, i_19), Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver br[i]
      assume (forall i_19: int ::
        { Seq#Index(br, i_19) } { Seq#ContainsTrigger(Seq#Range(0, len), i_19) } { Seq#Contains(Seq#Range(0, len), i_19) } { Seq#Index(br, i_19) }
        Seq#Contains(Seq#Range(0, len), i_19) && NoPerm < 1 / 2 ==> qpRange18(Seq#Index(br, i_19)) && invRecv18(Seq#Index(br, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < 1 / 2 && qpRange18(o_4)) ==> Seq#Index(br, invRecv18(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < 1 / 2 && qpRange18(o_4)) ==> Seq#Index(br, invRecv18(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - 1 / 2) && (!(Seq#Contains(Seq#Range(0, len), invRecv18(o_4)) && (NoPerm < 1 / 2 && qpRange18(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of zero_array might not hold. Assertion |cr| == len might not hold. (back.vpr@90.11--90.22) [53034]"}
      Seq#Length(cr) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver cr[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource cr[i].Integer_value might not be injective. (back.vpr@91.12--91.80) [53035]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered19(i_20_1), neverTriggered19(i_20_2) }
        (((i_20_1 != i_20_2 && Seq#Contains(Seq#Range(0, len), i_20_1)) && Seq#Contains(Seq#Range(0, len), i_20_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(cr, i_20_1) != Seq#Index(cr, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access cr[i].Integer_value (back.vpr@91.12--91.80) [53036]"}
        (forall i_20_1: int ::
        { Seq#Index(cr, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(cr, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) ==> Mask[Seq#Index(cr, i_20_1), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver cr[i]
      assume (forall i_20_1: int ::
        { Seq#Index(cr, i_20_1) } { Seq#ContainsTrigger(Seq#Range(0, len), i_20_1) } { Seq#Contains(Seq#Range(0, len), i_20_1) } { Seq#Index(cr, i_20_1) }
        Seq#Contains(Seq#Range(0, len), i_20_1) && NoPerm < FullPerm ==> qpRange19(Seq#Index(cr, i_20_1)) && invRecv19(Seq#Index(cr, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(cr, invRecv19(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4)) ==> Seq#Index(cr, invRecv19(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, len), invRecv19(o_4)) && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
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