// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:39:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/bsearch.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/bsearch-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_51: Ref, f_62: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_51, f_62] }
  Heap[o_51, $allocated] ==> Heap[Heap[o_51, f_62], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_58: Ref, f_70: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_58, f_70] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_58, f_70) ==> Heap[o_58, f_70] == ExhaleHeap[o_58, f_70]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_38), ExhaleHeap[null, PredicateMaskField(pm_f_38)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsPredicateField(pm_f_38) ==> Heap[null, PredicateMaskField(pm_f_38)] == ExhaleHeap[null, PredicateMaskField(pm_f_38)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_38) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsPredicateField(pm_f_38) ==> (forall <A, B> o2_38: Ref, f_70: (Field A B) ::
    { ExhaleHeap[o2_38, f_70] }
    Heap[null, PredicateMaskField(pm_f_38)][o2_38, f_70] ==> Heap[o2_38, f_70] == ExhaleHeap[o2_38, f_70]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_38), ExhaleHeap[null, WandMaskField(pm_f_38)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsWandField(pm_f_38) ==> Heap[null, WandMaskField(pm_f_38)] == ExhaleHeap[null, WandMaskField(pm_f_38)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_38) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsWandField(pm_f_38) ==> (forall <A, B> o2_38: Ref, f_70: (Field A B) ::
    { ExhaleHeap[o2_38, f_70] }
    Heap[null, WandMaskField(pm_f_38)][o2_38, f_70] ==> Heap[o2_38, f_70] == ExhaleHeap[o2_38, f_70]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_58: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_58, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_58, $allocated] ==> ExhaleHeap[o_58, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_51: Ref, f_14: (Field A B), v: B ::
  { Heap[o_51, f_14:=v] }
  succHeap(Heap, Heap[o_51, f_14:=v])
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

function  neverTriggered1(i_3_2: int): bool;
function  neverTriggered2(i_7_1: int): bool;
function  neverTriggered3(i_10_1: int): bool;
function  neverTriggered4(i_15_1: int): bool;
function  neverTriggered5(i_18_1: int): bool;
function  neverTriggered6(i_22_1: int): bool;
function  neverTriggered7(i_25_1: int): bool;
function  neverTriggered8(i_3_2: int): bool;
function  neverTriggered9(i_7_1: int): bool;
function  neverTriggered10(i_10_1: int): bool;
function  neverTriggered11(i_15_1: int): bool;
function  neverTriggered12(i_18_1: int): bool;
function  neverTriggered13(i_22_1: int): bool;
function  neverTriggered14(i_25_1: int): bool;
function  neverTriggered15(i_3_2: int): bool;
function  neverTriggered16(i_7_1: int): bool;
function  neverTriggered17(i_10_1: int): bool;
function  neverTriggered18(i_15_1: int): bool;
function  neverTriggered19(i_18_1: int): bool;
function  neverTriggered20(i_22_1: int): bool;
function  neverTriggered21(i_25_1: int): bool;
function  neverTriggered22(i_3_2: int): bool;
function  neverTriggered23(i_7_1: int): bool;
function  neverTriggered24(i_10_1: int): bool;
function  neverTriggered25(i_15_1: int): bool;
function  neverTriggered26(i_18_1: int): bool;
function  neverTriggered27(i_22_1: int): bool;
function  neverTriggered28(i_25_1: int): bool;
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
// Translation of method bfind_orig
// ==================================================

procedure bfind_orig(S: (Seq Ref), x: int, p_1: Perm) returns (index: int)
  modifies Heap, Mask;
{
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var QPMask: MaskType;
  var i_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_14: int;
  var i_5: int;
  var k: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_S: (Seq Ref);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_13_1: int;
  var j_2_2: int;
  var i_16_1: int;
  var ExhaleHeap: HeapType;
  var arg_S_1: (Seq Ref);
  var i_20_2: int;
  var j_4_1: int;
  var i_23_1: int;
  var i_11_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|S|)), (j in [0..|S|)) } { (i in [0..|S|)), S[j] } { (j in [0..|S|)), S[i] } { S[i], S[j] } (i in [0..|S|)) && ((j in [0..|S|)) && i != j) ==> S[i] != S[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_18) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_14) && i_18 != j_14)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@10.12--10.94) [183965]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@10.12--10.94) [183966]"}
            i_18 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@10.12--10.94) [183967]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@10.12--10.94) [183968]"}
            j_14 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Index(S, i_1), Seq#Index(S, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && i_1 != j_1) ==> Seq#Index(S, i_1) != Seq#Index(S, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@11.12--11.71) [183969]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@11.12--11.71) [183970]"}
            i_3 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@11.12--11.71) [183971]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_3)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_3_2) != Seq#Index(S, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && NoPerm < p_1 ==> qpRange1(Seq#Index(S, i_3_2)) && invRecv1(Seq#Index(S, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_9)) && NoPerm < p_1) && qpRange1(o_9) ==> Seq#Index(S, invRecv1(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@11.12--11.71) [183972]"}
      (forall i_3_2: int ::
      { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && p_1 > NoPerm ==> Seq#Index(S, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_9)) && NoPerm < p_1) && qpRange1(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv1(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_9)) && NoPerm < p_1) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S| - 1)) ==> S[i].f < S[i + 1].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), i_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@12.12--12.78) [183973]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@12.12--12.78) [183974]"}
            i_4 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@12.12--12.78) [183975]"}
            HasDirectPerm(Mask, Seq#Index(S, i_4), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[i + 1] into S might be negative. (bsearch.vpr@12.12--12.78) [183976]"}
            i_4 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i + 1] into S might exceed sequence length. (bsearch.vpr@12.12--12.78) [183977]"}
            i_4 + 1 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i + 1].f (bsearch.vpr@12.12--12.78) [183978]"}
            HasDirectPerm(Mask, Seq#Index(S, i_4 + 1), f_7);
        }
        assume false;
      }
    assume (forall i_5_1: int ::
      { Heap[Seq#Index(S, i_5_1), f_7] }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), i_5_1) ==> Heap[Seq#Index(S, i_5_1), f_7] < Heap[Seq#Index(S, i_5_1 + 1), f_7]
    );
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
    
    // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_14)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@13.11--13.69) [183979]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@13.11--13.69) [183980]"}
            i_14 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@13.11--13.69) [183981]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_7_1) != Seq#Index(S, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && NoPerm < p_1 ==> qpRange2(Seq#Index(S, i_7_1)) && invRecv2(Seq#Index(S, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_9)) && NoPerm < p_1) && qpRange2(o_9) ==> Seq#Index(S, invRecv2(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@13.11--13.69) [183982]"}
      (forall i_7_1: int ::
      { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && p_1 > NoPerm ==> Seq#Index(S, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_9)) && NoPerm < p_1) && qpRange2(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv2(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_9)) && NoPerm < p_1) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    assume state(PostHeap, PostMask);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      
      // -- Check definedness of S[index].f == x
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might be negative. (bsearch.vpr@17.11--17.48) [183983]"}
          index >= 0;
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might exceed sequence length. (bsearch.vpr@17.11--17.48) [183984]"}
          index < Seq#Length(S);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[index].f (bsearch.vpr@17.11--17.48) [183985]"}
          HasDirectPerm(PostMask, Seq#Index(S, index), f_7);
      assume PostHeap[Seq#Index(S, index), f_7] == x;
    }
    assume state(PostHeap, PostMask);
    if (index == -1) {
      
      // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> S[i].f != x)
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_5)) {
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@19.11--19.84) [183986]"}
              i_5 >= 0;
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@19.11--19.84) [183987]"}
              i_5 < Seq#Length(S);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@19.11--19.84) [183988]"}
              HasDirectPerm(PostMask, Seq#Index(S, i_5), f_7);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { PostHeap[Seq#Index(S, i_9_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_9_1) ==> PostHeap[Seq#Index(S, i_9_1), f_7] != x
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (|S| == 0) -- bsearch.vpr@21.3--34.4
    if (Seq#Length(S) == 0) {
      
      // -- Translating statement: index := -1 -- bsearch.vpr@22.5--22.16
        index := -1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (|S| == 1) -- bsearch.vpr@23.5--34.4
        if (Seq#Length(S) == 1) {
          
          // -- Translating statement: index := (x == S[0].f ? 0 : -1) -- bsearch.vpr@24.5--24.34
            
            // -- Check definedness of (x == S[0].f ? 0 : -1)
              assert {:msg "  Assignment might fail. Index S[0] into S might exceed sequence length. (bsearch.vpr@24.5--24.34) [183989]"}
                0 < Seq#Length(S);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access S[0].f (bsearch.vpr@24.5--24.34) [183990]"}
                HasDirectPerm(Mask, Seq#Index(S, 0), f_7);
            index := (if x == Heap[Seq#Index(S, 0), f_7] then 0 else -1);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 < k && k < |S| - 1 -- bsearch.vpr@27.5--27.26
            assume 0 < k;
            assume k < Seq#Length(S) - 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (S[k].f < x) -- bsearch.vpr@29.5--33.6
            
            // -- Check definedness of S[k].f < x
              assert {:msg "  Conditional statement might fail. Index S[k] into S might be negative. (bsearch.vpr@29.9--29.19) [183991]"}
                k >= 0;
              assert {:msg "  Conditional statement might fail. Index S[k] into S might exceed sequence length. (bsearch.vpr@29.9--29.19) [183992]"}
                k < Seq#Length(S);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access S[k].f (bsearch.vpr@29.9--29.19) [183993]"}
                HasDirectPerm(Mask, Seq#Index(S, k), f_7);
            if (Heap[Seq#Index(S, k), f_7] < x) {
              
              // -- Translating statement: index := bfind_orig(S[0..k], x, p) -- bsearch.vpr@30.7--30.41
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S := Seq#Drop(Seq#Take(S, k), 0);
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_orig might not hold. Assertion p > none might not hold. (bsearch.vpr@30.7--30.41) [183994]"}
                    NoPerm < p_1;
                  assert {:msg "  The precondition of method bfind_orig might not hold. Assertion p < write might not hold. (bsearch.vpr@30.7--30.41) [183995]"}
                    p_1 < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_13_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_2_2) && i_13_1 != j_2_2)) {
                      assert {:msg "  The precondition of method bfind_orig might not hold. Assertion S[0..k][i] != S[0..k][j] might not hold. (bsearch.vpr@30.7--30.41) [183996]"}
                        Seq#Index(arg_S, i_13_1) != Seq#Index(arg_S, j_2_2);
                    }
                    assume false;
                  }
                  assume (forall i_14_1_1: int, j_3_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_3_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Index(arg_S, i_14_1_1), Seq#Index(arg_S, j_3_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_3_1_1) && i_14_1_1 != j_3_1_1) ==> Seq#Index(arg_S, i_14_1_1) != Seq#Index(arg_S, j_3_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_orig might not hold. Fraction p might be negative. (bsearch.vpr@30.7--30.41) [183997]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Heap[Seq#Index(arg_S, i_15_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_15_1) && dummyFunction(Heap[Seq#Index(arg_S, i_15_1), f_7]) ==> p_1 >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_orig might not hold. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@30.7--30.41) [183998]"}
                      (forall i_15_1: int, i_15_2: int ::
                      { neverTriggered4(i_15_1), neverTriggered4(i_15_2) }
                      (((i_15_1 != i_15_2 && Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_15_1)) && Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_15_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(arg_S, i_15_1) != Seq#Index(arg_S, i_15_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_orig might not hold. There might be insufficient permission to access S[0..k][i].f (bsearch.vpr@30.7--30.41) [183999]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Heap[Seq#Index(arg_S, i_15_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_15_1) ==> Mask[Seq#Index(arg_S, i_15_1), f_7] >= p_1
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Heap[Seq#Index(arg_S, i_15_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_15_1) && NoPerm < p_1 ==> qpRange4(Seq#Index(arg_S, i_15_1)) && invRecv4(Seq#Index(arg_S, i_15_1)) == i_15_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv4(o_9) }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv4(o_9)) && (NoPerm < p_1 && qpRange4(o_9)) ==> Seq#Index(arg_S, invRecv4(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv4(o_9)) && (NoPerm < p_1 && qpRange4(o_9)) ==> Seq#Index(arg_S, invRecv4(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv4(o_9)) && (NoPerm < p_1 && qpRange4(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S) - 1), i_16_1)) {
                      assert {:msg "  The precondition of method bfind_orig might not hold. Assertion S[0..k][i].f < S[0..k][i + 1].f might not hold. (bsearch.vpr@30.7--30.41) [184000]"}
                        Heap[Seq#Index(arg_S, i_16_1), f_7] < Heap[Seq#Index(arg_S, i_16_1 + 1), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_17_1_1: int ::
                    { Heap[Seq#Index(arg_S, i_17_1_1), f_7] }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S) - 1), i_17_1_1) ==> Heap[Seq#Index(arg_S, i_17_1_1), f_7] < Heap[Seq#Index(arg_S, i_17_1_1 + 1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@30.7--30.41) [184001]"}
                    (forall i_18_1: int, i_18_2: int ::
                    
                    (((i_18_1 != i_18_2 && Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_18_1)) && Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_18_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(arg_S, i_18_1) != Seq#Index(arg_S, i_18_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Heap[Seq#Index(arg_S, i_18_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_18_1) && NoPerm < p_1 ==> qpRange5(Seq#Index(arg_S, i_18_1)) && invRecv5(Seq#Index(arg_S, i_18_1)) == i_18_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv5(o_9) }
                      (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9) ==> Seq#Index(arg_S, invRecv5(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p might be negative. (bsearch.vpr@30.7--30.41) [184002]"}
                    (forall i_18_1: int ::
                    { Seq#Index(arg_S, i_18_1) } { Heap[Seq#Index(arg_S, i_18_1), f_7] }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_18_1) ==> p_1 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Heap[Seq#Index(arg_S, i_18_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_18_1) && p_1 > NoPerm ==> Seq#Index(arg_S, i_18_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9) ==> (NoPerm < p_1 ==> Seq#Index(arg_S, invRecv5(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), invRecv5(o_9)) && NoPerm < p_1) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume Seq#Contains(Seq#Range(-1, Seq#Length(arg_S)), index);
                  if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), index)) {
                    assume Heap[Seq#Index(arg_S, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_19_1: int ::
                      { Heap[Seq#Index(arg_S, i_19_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_19_1) ==> Heap[Seq#Index(arg_S, i_19_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: index := bfind_orig(S[k..|S|], x, p) -- bsearch.vpr@32.7--32.43
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S_1 := Seq#Drop(Seq#Take(S, Seq#Length(S)), k);
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_orig might not hold. Assertion p > none might not hold. (bsearch.vpr@32.7--32.43) [184003]"}
                    NoPerm < p_1;
                  assert {:msg "  The precondition of method bfind_orig might not hold. Assertion p < write might not hold. (bsearch.vpr@32.7--32.43) [184004]"}
                    p_1 < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_20_2) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_4_1) && i_20_2 != j_4_1)) {
                      assert {:msg "  The precondition of method bfind_orig might not hold. Assertion S[k..|S|][i] != S[k..|S|][j] might not hold. (bsearch.vpr@32.7--32.43) [184005]"}
                        Seq#Index(arg_S_1, i_20_2) != Seq#Index(arg_S_1, j_4_1);
                    }
                    assume false;
                  }
                  assume (forall i_21_1_1: int, j_5_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Index(arg_S_1, i_21_1_1), Seq#Index(arg_S_1, j_5_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_5_1_1) && i_21_1_1 != j_5_1_1) ==> Seq#Index(arg_S_1, i_21_1_1) != Seq#Index(arg_S_1, j_5_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_orig might not hold. Fraction p might be negative. (bsearch.vpr@32.7--32.43) [184006]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Heap[Seq#Index(arg_S_1, i_22_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_22_1) && dummyFunction(Heap[Seq#Index(arg_S_1, i_22_1), f_7]) ==> p_1 >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_orig might not hold. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@32.7--32.43) [184007]"}
                      (forall i_22_1: int, i_22_2: int ::
                      { neverTriggered6(i_22_1), neverTriggered6(i_22_2) }
                      (((i_22_1 != i_22_2 && Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_22_1)) && Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_22_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(arg_S_1, i_22_1) != Seq#Index(arg_S_1, i_22_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_orig might not hold. There might be insufficient permission to access S[k..|S|][i].f (bsearch.vpr@32.7--32.43) [184008]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Heap[Seq#Index(arg_S_1, i_22_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_22_1) ==> Mask[Seq#Index(arg_S_1, i_22_1), f_7] >= p_1
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Heap[Seq#Index(arg_S_1, i_22_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_22_1) && NoPerm < p_1 ==> qpRange6(Seq#Index(arg_S_1, i_22_1)) && invRecv6(Seq#Index(arg_S_1, i_22_1)) == i_22_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv6(o_9) }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv6(o_9)) && (NoPerm < p_1 && qpRange6(o_9)) ==> Seq#Index(arg_S_1, invRecv6(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv6(o_9)) && (NoPerm < p_1 && qpRange6(o_9)) ==> Seq#Index(arg_S_1, invRecv6(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv6(o_9)) && (NoPerm < p_1 && qpRange6(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1) - 1), i_23_1)) {
                      assert {:msg "  The precondition of method bfind_orig might not hold. Assertion S[k..|S|][i].f < S[k..|S|][i + 1].f might not hold. (bsearch.vpr@32.7--32.43) [184009]"}
                        Heap[Seq#Index(arg_S_1, i_23_1), f_7] < Heap[Seq#Index(arg_S_1, i_23_1 + 1), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_24_1_1: int ::
                    { Heap[Seq#Index(arg_S_1, i_24_1_1), f_7] }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1) - 1), i_24_1_1) ==> Heap[Seq#Index(arg_S_1, i_24_1_1), f_7] < Heap[Seq#Index(arg_S_1, i_24_1_1 + 1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@32.7--32.43) [184010]"}
                    (forall i_25_1: int, i_25_2: int ::
                    
                    (((i_25_1 != i_25_2 && Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_25_1)) && Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_25_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(arg_S_1, i_25_1) != Seq#Index(arg_S_1, i_25_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Heap[Seq#Index(arg_S_1, i_25_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_25_1) && NoPerm < p_1 ==> qpRange7(Seq#Index(arg_S_1, i_25_1)) && invRecv7(Seq#Index(arg_S_1, i_25_1)) == i_25_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv7(o_9) }
                      (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv7(o_9)) && NoPerm < p_1) && qpRange7(o_9) ==> Seq#Index(arg_S_1, invRecv7(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p might be negative. (bsearch.vpr@32.7--32.43) [184011]"}
                    (forall i_25_1: int ::
                    { Seq#Index(arg_S_1, i_25_1) } { Heap[Seq#Index(arg_S_1, i_25_1), f_7] }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_25_1) ==> p_1 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Heap[Seq#Index(arg_S_1, i_25_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_25_1) && p_1 > NoPerm ==> Seq#Index(arg_S_1, i_25_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv7(o_9)) && NoPerm < p_1) && qpRange7(o_9) ==> (NoPerm < p_1 ==> Seq#Index(arg_S_1, invRecv7(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), invRecv7(o_9)) && NoPerm < p_1) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume Seq#Contains(Seq#Range(-1, Seq#Length(arg_S_1)), index);
                  if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), index)) {
                    assume Heap[Seq#Index(arg_S_1, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_26_1: int ::
                      { Heap[Seq#Index(arg_S_1, i_26_1), f_7] }
                      Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_26_1) ==> Heap[Seq#Index(arg_S_1, i_26_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of bfind_orig might not hold. Fraction p might be negative. (bsearch.vpr@13.11--13.69) [184012]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && dummyFunction(Heap[Seq#Index(S, i_10_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver S[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@13.11--13.69) [184013]"}
        (forall i_10_1: int, i_10_2: int ::
        { neverTriggered3(i_10_1), neverTriggered3(i_10_2) }
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_10_1) != Seq#Index(S, i_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of bfind_orig might not hold. There might be insufficient permission to access S[i].f (bsearch.vpr@13.11--13.69) [184014]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) ==> Mask[Seq#Index(S, i_10_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver S[i]
      assume (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && NoPerm < p_1 ==> qpRange3(Seq#Index(S, i_10_1)) && invRecv3(Seq#Index(S, i_10_1)) == i_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_9)) && (NoPerm < p_1 && qpRange3(o_9)) ==> Seq#Index(S, invRecv3(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_9)) && (NoPerm < p_1 && qpRange3(o_9)) ==> Seq#Index(S, invRecv3(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_9)) && (NoPerm < p_1 && qpRange3(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of bfind_orig might not hold. Assertion (index in [-1..|S|)) might not hold. (bsearch.vpr@14.11--14.29) [184015]"}
      Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      assert {:msg "  Postcondition of bfind_orig might not hold. Assertion S[index].f == x might not hold. (bsearch.vpr@17.11--17.48) [184016]"}
        Heap[Seq#Index(S, index), f_7] == x;
    }
    if (index == -1) {
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_11_1)) {
          assert {:msg "  Postcondition of bfind_orig might not hold. Assertion S[i].f != x might not hold. (bsearch.vpr@19.11--19.84) [184017]"}
            Heap[Seq#Index(S, i_11_1), f_7] != x;
        }
        assume false;
      }
      assume (forall i_12_1_1: int ::
        { Heap[Seq#Index(S, i_12_1_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_12_1_1) ==> Heap[Seq#Index(S, i_12_1_1), f_7] != x
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method bfind_fixed_ineq
// ==================================================

procedure bfind_fixed_ineq(S: (Seq Ref), x: int, p_1: Perm) returns (index: int)
  modifies Heap, Mask;
{
  var i_15: int;
  var j_16: int;
  var i_7: int;
  var QPMask: MaskType;
  var i_21: int;
  var j_17: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_8: int;
  var i_19: int;
  var k: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_S: (Seq Ref);
  var arg_p: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_13_1: int;
  var j_4_1: int;
  var i_16_1: int;
  var j_6_2: int;
  var ExhaleHeap: HeapType;
  var arg_S_1: (Seq Ref);
  var arg_p_1: Perm;
  var i_20_2: int;
  var j_8_2: int;
  var i_23_1: int;
  var j_10_2: int;
  var i_11_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|S|)), (j in [0..|S|)) } { (i in [0..|S|)), S[j] } { (j in [0..|S|)), S[i] } { S[i], S[j] } (i in [0..|S|)) && ((j in [0..|S|)) && i != j) ==> S[i] != S[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_15) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_16) && i_15 != j_16)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@39.12--39.94) [184018]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@39.12--39.94) [184019]"}
            i_15 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@39.12--39.94) [184020]"}
            j_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@39.12--39.94) [184021]"}
            j_16 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Index(S, i_1), Seq#Index(S, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && i_1 != j_1) ==> Seq#Index(S, i_1) != Seq#Index(S, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { S[i] } 0 <= i && i < |S| ==> acc(S[i].f, p))
      if (*) {
        if (0 <= i_7 && i_7 < Seq#Length(S)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@40.12--40.72) [184022]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@40.12--40.72) [184023]"}
            i_7 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@40.12--40.72) [184024]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(S))) && (0 <= i_3_3 && i_3_3 < Seq#Length(S))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_3_2) != Seq#Index(S, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(S)) && NoPerm < p_1 ==> qpRange8(Seq#Index(S, i_3_2)) && invRecv8(Seq#Index(S, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        ((0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange8(o_9) ==> Seq#Index(S, invRecv8(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@40.12--40.72) [184025]"}
      (forall i_3_2: int ::
      { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
      0 <= i_3_2 && i_3_2 < Seq#Length(S) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(S)) && p_1 > NoPerm ==> Seq#Index(S, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange8(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv8(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!(((0 <= invRecv8(o_9) && invRecv8(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange8(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { S[i], S[j] } 0 <= i && (i < j && j < |S|) ==> S[i].f < S[j].f)
      if (*) {
        if (0 <= i_21 && (i_21 < j_17 && j_17 < Seq#Length(S))) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@41.12--42.61) [184026]"}
            i_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@41.12--42.61) [184027]"}
            i_21 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@41.12--42.61) [184028]"}
            HasDirectPerm(Mask, Seq#Index(S, i_21), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@41.12--42.61) [184029]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@41.12--42.61) [184030]"}
            j_17 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (bsearch.vpr@41.12--42.61) [184031]"}
            HasDirectPerm(Mask, Seq#Index(S, j_17), f_7);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_3: int ::
      { Seq#Index(S, i_5_1), Seq#Index(S, j_3) }
      0 <= i_5_1 && (i_5_1 < j_3 && j_3 < Seq#Length(S)) ==> Heap[Seq#Index(S, i_5_1), f_7] < Heap[Seq#Index(S, j_3), f_7]
    );
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
    
    // -- Check definedness of (forall i: Int :: { S[i] } 0 <= i && i < |S| ==> acc(S[i].f, p))
      if (*) {
        if (0 <= i_8 && i_8 < Seq#Length(S)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@43.11--43.71) [184032]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@43.11--43.71) [184033]"}
            i_8 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@43.11--43.71) [184034]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < Seq#Length(S))) && (0 <= i_7_2 && i_7_2 < Seq#Length(S))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_7_1) != Seq#Index(S, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
        (0 <= i_7_1 && i_7_1 < Seq#Length(S)) && NoPerm < p_1 ==> qpRange9(Seq#Index(S, i_7_1)) && invRecv9(Seq#Index(S, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange9(o_9) ==> Seq#Index(S, invRecv9(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@43.11--43.71) [184035]"}
      (forall i_7_1: int ::
      { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
      0 <= i_7_1 && i_7_1 < Seq#Length(S) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
        (0 <= i_7_1 && i_7_1 < Seq#Length(S)) && p_1 > NoPerm ==> Seq#Index(S, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange9(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv9(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + p_1) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < Seq#Length(S)) && NoPerm < p_1) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume -1 <= index;
    assume index < Seq#Length(S);
    assume state(PostHeap, PostMask);
    if (0 <= index && index < Seq#Length(S)) {
      
      // -- Check definedness of S[index].f == x
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might be negative. (bsearch.vpr@45.11--45.56) [184036]"}
          index >= 0;
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might exceed sequence length. (bsearch.vpr@45.11--45.56) [184037]"}
          index < Seq#Length(S);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[index].f (bsearch.vpr@45.11--45.56) [184038]"}
          HasDirectPerm(PostMask, Seq#Index(S, index), f_7);
      assume PostHeap[Seq#Index(S, index), f_7] == x;
    }
    assume state(PostHeap, PostMask);
    if (index == -1) {
      
      // -- Check definedness of (forall i: Int :: { S[i] } 0 <= i && i < |S| ==> S[i].f != x)
        if (*) {
          if (0 <= i_19 && i_19 < Seq#Length(S)) {
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@46.11--46.86) [184039]"}
              i_19 >= 0;
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@46.11--46.86) [184040]"}
              i_19 < Seq#Length(S);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@46.11--46.86) [184041]"}
              HasDirectPerm(PostMask, Seq#Index(S, i_19), f_7);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { Seq#Index(S, i_9_1) }
        0 <= i_9_1 && i_9_1 < Seq#Length(S) ==> PostHeap[Seq#Index(S, i_9_1), f_7] != x
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (|S| == 0) -- bsearch.vpr@48.3--62.4
    if (Seq#Length(S) == 0) {
      
      // -- Translating statement: index := -1 -- bsearch.vpr@49.5--49.16
        index := -1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (|S| == 1) -- bsearch.vpr@50.5--62.4
        if (Seq#Length(S) == 1) {
          
          // -- Translating statement: index := (x == S[0].f ? 0 : -1) -- bsearch.vpr@51.5--51.34
            
            // -- Check definedness of (x == S[0].f ? 0 : -1)
              assert {:msg "  Assignment might fail. Index S[0] into S might exceed sequence length. (bsearch.vpr@51.5--51.34) [184042]"}
                0 < Seq#Length(S);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access S[0].f (bsearch.vpr@51.5--51.34) [184043]"}
                HasDirectPerm(Mask, Seq#Index(S, 0), f_7);
            index := (if x == Heap[Seq#Index(S, 0), f_7] then 0 else -1);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 < k && k < |S| - 1 -- bsearch.vpr@54.5--54.26
            assume 0 < k;
            assume k < Seq#Length(S) - 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (x < S[k].f) -- bsearch.vpr@56.5--61.6
            
            // -- Check definedness of x < S[k].f
              assert {:msg "  Conditional statement might fail. Index S[k] into S might be negative. (bsearch.vpr@56.9--56.19) [184044]"}
                k >= 0;
              assert {:msg "  Conditional statement might fail. Index S[k] into S might exceed sequence length. (bsearch.vpr@56.9--56.19) [184045]"}
                k < Seq#Length(S);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access S[k].f (bsearch.vpr@56.9--56.19) [184046]"}
                HasDirectPerm(Mask, Seq#Index(S, k), f_7);
            if (x < Heap[Seq#Index(S, k), f_7]) {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[0..k], x, p / 2) -- bsearch.vpr@57.7--57.49
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S := Seq#Drop(Seq#Take(S, k), 0);
                arg_p := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@57.7--57.49) [184047]"}
                    NoPerm < arg_p;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@57.7--57.49) [184048]"}
                    arg_p < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_13_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_4_1) && i_13_1 != j_4_1)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i] != S[0..k][j] might not hold. (bsearch.vpr@57.7--57.49) [184049]"}
                        Seq#Index(arg_S, i_13_1) != Seq#Index(arg_S, j_4_1);
                    }
                    assume false;
                  }
                  assume (forall i_14_1_1: int, j_5_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Index(arg_S, i_14_1_1), Seq#Index(arg_S, j_5_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) && i_14_1_1 != j_5_1_1) ==> Seq#Index(arg_S, i_14_1_1) != Seq#Index(arg_S, j_5_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@57.7--57.49) [184050]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && dummyFunction(Heap[Seq#Index(arg_S, i_15_1), f_7]) ==> arg_p >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@57.7--57.49) [184051]"}
                      (forall i_15_1: int, i_15_2: int ::
                      { neverTriggered11(i_15_1), neverTriggered11(i_15_2) }
                      (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S))) && (0 <= i_15_2 && i_15_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_15_1) != Seq#Index(arg_S, i_15_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[0..k][i].f (bsearch.vpr@57.7--57.49) [184052]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      0 <= i_15_1 && i_15_1 < Seq#Length(arg_S) ==> Mask[Seq#Index(arg_S, i_15_1), f_7] >= arg_p
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange11(Seq#Index(arg_S, i_15_1)) && invRecv11(Seq#Index(arg_S, i_15_1)) == i_15_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv11(o_9) }
                      (0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange11(o_9)) ==> Seq#Index(arg_S, invRecv11(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange11(o_9)) ==> Seq#Index(arg_S, invRecv11(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p) && (!((0 <= invRecv11(o_9) && invRecv11(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange11(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_16_1 && (i_16_1 < j_6_2 && j_6_2 < Seq#Length(arg_S))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i].f < S[0..k][j].f might not hold. (bsearch.vpr@57.7--57.49) [184053]"}
                        Heap[Seq#Index(arg_S, i_16_1), f_7] < Heap[Seq#Index(arg_S, j_6_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_17_1_1: int, j_7_1_1: int ::
                    { Seq#Index(arg_S, i_17_1_1), Seq#Index(arg_S, j_7_1_1) }
                    0 <= i_17_1_1 && (i_17_1_1 < j_7_1_1 && j_7_1_1 < Seq#Length(arg_S)) ==> Heap[Seq#Index(arg_S, i_17_1_1), f_7] < Heap[Seq#Index(arg_S, j_7_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@57.7--57.49) [184054]"}
                    (forall i_18_1: int, i_18_2: int ::
                    
                    (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S))) && (0 <= i_18_2 && i_18_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_18_1) != Seq#Index(arg_S, i_18_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange12(Seq#Index(arg_S, i_18_1)) && invRecv12(Seq#Index(arg_S, i_18_1)) == i_18_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv12(o_9) }
                      ((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange12(o_9) ==> Seq#Index(arg_S, invRecv12(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@57.7--57.49) [184055]"}
                    (forall i_18_1: int ::
                    { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                    0 <= i_18_1 && i_18_1 < Seq#Length(arg_S) ==> arg_p >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && arg_p > NoPerm ==> Seq#Index(arg_S, i_18_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange12(o_9) ==> (NoPerm < arg_p ==> Seq#Index(arg_S, invRecv12(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S);
                  if (0 <= index && index < Seq#Length(arg_S)) {
                    assume Heap[Seq#Index(arg_S, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_19_1: int ::
                      { Seq#Index(arg_S, i_19_1) }
                      0 <= i_19_1 && i_19_1 < Seq#Length(arg_S) ==> Heap[Seq#Index(arg_S, i_19_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[k..|S|], x, p / 2) -- bsearch.vpr@59.7--59.51
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S_1 := Seq#Drop(Seq#Take(S, Seq#Length(S)), k);
                arg_p_1 := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@59.7--59.51) [184056]"}
                    NoPerm < arg_p_1;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@59.7--59.51) [184057]"}
                    arg_p_1 < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_20_2) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_8_2) && i_20_2 != j_8_2)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i] != S[k..|S|][j] might not hold. (bsearch.vpr@59.7--59.51) [184058]"}
                        Seq#Index(arg_S_1, i_20_2) != Seq#Index(arg_S_1, j_8_2);
                    }
                    assume false;
                  }
                  assume (forall i_21_1_1: int, j_9_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Index(arg_S_1, i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) && i_21_1_1 != j_9_1_1) ==> Seq#Index(arg_S_1, i_21_1_1) != Seq#Index(arg_S_1, j_9_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@59.7--59.51) [184059]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && dummyFunction(Heap[Seq#Index(arg_S_1, i_22_1), f_7]) ==> arg_p_1 >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@59.7--59.51) [184060]"}
                      (forall i_22_1: int, i_22_2: int ::
                      { neverTriggered13(i_22_1), neverTriggered13(i_22_2) }
                      (((i_22_1 != i_22_2 && (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1))) && (0 <= i_22_2 && i_22_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_22_1) != Seq#Index(arg_S_1, i_22_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[k..|S|][i].f (bsearch.vpr@59.7--59.51) [184061]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1) ==> Mask[Seq#Index(arg_S_1, i_22_1), f_7] >= arg_p_1
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange13(Seq#Index(arg_S_1, i_22_1)) && invRecv13(Seq#Index(arg_S_1, i_22_1)) == i_22_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv13(o_9) }
                      (0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange13(o_9)) ==> Seq#Index(arg_S_1, invRecv13(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange13(o_9)) ==> Seq#Index(arg_S_1, invRecv13(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_1) && (!((0 <= invRecv13(o_9) && invRecv13(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange13(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_23_1 && (i_23_1 < j_10_2 && j_10_2 < Seq#Length(arg_S_1))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i].f < S[k..|S|][j].f might not hold. (bsearch.vpr@59.7--59.51) [184062]"}
                        Heap[Seq#Index(arg_S_1, i_23_1), f_7] < Heap[Seq#Index(arg_S_1, j_10_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_24_1_1: int, j_11_1_1: int ::
                    { Seq#Index(arg_S_1, i_24_1_1), Seq#Index(arg_S_1, j_11_1_1) }
                    0 <= i_24_1_1 && (i_24_1_1 < j_11_1_1 && j_11_1_1 < Seq#Length(arg_S_1)) ==> Heap[Seq#Index(arg_S_1, i_24_1_1), f_7] < Heap[Seq#Index(arg_S_1, j_11_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@59.7--59.51) [184063]"}
                    (forall i_25_1: int, i_25_2: int ::
                    
                    (((i_25_1 != i_25_2 && (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1))) && (0 <= i_25_2 && i_25_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_25_1) != Seq#Index(arg_S_1, i_25_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange14(Seq#Index(arg_S_1, i_25_1)) && invRecv14(Seq#Index(arg_S_1, i_25_1)) == i_25_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv14(o_9) }
                      ((0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange14(o_9) ==> Seq#Index(arg_S_1, invRecv14(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@59.7--59.51) [184064]"}
                    (forall i_25_1: int ::
                    { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                    0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1) ==> arg_p_1 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && arg_p_1 > NoPerm ==> Seq#Index(arg_S_1, i_25_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange14(o_9) ==> (NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, invRecv14(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p_1) && (!(((0 <= invRecv14(o_9) && invRecv14(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange14(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S_1);
                  if (0 <= index && index < Seq#Length(arg_S_1)) {
                    assume Heap[Seq#Index(arg_S_1, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_26_1: int ::
                      { Seq#Index(arg_S_1, i_26_1) }
                      0 <= i_26_1 && i_26_1 < Seq#Length(arg_S_1) ==> Heap[Seq#Index(arg_S_1, i_26_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + (index == -1 ? 0 : k) -- bsearch.vpr@60.7--60.45
                index := index + (if index == -1 then 0 else k);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. Fraction p might be negative. (bsearch.vpr@43.11--43.71) [184065]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        (0 <= i_10_1 && i_10_1 < Seq#Length(S)) && dummyFunction(Heap[Seq#Index(S, i_10_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver S[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@43.11--43.71) [184066]"}
        (forall i_10_1: int, i_10_2: int ::
        { neverTriggered10(i_10_1), neverTriggered10(i_10_2) }
        (((i_10_1 != i_10_2 && (0 <= i_10_1 && i_10_1 < Seq#Length(S))) && (0 <= i_10_2 && i_10_2 < Seq#Length(S))) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_10_1) != Seq#Index(S, i_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. There might be insufficient permission to access S[i].f (bsearch.vpr@43.11--43.71) [184067]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        0 <= i_10_1 && i_10_1 < Seq#Length(S) ==> Mask[Seq#Index(S, i_10_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver S[i]
      assume (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        (0 <= i_10_1 && i_10_1 < Seq#Length(S)) && NoPerm < p_1 ==> qpRange10(Seq#Index(S, i_10_1)) && invRecv10(Seq#Index(S, i_10_1)) == i_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(S)) && (NoPerm < p_1 && qpRange10(o_9)) ==> Seq#Index(S, invRecv10(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(S)) && (NoPerm < p_1 && qpRange10(o_9)) ==> Seq#Index(S, invRecv10(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!((0 <= invRecv10(o_9) && invRecv10(o_9) < Seq#Length(S)) && (NoPerm < p_1 && qpRange10(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. Assertion -1 <= index might not hold. (bsearch.vpr@44.11--44.37) [184068]"}
      -1 <= index;
    assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. Assertion index < |S| might not hold. (bsearch.vpr@44.11--44.37) [184069]"}
      index < Seq#Length(S);
    if (0 <= index && index < Seq#Length(S)) {
      assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. Assertion S[index].f == x might not hold. (bsearch.vpr@45.11--45.56) [184070]"}
        Heap[Seq#Index(S, index), f_7] == x;
    }
    if (index == -1) {
      if (*) {
        if (0 <= i_11_1 && i_11_1 < Seq#Length(S)) {
          assert {:msg "  Postcondition of bfind_fixed_ineq might not hold. Assertion S[i].f != x might not hold. (bsearch.vpr@46.11--46.86) [184071]"}
            Heap[Seq#Index(S, i_11_1), f_7] != x;
        }
        assume false;
      }
      assume (forall i_12_1_1: int ::
        { Seq#Index(S, i_12_1_1) }
        0 <= i_12_1_1 && i_12_1_1 < Seq#Length(S) ==> Heap[Seq#Index(S, i_12_1_1), f_7] != x
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method bfind_fixed_seqin
// ==================================================

procedure bfind_fixed_seqin(S: (Seq Ref), x: int, p_1: Perm) returns (index: int)
  modifies Heap, Mask;
{
  var i_9: int;
  var j_7: int;
  var i_10: int;
  var QPMask: MaskType;
  var j_22: int;
  var i_17: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_11: int;
  var i_12: int;
  var k: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_S: (Seq Ref);
  var arg_p: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_13_1: int;
  var j_4_1: int;
  var i_16_1: int;
  var j_6_2: int;
  var ExhaleHeap: HeapType;
  var arg_S_1: (Seq Ref);
  var arg_p_1: Perm;
  var i_20_2: int;
  var j_8_2: int;
  var i_23_1: int;
  var j_10_2: int;
  var i_11_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|S|)), (j in [0..|S|)) } { (i in [0..|S|)), S[j] } { (j in [0..|S|)), S[i] } { S[i], S[j] } (i in [0..|S|)) && ((j in [0..|S|)) && i != j) ==> S[i] != S[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_9) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7) && i_9 != j_7)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@70.12--70.94) [184072]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@70.12--70.94) [184073]"}
            i_9 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@70.12--70.94) [184074]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@70.12--70.94) [184075]"}
            j_7 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Index(S, i_1), Seq#Index(S, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && i_1 != j_1) ==> Seq#Index(S, i_1) != Seq#Index(S, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { S[i] } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@71.12--71.68) [184076]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@71.12--71.68) [184077]"}
            i_10 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@71.12--71.68) [184078]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_3)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_3_2) != Seq#Index(S, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && NoPerm < p_1 ==> qpRange15(Seq#Index(S, i_3_2)) && invRecv15(Seq#Index(S, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_9)) && NoPerm < p_1) && qpRange15(o_9) ==> Seq#Index(S, invRecv15(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@71.12--71.68) [184079]"}
      (forall i_3_2: int ::
      { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Seq#Index(S, i_3_2) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && p_1 > NoPerm ==> Seq#Index(S, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_9)) && NoPerm < p_1) && qpRange15(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv15(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_9)) && NoPerm < p_1) && qpRange15(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { S[i], S[j] } (i in [0..j)) && (j in [i..|S|)) ==> S[i].f < S[j].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, j_22), i_17) && Seq#Contains(Seq#Range(i_17, Seq#Length(S)), j_22)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@72.12--72.98) [184080]"}
            i_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@72.12--72.98) [184081]"}
            i_17 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@72.12--72.98) [184082]"}
            HasDirectPerm(Mask, Seq#Index(S, i_17), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@72.12--72.98) [184083]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@72.12--72.98) [184084]"}
            j_22 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (bsearch.vpr@72.12--72.98) [184085]"}
            HasDirectPerm(Mask, Seq#Index(S, j_22), f_7);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_3: int ::
      { Seq#Index(S, i_5_1), Seq#Index(S, j_3) }
      Seq#Contains(Seq#Range(0, j_3), i_5_1) && Seq#Contains(Seq#Range(i_5_1, Seq#Length(S)), j_3) ==> Heap[Seq#Index(S, i_5_1), f_7] < Heap[Seq#Index(S, j_3), f_7]
    );
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
    
    // -- Check definedness of (forall i: Int :: { S[i] } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_11)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@73.11--73.67) [184086]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@73.11--73.67) [184087]"}
            i_11 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@73.11--73.67) [184088]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_7_1) != Seq#Index(S, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && NoPerm < p_1 ==> qpRange16(Seq#Index(S, i_7_1)) && invRecv16(Seq#Index(S, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv16(o_9)) && NoPerm < p_1) && qpRange16(o_9) ==> Seq#Index(S, invRecv16(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@73.11--73.67) [184089]"}
      (forall i_7_1: int ::
      { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { Seq#Index(S, i_7_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && p_1 > NoPerm ==> Seq#Index(S, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv16(o_9)) && NoPerm < p_1) && qpRange16(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv16(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv16(o_9)) && NoPerm < p_1) && qpRange16(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    assume state(PostHeap, PostMask);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      
      // -- Check definedness of S[index].f == x
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might be negative. (bsearch.vpr@75.11--75.48) [184090]"}
          index >= 0;
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might exceed sequence length. (bsearch.vpr@75.11--75.48) [184091]"}
          index < Seq#Length(S);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[index].f (bsearch.vpr@75.11--75.48) [184092]"}
          HasDirectPerm(PostMask, Seq#Index(S, index), f_7);
      assume PostHeap[Seq#Index(S, index), f_7] == x;
    }
    assume state(PostHeap, PostMask);
    if (index == -1) {
      
      // -- Check definedness of (forall i: Int :: { S[i] } (i in [0..|S|)) ==> S[i].f != x)
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_12)) {
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@76.11--76.82) [184093]"}
              i_12 >= 0;
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@76.11--76.82) [184094]"}
              i_12 < Seq#Length(S);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@76.11--76.82) [184095]"}
              HasDirectPerm(PostMask, Seq#Index(S, i_12), f_7);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { Seq#Index(S, i_9_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_9_1) ==> PostHeap[Seq#Index(S, i_9_1), f_7] != x
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (|S| == 0) -- bsearch.vpr@78.3--92.4
    if (Seq#Length(S) == 0) {
      
      // -- Translating statement: index := -1 -- bsearch.vpr@79.5--79.16
        index := -1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (|S| == 1) -- bsearch.vpr@80.5--92.4
        if (Seq#Length(S) == 1) {
          
          // -- Translating statement: index := (x == S[0].f ? 0 : -1) -- bsearch.vpr@81.5--81.34
            
            // -- Check definedness of (x == S[0].f ? 0 : -1)
              assert {:msg "  Assignment might fail. Index S[0] into S might exceed sequence length. (bsearch.vpr@81.5--81.34) [184096]"}
                0 < Seq#Length(S);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access S[0].f (bsearch.vpr@81.5--81.34) [184097]"}
                HasDirectPerm(Mask, Seq#Index(S, 0), f_7);
            index := (if x == Heap[Seq#Index(S, 0), f_7] then 0 else -1);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 < k && k < |S| - 1 -- bsearch.vpr@84.5--84.26
            assume 0 < k;
            assume k < Seq#Length(S) - 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (x < S[k].f) -- bsearch.vpr@86.5--91.6
            
            // -- Check definedness of x < S[k].f
              assert {:msg "  Conditional statement might fail. Index S[k] into S might be negative. (bsearch.vpr@86.9--86.19) [184098]"}
                k >= 0;
              assert {:msg "  Conditional statement might fail. Index S[k] into S might exceed sequence length. (bsearch.vpr@86.9--86.19) [184099]"}
                k < Seq#Length(S);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access S[k].f (bsearch.vpr@86.9--86.19) [184100]"}
                HasDirectPerm(Mask, Seq#Index(S, k), f_7);
            if (x < Heap[Seq#Index(S, k), f_7]) {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[0..k], x, p / 2) -- bsearch.vpr@87.7--87.49
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S := Seq#Drop(Seq#Take(S, k), 0);
                arg_p := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@87.7--87.49) [184101]"}
                    NoPerm < arg_p;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@87.7--87.49) [184102]"}
                    arg_p < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_13_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_4_1) && i_13_1 != j_4_1)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i] != S[0..k][j] might not hold. (bsearch.vpr@87.7--87.49) [184103]"}
                        Seq#Index(arg_S, i_13_1) != Seq#Index(arg_S, j_4_1);
                    }
                    assume false;
                  }
                  assume (forall i_14_1_1: int, j_5_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Index(arg_S, i_14_1_1), Seq#Index(arg_S, j_5_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) && i_14_1_1 != j_5_1_1) ==> Seq#Index(arg_S, i_14_1_1) != Seq#Index(arg_S, j_5_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@87.7--87.49) [184104]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && dummyFunction(Heap[Seq#Index(arg_S, i_15_1), f_7]) ==> arg_p >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@87.7--87.49) [184105]"}
                      (forall i_15_1: int, i_15_2: int ::
                      { neverTriggered18(i_15_1), neverTriggered18(i_15_2) }
                      (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S))) && (0 <= i_15_2 && i_15_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_15_1) != Seq#Index(arg_S, i_15_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[0..k][i].f (bsearch.vpr@87.7--87.49) [184106]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      0 <= i_15_1 && i_15_1 < Seq#Length(arg_S) ==> Mask[Seq#Index(arg_S, i_15_1), f_7] >= arg_p
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange18(Seq#Index(arg_S, i_15_1)) && invRecv18(Seq#Index(arg_S, i_15_1)) == i_15_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv18(o_9) }
                      (0 <= invRecv18(o_9) && invRecv18(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange18(o_9)) ==> Seq#Index(arg_S, invRecv18(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv18(o_9) && invRecv18(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange18(o_9)) ==> Seq#Index(arg_S, invRecv18(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange18(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_16_1 && (i_16_1 < j_6_2 && j_6_2 < Seq#Length(arg_S))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i].f < S[0..k][j].f might not hold. (bsearch.vpr@87.7--87.49) [184107]"}
                        Heap[Seq#Index(arg_S, i_16_1), f_7] < Heap[Seq#Index(arg_S, j_6_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_17_1_1: int, j_7_1_1: int ::
                    { Seq#Index(arg_S, i_17_1_1), Seq#Index(arg_S, j_7_1_1) }
                    0 <= i_17_1_1 && (i_17_1_1 < j_7_1_1 && j_7_1_1 < Seq#Length(arg_S)) ==> Heap[Seq#Index(arg_S, i_17_1_1), f_7] < Heap[Seq#Index(arg_S, j_7_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@87.7--87.49) [184108]"}
                    (forall i_18_1: int, i_18_2: int ::
                    
                    (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S))) && (0 <= i_18_2 && i_18_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_18_1) != Seq#Index(arg_S, i_18_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange19(Seq#Index(arg_S, i_18_1)) && invRecv19(Seq#Index(arg_S, i_18_1)) == i_18_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv19(o_9) }
                      ((0 <= invRecv19(o_9) && invRecv19(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange19(o_9) ==> Seq#Index(arg_S, invRecv19(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@87.7--87.49) [184109]"}
                    (forall i_18_1: int ::
                    { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                    0 <= i_18_1 && i_18_1 < Seq#Length(arg_S) ==> arg_p >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && arg_p > NoPerm ==> Seq#Index(arg_S, i_18_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv19(o_9) && invRecv19(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange19(o_9) ==> (NoPerm < arg_p ==> Seq#Index(arg_S, invRecv19(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p) && (!(((0 <= invRecv19(o_9) && invRecv19(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange19(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S);
                  if (0 <= index && index < Seq#Length(arg_S)) {
                    assume Heap[Seq#Index(arg_S, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_19_1: int ::
                      { Seq#Index(arg_S, i_19_1) }
                      0 <= i_19_1 && i_19_1 < Seq#Length(arg_S) ==> Heap[Seq#Index(arg_S, i_19_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[k..|S|], x, p / 2) -- bsearch.vpr@89.7--89.51
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S_1 := Seq#Drop(Seq#Take(S, Seq#Length(S)), k);
                arg_p_1 := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@89.7--89.51) [184110]"}
                    NoPerm < arg_p_1;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@89.7--89.51) [184111]"}
                    arg_p_1 < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_20_2) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_8_2) && i_20_2 != j_8_2)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i] != S[k..|S|][j] might not hold. (bsearch.vpr@89.7--89.51) [184112]"}
                        Seq#Index(arg_S_1, i_20_2) != Seq#Index(arg_S_1, j_8_2);
                    }
                    assume false;
                  }
                  assume (forall i_21_1_1: int, j_9_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Index(arg_S_1, i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) && i_21_1_1 != j_9_1_1) ==> Seq#Index(arg_S_1, i_21_1_1) != Seq#Index(arg_S_1, j_9_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@89.7--89.51) [184113]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && dummyFunction(Heap[Seq#Index(arg_S_1, i_22_1), f_7]) ==> arg_p_1 >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@89.7--89.51) [184114]"}
                      (forall i_22_1: int, i_22_2: int ::
                      { neverTriggered20(i_22_1), neverTriggered20(i_22_2) }
                      (((i_22_1 != i_22_2 && (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1))) && (0 <= i_22_2 && i_22_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_22_1) != Seq#Index(arg_S_1, i_22_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[k..|S|][i].f (bsearch.vpr@89.7--89.51) [184115]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1) ==> Mask[Seq#Index(arg_S_1, i_22_1), f_7] >= arg_p_1
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange20(Seq#Index(arg_S_1, i_22_1)) && invRecv20(Seq#Index(arg_S_1, i_22_1)) == i_22_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv20(o_9) }
                      (0 <= invRecv20(o_9) && invRecv20(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange20(o_9)) ==> Seq#Index(arg_S_1, invRecv20(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv20(o_9) && invRecv20(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange20(o_9)) ==> Seq#Index(arg_S_1, invRecv20(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_1) && (!((0 <= invRecv20(o_9) && invRecv20(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange20(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_23_1 && (i_23_1 < j_10_2 && j_10_2 < Seq#Length(arg_S_1))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i].f < S[k..|S|][j].f might not hold. (bsearch.vpr@89.7--89.51) [184116]"}
                        Heap[Seq#Index(arg_S_1, i_23_1), f_7] < Heap[Seq#Index(arg_S_1, j_10_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_24_1_1: int, j_11_1_1: int ::
                    { Seq#Index(arg_S_1, i_24_1_1), Seq#Index(arg_S_1, j_11_1_1) }
                    0 <= i_24_1_1 && (i_24_1_1 < j_11_1_1 && j_11_1_1 < Seq#Length(arg_S_1)) ==> Heap[Seq#Index(arg_S_1, i_24_1_1), f_7] < Heap[Seq#Index(arg_S_1, j_11_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@89.7--89.51) [184117]"}
                    (forall i_25_1: int, i_25_2: int ::
                    
                    (((i_25_1 != i_25_2 && (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1))) && (0 <= i_25_2 && i_25_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_25_1) != Seq#Index(arg_S_1, i_25_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange21(Seq#Index(arg_S_1, i_25_1)) && invRecv21(Seq#Index(arg_S_1, i_25_1)) == i_25_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv21(o_9) }
                      ((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange21(o_9) ==> Seq#Index(arg_S_1, invRecv21(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@89.7--89.51) [184118]"}
                    (forall i_25_1: int ::
                    { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                    0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1) ==> arg_p_1 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && arg_p_1 > NoPerm ==> Seq#Index(arg_S_1, i_25_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange21(o_9) ==> (NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, invRecv21(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p_1) && (!(((0 <= invRecv21(o_9) && invRecv21(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange21(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S_1);
                  if (0 <= index && index < Seq#Length(arg_S_1)) {
                    assume Heap[Seq#Index(arg_S_1, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_26_1: int ::
                      { Seq#Index(arg_S_1, i_26_1) }
                      0 <= i_26_1 && i_26_1 < Seq#Length(arg_S_1) ==> Heap[Seq#Index(arg_S_1, i_26_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + (index == -1 ? 0 : k) -- bsearch.vpr@90.7--90.45
                index := index + (if index == -1 then 0 else k);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of bfind_fixed_seqin might not hold. Fraction p might be negative. (bsearch.vpr@73.11--73.67) [184119]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && dummyFunction(Heap[Seq#Index(S, i_10_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver S[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@73.11--73.67) [184120]"}
        (forall i_10_1: int, i_10_2: int ::
        { neverTriggered17(i_10_1), neverTriggered17(i_10_2) }
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_10_1) != Seq#Index(S, i_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of bfind_fixed_seqin might not hold. There might be insufficient permission to access S[i].f (bsearch.vpr@73.11--73.67) [184121]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) ==> Mask[Seq#Index(S, i_10_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver S[i]
      assume (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Seq#Index(S, i_10_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && NoPerm < p_1 ==> qpRange17(Seq#Index(S, i_10_1)) && invRecv17(Seq#Index(S, i_10_1)) == i_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv17(o_9)) && (NoPerm < p_1 && qpRange17(o_9)) ==> Seq#Index(S, invRecv17(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv17(o_9)) && (NoPerm < p_1 && qpRange17(o_9)) ==> Seq#Index(S, invRecv17(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv17(o_9)) && (NoPerm < p_1 && qpRange17(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of bfind_fixed_seqin might not hold. Assertion (index in [-1..|S|)) might not hold. (bsearch.vpr@74.11--74.29) [184122]"}
      Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      assert {:msg "  Postcondition of bfind_fixed_seqin might not hold. Assertion S[index].f == x might not hold. (bsearch.vpr@75.11--75.48) [184123]"}
        Heap[Seq#Index(S, index), f_7] == x;
    }
    if (index == -1) {
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_11_1)) {
          assert {:msg "  Postcondition of bfind_fixed_seqin might not hold. Assertion S[i].f != x might not hold. (bsearch.vpr@76.11--76.82) [184124]"}
            Heap[Seq#Index(S, i_11_1), f_7] != x;
        }
        assume false;
      }
      assume (forall i_12_1_1: int ::
        { Seq#Index(S, i_12_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_12_1_1) ==> Heap[Seq#Index(S, i_12_1_1), f_7] != x
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method bfind_fixed_seqin_heap_dep_triggers
// ==================================================

procedure bfind_fixed_seqin_heap_dep_triggers(S: (Seq Ref), x: int, p_1: Perm) returns (index: int)
  modifies Heap, Mask;
{
  var i_13: int;
  var j_19: int;
  var i_23: int;
  var QPMask: MaskType;
  var j_20: int;
  var i_24: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_25: int;
  var i_27: int;
  var k: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_S: (Seq Ref);
  var arg_p: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_13_1: int;
  var j_4_1: int;
  var i_16_1: int;
  var j_6_2: int;
  var ExhaleHeap: HeapType;
  var arg_S_1: (Seq Ref);
  var arg_p_1: Perm;
  var i_20_2: int;
  var j_8_2: int;
  var i_23_1: int;
  var j_10_2: int;
  var i_11_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume NoPerm < p_1;
    assume p_1 < FullPerm;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|S|)), (j in [0..|S|)) } { (i in [0..|S|)), S[j] } { (j in [0..|S|)), S[i] } { S[i], S[j] } (i in [0..|S|)) && ((j in [0..|S|)) && i != j) ==> S[i] != S[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_13) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_19) && i_13 != j_19)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@100.12--100.94) [184125]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@100.12--100.94) [184126]"}
            i_13 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@100.12--100.94) [184127]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@100.12--100.94) [184128]"}
            j_19 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1), Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1), Seq#Index(S, i_1) } { Seq#Index(S, i_1), Seq#Index(S, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && i_1 != j_1) ==> Seq#Index(S, i_1) != Seq#Index(S, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_23)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@101.12--101.70) [184129]"}
            i_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@101.12--101.70) [184130]"}
            i_23 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@101.12--101.70) [184131]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_3)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_3_2) != Seq#Index(S, i_3_3)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && NoPerm < p_1 ==> qpRange22(Seq#Index(S, i_3_2)) && invRecv22(Seq#Index(S, i_3_2)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv22(o_9)) && NoPerm < p_1) && qpRange22(o_9) ==> Seq#Index(S, invRecv22(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@101.12--101.70) [184132]"}
      (forall i_3_2: int ::
      { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { Seq#Index(S, i_3_2) } { Heap[Seq#Index(S, i_3_2), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_3_2) && p_1 > NoPerm ==> Seq#Index(S, i_3_2) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv22(o_9)) && NoPerm < p_1) && qpRange22(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv22(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv22(o_9)) && NoPerm < p_1) && qpRange22(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { S[i].f, S[j].f } (i in [0..j)) && (j in [i..|S|)) ==> S[i].f < S[j].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, j_20), i_24) && Seq#Contains(Seq#Range(i_24, Seq#Length(S)), j_20)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@102.12--102.102) [184133]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@102.12--102.102) [184134]"}
            i_24 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@102.12--102.102) [184135]"}
            HasDirectPerm(Mask, Seq#Index(S, i_24), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (bsearch.vpr@102.12--102.102) [184136]"}
            j_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (bsearch.vpr@102.12--102.102) [184137]"}
            j_20 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (bsearch.vpr@102.12--102.102) [184138]"}
            HasDirectPerm(Mask, Seq#Index(S, j_20), f_7);
        }
        assume false;
      }
    assume (forall i_5_1: int, j_3: int ::
      { Heap[Seq#Index(S, i_5_1), f_7], Heap[Seq#Index(S, j_3), f_7] }
      Seq#Contains(Seq#Range(0, j_3), i_5_1) && Seq#Contains(Seq#Range(i_5_1, Seq#Length(S)), j_3) ==> Heap[Seq#Index(S, i_5_1), f_7] < Heap[Seq#Index(S, j_3), f_7]
    );
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
    
    // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> acc(S[i].f, p))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_25)) {
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@103.11--103.69) [184139]"}
            i_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@103.11--103.69) [184140]"}
            i_25 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@103.11--103.69) [184141]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_7_1) != Seq#Index(S, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && NoPerm < p_1 ==> qpRange23(Seq#Index(S, i_7_1)) && invRecv23(Seq#Index(S, i_7_1)) == i_7_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv23(o_9)) && NoPerm < p_1) && qpRange23(o_9) ==> Seq#Index(S, invRecv23(o_9)) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (bsearch.vpr@103.11--103.69) [184142]"}
      (forall i_7_1: int ::
      { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(S, i_7_1) } { PostHeap[Seq#Index(S, i_7_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_7_1) && p_1 > NoPerm ==> Seq#Index(S, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv23(o_9)) && NoPerm < p_1) && qpRange23(o_9) ==> (NoPerm < p_1 ==> Seq#Index(S, invRecv23(o_9)) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + p_1) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv23(o_9)) && NoPerm < p_1) && qpRange23(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    assume state(PostHeap, PostMask);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      
      // -- Check definedness of S[index].f == x
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might be negative. (bsearch.vpr@105.11--105.48) [184143]"}
          index >= 0;
        assert {:msg "  Contract might not be well-formed. Index S[index] into S might exceed sequence length. (bsearch.vpr@105.11--105.48) [184144]"}
          index < Seq#Length(S);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[index].f (bsearch.vpr@105.11--105.48) [184145]"}
          HasDirectPerm(PostMask, Seq#Index(S, index), f_7);
      assume PostHeap[Seq#Index(S, index), f_7] == x;
    }
    assume state(PostHeap, PostMask);
    if (index == -1) {
      
      // -- Check definedness of (forall i: Int :: { S[i].f } (i in [0..|S|)) ==> S[i].f != x)
        if (*) {
          if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_27)) {
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might be negative. (bsearch.vpr@106.11--106.84) [184146]"}
              i_27 >= 0;
            assert {:msg "  Contract might not be well-formed. Index S[i] into S might exceed sequence length. (bsearch.vpr@106.11--106.84) [184147]"}
              i_27 < Seq#Length(S);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[i].f (bsearch.vpr@106.11--106.84) [184148]"}
              HasDirectPerm(PostMask, Seq#Index(S, i_27), f_7);
          }
          assume false;
        }
      assume (forall i_9_1: int ::
        { PostHeap[Seq#Index(S, i_9_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_9_1) ==> PostHeap[Seq#Index(S, i_9_1), f_7] != x
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (|S| == 0) -- bsearch.vpr@108.3--122.4
    if (Seq#Length(S) == 0) {
      
      // -- Translating statement: index := -1 -- bsearch.vpr@109.5--109.16
        index := -1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (|S| == 1) -- bsearch.vpr@110.5--122.4
        if (Seq#Length(S) == 1) {
          
          // -- Translating statement: index := (x == S[0].f ? 0 : -1) -- bsearch.vpr@111.5--111.34
            
            // -- Check definedness of (x == S[0].f ? 0 : -1)
              assert {:msg "  Assignment might fail. Index S[0] into S might exceed sequence length. (bsearch.vpr@111.5--111.34) [184149]"}
                0 < Seq#Length(S);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access S[0].f (bsearch.vpr@111.5--111.34) [184150]"}
                HasDirectPerm(Mask, Seq#Index(S, 0), f_7);
            index := (if x == Heap[Seq#Index(S, 0), f_7] then 0 else -1);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 < k && k < |S| - 1 -- bsearch.vpr@114.5--114.26
            assume 0 < k;
            assume k < Seq#Length(S) - 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (x < S[k].f) -- bsearch.vpr@116.5--121.6
            
            // -- Check definedness of x < S[k].f
              assert {:msg "  Conditional statement might fail. Index S[k] into S might be negative. (bsearch.vpr@116.9--116.19) [184151]"}
                k >= 0;
              assert {:msg "  Conditional statement might fail. Index S[k] into S might exceed sequence length. (bsearch.vpr@116.9--116.19) [184152]"}
                k < Seq#Length(S);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access S[k].f (bsearch.vpr@116.9--116.19) [184153]"}
                HasDirectPerm(Mask, Seq#Index(S, k), f_7);
            if (x < Heap[Seq#Index(S, k), f_7]) {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[0..k], x, p / 2) -- bsearch.vpr@117.7--117.49
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S := Seq#Drop(Seq#Take(S, k), 0);
                arg_p := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@117.7--117.49) [184154]"}
                    NoPerm < arg_p;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@117.7--117.49) [184155]"}
                    arg_p < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_13_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_4_1) && i_13_1 != j_4_1)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i] != S[0..k][j] might not hold. (bsearch.vpr@117.7--117.49) [184156]"}
                        Seq#Index(arg_S, i_13_1) != Seq#Index(arg_S, j_4_1);
                    }
                    assume false;
                  }
                  assume (forall i_14_1_1: int, j_5_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1), Seq#Index(arg_S, j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1), Seq#Index(arg_S, i_14_1_1) } { Seq#Index(arg_S, i_14_1_1), Seq#Index(arg_S, j_5_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), i_14_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S)), j_5_1_1) && i_14_1_1 != j_5_1_1) ==> Seq#Index(arg_S, i_14_1_1) != Seq#Index(arg_S, j_5_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@117.7--117.49) [184157]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && dummyFunction(Heap[Seq#Index(arg_S, i_15_1), f_7]) ==> arg_p >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@117.7--117.49) [184158]"}
                      (forall i_15_1: int, i_15_2: int ::
                      { neverTriggered25(i_15_1), neverTriggered25(i_15_2) }
                      (((i_15_1 != i_15_2 && (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S))) && (0 <= i_15_2 && i_15_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_15_1) != Seq#Index(arg_S, i_15_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[0..k][i].f (bsearch.vpr@117.7--117.49) [184159]"}
                      (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      0 <= i_15_1 && i_15_1 < Seq#Length(arg_S) ==> Mask[Seq#Index(arg_S, i_15_1), f_7] >= arg_p
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_15_1: int ::
                      { Seq#Index(arg_S, i_15_1) } { Seq#Index(arg_S, i_15_1) }
                      (0 <= i_15_1 && i_15_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange25(Seq#Index(arg_S, i_15_1)) && invRecv25(Seq#Index(arg_S, i_15_1)) == i_15_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv25(o_9) }
                      (0 <= invRecv25(o_9) && invRecv25(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange25(o_9)) ==> Seq#Index(arg_S, invRecv25(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv25(o_9) && invRecv25(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange25(o_9)) ==> Seq#Index(arg_S, invRecv25(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p) && (!((0 <= invRecv25(o_9) && invRecv25(o_9) < Seq#Length(arg_S)) && (NoPerm < arg_p && qpRange25(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_16_1 && (i_16_1 < j_6_2 && j_6_2 < Seq#Length(arg_S))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[0..k][i].f < S[0..k][j].f might not hold. (bsearch.vpr@117.7--117.49) [184160]"}
                        Heap[Seq#Index(arg_S, i_16_1), f_7] < Heap[Seq#Index(arg_S, j_6_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_17_1_1: int, j_7_1_1: int ::
                    { Seq#Index(arg_S, i_17_1_1), Seq#Index(arg_S, j_7_1_1) }
                    0 <= i_17_1_1 && (i_17_1_1 < j_7_1_1 && j_7_1_1 < Seq#Length(arg_S)) ==> Heap[Seq#Index(arg_S, i_17_1_1), f_7] < Heap[Seq#Index(arg_S, j_7_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[0..k][i].f might not be injective. (bsearch.vpr@117.7--117.49) [184161]"}
                    (forall i_18_1: int, i_18_2: int ::
                    
                    (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S))) && (0 <= i_18_2 && i_18_2 < Seq#Length(arg_S))) && NoPerm < arg_p) && NoPerm < arg_p ==> Seq#Index(arg_S, i_18_1) != Seq#Index(arg_S, i_18_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && NoPerm < arg_p ==> qpRange26(Seq#Index(arg_S, i_18_1)) && invRecv26(Seq#Index(arg_S, i_18_1)) == i_18_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv26(o_9) }
                      ((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange26(o_9) ==> Seq#Index(arg_S, invRecv26(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@117.7--117.49) [184162]"}
                    (forall i_18_1: int ::
                    { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                    0 <= i_18_1 && i_18_1 < Seq#Length(arg_S) ==> arg_p >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_18_1: int ::
                      { Seq#Index(arg_S, i_18_1) } { Seq#Index(arg_S, i_18_1) }
                      (0 <= i_18_1 && i_18_1 < Seq#Length(arg_S)) && arg_p > NoPerm ==> Seq#Index(arg_S, i_18_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange26(o_9) ==> (NoPerm < arg_p ==> Seq#Index(arg_S, invRecv26(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p) && (!(((0 <= invRecv26(o_9) && invRecv26(o_9) < Seq#Length(arg_S)) && NoPerm < arg_p) && qpRange26(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S);
                  if (0 <= index && index < Seq#Length(arg_S)) {
                    assume Heap[Seq#Index(arg_S, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_19_1: int ::
                      { Seq#Index(arg_S, i_19_1) }
                      0 <= i_19_1 && i_19_1 < Seq#Length(arg_S) ==> Heap[Seq#Index(arg_S, i_19_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: index := bfind_fixed_ineq(S[k..|S|], x, p / 2) -- bsearch.vpr@119.7--119.51
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_S_1 := Seq#Drop(Seq#Take(S, Seq#Length(S)), k);
                arg_p_1 := p_1 / 2;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 > none might not hold. (bsearch.vpr@119.7--119.51) [184163]"}
                    NoPerm < arg_p_1;
                  assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion p / 2 < write might not hold. (bsearch.vpr@119.7--119.51) [184164]"}
                    arg_p_1 < FullPerm;
                  if (*) {
                    if (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_20_2) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_8_2) && i_20_2 != j_8_2)) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i] != S[k..|S|][j] might not hold. (bsearch.vpr@119.7--119.51) [184165]"}
                        Seq#Index(arg_S_1, i_20_2) != Seq#Index(arg_S_1, j_8_2);
                    }
                    assume false;
                  }
                  assume (forall i_21_1_1: int, j_9_1_1: int ::
                    { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1), Seq#Index(arg_S_1, i_21_1_1) } { Seq#Index(arg_S_1, i_21_1_1), Seq#Index(arg_S_1, j_9_1_1) }
                    Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), i_21_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(arg_S_1)), j_9_1_1) && i_21_1_1 != j_9_1_1) ==> Seq#Index(arg_S_1, i_21_1_1) != Seq#Index(arg_S_1, j_9_1_1)
                  );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Fraction p / 2 might be negative. (bsearch.vpr@119.7--119.51) [184166]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && dummyFunction(Heap[Seq#Index(arg_S_1, i_22_1), f_7]) ==> arg_p_1 >= NoPerm
                    );
                  
                  // -- check if receiver arg_S[i] is injective
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@119.7--119.51) [184167]"}
                      (forall i_22_1: int, i_22_2: int ::
                      { neverTriggered27(i_22_1), neverTriggered27(i_22_2) }
                      (((i_22_1 != i_22_2 && (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1))) && (0 <= i_22_2 && i_22_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_22_1) != Seq#Index(arg_S_1, i_22_2)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. There might be insufficient permission to access S[k..|S|][i].f (bsearch.vpr@119.7--119.51) [184168]"}
                      (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1) ==> Mask[Seq#Index(arg_S_1, i_22_1), f_7] >= arg_p_1
                    );
                  
                  // -- assumptions for inverse of receiver arg_S[i]
                    assume (forall i_22_1: int ::
                      { Seq#Index(arg_S_1, i_22_1) } { Seq#Index(arg_S_1, i_22_1) }
                      (0 <= i_22_1 && i_22_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange27(Seq#Index(arg_S_1, i_22_1)) && invRecv27(Seq#Index(arg_S_1, i_22_1)) == i_22_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv27(o_9) }
                      (0 <= invRecv27(o_9) && invRecv27(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange27(o_9)) ==> Seq#Index(arg_S_1, invRecv27(o_9)) == o_9
                    );
                  
                  // -- assume permission updates for field f
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      ((0 <= invRecv27(o_9) && invRecv27(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange27(o_9)) ==> Seq#Index(arg_S_1, invRecv27(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - arg_p_1) && (!((0 <= invRecv27(o_9) && invRecv27(o_9) < Seq#Length(arg_S_1)) && (NoPerm < arg_p_1 && qpRange27(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (0 <= i_23_1 && (i_23_1 < j_10_2 && j_10_2 < Seq#Length(arg_S_1))) {
                      assert {:msg "  The precondition of method bfind_fixed_ineq might not hold. Assertion S[k..|S|][i].f < S[k..|S|][j].f might not hold. (bsearch.vpr@119.7--119.51) [184169]"}
                        Heap[Seq#Index(arg_S_1, i_23_1), f_7] < Heap[Seq#Index(arg_S_1, j_10_2), f_7];
                    }
                    assume false;
                  }
                  assume (forall i_24_1_1: int, j_11_1_1: int ::
                    { Seq#Index(arg_S_1, i_24_1_1), Seq#Index(arg_S_1, j_11_1_1) }
                    0 <= i_24_1_1 && (i_24_1_1 < j_11_1_1 && j_11_1_1 < Seq#Length(arg_S_1)) ==> Heap[Seq#Index(arg_S_1, i_24_1_1), f_7] < Heap[Seq#Index(arg_S_1, j_11_1_1), f_7]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc index;
                
                // -- Inhaling postcondition
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource S[k..|S|][i].f might not be injective. (bsearch.vpr@119.7--119.51) [184170]"}
                    (forall i_25_1: int, i_25_2: int ::
                    
                    (((i_25_1 != i_25_2 && (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1))) && (0 <= i_25_2 && i_25_2 < Seq#Length(arg_S_1))) && NoPerm < arg_p_1) && NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, i_25_1) != Seq#Index(arg_S_1, i_25_2)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && NoPerm < arg_p_1 ==> qpRange28(Seq#Index(arg_S_1, i_25_1)) && invRecv28(Seq#Index(arg_S_1, i_25_1)) == i_25_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv28(o_9) }
                      ((0 <= invRecv28(o_9) && invRecv28(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange28(o_9) ==> Seq#Index(arg_S_1, invRecv28(o_9)) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction p / 2 might be negative. (bsearch.vpr@119.7--119.51) [184171]"}
                    (forall i_25_1: int ::
                    { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                    0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1) ==> arg_p_1 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_25_1: int ::
                      { Seq#Index(arg_S_1, i_25_1) } { Seq#Index(arg_S_1, i_25_1) }
                      (0 <= i_25_1 && i_25_1 < Seq#Length(arg_S_1)) && arg_p_1 > NoPerm ==> Seq#Index(arg_S_1, i_25_1) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, f_7] }
                      (((0 <= invRecv28(o_9) && invRecv28(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange28(o_9) ==> (NoPerm < arg_p_1 ==> Seq#Index(arg_S_1, invRecv28(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + arg_p_1) && (!(((0 <= invRecv28(o_9) && invRecv28(o_9) < Seq#Length(arg_S_1)) && NoPerm < arg_p_1) && qpRange28(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume -1 <= index;
                  assume index < Seq#Length(arg_S_1);
                  if (0 <= index && index < Seq#Length(arg_S_1)) {
                    assume Heap[Seq#Index(arg_S_1, index), f_7] == x;
                  }
                  if (index == -1) {
                    assume (forall i_26_1: int ::
                      { Seq#Index(arg_S_1, i_26_1) }
                      0 <= i_26_1 && i_26_1 < Seq#Length(arg_S_1) ==> Heap[Seq#Index(arg_S_1, i_26_1), f_7] != x
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + (index == -1 ? 0 : k) -- bsearch.vpr@120.7--120.45
                index := index + (if index == -1 then 0 else k);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of bfind_fixed_seqin_heap_dep_triggers might not hold. Fraction p might be negative. (bsearch.vpr@103.11--103.69) [184172]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && dummyFunction(Heap[Seq#Index(S, i_10_1), f_7]) ==> p_1 >= NoPerm
      );
    
    // -- check if receiver S[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[i].f might not be injective. (bsearch.vpr@103.11--103.69) [184173]"}
        (forall i_10_1: int, i_10_2: int ::
        { neverTriggered24(i_10_1), neverTriggered24(i_10_2) }
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_2)) && NoPerm < p_1) && NoPerm < p_1 ==> Seq#Index(S, i_10_1) != Seq#Index(S, i_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of bfind_fixed_seqin_heap_dep_triggers might not hold. There might be insufficient permission to access S[i].f (bsearch.vpr@103.11--103.69) [184174]"}
        (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) ==> Mask[Seq#Index(S, i_10_1), f_7] >= p_1
      );
    
    // -- assumptions for inverse of receiver S[i]
      assume (forall i_10_1: int ::
        { Seq#Index(S, i_10_1) } { Heap[Seq#Index(S, i_10_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_10_1) && NoPerm < p_1 ==> qpRange24(Seq#Index(S, i_10_1)) && invRecv24(Seq#Index(S, i_10_1)) == i_10_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv24(o_9)) && (NoPerm < p_1 && qpRange24(o_9)) ==> Seq#Index(S, invRecv24(o_9)) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv24(o_9)) && (NoPerm < p_1 && qpRange24(o_9)) ==> Seq#Index(S, invRecv24(o_9)) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - p_1) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv24(o_9)) && (NoPerm < p_1 && qpRange24(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of bfind_fixed_seqin_heap_dep_triggers might not hold. Assertion (index in [-1..|S|)) might not hold. (bsearch.vpr@104.11--104.29) [184175]"}
      Seq#Contains(Seq#Range(-1, Seq#Length(S)), index);
    if (Seq#Contains(Seq#Range(0, Seq#Length(S)), index)) {
      assert {:msg "  Postcondition of bfind_fixed_seqin_heap_dep_triggers might not hold. Assertion S[index].f == x might not hold. (bsearch.vpr@105.11--105.48) [184176]"}
        Heap[Seq#Index(S, index), f_7] == x;
    }
    if (index == -1) {
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), i_11_1)) {
          assert {:msg "  Postcondition of bfind_fixed_seqin_heap_dep_triggers might not hold. Assertion S[i].f != x might not hold. (bsearch.vpr@106.11--106.84) [184177]"}
            Heap[Seq#Index(S, i_11_1), f_7] != x;
        }
        assume false;
      }
      assume (forall i_12_1_1: int ::
        { Heap[Seq#Index(S, i_12_1_1), f_7] }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), i_12_1_1) ==> Heap[Seq#Index(S, i_12_1_1), f_7] != x
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}