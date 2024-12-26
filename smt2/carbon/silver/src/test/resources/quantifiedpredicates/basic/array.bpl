// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:57:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/array.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/array-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_12: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_12] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_12], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_44: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_44] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_44) ==> Heap[o_38, f_44] == ExhaleHeap[o_38, f_44]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_8: (Field A B), v: B ::
  { Heap[o_8, f_8:=v] }
  succHeap(Heap, Heap[o_8, f_8:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(i_9_1: int): bool;
function  neverTriggered4(i_12_1: int): bool;
function  neverTriggered5(i_14_1: int): bool;
function  neverTriggered6(i_1: int): bool;
function  neverTriggered7(i_5: int): bool;
function  neverTriggered8(i_9_1: int): bool;
function  neverTriggered9(i_12_1: int): bool;
function  neverTriggered10(i_14_1: int): bool;
function  neverTriggered11(i_1: int): bool;
function  neverTriggered12(i_5: int): bool;
function  neverTriggered13(i_9_1: int): bool;
function  neverTriggered14(i_12_1: int): bool;
function  neverTriggered15(i_14_1: int): bool;
function  neverTriggered16(i_1: int): bool;
function  neverTriggered17(i_5: int): bool;
function  neverTriggered18(i_8_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv2(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv3(a_3_1_1: IArrayDomainType, i_10_1_1: int): int;
function  invRecv4(a_4_1: IArrayDomainType, i_13_1_1: int): int;
function  invRecv5(a_5_1_1: IArrayDomainType, i_15_1_1: int): int;
function  invRecv6(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv7(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv8(a_3_1_1: IArrayDomainType, i_10_1_1: int): int;
function  invRecv9(a_4_1: IArrayDomainType, i_13_1_1: int): int;
function  invRecv10(a_5_1_1: IArrayDomainType, i_15_1_1: int): int;
function  invRecv11(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv12(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv13(a_3_1_1: IArrayDomainType, i_10_1_1: int): int;
function  invRecv14(a_4_1: IArrayDomainType, i_13_1_1: int): int;
function  invRecv15(a_5_1_1: IArrayDomainType, i_15_1_1: int): int;
function  invRecv16(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv17(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv18(a_3_1_1: IArrayDomainType, i_9_1_1: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange2(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange3(a_3_1_1: IArrayDomainType, i_10_1_1: int): bool;
function  qpRange4(a_4_1: IArrayDomainType, i_13_1_1: int): bool;
function  qpRange5(a_5_1_1: IArrayDomainType, i_15_1_1: int): bool;
function  qpRange6(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange7(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange8(a_3_1_1: IArrayDomainType, i_10_1_1: int): bool;
function  qpRange9(a_4_1: IArrayDomainType, i_13_1_1: int): bool;
function  qpRange10(a_5_1_1: IArrayDomainType, i_15_1_1: int): bool;
function  qpRange11(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange12(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange13(a_3_1_1: IArrayDomainType, i_10_1_1: int): bool;
function  qpRange14(a_4_1: IArrayDomainType, i_13_1_1: int): bool;
function  qpRange15(a_5_1_1: IArrayDomainType, i_15_1_1: int): bool;
function  qpRange16(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange17(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange18(a_3_1_1: IArrayDomainType, i_9_1_1: int): bool;

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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function loc_limited
function  loc_limited(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): IArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom limited
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (loc(a_2, i): Ref) == (loc_limited(a_2, i): Ref)
);

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: IArrayDomainType ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(a_2: IArrayDomainType, i: int): Field PredicateType_p FrameType;
function  p#sm(a_2: IArrayDomainType, i: int): Field PredicateType_p PMaskType;
axiom (forall a_2: IArrayDomainType, i: int ::
  { PredicateMaskField(p_14(a_2, i)) }
  PredicateMaskField(p_14(a_2, i)) == p#sm(a_2, i)
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { p_14(a_2, i) }
  IsPredicateField(p_14(a_2, i))
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { p_14(a_2, i) }
  getPredWandId(p_14(a_2, i)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2_1: int ::
  { p_14(a_2, i), p_14(a2, i2_1) }
  p_14(a_2, i) == p_14(a2, i2_1) ==> a_2 == a2 && i == i2_1
);
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2_1: int ::
  { p#sm(a_2, i), p#sm(a2, i2_1) }
  p#sm(a_2, i) == p#sm(a2, i2_1) ==> a_2 == a2 && i == i2_1
);

axiom (forall Heap: HeapType, a_2: IArrayDomainType, i: int ::
  { p#trigger(Heap, p_14(a_2, i)) }
  p#everUsed(p_14(a_2, i))
);

procedure p#definedness(a_2: IArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    perm := FullPerm;
    assume (loc(a_2, i): Ref) != null;
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(a_2: IArrayDomainType, n: int) returns ()
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
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@34.12--34.57) [107805]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered1(i_1), neverTriggered1(i_1_1) }
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> invRecv1(a_2, i_1) == i_1 && qpRange1(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv1(a_1_1_1, i_2_1_1) }
        (Seq#Contains(Seq#Range(0, n), invRecv1(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        (Seq#Contains(Seq#Range(0, n), invRecv1(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !((Seq#Contains(Seq#Range(0, n), invRecv1(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int :: { (i in [4..n)) } (i in [4..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@35.11--35.56) [107806]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered2(i_5), neverTriggered2(i_5_1) }
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(4, n), i_5)) && Seq#Contains(Seq#Range(4, n), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_5) } { Seq#Contains(Seq#Range(4, n), i_5) }
        Seq#Contains(Seq#Range(4, n), i_5) && NoPerm < FullPerm ==> invRecv2(a_2, i_5) == i_5 && qpRange2(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv2(a_2_1_1, i_6_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv2(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv2(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv2(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv2(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv2(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..4)) } (i in [0..4)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@36.11--36.56) [107807]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered3(i_9_1), neverTriggered3(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, 4), i_9_1)) && Seq#Contains(Seq#Range(0, 4), i_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_9_1 != i_9_2
      );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { PostHeap[null, p_14(a_2, i_9_1)] } { PostMask[null, p_14(a_2, i_9_1)] } { Seq#ContainsTrigger(Seq#Range(0, 4), i_9_1) } { Seq#Contains(Seq#Range(0, 4), i_9_1) }
        Seq#Contains(Seq#Range(0, 4), i_9_1) && NoPerm < FullPerm ==> invRecv3(a_2, i_9_1) == i_9_1 && qpRange3(a_2, i_9_1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { invRecv3(a_3_1_1, i_10_1_1) }
        (Seq#Contains(Seq#Range(0, 4), invRecv3(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_10_1_1) ==> a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_10_1_1) == i_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        (Seq#Contains(Seq#Range(0, 4), invRecv3(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_10_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_10_1_1) == i_10_1_1) && QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        !((Seq#Contains(Seq#Range(0, 4), invRecv3(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_10_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)]
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
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@35.11--35.56) [107808]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered4(i_12_1), neverTriggered4(i_12_2) }
        (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(4, n), i_12_1)) && Seq#Contains(Seq#Range(4, n), i_12_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_12_1 != i_12_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t1 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@35.11--35.56) [107809]"}
        (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) ==> Mask[null, p_14(a_2, i_12_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) && NoPerm < FullPerm ==> invRecv4(a_2, i_12_1) == i_12_1 && qpRange4(a_2, i_12_1)
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { invRecv4(a_4_1, i_13_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv4(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange4(a_4_1, i_13_1_1) ==> a_2 == a_4_1 && invRecv4(a_4_1, i_13_1_1) == i_13_1_1
      );
    
    // -- assume permission updates
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv4(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange4(a_4_1, i_13_1_1) ==> (a_2 == a_4_1 && invRecv4(a_4_1, i_13_1_1) == i_13_1_1) && QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)] - FullPerm
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv4(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange4(a_4_1, i_13_1_1)) ==> QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@36.11--36.56) [107810]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered5(i_14_1), neverTriggered5(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, 4), i_14_1)) && Seq#Contains(Seq#Range(0, 4), i_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_14_1 != i_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t1 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@36.11--36.56) [107811]"}
        (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 4), i_14_1) } { Seq#Contains(Seq#Range(0, 4), i_14_1) }
        Seq#Contains(Seq#Range(0, 4), i_14_1) ==> Mask[null, p_14(a_2, i_14_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 4), i_14_1) } { Seq#Contains(Seq#Range(0, 4), i_14_1) }
        Seq#Contains(Seq#Range(0, 4), i_14_1) && NoPerm < FullPerm ==> invRecv5(a_2, i_14_1) == i_14_1 && qpRange5(a_2, i_14_1)
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { invRecv5(a_5_1_1, i_15_1_1) }
        (Seq#Contains(Seq#Range(0, 4), invRecv5(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_15_1_1) ==> a_2 == a_5_1_1 && invRecv5(a_5_1_1, i_15_1_1) == i_15_1_1
      );
    
    // -- assume permission updates
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        (Seq#Contains(Seq#Range(0, 4), invRecv5(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_15_1_1) ==> (a_2 == a_5_1_1 && invRecv5(a_5_1_1, i_15_1_1) == i_15_1_1) && QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)] - FullPerm
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        !((Seq#Contains(Seq#Range(0, 4), invRecv5(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange5(a_5_1_1, i_15_1_1)) ==> QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)]
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
// Translation of method t2
// ==================================================

procedure t2(a_2: IArrayDomainType, n: int) returns ()
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
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@41.12--41.57) [107812]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered6(i_1), neverTriggered6(i_1_1) }
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> invRecv6(a_2, i_1) == i_1 && qpRange6(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv6(a_1_1_1, i_2_1_1) }
        (Seq#Contains(Seq#Range(0, n), invRecv6(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv6(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        (Seq#Contains(Seq#Range(0, n), invRecv6(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv6(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !((Seq#Contains(Seq#Range(0, n), invRecv6(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange6(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int :: { (i in [4..n)) } (i in [4..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@42.11--42.56) [107813]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered7(i_5), neverTriggered7(i_5_1) }
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(4, n), i_5)) && Seq#Contains(Seq#Range(4, n), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_5) } { Seq#Contains(Seq#Range(4, n), i_5) }
        Seq#Contains(Seq#Range(4, n), i_5) && NoPerm < FullPerm ==> invRecv7(a_2, i_5) == i_5 && qpRange7(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv7(a_2_1_1, i_6_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv7(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange7(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv7(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv7(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange7(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv7(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv7(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange7(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..5)) } (i in [0..5)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@44.11--44.56) [107814]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered8(i_9_1), neverTriggered8(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, 5), i_9_1)) && Seq#Contains(Seq#Range(0, 5), i_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_9_1 != i_9_2
      );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { PostHeap[null, p_14(a_2, i_9_1)] } { PostMask[null, p_14(a_2, i_9_1)] } { Seq#ContainsTrigger(Seq#Range(0, 5), i_9_1) } { Seq#Contains(Seq#Range(0, 5), i_9_1) }
        Seq#Contains(Seq#Range(0, 5), i_9_1) && NoPerm < FullPerm ==> invRecv8(a_2, i_9_1) == i_9_1 && qpRange8(a_2, i_9_1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { invRecv8(a_3_1_1, i_10_1_1) }
        (Seq#Contains(Seq#Range(0, 5), invRecv8(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_10_1_1) ==> a_2 == a_3_1_1 && invRecv8(a_3_1_1, i_10_1_1) == i_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        (Seq#Contains(Seq#Range(0, 5), invRecv8(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_10_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_3_1_1 && invRecv8(a_3_1_1, i_10_1_1) == i_10_1_1) && QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        !((Seq#Contains(Seq#Range(0, 5), invRecv8(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange8(a_3_1_1, i_10_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)]
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
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@42.11--42.56) [107815]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered9(i_12_1), neverTriggered9(i_12_2) }
        (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(4, n), i_12_1)) && Seq#Contains(Seq#Range(4, n), i_12_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_12_1 != i_12_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t2 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@42.11--42.56) [107816]"}
        (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) ==> Mask[null, p_14(a_2, i_12_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) && NoPerm < FullPerm ==> invRecv9(a_2, i_12_1) == i_12_1 && qpRange9(a_2, i_12_1)
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { invRecv9(a_4_1, i_13_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv9(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange9(a_4_1, i_13_1_1) ==> a_2 == a_4_1 && invRecv9(a_4_1, i_13_1_1) == i_13_1_1
      );
    
    // -- assume permission updates
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv9(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange9(a_4_1, i_13_1_1) ==> (a_2 == a_4_1 && invRecv9(a_4_1, i_13_1_1) == i_13_1_1) && QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)] - FullPerm
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv9(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange9(a_4_1, i_13_1_1)) ==> QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@44.11--44.56) [107817]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered10(i_14_1), neverTriggered10(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, 5), i_14_1)) && Seq#Contains(Seq#Range(0, 5), i_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_14_1 != i_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t2 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@44.11--44.56) [107818]"}
        (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 5), i_14_1) } { Seq#Contains(Seq#Range(0, 5), i_14_1) }
        Seq#Contains(Seq#Range(0, 5), i_14_1) ==> Mask[null, p_14(a_2, i_14_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 5), i_14_1) } { Seq#Contains(Seq#Range(0, 5), i_14_1) }
        Seq#Contains(Seq#Range(0, 5), i_14_1) && NoPerm < FullPerm ==> invRecv10(a_2, i_14_1) == i_14_1 && qpRange10(a_2, i_14_1)
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { invRecv10(a_5_1_1, i_15_1_1) }
        (Seq#Contains(Seq#Range(0, 5), invRecv10(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_15_1_1) ==> a_2 == a_5_1_1 && invRecv10(a_5_1_1, i_15_1_1) == i_15_1_1
      );
    
    // -- assume permission updates
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        (Seq#Contains(Seq#Range(0, 5), invRecv10(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_15_1_1) ==> (a_2 == a_5_1_1 && invRecv10(a_5_1_1, i_15_1_1) == i_15_1_1) && QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)] - FullPerm
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        !((Seq#Contains(Seq#Range(0, 5), invRecv10(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange10(a_5_1_1, i_15_1_1)) ==> QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)]
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
// Translation of method t3
// ==================================================

procedure t3(a_2: IArrayDomainType, n: int) returns ()
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
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@49.12--49.57) [107819]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered11(i_1), neverTriggered11(i_1_1) }
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> invRecv11(a_2, i_1) == i_1 && qpRange11(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv11(a_1_1_1, i_2_1_1) }
        (Seq#Contains(Seq#Range(0, n), invRecv11(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange11(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv11(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        (Seq#Contains(Seq#Range(0, n), invRecv11(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange11(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv11(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !((Seq#Contains(Seq#Range(0, n), invRecv11(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange11(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int :: { (i in [4..n)) } (i in [4..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@50.11--50.56) [107820]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered12(i_5), neverTriggered12(i_5_1) }
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(4, n), i_5)) && Seq#Contains(Seq#Range(4, n), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_5) } { Seq#Contains(Seq#Range(4, n), i_5) }
        Seq#Contains(Seq#Range(4, n), i_5) && NoPerm < FullPerm ==> invRecv12(a_2, i_5) == i_5 && qpRange12(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv12(a_2_1_1, i_6_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv12(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange12(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv12(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv12(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange12(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv12(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv12(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange12(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..3)) } (i in [0..3)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@51.11--51.56) [107821]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered13(i_9_1), neverTriggered13(i_9_2) }
        (((i_9_1 != i_9_2 && Seq#Contains(Seq#Range(0, 3), i_9_1)) && Seq#Contains(Seq#Range(0, 3), i_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_9_1 != i_9_2
      );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { PostHeap[null, p_14(a_2, i_9_1)] } { PostMask[null, p_14(a_2, i_9_1)] } { Seq#ContainsTrigger(Seq#Range(0, 3), i_9_1) } { Seq#Contains(Seq#Range(0, 3), i_9_1) }
        Seq#Contains(Seq#Range(0, 3), i_9_1) && NoPerm < FullPerm ==> invRecv13(a_2, i_9_1) == i_9_1 && qpRange13(a_2, i_9_1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { invRecv13(a_3_1_1, i_10_1_1) }
        (Seq#Contains(Seq#Range(0, 3), invRecv13(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange13(a_3_1_1, i_10_1_1) ==> a_2 == a_3_1_1 && invRecv13(a_3_1_1, i_10_1_1) == i_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        (Seq#Contains(Seq#Range(0, 3), invRecv13(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange13(a_3_1_1, i_10_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_3_1_1 && invRecv13(a_3_1_1, i_10_1_1) == i_10_1_1) && QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        !((Seq#Contains(Seq#Range(0, 3), invRecv13(a_3_1_1, i_10_1_1)) && NoPerm < FullPerm) && qpRange13(a_3_1_1, i_10_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)]
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
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@50.11--50.56) [107822]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered14(i_12_1), neverTriggered14(i_12_2) }
        (((i_12_1 != i_12_2 && Seq#Contains(Seq#Range(4, n), i_12_1)) && Seq#Contains(Seq#Range(4, n), i_12_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_12_1 != i_12_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@50.11--50.56) [107823]"}
        (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) ==> Mask[null, p_14(a_2, i_12_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] } { Seq#ContainsTrigger(Seq#Range(4, n), i_12_1) } { Seq#Contains(Seq#Range(4, n), i_12_1) }
        Seq#Contains(Seq#Range(4, n), i_12_1) && NoPerm < FullPerm ==> invRecv14(a_2, i_12_1) == i_12_1 && qpRange14(a_2, i_12_1)
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { invRecv14(a_4_1, i_13_1_1) }
        (Seq#Contains(Seq#Range(4, n), invRecv14(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange14(a_4_1, i_13_1_1) ==> a_2 == a_4_1 && invRecv14(a_4_1, i_13_1_1) == i_13_1_1
      );
    
    // -- assume permission updates
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        (Seq#Contains(Seq#Range(4, n), invRecv14(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange14(a_4_1, i_13_1_1) ==> (a_2 == a_4_1 && invRecv14(a_4_1, i_13_1_1) == i_13_1_1) && QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)] - FullPerm
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        !((Seq#Contains(Seq#Range(4, n), invRecv14(a_4_1, i_13_1_1)) && NoPerm < FullPerm) && qpRange14(a_4_1, i_13_1_1)) ==> QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@51.11--51.56) [107824]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered15(i_14_1), neverTriggered15(i_14_2) }
        (((i_14_1 != i_14_2 && Seq#Contains(Seq#Range(0, 3), i_14_1)) && Seq#Contains(Seq#Range(0, 3), i_14_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_14_1 != i_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@51.11--51.56) [107825]"}
        (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 3), i_14_1) } { Seq#Contains(Seq#Range(0, 3), i_14_1) }
        Seq#Contains(Seq#Range(0, 3), i_14_1) ==> Mask[null, p_14(a_2, i_14_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] } { Seq#ContainsTrigger(Seq#Range(0, 3), i_14_1) } { Seq#Contains(Seq#Range(0, 3), i_14_1) }
        Seq#Contains(Seq#Range(0, 3), i_14_1) && NoPerm < FullPerm ==> invRecv15(a_2, i_14_1) == i_14_1 && qpRange15(a_2, i_14_1)
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { invRecv15(a_5_1_1, i_15_1_1) }
        (Seq#Contains(Seq#Range(0, 3), invRecv15(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange15(a_5_1_1, i_15_1_1) ==> a_2 == a_5_1_1 && invRecv15(a_5_1_1, i_15_1_1) == i_15_1_1
      );
    
    // -- assume permission updates
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        (Seq#Contains(Seq#Range(0, 3), invRecv15(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange15(a_5_1_1, i_15_1_1) ==> (a_2 == a_5_1_1 && invRecv15(a_5_1_1, i_15_1_1) == i_15_1_1) && QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)] - FullPerm
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        !((Seq#Contains(Seq#Range(0, 3), invRecv15(a_5_1_1, i_15_1_1)) && NoPerm < FullPerm) && qpRange15(a_5_1_1, i_15_1_1)) ==> QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)]
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

procedure t4(a_2: IArrayDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [0..n)) } (i in [0..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@56.12--56.57) [107826]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered16(i_1), neverTriggered16(i_1_1) }
        (((i_1 != i_1_1 && Seq#Contains(Seq#Range(0, n), i_1)) && Seq#Contains(Seq#Range(0, n), i_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] } { Seq#ContainsTrigger(Seq#Range(0, n), i_1) } { Seq#Contains(Seq#Range(0, n), i_1) }
        Seq#Contains(Seq#Range(0, n), i_1) && NoPerm < FullPerm ==> invRecv16(a_2, i_1) == i_1 && qpRange16(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv16(a_1_1_1, i_2_1_1) }
        (Seq#Contains(Seq#Range(0, n), invRecv16(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange16(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv16(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        (Seq#Contains(Seq#Range(0, n), invRecv16(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange16(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv16(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !((Seq#Contains(Seq#Range(0, n), invRecv16(a_1_1_1, i_2_1_1)) && NoPerm < FullPerm) && qpRange16(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int :: { (i in [1..n)) } (i in [1..n)) ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@57.11--57.56) [107827]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered17(i_5), neverTriggered17(i_5_1) }
        (((i_5 != i_5_1 && Seq#Contains(Seq#Range(1, n), i_5)) && Seq#Contains(Seq#Range(1, n), i_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] } { Seq#ContainsTrigger(Seq#Range(1, n), i_5) } { Seq#Contains(Seq#Range(1, n), i_5) }
        Seq#Contains(Seq#Range(1, n), i_5) && NoPerm < FullPerm ==> invRecv17(a_2, i_5) == i_5 && qpRange17(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv17(a_2_1_1, i_6_1_1) }
        (Seq#Contains(Seq#Range(1, n), invRecv17(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange17(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv17(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        (Seq#Contains(Seq#Range(1, n), invRecv17(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange17(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv17(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !((Seq#Contains(Seq#Range(1, n), invRecv17(a_2_1_1, i_6_1_1)) && NoPerm < FullPerm) && qpRange17(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, p_14(a_2, 0):=PostMask[null, p_14(a_2, 0)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, p_14(a_2, 1):=PostMask[null, p_14(a_2, 1)] + perm];
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
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array.vpr@57.11--57.56) [107828]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered18(i_8_2), neverTriggered18(i_8_3) }
        (((i_8_2 != i_8_3 && Seq#Contains(Seq#Range(1, n), i_8_2)) && Seq#Contains(Seq#Range(1, n), i_8_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_8_2 != i_8_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access p(a, i) (array.vpr@57.11--57.56) [107829]"}
        (forall i_8_2: int ::
        { Heap[null, p_14(a_2, i_8_2)] } { Mask[null, p_14(a_2, i_8_2)] } { Seq#ContainsTrigger(Seq#Range(1, n), i_8_2) } { Seq#Contains(Seq#Range(1, n), i_8_2) }
        Seq#Contains(Seq#Range(1, n), i_8_2) ==> Mask[null, p_14(a_2, i_8_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_8_2: int ::
        { Heap[null, p_14(a_2, i_8_2)] } { Mask[null, p_14(a_2, i_8_2)] } { Seq#ContainsTrigger(Seq#Range(1, n), i_8_2) } { Seq#Contains(Seq#Range(1, n), i_8_2) }
        Seq#Contains(Seq#Range(1, n), i_8_2) && NoPerm < FullPerm ==> invRecv18(a_2, i_8_2) == i_8_2 && qpRange18(a_2, i_8_2)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { invRecv18(a_3_1_1, i_9_1_1) }
        (Seq#Contains(Seq#Range(1, n), invRecv18(a_3_1_1, i_9_1_1)) && NoPerm < FullPerm) && qpRange18(a_3_1_1, i_9_1_1) ==> a_2 == a_3_1_1 && invRecv18(a_3_1_1, i_9_1_1) == i_9_1_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        (Seq#Contains(Seq#Range(1, n), invRecv18(a_3_1_1, i_9_1_1)) && NoPerm < FullPerm) && qpRange18(a_3_1_1, i_9_1_1) ==> (a_2 == a_3_1_1 && invRecv18(a_3_1_1, i_9_1_1) == i_9_1_1) && QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        !((Seq#Contains(Seq#Range(1, n), invRecv18(a_3_1_1, i_9_1_1)) && NoPerm < FullPerm) && qpRange18(a_3_1_1, i_9_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access p(a, 0) (array.vpr@58.11--58.23) [107830]"}
        perm <= Mask[null, p_14(a_2, 0)];
    }
    Mask := Mask[null, p_14(a_2, 0):=Mask[null, p_14(a_2, 0)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access p(a, 1) (array.vpr@60.11--60.23) [107831]"}
        perm <= Mask[null, p_14(a_2, 1)];
    }
    Mask := Mask[null, p_14(a_2, 1):=Mask[null, p_14(a_2, 1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}