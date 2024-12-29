// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:17:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_36: Ref, f_41: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_36, f_41] }
  Heap[o_36, $allocated] ==> Heap[Heap[o_36, f_41], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref, f_42: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, f_42] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_37, f_42) ==> Heap[o_37, f_42] == ExhaleHeap[o_37, f_42]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14), ExhaleHeap[null, PredicateMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> Heap[null, PredicateMaskField(pm_f_14)] == ExhaleHeap[null, PredicateMaskField(pm_f_14)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_42: (Field A B) ::
    { ExhaleHeap[o2_14, f_42] }
    Heap[null, PredicateMaskField(pm_f_14)][o2_14, f_42] ==> Heap[o2_14, f_42] == ExhaleHeap[o2_14, f_42]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14), ExhaleHeap[null, WandMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> Heap[null, WandMaskField(pm_f_14)] == ExhaleHeap[null, WandMaskField(pm_f_14)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_42: (Field A B) ::
    { ExhaleHeap[o2_14, f_42] }
    Heap[null, WandMaskField(pm_f_14)][o2_14, f_42] ==> Heap[o2_14, f_42] == ExhaleHeap[o2_14, f_42]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_37: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_37, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_37, $allocated] ==> ExhaleHeap[o_37, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_36: Ref, f_43: (Field A B), v: B ::
  { Heap[o_36, f_43:=v] }
  succHeap(Heap, Heap[o_36, f_43:=v])
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
function  neverTriggered2(i_3: int): bool;
function  neverTriggered3(i_14_1: int): bool;
function  neverTriggered4(i_25: int): bool;
function  neverTriggered5(i_35_1: int): bool;
function  neverTriggered6(i_44: int): bool;
function  neverTriggered7(i_49: int): bool;
function  neverTriggered8(i_58_1: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_3: int): bool;
function  neverTriggered11(i_14_1: int): bool;
function  neverTriggered12(i_25: int): bool;
function  neverTriggered13(i_26: int): bool;
function  neverTriggered14(i_32_2: int): bool;
function  neverTriggered15(i_33_1: int): bool;
function  neverTriggered16(i_43_2: int): bool;
function  neverTriggered17(i_44: int): bool;
function  neverTriggered18(i_1: int): bool;
function  neverTriggered19(i_5: int): bool;
function  neverTriggered20(i_6_1: int): bool;
function  neverTriggered21(i_7_1: int): bool;
function  neverTriggered22(i_8_2: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: dummy
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
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): IArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

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
// Translation of function dummy
// ==================================================

// Uninterpreted function definitions
function  dummy(Heap: HeapType, i: int): bool;
function  dummy'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { dummy(Heap, i) }
  dummy(Heap, i) == dummy'(Heap, i) && dummyFunction(dummy#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { dummy'(Heap, i) }
  dummyFunction(dummy#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), dummy(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> dummy(Heap, i)
);

// Framing axioms
function  dummy#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), dummy'(Heap, i) }
  state(Heap, Mask) ==> dummy'(Heap, i) == dummy#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  dummy#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  dummy#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure dummy#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of method swap
// ==================================================

procedure swap(a_2: IArrayDomainType, i: int, j_9: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < (len_1(a_2): int);
    assume state(Heap, Mask);
    assume 0 <= j_9;
    assume j_9 < (len_1(a_2): int);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume (loc(a_2, i): Ref) != null;
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (i != j_9) {
      perm := FullPerm;
      assume (loc(a_2, j_9): Ref) != null;
      Mask := Mask[(loc(a_2, j_9): Ref), val:=Mask[(loc(a_2, j_9): Ref), val] + perm];
      assume state(Heap, Mask);
    }
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
    perm := FullPerm;
    assume (loc(a_2, i): Ref) != null;
    PostMask := PostMask[(loc(a_2, i): Ref), val:=PostMask[(loc(a_2, i): Ref), val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i != j_9) {
      perm := FullPerm;
      assume (loc(a_2, j_9): Ref) != null;
      PostMask := PostMask[(loc(a_2, j_9): Ref), val:=PostMask[(loc(a_2, j_9): Ref), val] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, i).val == old(loc(a, j).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@25.11--25.46) [117582]"}
        HasDirectPerm(PostMask, (loc(a_2, i): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@25.11--25.46) [117583]"}
        HasDirectPerm(oldMask, (loc(a_2, j_9): Ref), val);
    assume PostHeap[(loc(a_2, i): Ref), val] == oldHeap[(loc(a_2, j_9): Ref), val];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, j).val == old(loc(a, i).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@26.11--26.46) [117584]"}
        HasDirectPerm(PostMask, (loc(a_2, j_9): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@26.11--26.46) [117585]"}
        HasDirectPerm(oldMask, (loc(a_2, i): Ref), val);
    assume PostHeap[(loc(a_2, j_9): Ref), val] == oldHeap[(loc(a_2, i): Ref), val];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t := loc(a, i).val -- arrays_quickselect_rec.vpr@28.3--28.30
    
    // -- Check definedness of loc(a, i).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@28.3--28.30) [117586]"}
        HasDirectPerm(Mask, (loc(a_2, i): Ref), val);
    t_2 := Heap[(loc(a_2, i): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, i).val := loc(a, j).val -- arrays_quickselect_rec.vpr@29.3--29.33
    
    // -- Check definedness of loc(a, j).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@29.3--29.33) [117587]"}
        HasDirectPerm(Mask, (loc(a_2, j_9): Ref), val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@29.3--29.33) [117588]"}
      FullPerm == Mask[(loc(a_2, i): Ref), val];
    Heap := Heap[(loc(a_2, i): Ref), val:=Heap[(loc(a_2, j_9): Ref), val]];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, j).val := t -- arrays_quickselect_rec.vpr@30.3--30.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@30.3--30.21) [117589]"}
      FullPerm == Mask[(loc(a_2, j_9): Ref), val];
    Heap := Heap[(loc(a_2, j_9): Ref), val:=t_2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of swap might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@23.11--23.29) [117590]"}
        perm <= Mask[(loc(a_2, i): Ref), val];
    }
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] - perm];
    if (i != j_9) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of swap might not hold. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@24.11--24.40) [117591]"}
          perm <= Mask[(loc(a_2, j_9): Ref), val];
      }
      Mask := Mask[(loc(a_2, j_9): Ref), val:=Mask[(loc(a_2, j_9): Ref), val] - perm];
    }
    assert {:msg "  Postcondition of swap might not hold. Assertion loc(a, i).val == old(loc(a, j).val) might not hold. (arrays_quickselect_rec.vpr@25.11--25.46) [117592]"}
      Heap[(loc(a_2, i): Ref), val] == oldHeap[(loc(a_2, j_9): Ref), val];
    assert {:msg "  Postcondition of swap might not hold. Assertion loc(a, j).val == old(loc(a, i).val) might not hold. (arrays_quickselect_rec.vpr@26.11--26.46) [117593]"}
      Heap[(loc(a_2, j_9): Ref), val] == oldHeap[(loc(a_2, i): Ref), val];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method partition
// ==================================================

procedure partition(a_2: IArrayDomainType, left_1: int, right: int, pivotIndex: int) returns (storeIndex: int, pw: (Seq int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var i_6: int;
  var i_7: int;
  var i_8: int;
  var k_12: int;
  var i_9: int;
  var pivotValue: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var j_9: int;
  var i_26: int;
  var i_28: int;
  var i_30_2: int;
  var i_32_2: int;
  var k_4_1: int;
  var i$0: int;
  var i_11: int;
  var i_12: int;
  var i_16: int;
  var i_18: int;
  var k_20: int;
  var i$0_4: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_50_1: int;
  var i_52_1: int;
  var i_54_1: int;
  var i_56_1: int;
  var k_9: int;
  var i$0_5: int;
  var i_15: int;
  var i_17: int;
  var i_19: int;
  var i_21: int;
  var k_2_1: int;
  var i_23: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= left_1;
    assume left_1 < right;
    assume right < (len_1(a_2): int);
    assume state(Heap, Mask);
    assume left_1 <= pivotIndex;
    assume pivotIndex <= right;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@50.12--50.75) [117594]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (left_1 <= i_1 && i_1 <= right)) && (left_1 <= i_1_1 && i_1_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (left_1 <= i_1 && i_1 <= right) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_1): Ref)) && invRecv1((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((left_1 <= invRecv1(o_4) && invRecv1(o_4) <= right) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        left_1 <= i_1 && i_1 <= right ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((left_1 <= invRecv1(o_4) && invRecv1(o_4) <= right) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv1(o_4) && invRecv1(o_4) <= right) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume left_1 <= storeIndex;
    assume storeIndex <= right;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@55.11--55.74) [117595]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (left_1 <= i_3 && i_3 <= right)) && (left_1 <= i_3_1 && i_3_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3): Ref) != (loc(a_2, i_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        (left_1 <= i_3 && i_3 <= right) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i_3): Ref)) && invRecv2((loc(a_2, i_3): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((left_1 <= invRecv2(o_4) && invRecv2(o_4) <= right) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        left_1 <= i_3 && i_3 <= right ==> (loc(a_2, i_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((left_1 <= invRecv2(o_4) && invRecv2(o_4) <= right) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv2(o_4) && invRecv2(o_4) <= right) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@57.11--57.64) [117596]"}
        HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec.vpr@57.11--57.64) [117597]"}
        HasDirectPerm(oldMask, (loc(a_2, pivotIndex): Ref), val);
    assume PostHeap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, pivotIndex): Ref), val];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
      if (*) {
        if (left_1 <= i_4 && i_4 < storeIndex) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@59.11--59.99) [117598]"}
            HasDirectPerm(PostMask, (loc(a_2, i_4): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@59.11--59.99) [117599]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
        }
        assume false;
      }
    assume (forall i_5: int ::
      { (loc(a_2, i_5): Ref) }
      left_1 <= i_5 && i_5 < storeIndex ==> PostHeap[(loc(a_2, i_5): Ref), val] < PostHeap[(loc(a_2, storeIndex): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
      if (*) {
        if (storeIndex < i_6 && i_6 <= right) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@60.11--60.100) [117600]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@60.11--60.100) [117601]"}
            HasDirectPerm(PostMask, (loc(a_2, i_6): Ref), val);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { (loc(a_2, i_7_1): Ref) }
      storeIndex < i_7_1 && i_7_1 <= right ==> PostHeap[(loc(a_2, storeIndex): Ref), val] <= PostHeap[(loc(a_2, i_7_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    assume Seq#Length(pw) == right + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right)
      if (*) {
        if (left_1 <= i_7 && i_7 <= right) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@63.11--63.87) [117602]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@63.11--63.87) [117603]"}
            i_7 < Seq#Length(pw);
          if (left_1 <= Seq#Index(pw, i_7)) {
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@63.11--63.87) [117604]"}
              i_7 >= 0;
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@63.11--63.87) [117605]"}
              i_7 < Seq#Length(pw);
          }
        }
        assume false;
      }
    assume (forall i_9_1: int ::
      { Seq#Index(pw, i_9_1) }
      left_1 <= i_9_1 && i_9_1 <= right ==> left_1 <= Seq#Index(pw, i_9_1) && Seq#Index(pw, i_9_1) <= right
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, k: Int :: { pw[i], pw[k] } left <= i && (i < k && k <= right) ==> pw[i] != pw[k])
      if (*) {
        if (left_1 <= i_8 && (i_8 < k_12 && k_12 <= right)) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@64.11--64.87) [117606]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@64.11--64.87) [117607]"}
            i_8 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might be negative. (arrays_quickselect_rec.vpr@64.11--64.87) [117608]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@64.11--64.87) [117609]"}
            k_12 < Seq#Length(pw);
        }
        assume false;
      }
    assume (forall i_11_1: int, k_1_1: int ::
      { Seq#Index(pw, i_11_1), Seq#Index(pw, k_1_1) }
      left_1 <= i_11_1 && (i_11_1 < k_1_1 && k_1_1 <= right) ==> Seq#Index(pw, i_11_1) != Seq#Index(pw, k_1_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } left <= i && i <= right ==> loc(a, i).val == old(loc(a, pw[i]).val))
      if (*) {
        if (left_1 <= i_9 && i_9 <= right) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@66.11--66.39) [117610]"}
            HasDirectPerm(PostMask, (loc(a_2, i_9): Ref), val);
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@66.11--66.39) [117611]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@66.11--66.39) [117612]"}
            i_9 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i]).val (arrays_quickselect_rec.vpr@66.11--66.39) [117613]"}
            HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i_9)): Ref), val);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(pw, i_13_1) }
      left_1 <= i_13_1 && i_13_1 <= right ==> PostHeap[(loc(a_2, i_13_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: pivotValue := loc(a, pivotIndex).val -- arrays_quickselect_rec.vpr@68.3--68.48
    
    // -- Check definedness of loc(a, pivotIndex).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec.vpr@68.3--68.48) [117614]"}
        HasDirectPerm(Mask, (loc(a_2, pivotIndex): Ref), val);
    pivotValue := Heap[(loc(a_2, pivotIndex): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := [0..right + 1) -- arrays_quickselect_rec.vpr@71.3--71.23
    pw := Seq#Range(0, right + 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: swap(a, pivotIndex, right) -- arrays_quickselect_rec.vpr@77.3--77.29
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= pivotIndex might not hold. (arrays_quickselect_rec.vpr@77.3--77.29) [117615]"}
        0 <= pivotIndex;
      assert {:msg "  The precondition of method swap might not hold. Assertion pivotIndex < len(a) might not hold. (arrays_quickselect_rec.vpr@77.3--77.29) [117616]"}
        pivotIndex < (len_1(a_2): int);
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= right might not hold. (arrays_quickselect_rec.vpr@77.3--77.29) [117617]"}
        0 <= right;
      assert {:msg "  The precondition of method swap might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec.vpr@77.3--77.29) [117618]"}
        right < (len_1(a_2): int);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec.vpr@77.3--77.29) [117619]"}
          perm <= Mask[(loc(a_2, pivotIndex): Ref), val];
      }
      Mask := Mask[(loc(a_2, pivotIndex): Ref), val:=Mask[(loc(a_2, pivotIndex): Ref), val] - perm];
      if (pivotIndex != right) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec.vpr@77.3--77.29) [117620]"}
            perm <= Mask[(loc(a_2, right): Ref), val];
        }
        Mask := Mask[(loc(a_2, right): Ref), val:=Mask[(loc(a_2, right): Ref), val] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume (loc(a_2, pivotIndex): Ref) != null;
      Mask := Mask[(loc(a_2, pivotIndex): Ref), val:=Mask[(loc(a_2, pivotIndex): Ref), val] + perm];
      assume state(Heap, Mask);
      if (pivotIndex != right) {
        perm := FullPerm;
        assume (loc(a_2, right): Ref) != null;
        Mask := Mask[(loc(a_2, right): Ref), val:=Mask[(loc(a_2, right): Ref), val] + perm];
        assume state(Heap, Mask);
      }
      assume Heap[(loc(a_2, pivotIndex): Ref), val] == PreCallHeap[(loc(a_2, right): Ref), val];
      assume Heap[(loc(a_2, right): Ref), val] == PreCallHeap[(loc(a_2, pivotIndex): Ref), val];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := pw[pivotIndex := pw[right]][right := pw[pivotIndex]] -- arrays_quickselect_rec.vpr@82.3--83.36
    
    // -- Check definedness of pw[pivotIndex := pw[right]][right := pw[pivotIndex]]
      assert {:msg "  Assignment might fail. Index pw[right] into pw might be negative. (arrays_quickselect_rec.vpr@82.3--83.36) [117621]"}
        right >= 0;
      assert {:msg "  Assignment might fail. Index pw[right] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@82.3--83.36) [117622]"}
        right < Seq#Length(pw);
      assert {:msg "  Assignment might fail. Index pw[pivotIndex] into pw might be negative. (arrays_quickselect_rec.vpr@82.3--83.36) [117623]"}
        pivotIndex >= 0;
      assert {:msg "  Assignment might fail. Index pw[pivotIndex] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@82.3--83.36) [117624]"}
        pivotIndex < Seq#Length(pw);
    pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, pivotIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, right)), Seq#Drop(pw, pivotIndex + 1))), right), Seq#Append(Seq#Singleton(Seq#Index(pw, pivotIndex)), Seq#Drop(Seq#Append(Seq#Take(pw, pivotIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, right)), Seq#Drop(pw, pivotIndex + 1))), right + 1)));
    assume state(Heap, Mask);
  
  // -- Translating statement: storeIndex := left -- arrays_quickselect_rec.vpr@85.3--85.21
    storeIndex := left_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: j := left -- arrays_quickselect_rec.vpr@86.3--86.21
    j_9 := left_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < right) -- arrays_quickselect_rec.vpr@88.3--123.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant left <= j && j <= right might not hold on entry. Assertion left <= j might not hold. (arrays_quickselect_rec.vpr@90.15--90.38) [117625]"}
          left_1 <= j_9;
        assert {:msg "  Loop invariant left <= j && j <= right might not hold on entry. Assertion j <= right might not hold. (arrays_quickselect_rec.vpr@90.15--90.38) [117626]"}
          j_9 <= right;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not hold on entry. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec.vpr@91.15--91.52) [117627]"}
          left_1 <= storeIndex;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not hold on entry. Assertion storeIndex <= j might not hold. (arrays_quickselect_rec.vpr@91.15--91.52) [117628]"}
          storeIndex <= j_9;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write)) might not hold on entry. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@98.15--98.78) [117629]"}
            (forall i_25: int, i_25_2: int ::
            { neverTriggered4(i_25), neverTriggered4(i_25_2) }
            (((i_25 != i_25_2 && (left_1 <= i_25 && i_25 <= right)) && (left_1 <= i_25_2 && i_25_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_25): Ref) != (loc(a_2, i_25_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write)) might not hold on entry. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@98.15--98.78) [117630]"}
            (forall i_25: int ::
            { (loc(a_2, i_25): Ref) } { (loc(a_2, i_25): Ref) }
            left_1 <= i_25 && i_25 <= right ==> Mask[(loc(a_2, i_25): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_25: int ::
            { (loc(a_2, i_25): Ref) } { (loc(a_2, i_25): Ref) }
            (left_1 <= i_25 && i_25 <= right) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_25): Ref)) && invRecv4((loc(a_2, i_25): Ref)) == i_25
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (left_1 <= invRecv4(o_4) && invRecv4(o_4) <= right) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((left_1 <= invRecv4(o_4) && invRecv4(o_4) <= right) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv4(o_4) && invRecv4(o_4) <= right) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant loc(a, right).val == pivotValue might not hold on entry. Assertion loc(a, right).val == pivotValue might not hold. (arrays_quickselect_rec.vpr@99.15--99.46) [117631]"}
          Heap[(loc(a_2, right): Ref), val] == pivotValue;
        if (*) {
          if (left_1 <= i_26 && i_26 < storeIndex) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < pivotValue) might not hold on entry. Assertion loc(a, i).val < pivotValue might not hold. (arrays_quickselect_rec.vpr@101.15--101.90) [117632]"}
              Heap[(loc(a_2, i_26): Ref), val] < pivotValue;
          }
          assume false;
        }
        assume (forall i_27_1_1: int ::
          { (loc(a_2, i_27_1_1): Ref) }
          left_1 <= i_27_1_1 && i_27_1_1 < storeIndex ==> Heap[(loc(a_2, i_27_1_1): Ref), val] < pivotValue
        );
        if (*) {
          if (storeIndex <= i_28 && i_28 < j_9) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } storeIndex <= i && i < j ==> pivotValue <= loc(a, i).val) might not hold on entry. Assertion pivotValue <= loc(a, i).val might not hold. (arrays_quickselect_rec.vpr@102.15--102.88) [117633]"}
              pivotValue <= Heap[(loc(a_2, i_28): Ref), val];
          }
          assume false;
        }
        assume (forall i_29_1_1: int ::
          { (loc(a_2, i_29_1_1): Ref) }
          storeIndex <= i_29_1_1 && i_29_1_1 < j_9 ==> pivotValue <= Heap[(loc(a_2, i_29_1_1): Ref), val]
        );
        assert {:msg "  Loop invariant |pw| == right + 1 might not hold on entry. Assertion |pw| == right + 1 might not hold. (arrays_quickselect_rec.vpr@104.15--104.32) [117634]"}
          Seq#Length(pw) == right + 1;
        if (*) {
          if (left_1 <= i_30_2 && i_30_2 <= right) {
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right) might not hold on entry. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec.vpr@105.15--105.91) [117635]"}
              left_1 <= Seq#Index(pw, i_30_2);
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right) might not hold on entry. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec.vpr@105.15--105.91) [117636]"}
              Seq#Index(pw, i_30_2) <= right;
          }
          assume false;
        }
        assume (forall i_31_1_1: int ::
          { Seq#Index(pw, i_31_1_1) }
          left_1 <= i_31_1_1 && i_31_1_1 <= right ==> left_1 <= Seq#Index(pw, i_31_1_1) && Seq#Index(pw, i_31_1_1) <= right
        );
        if (*) {
          if (left_1 <= i_32_2 && (i_32_2 < k_4_1 && k_4_1 <= right)) {
            assert {:msg "  Loop invariant (forall i: Int, k: Int :: { pw[i], pw[k] } left <= i && (i < k && k <= right) ==> pw[i] != pw[k]) might not hold on entry. Assertion pw[i] != pw[k] might not hold. (arrays_quickselect_rec.vpr@106.15--106.91) [117637]"}
              Seq#Index(pw, i_32_2) != Seq#Index(pw, k_4_1);
          }
          assume false;
        }
        assume (forall i_33_1_1: int, k_5_1_1: int ::
          { Seq#Index(pw, i_33_1_1), Seq#Index(pw, k_5_1_1) }
          left_1 <= i_33_1_1 && (i_33_1_1 < k_5_1_1 && k_5_1_1 <= right) ==> Seq#Index(pw, i_33_1_1) != Seq#Index(pw, k_5_1_1)
        );
        if (*) {
          if (left_1 <= i$0 && i$0 <= right) {
            assert {:msg "  Loop invariant (forall i$0: Int :: { pw[i$0] } left <= i$0 && i$0 <= right ==> loc(a, i$0).val == old(loc(a, pw[i$0]).val)) might not hold on entry. Assertion loc(a, i$0).val == old(loc(a, pw[i$0]).val) might not hold. (arrays_quickselect_rec.vpr@108.15--108.43) [117638]"}
              Heap[(loc(a_2, i$0): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0)): Ref), val];
          }
          assume false;
        }
        assume (forall i$0_1_1_1: int ::
          { Seq#Index(pw, i$0_1_1_1) }
          left_1 <= i$0_1_1_1 && i$0_1_1_1 <= right ==> Heap[(loc(a_2, i$0_1_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_1_1_1)): Ref), val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9, storeIndex, pw;
    
    // -- Check definedness of invariant
      if (*) {
        assume left_1 <= j_9;
        assume j_9 <= right;
        assume state(Heap, Mask);
        assume left_1 <= storeIndex;
        assume storeIndex <= j_9;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@98.15--98.78) [117639]"}
          (forall i_35_1: int, i_35_2: int ::
          
          (((i_35_1 != i_35_2 && (left_1 <= i_35_1 && i_35_1 <= right)) && (left_1 <= i_35_2 && i_35_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_35_1): Ref) != (loc(a_2, i_35_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_35_1: int ::
            { (loc(a_2, i_35_1): Ref) } { (loc(a_2, i_35_1): Ref) }
            (left_1 <= i_35_1 && i_35_1 <= right) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i_35_1): Ref)) && invRecv5((loc(a_2, i_35_1): Ref)) == i_35_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            ((left_1 <= invRecv5(o_4) && invRecv5(o_4) <= right) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_35_1: int ::
            { (loc(a_2, i_35_1): Ref) } { (loc(a_2, i_35_1): Ref) }
            left_1 <= i_35_1 && i_35_1 <= right ==> (loc(a_2, i_35_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((left_1 <= invRecv5(o_4) && invRecv5(o_4) <= right) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv5(o_4) && invRecv5(o_4) <= right) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of loc(a, right).val == pivotValue
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec.vpr@99.15--99.46) [117640]"}
            HasDirectPerm(Mask, (loc(a_2, right): Ref), val);
        assume Heap[(loc(a_2, right): Ref), val] == pivotValue;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < pivotValue)
          if (*) {
            if (left_1 <= i_11 && i_11 < storeIndex) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@101.15--101.90) [117641]"}
                HasDirectPerm(Mask, (loc(a_2, i_11): Ref), val);
            }
            assume false;
          }
        assume (forall i_37: int ::
          { (loc(a_2, i_37): Ref) }
          left_1 <= i_37 && i_37 < storeIndex ==> Heap[(loc(a_2, i_37): Ref), val] < pivotValue
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } storeIndex <= i && i < j ==> pivotValue <= loc(a, i).val)
          if (*) {
            if (storeIndex <= i_12 && i_12 < j_9) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@102.15--102.88) [117642]"}
                HasDirectPerm(Mask, (loc(a_2, i_12): Ref), val);
            }
            assume false;
          }
        assume (forall i_39: int ::
          { (loc(a_2, i_39): Ref) }
          storeIndex <= i_39 && i_39 < j_9 ==> pivotValue <= Heap[(loc(a_2, i_39): Ref), val]
        );
        assume state(Heap, Mask);
        assume Seq#Length(pw) == right + 1;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right)
          if (*) {
            if (left_1 <= i_16 && i_16 <= right) {
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@105.15--105.91) [117643]"}
                i_16 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@105.15--105.91) [117644]"}
                i_16 < Seq#Length(pw);
              if (left_1 <= Seq#Index(pw, i_16)) {
                assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@105.15--105.91) [117645]"}
                  i_16 >= 0;
                assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@105.15--105.91) [117646]"}
                  i_16 < Seq#Length(pw);
              }
            }
            assume false;
          }
        assume (forall i_41_2: int ::
          { Seq#Index(pw, i_41_2) }
          left_1 <= i_41_2 && i_41_2 <= right ==> left_1 <= Seq#Index(pw, i_41_2) && Seq#Index(pw, i_41_2) <= right
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int, k: Int :: { pw[i], pw[k] } left <= i && (i < k && k <= right) ==> pw[i] != pw[k])
          if (*) {
            if (left_1 <= i_18 && (i_18 < k_20 && k_20 <= right)) {
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@106.15--106.91) [117647]"}
                i_18 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@106.15--106.91) [117648]"}
                i_18 < Seq#Length(pw);
              assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might be negative. (arrays_quickselect_rec.vpr@106.15--106.91) [117649]"}
                k_20 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@106.15--106.91) [117650]"}
                k_20 < Seq#Length(pw);
            }
            assume false;
          }
        assume (forall i_43_2: int, k_7_1: int ::
          { Seq#Index(pw, i_43_2), Seq#Index(pw, k_7_1) }
          left_1 <= i_43_2 && (i_43_2 < k_7_1 && k_7_1 <= right) ==> Seq#Index(pw, i_43_2) != Seq#Index(pw, k_7_1)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i$0: Int :: { pw[i$0] } left <= i$0 && i$0 <= right ==> loc(a, i$0).val == old(loc(a, pw[i$0]).val))
          if (*) {
            if (left_1 <= i$0_4 && i$0_4 <= right) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i$0).val (arrays_quickselect_rec.vpr@108.15--108.43) [117651]"}
                HasDirectPerm(Mask, (loc(a_2, i$0_4): Ref), val);
              assert {:msg "  Contract might not be well-formed. Index pw[i$0] into pw might be negative. (arrays_quickselect_rec.vpr@108.15--108.43) [117652]"}
                i$0_4 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i$0] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@108.15--108.43) [117653]"}
                i$0_4 < Seq#Length(pw);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i$0]).val (arrays_quickselect_rec.vpr@108.15--108.43) [117654]"}
                HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i$0_4)): Ref), val);
            }
            assume false;
          }
        assume (forall i$0_3_1: int ::
          { Seq#Index(pw, i$0_3_1) }
          left_1 <= i$0_3_1 && i$0_3_1 <= right ==> Heap[(loc(a_2, i$0_3_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_3_1)): Ref), val]
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
        assume left_1 <= j_9;
        assume j_9 <= right;
        assume left_1 <= storeIndex;
        assume storeIndex <= j_9;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@98.15--98.78) [117655]"}
          (forall i_44: int, i_44_1: int ::
          
          (((i_44 != i_44_1 && (left_1 <= i_44 && i_44 <= right)) && (left_1 <= i_44_1 && i_44_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_44): Ref) != (loc(a_2, i_44_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_44: int ::
            { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
            (left_1 <= i_44 && i_44 <= right) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i_44): Ref)) && invRecv6((loc(a_2, i_44): Ref)) == i_44
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            ((left_1 <= invRecv6(o_4) && invRecv6(o_4) <= right) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_44: int ::
            { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
            left_1 <= i_44 && i_44 <= right ==> (loc(a_2, i_44): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((left_1 <= invRecv6(o_4) && invRecv6(o_4) <= right) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv6(o_4) && invRecv6(o_4) <= right) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume Heap[(loc(a_2, right): Ref), val] == pivotValue;
        assume (forall i_45_2: int ::
          { (loc(a_2, i_45_2): Ref) }
          left_1 <= i_45_2 && i_45_2 < storeIndex ==> Heap[(loc(a_2, i_45_2): Ref), val] < pivotValue
        );
        assume (forall i_46: int ::
          { (loc(a_2, i_46): Ref) }
          storeIndex <= i_46 && i_46 < j_9 ==> pivotValue <= Heap[(loc(a_2, i_46): Ref), val]
        );
        assume Seq#Length(pw) == right + 1;
        assume (forall i_47_2: int ::
          { Seq#Index(pw, i_47_2) }
          left_1 <= i_47_2 && i_47_2 <= right ==> left_1 <= Seq#Index(pw, i_47_2) && Seq#Index(pw, i_47_2) <= right
        );
        assume (forall i_48_2: int, k_8: int ::
          { Seq#Index(pw, i_48_2), Seq#Index(pw, k_8) }
          left_1 <= i_48_2 && (i_48_2 < k_8 && k_8 <= right) ==> Seq#Index(pw, i_48_2) != Seq#Index(pw, k_8)
        );
        assume (forall i$0_4_1: int ::
          { Seq#Index(pw, i$0_4_1) }
          left_1 <= i$0_4_1 && i$0_4_1 <= right ==> Heap[(loc(a_2, i$0_4_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_4_1)): Ref), val]
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume j_9 < right;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (loc(a, j).val < pivotValue) -- arrays_quickselect_rec.vpr@110.5--120.6
            
            // -- Check definedness of loc(a, j).val < pivotValue
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@110.9--110.35) [117656]"}
                HasDirectPerm(Mask, (loc(a_2, j_9): Ref), val);
            if (Heap[(loc(a_2, j_9): Ref), val] < pivotValue) {
              
              // -- Translating statement: swap(a, j, storeIndex) -- arrays_quickselect_rec.vpr@111.7--111.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= j might not hold. (arrays_quickselect_rec.vpr@111.7--111.29) [117657]"}
                    0 <= j_9;
                  assert {:msg "  The precondition of method swap might not hold. Assertion j < len(a) might not hold. (arrays_quickselect_rec.vpr@111.7--111.29) [117658]"}
                    j_9 < (len_1(a_2): int);
                  assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= storeIndex might not hold. (arrays_quickselect_rec.vpr@111.7--111.29) [117659]"}
                    0 <= storeIndex;
                  assert {:msg "  The precondition of method swap might not hold. Assertion storeIndex < len(a) might not hold. (arrays_quickselect_rec.vpr@111.7--111.29) [117660]"}
                    storeIndex < (len_1(a_2): int);
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec.vpr@111.7--111.29) [117661]"}
                      perm <= Mask[(loc(a_2, j_9): Ref), val];
                  }
                  Mask := Mask[(loc(a_2, j_9): Ref), val:=Mask[(loc(a_2, j_9): Ref), val] - perm];
                  if (j_9 != storeIndex) {
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@111.7--111.29) [117662]"}
                        perm <= Mask[(loc(a_2, storeIndex): Ref), val];
                    }
                    Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] - perm];
                  }
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume (loc(a_2, j_9): Ref) != null;
                  Mask := Mask[(loc(a_2, j_9): Ref), val:=Mask[(loc(a_2, j_9): Ref), val] + perm];
                  assume state(Heap, Mask);
                  if (j_9 != storeIndex) {
                    perm := FullPerm;
                    assume (loc(a_2, storeIndex): Ref) != null;
                    Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] + perm];
                    assume state(Heap, Mask);
                  }
                  assume Heap[(loc(a_2, j_9): Ref), val] == PreCallHeap[(loc(a_2, storeIndex): Ref), val];
                  assume Heap[(loc(a_2, storeIndex): Ref), val] == PreCallHeap[(loc(a_2, j_9): Ref), val];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: pw := pw[storeIndex := pw[j]][j := pw[storeIndex]] -- arrays_quickselect_rec.vpr@116.7--117.36
                
                // -- Check definedness of pw[storeIndex := pw[j]][j := pw[storeIndex]]
                  assert {:msg "  Assignment might fail. Index pw[j] into pw might be negative. (arrays_quickselect_rec.vpr@116.7--117.36) [117663]"}
                    j_9 >= 0;
                  assert {:msg "  Assignment might fail. Index pw[j] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@116.7--117.36) [117664]"}
                    j_9 < Seq#Length(pw);
                  assert {:msg "  Assignment might fail. Index pw[storeIndex] into pw might be negative. (arrays_quickselect_rec.vpr@116.7--117.36) [117665]"}
                    storeIndex >= 0;
                  assert {:msg "  Assignment might fail. Index pw[storeIndex] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@116.7--117.36) [117666]"}
                    storeIndex < Seq#Length(pw);
                pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, storeIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, j_9)), Seq#Drop(pw, storeIndex + 1))), j_9), Seq#Append(Seq#Singleton(Seq#Index(pw, storeIndex)), Seq#Drop(Seq#Append(Seq#Take(pw, storeIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, j_9)), Seq#Drop(pw, storeIndex + 1))), j_9 + 1)));
                assume state(Heap, Mask);
              
              // -- Translating statement: storeIndex := storeIndex + 1 -- arrays_quickselect_rec.vpr@119.7--119.35
                storeIndex := storeIndex + 1;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- arrays_quickselect_rec.vpr@122.5--122.15
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant left <= j && j <= right might not be preserved. Assertion left <= j might not hold. (arrays_quickselect_rec.vpr@90.15--90.38) [117667]"}
          left_1 <= j_9;
        assert {:msg "  Loop invariant left <= j && j <= right might not be preserved. Assertion j <= right might not hold. (arrays_quickselect_rec.vpr@90.15--90.38) [117668]"}
          j_9 <= right;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not be preserved. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec.vpr@91.15--91.52) [117669]"}
          left_1 <= storeIndex;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not be preserved. Assertion storeIndex <= j might not hold. (arrays_quickselect_rec.vpr@91.15--91.52) [117670]"}
          storeIndex <= j_9;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write)) might not be preserved. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@98.15--98.78) [117671]"}
            (forall i_49: int, i_49_1: int ::
            { neverTriggered7(i_49), neverTriggered7(i_49_1) }
            (((i_49 != i_49_1 && (left_1 <= i_49 && i_49 <= right)) && (left_1 <= i_49_1 && i_49_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_49): Ref) != (loc(a_2, i_49_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write)) might not be preserved. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@98.15--98.78) [117672]"}
            (forall i_49: int ::
            { (loc(a_2, i_49): Ref) } { (loc(a_2, i_49): Ref) }
            left_1 <= i_49 && i_49 <= right ==> Mask[(loc(a_2, i_49): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_49: int ::
            { (loc(a_2, i_49): Ref) } { (loc(a_2, i_49): Ref) }
            (left_1 <= i_49 && i_49 <= right) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_49): Ref)) && invRecv7((loc(a_2, i_49): Ref)) == i_49
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (left_1 <= invRecv7(o_4) && invRecv7(o_4) <= right) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((left_1 <= invRecv7(o_4) && invRecv7(o_4) <= right) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv7(o_4) && invRecv7(o_4) <= right) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant loc(a, right).val == pivotValue might not be preserved. Assertion loc(a, right).val == pivotValue might not hold. (arrays_quickselect_rec.vpr@99.15--99.46) [117673]"}
          Heap[(loc(a_2, right): Ref), val] == pivotValue;
        if (*) {
          if (left_1 <= i_50_1 && i_50_1 < storeIndex) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < pivotValue) might not be preserved. Assertion loc(a, i).val < pivotValue might not hold. (arrays_quickselect_rec.vpr@101.15--101.90) [117674]"}
              Heap[(loc(a_2, i_50_1): Ref), val] < pivotValue;
          }
          assume false;
        }
        assume (forall i_51_1_1: int ::
          { (loc(a_2, i_51_1_1): Ref) }
          left_1 <= i_51_1_1 && i_51_1_1 < storeIndex ==> Heap[(loc(a_2, i_51_1_1): Ref), val] < pivotValue
        );
        if (*) {
          if (storeIndex <= i_52_1 && i_52_1 < j_9) {
            assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } storeIndex <= i && i < j ==> pivotValue <= loc(a, i).val) might not be preserved. Assertion pivotValue <= loc(a, i).val might not hold. (arrays_quickselect_rec.vpr@102.15--102.88) [117675]"}
              pivotValue <= Heap[(loc(a_2, i_52_1): Ref), val];
          }
          assume false;
        }
        assume (forall i_53_1_1: int ::
          { (loc(a_2, i_53_1_1): Ref) }
          storeIndex <= i_53_1_1 && i_53_1_1 < j_9 ==> pivotValue <= Heap[(loc(a_2, i_53_1_1): Ref), val]
        );
        assert {:msg "  Loop invariant |pw| == right + 1 might not be preserved. Assertion |pw| == right + 1 might not hold. (arrays_quickselect_rec.vpr@104.15--104.32) [117676]"}
          Seq#Length(pw) == right + 1;
        if (*) {
          if (left_1 <= i_54_1 && i_54_1 <= right) {
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right) might not be preserved. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec.vpr@105.15--105.91) [117677]"}
              left_1 <= Seq#Index(pw, i_54_1);
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right) might not be preserved. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec.vpr@105.15--105.91) [117678]"}
              Seq#Index(pw, i_54_1) <= right;
          }
          assume false;
        }
        assume (forall i_55_1: int ::
          { Seq#Index(pw, i_55_1) }
          left_1 <= i_55_1 && i_55_1 <= right ==> left_1 <= Seq#Index(pw, i_55_1) && Seq#Index(pw, i_55_1) <= right
        );
        if (*) {
          if (left_1 <= i_56_1 && (i_56_1 < k_9 && k_9 <= right)) {
            assert {:msg "  Loop invariant (forall i: Int, k: Int :: { pw[i], pw[k] } left <= i && (i < k && k <= right) ==> pw[i] != pw[k]) might not be preserved. Assertion pw[i] != pw[k] might not hold. (arrays_quickselect_rec.vpr@106.15--106.91) [117679]"}
              Seq#Index(pw, i_56_1) != Seq#Index(pw, k_9);
          }
          assume false;
        }
        assume (forall i_57_1: int, k_10_1: int ::
          { Seq#Index(pw, i_57_1), Seq#Index(pw, k_10_1) }
          left_1 <= i_57_1 && (i_57_1 < k_10_1 && k_10_1 <= right) ==> Seq#Index(pw, i_57_1) != Seq#Index(pw, k_10_1)
        );
        if (*) {
          if (left_1 <= i$0_5 && i$0_5 <= right) {
            assert {:msg "  Loop invariant (forall i$0: Int :: { pw[i$0] } left <= i$0 && i$0 <= right ==> loc(a, i$0).val == old(loc(a, pw[i$0]).val)) might not be preserved. Assertion loc(a, i$0).val == old(loc(a, pw[i$0]).val) might not hold. (arrays_quickselect_rec.vpr@108.15--108.43) [117680]"}
              Heap[(loc(a_2, i$0_5): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_5)): Ref), val];
          }
          assume false;
        }
        assume (forall i$0_6_1: int ::
          { Seq#Index(pw, i$0_6_1) }
          left_1 <= i$0_6_1 && i$0_6_1 <= right ==> Heap[(loc(a_2, i$0_6_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_6_1)): Ref), val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < right);
      assume state(Heap, Mask);
      assume left_1 <= j_9;
      assume j_9 <= right;
      assume left_1 <= storeIndex;
      assume storeIndex <= j_9;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@98.15--98.78) [117681]"}
        (forall i_58_1: int, i_58_2: int ::
        
        (((i_58_1 != i_58_2 && (left_1 <= i_58_1 && i_58_1 <= right)) && (left_1 <= i_58_2 && i_58_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_58_1): Ref) != (loc(a_2, i_58_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_58_1: int ::
          { (loc(a_2, i_58_1): Ref) } { (loc(a_2, i_58_1): Ref) }
          (left_1 <= i_58_1 && i_58_1 <= right) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i_58_1): Ref)) && invRecv8((loc(a_2, i_58_1): Ref)) == i_58_1
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((left_1 <= invRecv8(o_4) && invRecv8(o_4) <= right) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_58_1: int ::
          { (loc(a_2, i_58_1): Ref) } { (loc(a_2, i_58_1): Ref) }
          left_1 <= i_58_1 && i_58_1 <= right ==> (loc(a_2, i_58_1): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((left_1 <= invRecv8(o_4) && invRecv8(o_4) <= right) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv8(o_4) && invRecv8(o_4) <= right) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Heap[(loc(a_2, right): Ref), val] == pivotValue;
      assume (forall i_59: int ::
        { (loc(a_2, i_59): Ref) }
        left_1 <= i_59 && i_59 < storeIndex ==> Heap[(loc(a_2, i_59): Ref), val] < pivotValue
      );
      assume (forall i_60_1: int ::
        { (loc(a_2, i_60_1): Ref) }
        storeIndex <= i_60_1 && i_60_1 < j_9 ==> pivotValue <= Heap[(loc(a_2, i_60_1): Ref), val]
      );
      assume Seq#Length(pw) == right + 1;
      assume (forall i_61: int ::
        { Seq#Index(pw, i_61) }
        left_1 <= i_61 && i_61 <= right ==> left_1 <= Seq#Index(pw, i_61) && Seq#Index(pw, i_61) <= right
      );
      assume (forall i_62: int, k_11: int ::
        { Seq#Index(pw, i_62), Seq#Index(pw, k_11) }
        left_1 <= i_62 && (i_62 < k_11 && k_11 <= right) ==> Seq#Index(pw, i_62) != Seq#Index(pw, k_11)
      );
      assume (forall i$0_7: int ::
        { Seq#Index(pw, i$0_7) }
        left_1 <= i$0_7 && i$0_7 <= right ==> Heap[(loc(a_2, i$0_7): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_7)): Ref), val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: swap(a, right, storeIndex) -- arrays_quickselect_rec.vpr@125.3--125.29
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= right might not hold. (arrays_quickselect_rec.vpr@125.3--125.29) [117682]"}
        0 <= right;
      assert {:msg "  The precondition of method swap might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec.vpr@125.3--125.29) [117683]"}
        right < (len_1(a_2): int);
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= storeIndex might not hold. (arrays_quickselect_rec.vpr@125.3--125.29) [117684]"}
        0 <= storeIndex;
      assert {:msg "  The precondition of method swap might not hold. Assertion storeIndex < len(a) might not hold. (arrays_quickselect_rec.vpr@125.3--125.29) [117685]"}
        storeIndex < (len_1(a_2): int);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec.vpr@125.3--125.29) [117686]"}
          perm <= Mask[(loc(a_2, right): Ref), val];
      }
      Mask := Mask[(loc(a_2, right): Ref), val:=Mask[(loc(a_2, right): Ref), val] - perm];
      if (right != storeIndex) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@125.3--125.29) [117687]"}
            perm <= Mask[(loc(a_2, storeIndex): Ref), val];
        }
        Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume (loc(a_2, right): Ref) != null;
      Mask := Mask[(loc(a_2, right): Ref), val:=Mask[(loc(a_2, right): Ref), val] + perm];
      assume state(Heap, Mask);
      if (right != storeIndex) {
        perm := FullPerm;
        assume (loc(a_2, storeIndex): Ref) != null;
        Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] + perm];
        assume state(Heap, Mask);
      }
      assume Heap[(loc(a_2, right): Ref), val] == PreCallHeap[(loc(a_2, storeIndex): Ref), val];
      assume Heap[(loc(a_2, storeIndex): Ref), val] == PreCallHeap[(loc(a_2, right): Ref), val];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := pw[storeIndex := pw[right]][right := pw[storeIndex]] -- arrays_quickselect_rec.vpr@128.3--129.36
    
    // -- Check definedness of pw[storeIndex := pw[right]][right := pw[storeIndex]]
      assert {:msg "  Assignment might fail. Index pw[right] into pw might be negative. (arrays_quickselect_rec.vpr@128.3--129.36) [117688]"}
        right >= 0;
      assert {:msg "  Assignment might fail. Index pw[right] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@128.3--129.36) [117689]"}
        right < Seq#Length(pw);
      assert {:msg "  Assignment might fail. Index pw[storeIndex] into pw might be negative. (arrays_quickselect_rec.vpr@128.3--129.36) [117690]"}
        storeIndex >= 0;
      assert {:msg "  Assignment might fail. Index pw[storeIndex] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@128.3--129.36) [117691]"}
        storeIndex < Seq#Length(pw);
    pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, storeIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, right)), Seq#Drop(pw, storeIndex + 1))), right), Seq#Append(Seq#Singleton(Seq#Index(pw, storeIndex)), Seq#Drop(Seq#Append(Seq#Take(pw, storeIndex), Seq#Append(Seq#Singleton(Seq#Index(pw, right)), Seq#Drop(pw, storeIndex + 1))), right + 1)));
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of partition might not hold. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec.vpr@53.11--53.52) [117692]"}
      left_1 <= storeIndex;
    assert {:msg "  Postcondition of partition might not hold. Assertion storeIndex <= right might not hold. (arrays_quickselect_rec.vpr@53.11--53.52) [117693]"}
      storeIndex <= right;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@55.11--55.74) [117694]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered3(i_14_1), neverTriggered3(i_14_2) }
        (((i_14_1 != i_14_2 && (left_1 <= i_14_1 && i_14_1 <= right)) && (left_1 <= i_14_2 && i_14_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_14_1): Ref) != (loc(a_2, i_14_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of partition might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@55.11--55.74) [117695]"}
        (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        left_1 <= i_14_1 && i_14_1 <= right ==> Mask[(loc(a_2, i_14_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        (left_1 <= i_14_1 && i_14_1 <= right) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i_14_1): Ref)) && invRecv3((loc(a_2, i_14_1): Ref)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (left_1 <= invRecv3(o_4) && invRecv3(o_4) <= right) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((left_1 <= invRecv3(o_4) && invRecv3(o_4) <= right) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv3(o_4) && invRecv3(o_4) <= right) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, storeIndex).val == old(loc(a, pivotIndex).val) might not hold. (arrays_quickselect_rec.vpr@57.11--57.64) [117696]"}
      Heap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, pivotIndex): Ref), val];
    if (*) {
      if (left_1 <= i_15 && i_15 < storeIndex) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, i).val < loc(a, storeIndex).val might not hold. (arrays_quickselect_rec.vpr@59.11--59.99) [117697]"}
          Heap[(loc(a_2, i_15): Ref), val] < Heap[(loc(a_2, storeIndex): Ref), val];
      }
      assume false;
    }
    assume (forall i_16_1_1: int ::
      { (loc(a_2, i_16_1_1): Ref) }
      left_1 <= i_16_1_1 && i_16_1_1 < storeIndex ==> Heap[(loc(a_2, i_16_1_1): Ref), val] < Heap[(loc(a_2, storeIndex): Ref), val]
    );
    if (*) {
      if (storeIndex < i_17 && i_17 <= right) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, storeIndex).val <= loc(a, i).val might not hold. (arrays_quickselect_rec.vpr@60.11--60.100) [117698]"}
          Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_17): Ref), val];
      }
      assume false;
    }
    assume (forall i_18_1_1: int ::
      { (loc(a_2, i_18_1_1): Ref) }
      storeIndex < i_18_1_1 && i_18_1_1 <= right ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_18_1_1): Ref), val]
    );
    assert {:msg "  Postcondition of partition might not hold. Assertion |pw| == right + 1 might not hold. (arrays_quickselect_rec.vpr@62.11--62.28) [117699]"}
      Seq#Length(pw) == right + 1;
    if (*) {
      if (left_1 <= i_19 && i_19 <= right) {
        assert {:msg "  Postcondition of partition might not hold. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec.vpr@63.11--63.87) [117700]"}
          left_1 <= Seq#Index(pw, i_19);
        assert {:msg "  Postcondition of partition might not hold. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec.vpr@63.11--63.87) [117701]"}
          Seq#Index(pw, i_19) <= right;
      }
      assume false;
    }
    assume (forall i_20_1_1: int ::
      { Seq#Index(pw, i_20_1_1) }
      left_1 <= i_20_1_1 && i_20_1_1 <= right ==> left_1 <= Seq#Index(pw, i_20_1_1) && Seq#Index(pw, i_20_1_1) <= right
    );
    if (*) {
      if (left_1 <= i_21 && (i_21 < k_2_1 && k_2_1 <= right)) {
        assert {:msg "  Postcondition of partition might not hold. Assertion pw[i] != pw[k] might not hold. (arrays_quickselect_rec.vpr@64.11--64.87) [117702]"}
          Seq#Index(pw, i_21) != Seq#Index(pw, k_2_1);
      }
      assume false;
    }
    assume (forall i_22_1_1: int, k_3_1_1: int ::
      { Seq#Index(pw, i_22_1_1), Seq#Index(pw, k_3_1_1) }
      left_1 <= i_22_1_1 && (i_22_1_1 < k_3_1_1 && k_3_1_1 <= right) ==> Seq#Index(pw, i_22_1_1) != Seq#Index(pw, k_3_1_1)
    );
    if (*) {
      if (left_1 <= i_23 && i_23 <= right) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, i).val == old(loc(a, pw[i]).val) might not hold. (arrays_quickselect_rec.vpr@66.11--66.39) [117703]"}
          Heap[(loc(a_2, i_23): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_23)): Ref), val];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(pw, i_24_1_1) }
      left_1 <= i_24_1_1 && i_24_1_1 <= right ==> Heap[(loc(a_2, i_24_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_24_1_1)): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method select_rec
// ==================================================

procedure select_rec(a_2: IArrayDomainType, left_1: int, right: int, n: int) returns (storeIndex: int, pw: (Seq int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_24: int;
  var i_29: int;
  var i_30: int;
  var i_31: int;
  var j_19: int;
  var i_32: int;
  var pivotIndex: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_pivotIndex: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var pwPar: (Seq int);
  var arg_right: int;
  var pwRec: (Seq int);
  var i_33: int;
  var i_34: int;
  var arg_left: int;
  var i_35: int;
  var i_36: int;
  var i_15: int;
  var i_17: int;
  var i_19: int;
  var i_21: int;
  var j_2_1: int;
  var i_23: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= left_1;
    assume left_1 <= right;
    assume right < (len_1(a_2): int);
    assume state(Heap, Mask);
    assume left_1 <= n;
    assume n <= right;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@137.12--137.75) [117704]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (left_1 <= i_1 && i_1 <= right)) && (left_1 <= i_1_1 && i_1_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (left_1 <= i_1 && i_1 <= right) && NoPerm < FullPerm ==> qpRange9((loc(a_2, i_1): Ref)) && invRecv9((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((left_1 <= invRecv9(o_4) && invRecv9(o_4) <= right) && NoPerm < FullPerm) && qpRange9(o_4) ==> (loc(a_2, invRecv9(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        left_1 <= i_1 && i_1 <= right ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((left_1 <= invRecv9(o_4) && invRecv9(o_4) <= right) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv9(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv9(o_4) && invRecv9(o_4) <= right) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume left_1 <= storeIndex;
    assume storeIndex <= right;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@142.11--142.74) [117705]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (left_1 <= i_3 && i_3 <= right)) && (left_1 <= i_3_1 && i_3_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3): Ref) != (loc(a_2, i_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        (left_1 <= i_3 && i_3 <= right) && NoPerm < FullPerm ==> qpRange10((loc(a_2, i_3): Ref)) && invRecv10((loc(a_2, i_3): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((left_1 <= invRecv10(o_4) && invRecv10(o_4) <= right) && NoPerm < FullPerm) && qpRange10(o_4) ==> (loc(a_2, invRecv10(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        left_1 <= i_3 && i_3 <= right ==> (loc(a_2, i_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((left_1 <= invRecv10(o_4) && invRecv10(o_4) <= right) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv10(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv10(o_4) && invRecv10(o_4) <= right) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume storeIndex == n;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val <= loc(a, storeIndex).val)
      if (*) {
        if (left_1 <= i_24 && i_24 < storeIndex) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@145.11--145.100) [117706]"}
            HasDirectPerm(PostMask, (loc(a_2, i_24): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@145.11--145.100) [117707]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
        }
        assume false;
      }
    assume (forall i_5: int ::
      { (loc(a_2, i_5): Ref) }
      left_1 <= i_5 && i_5 < storeIndex ==> PostHeap[(loc(a_2, i_5): Ref), val] <= PostHeap[(loc(a_2, storeIndex): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
      if (*) {
        if (storeIndex < i_29 && i_29 <= right) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@146.11--146.100) [117708]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@146.11--146.100) [117709]"}
            HasDirectPerm(PostMask, (loc(a_2, i_29): Ref), val);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { (loc(a_2, i_7_1): Ref) }
      storeIndex < i_7_1 && i_7_1 <= right ==> PostHeap[(loc(a_2, storeIndex): Ref), val] <= PostHeap[(loc(a_2, i_7_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    assume Seq#Length(pw) == right + 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } left <= i && i <= right ==> left <= pw[i] && pw[i] <= right)
      if (*) {
        if (left_1 <= i_30 && i_30 <= right) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@149.11--149.87) [117710]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@149.11--149.87) [117711]"}
            i_30 < Seq#Length(pw);
          if (left_1 <= Seq#Index(pw, i_30)) {
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@149.11--149.87) [117712]"}
              i_30 >= 0;
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@149.11--149.87) [117713]"}
              i_30 < Seq#Length(pw);
          }
        }
        assume false;
      }
    assume (forall i_9_1: int ::
      { Seq#Index(pw, i_9_1) }
      left_1 <= i_9_1 && i_9_1 <= right ==> left_1 <= Seq#Index(pw, i_9_1) && Seq#Index(pw, i_9_1) <= right
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { pw[i], pw[j] } left <= i && (i < j && j <= right) ==> pw[i] != pw[j])
      if (*) {
        if (left_1 <= i_31 && (i_31 < j_19 && j_19 <= right)) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@150.11--150.87) [117714]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@150.11--150.87) [117715]"}
            i_31 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might be negative. (arrays_quickselect_rec.vpr@150.11--150.87) [117716]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@150.11--150.87) [117717]"}
            j_19 < Seq#Length(pw);
        }
        assume false;
      }
    assume (forall i_11_1: int, j_1: int ::
      { Seq#Index(pw, i_11_1), Seq#Index(pw, j_1) }
      left_1 <= i_11_1 && (i_11_1 < j_1 && j_1 <= right) ==> Seq#Index(pw, i_11_1) != Seq#Index(pw, j_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } left <= i && i <= right ==> loc(a, i).val == old(loc(a, pw[i]).val))
      if (*) {
        if (left_1 <= i_32 && i_32 <= right) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@152.11--152.39) [117718]"}
            HasDirectPerm(PostMask, (loc(a_2, i_32): Ref), val);
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@152.11--152.39) [117719]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@152.11--152.39) [117720]"}
            i_32 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i]).val (arrays_quickselect_rec.vpr@152.11--152.39) [117721]"}
            HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i_32)): Ref), val);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(pw, i_13_1) }
      left_1 <= i_13_1 && i_13_1 <= right ==> PostHeap[(loc(a_2, i_13_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (left == right) -- arrays_quickselect_rec.vpr@156.3--209.4
    if (left_1 == right) {
      
      // -- Translating statement: storeIndex := left -- arrays_quickselect_rec.vpr@158.5--158.23
        storeIndex := left_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: pw := [0..left + 1) -- arrays_quickselect_rec.vpr@160.5--160.24
        pw := Seq#Range(0, left_1 + 1);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale left <= pivotIndex && pivotIndex <= right -- arrays_quickselect_rec.vpr@163.5--163.53
        assume left_1 <= pivotIndex;
        assume pivotIndex <= right;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: pivotIndex, pwPar := partition(a, left, right, pivotIndex) -- arrays_quickselect_rec.vpr@165.5--165.63
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_pivotIndex := pivotIndex;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method partition might not hold. Assertion 0 <= left might not hold. (arrays_quickselect_rec.vpr@165.5--165.63) [117722]"}
            0 <= left_1;
          assert {:msg "  The precondition of method partition might not hold. Assertion left < right might not hold. (arrays_quickselect_rec.vpr@165.5--165.63) [117723]"}
            left_1 < right;
          assert {:msg "  The precondition of method partition might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec.vpr@165.5--165.63) [117724]"}
            right < (len_1(a_2): int);
          assert {:msg "  The precondition of method partition might not hold. Assertion left <= pivotIndex might not hold. (arrays_quickselect_rec.vpr@165.5--165.63) [117725]"}
            left_1 <= arg_pivotIndex;
          assert {:msg "  The precondition of method partition might not hold. Assertion pivotIndex <= right might not hold. (arrays_quickselect_rec.vpr@165.5--165.63) [117726]"}
            arg_pivotIndex <= right;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, i) is injective
            assert {:msg "  The precondition of method partition might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@165.5--165.63) [117727]"}
              (forall i_25: int, i_25_2: int ::
              { neverTriggered12(i_25), neverTriggered12(i_25_2) }
              (((i_25 != i_25_2 && (left_1 <= i_25 && i_25 <= right)) && (left_1 <= i_25_2 && i_25_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_25): Ref) != (loc(a_2, i_25_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method partition might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@165.5--165.63) [117728]"}
              (forall i_25: int ::
              { (loc(a_2, i_25): Ref) } { (loc(a_2, i_25): Ref) }
              left_1 <= i_25 && i_25 <= right ==> Mask[(loc(a_2, i_25): Ref), val] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, i)
            assume (forall i_25: int ::
              { (loc(a_2, i_25): Ref) } { (loc(a_2, i_25): Ref) }
              (left_1 <= i_25 && i_25 <= right) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i_25): Ref)) && invRecv12((loc(a_2, i_25): Ref)) == i_25
            );
            assume (forall o_4: Ref ::
              { invRecv12(o_4) }
              (left_1 <= invRecv12(o_4) && invRecv12(o_4) <= right) && (NoPerm < FullPerm && qpRange12(o_4)) ==> (loc(a_2, invRecv12(o_4)): Ref) == o_4
            );
          
          // -- assume permission updates for field val
            assume (forall o_4: Ref ::
              { QPMask[o_4, val] }
              ((left_1 <= invRecv12(o_4) && invRecv12(o_4) <= right) && (NoPerm < FullPerm && qpRange12(o_4)) ==> (loc(a_2, invRecv12(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv12(o_4) && invRecv12(o_4) <= right) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc pivotIndex, pwPar;
        
        // -- Inhaling postcondition
          assume left_1 <= pivotIndex;
          assume pivotIndex <= right;
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@165.5--165.63) [117729]"}
            (forall i_26: int, i_26_1: int ::
            
            (((i_26 != i_26_1 && (left_1 <= i_26 && i_26 <= right)) && (left_1 <= i_26_1 && i_26_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_26): Ref) != (loc(a_2, i_26_1): Ref)
          );
          
          // -- Define Inverse Function
            assume (forall i_26: int ::
              { (loc(a_2, i_26): Ref) } { (loc(a_2, i_26): Ref) }
              (left_1 <= i_26 && i_26 <= right) && NoPerm < FullPerm ==> qpRange13((loc(a_2, i_26): Ref)) && invRecv13((loc(a_2, i_26): Ref)) == i_26
            );
            assume (forall o_4: Ref ::
              { invRecv13(o_4) }
              ((left_1 <= invRecv13(o_4) && invRecv13(o_4) <= right) && NoPerm < FullPerm) && qpRange13(o_4) ==> (loc(a_2, invRecv13(o_4)): Ref) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_26: int ::
              { (loc(a_2, i_26): Ref) } { (loc(a_2, i_26): Ref) }
              left_1 <= i_26 && i_26 <= right ==> (loc(a_2, i_26): Ref) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, val] }
              (((left_1 <= invRecv13(o_4) && invRecv13(o_4) <= right) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv13(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv13(o_4) && invRecv13(o_4) <= right) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume Heap[(loc(a_2, pivotIndex): Ref), val] == PreCallHeap[(loc(a_2, arg_pivotIndex): Ref), val];
          assume (forall i_27: int ::
            { (loc(a_2, i_27): Ref) }
            left_1 <= i_27 && i_27 < pivotIndex ==> Heap[(loc(a_2, i_27): Ref), val] < Heap[(loc(a_2, pivotIndex): Ref), val]
          );
          assume (forall i_28: int ::
            { (loc(a_2, i_28): Ref) }
            pivotIndex < i_28 && i_28 <= right ==> Heap[(loc(a_2, pivotIndex): Ref), val] <= Heap[(loc(a_2, i_28): Ref), val]
          );
          assume Seq#Length(pwPar) == right + 1;
          assume (forall i_29_1: int ::
            { Seq#Index(pwPar, i_29_1) }
            left_1 <= i_29_1 && i_29_1 <= right ==> left_1 <= Seq#Index(pwPar, i_29_1) && Seq#Index(pwPar, i_29_1) <= right
          );
          assume (forall i_30_2: int, k: int ::
            { Seq#Index(pwPar, i_30_2), Seq#Index(pwPar, k) }
            left_1 <= i_30_2 && (i_30_2 < k && k <= right) ==> Seq#Index(pwPar, i_30_2) != Seq#Index(pwPar, k)
          );
          assume (forall i_31_1: int ::
            { Seq#Index(pwPar, i_31_1) }
            left_1 <= i_31_1 && i_31_1 <= right ==> Heap[(loc(a_2, i_31_1): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwPar, i_31_1)): Ref), val]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (n == pivotIndex) -- arrays_quickselect_rec.vpr@167.5--208.6
        if (n == pivotIndex) {
          
          // -- Translating statement: storeIndex := pivotIndex -- arrays_quickselect_rec.vpr@168.7--168.31
            storeIndex := pivotIndex;
            assume state(Heap, Mask);
          
          // -- Translating statement: pw := pwPar -- arrays_quickselect_rec.vpr@169.7--169.18
            pw := pwPar;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (n < pivotIndex) -- arrays_quickselect_rec.vpr@170.7--208.6
            if (n < pivotIndex) {
              
              // -- Translating statement: storeIndex, pwRec := select_rec(a, left, pivotIndex - 1, n) -- arrays_quickselect_rec.vpr@171.7--171.66
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_right := pivotIndex - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion 0 <= left might not hold. (arrays_quickselect_rec.vpr@171.7--171.66) [117730]"}
                    0 <= left_1;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion left <= pivotIndex - 1 might not hold. (arrays_quickselect_rec.vpr@171.7--171.66) [117731]"}
                    left_1 <= arg_right;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex - 1 < len(a) might not hold. (arrays_quickselect_rec.vpr@171.7--171.66) [117732]"}
                    arg_right < (len_1(a_2): int);
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion left <= n might not hold. (arrays_quickselect_rec.vpr@171.7--171.66) [117733]"}
                    left_1 <= n;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion n <= pivotIndex - 1 might not hold. (arrays_quickselect_rec.vpr@171.7--171.66) [117734]"}
                    n <= arg_right;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver loc(a, i) is injective
                    assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@171.7--171.66) [117735]"}
                      (forall i_32_2: int, i_32_3: int ::
                      { neverTriggered14(i_32_2), neverTriggered14(i_32_3) }
                      (((i_32_2 != i_32_3 && (left_1 <= i_32_2 && i_32_2 <= arg_right)) && (left_1 <= i_32_3 && i_32_3 <= arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_32_2): Ref) != (loc(a_2, i_32_3): Ref)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@171.7--171.66) [117736]"}
                      (forall i_32_2: int ::
                      { (loc(a_2, i_32_2): Ref) } { (loc(a_2, i_32_2): Ref) }
                      left_1 <= i_32_2 && i_32_2 <= arg_right ==> Mask[(loc(a_2, i_32_2): Ref), val] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver loc(a, i)
                    assume (forall i_32_2: int ::
                      { (loc(a_2, i_32_2): Ref) } { (loc(a_2, i_32_2): Ref) }
                      (left_1 <= i_32_2 && i_32_2 <= arg_right) && NoPerm < FullPerm ==> qpRange14((loc(a_2, i_32_2): Ref)) && invRecv14((loc(a_2, i_32_2): Ref)) == i_32_2
                    );
                    assume (forall o_4: Ref ::
                      { invRecv14(o_4) }
                      (left_1 <= invRecv14(o_4) && invRecv14(o_4) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_4)) ==> (loc(a_2, invRecv14(o_4)): Ref) == o_4
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      ((left_1 <= invRecv14(o_4) && invRecv14(o_4) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_4)) ==> (loc(a_2, invRecv14(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv14(o_4) && invRecv14(o_4) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc storeIndex, pwRec;
                
                // -- Inhaling postcondition
                  assume left_1 <= storeIndex;
                  assume storeIndex <= arg_right;
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@171.7--171.66) [117737]"}
                    (forall i_33_1: int, i_33_2: int ::
                    
                    (((i_33_1 != i_33_2 && (left_1 <= i_33_1 && i_33_1 <= arg_right)) && (left_1 <= i_33_2 && i_33_2 <= arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_33_1): Ref) != (loc(a_2, i_33_2): Ref)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_33_1: int ::
                      { (loc(a_2, i_33_1): Ref) } { (loc(a_2, i_33_1): Ref) }
                      (left_1 <= i_33_1 && i_33_1 <= arg_right) && NoPerm < FullPerm ==> qpRange15((loc(a_2, i_33_1): Ref)) && invRecv15((loc(a_2, i_33_1): Ref)) == i_33_1
                    );
                    assume (forall o_4: Ref ::
                      { invRecv15(o_4) }
                      ((left_1 <= invRecv15(o_4) && invRecv15(o_4) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_4) ==> (loc(a_2, invRecv15(o_4)): Ref) == o_4
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_33_1: int ::
                      { (loc(a_2, i_33_1): Ref) } { (loc(a_2, i_33_1): Ref) }
                      left_1 <= i_33_1 && i_33_1 <= arg_right ==> (loc(a_2, i_33_1): Ref) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      (((left_1 <= invRecv15(o_4) && invRecv15(o_4) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv15(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((left_1 <= invRecv15(o_4) && invRecv15(o_4) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume storeIndex == n;
                  assume (forall i_34_2: int ::
                    { (loc(a_2, i_34_2): Ref) }
                    left_1 <= i_34_2 && i_34_2 < storeIndex ==> Heap[(loc(a_2, i_34_2): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
                  );
                  assume (forall i_35_1: int ::
                    { (loc(a_2, i_35_1): Ref) }
                    storeIndex < i_35_1 && i_35_1 <= arg_right ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_35_1): Ref), val]
                  );
                  assume Seq#Length(pwRec) == arg_right + 1;
                  assume (forall i_36_2: int ::
                    { Seq#Index(pwRec, i_36_2) }
                    left_1 <= i_36_2 && i_36_2 <= arg_right ==> left_1 <= Seq#Index(pwRec, i_36_2) && Seq#Index(pwRec, i_36_2) <= arg_right
                  );
                  assume (forall i_37: int, j_4_1: int ::
                    { Seq#Index(pwRec, i_37), Seq#Index(pwRec, j_4_1) }
                    left_1 <= i_37 && (i_37 < j_4_1 && j_4_1 <= arg_right) ==> Seq#Index(pwRec, i_37) != Seq#Index(pwRec, j_4_1)
                  );
                  assume (forall i_38: int ::
                    { Seq#Index(pwRec, i_38) }
                    left_1 <= i_38 && i_38 <= arg_right ==> Heap[(loc(a_2, i_38): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwRec, i_38)): Ref), val]
                  );
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert dummy(pwRec[storeIndex]) -- arrays_quickselect_rec.vpr@180.7--180.38
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of dummy(pwRec[storeIndex])
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex] into pwRec might be negative. (arrays_quickselect_rec.vpr@180.14--180.38) [117738]"}
                    storeIndex >= 0;
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex] into pwRec might exceed sequence length. (arrays_quickselect_rec.vpr@180.14--180.38) [117739]"}
                    storeIndex < Seq#Length(pwRec);
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion dummy(pwRec[storeIndex]) might not hold. (arrays_quickselect_rec.vpr@180.14--180.38) [117740]"}
                  dummy(Heap, Seq#Index(pwRec, storeIndex));
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale |pw| == right + 1 -- arrays_quickselect_rec.vpr@196.7--196.31
                assume Seq#Length(pw) == right + 1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[pwRec[i]] }
  //     left <= i && i <= pivotIndex - 1 ==> pw[i] == pwPar[pwRec[i]]) -- arrays_quickselect_rec.vpr@197.7--197.92
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[pwRec[i]] } left <= i && i <= pivotIndex - 1 ==> pw[i] == pwPar[pwRec[i]])
                  if (*) {
                    if (left_1 <= i_33 && i_33 <= pivotIndex - 1) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@197.14--197.92) [117741]"}
                        i_33 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@197.14--197.92) [117742]"}
                        i_33 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might be negative. (arrays_quickselect_rec.vpr@197.14--197.92) [117743]"}
                        i_33 >= 0;
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might exceed sequence length. (arrays_quickselect_rec.vpr@197.14--197.92) [117744]"}
                        i_33 < Seq#Length(pwRec);
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i]] into pwPar might be negative. (arrays_quickselect_rec.vpr@197.14--197.92) [117745]"}
                        Seq#Index(pwRec, i_33) >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i]] into pwPar might exceed sequence length. (arrays_quickselect_rec.vpr@197.14--197.92) [117746]"}
                        Seq#Index(pwRec, i_33) < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_40: int ::
                  { Seq#Index(pw, i_40) } { Seq#Index(pwPar, Seq#Index(pwRec, i_40)) }
                  left_1 <= i_40 && i_40 <= pivotIndex - 1 ==> Seq#Index(pw, i_40) == Seq#Index(pwPar, Seq#Index(pwRec, i_40))
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[i] }
  //     pivotIndex <= i && i <= right ==> pw[i] == pwPar[i]) -- arrays_quickselect_rec.vpr@198.7--198.82
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[i] } pivotIndex <= i && i <= right ==> pw[i] == pwPar[i])
                  if (*) {
                    if (pivotIndex <= i_34 && i_34 <= right) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@198.14--198.82) [117747]"}
                        i_34 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@198.14--198.82) [117748]"}
                        i_34 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might be negative. (arrays_quickselect_rec.vpr@198.14--198.82) [117749]"}
                        i_34 >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might exceed sequence length. (arrays_quickselect_rec.vpr@198.14--198.82) [117750]"}
                        i_34 < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_42: int ::
                  { Seq#Index(pw, i_42) } { Seq#Index(pwPar, i_42) }
                  pivotIndex <= i_42 && i_42 <= right ==> Seq#Index(pw, i_42) == Seq#Index(pwPar, i_42)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: storeIndex, pwRec := select_rec(a, pivotIndex + 1, right, n) -- arrays_quickselect_rec.vpr@201.7--201.67
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_left := pivotIndex + 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion 0 <= pivotIndex + 1 might not hold. (arrays_quickselect_rec.vpr@201.7--201.67) [117751]"}
                    0 <= arg_left;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex + 1 <= right might not hold. (arrays_quickselect_rec.vpr@201.7--201.67) [117752]"}
                    arg_left <= right;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec.vpr@201.7--201.67) [117753]"}
                    right < (len_1(a_2): int);
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex + 1 <= n might not hold. (arrays_quickselect_rec.vpr@201.7--201.67) [117754]"}
                    arg_left <= n;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion n <= right might not hold. (arrays_quickselect_rec.vpr@201.7--201.67) [117755]"}
                    n <= right;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver loc(a, i) is injective
                    assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@201.7--201.67) [117756]"}
                      (forall i_43_2: int, i_43_3: int ::
                      { neverTriggered16(i_43_2), neverTriggered16(i_43_3) }
                      (((i_43_2 != i_43_3 && (arg_left <= i_43_2 && i_43_2 <= right)) && (arg_left <= i_43_3 && i_43_3 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_43_2): Ref) != (loc(a_2, i_43_3): Ref)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@201.7--201.67) [117757]"}
                      (forall i_43_2: int ::
                      { (loc(a_2, i_43_2): Ref) } { (loc(a_2, i_43_2): Ref) }
                      arg_left <= i_43_2 && i_43_2 <= right ==> Mask[(loc(a_2, i_43_2): Ref), val] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver loc(a, i)
                    assume (forall i_43_2: int ::
                      { (loc(a_2, i_43_2): Ref) } { (loc(a_2, i_43_2): Ref) }
                      (arg_left <= i_43_2 && i_43_2 <= right) && NoPerm < FullPerm ==> qpRange16((loc(a_2, i_43_2): Ref)) && invRecv16((loc(a_2, i_43_2): Ref)) == i_43_2
                    );
                    assume (forall o_4: Ref ::
                      { invRecv16(o_4) }
                      (arg_left <= invRecv16(o_4) && invRecv16(o_4) <= right) && (NoPerm < FullPerm && qpRange16(o_4)) ==> (loc(a_2, invRecv16(o_4)): Ref) == o_4
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      ((arg_left <= invRecv16(o_4) && invRecv16(o_4) <= right) && (NoPerm < FullPerm && qpRange16(o_4)) ==> (loc(a_2, invRecv16(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((arg_left <= invRecv16(o_4) && invRecv16(o_4) <= right) && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc storeIndex, pwRec;
                
                // -- Inhaling postcondition
                  assume arg_left <= storeIndex;
                  assume storeIndex <= right;
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@201.7--201.67) [117758]"}
                    (forall i_44: int, i_44_1: int ::
                    
                    (((i_44 != i_44_1 && (arg_left <= i_44 && i_44 <= right)) && (arg_left <= i_44_1 && i_44_1 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_44): Ref) != (loc(a_2, i_44_1): Ref)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_44: int ::
                      { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
                      (arg_left <= i_44 && i_44 <= right) && NoPerm < FullPerm ==> qpRange17((loc(a_2, i_44): Ref)) && invRecv17((loc(a_2, i_44): Ref)) == i_44
                    );
                    assume (forall o_4: Ref ::
                      { invRecv17(o_4) }
                      ((arg_left <= invRecv17(o_4) && invRecv17(o_4) <= right) && NoPerm < FullPerm) && qpRange17(o_4) ==> (loc(a_2, invRecv17(o_4)): Ref) == o_4
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_44: int ::
                      { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
                      arg_left <= i_44 && i_44 <= right ==> (loc(a_2, i_44): Ref) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, val] }
                      (((arg_left <= invRecv17(o_4) && invRecv17(o_4) <= right) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv17(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((arg_left <= invRecv17(o_4) && invRecv17(o_4) <= right) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume storeIndex == n;
                  assume (forall i_45_2: int ::
                    { (loc(a_2, i_45_2): Ref) }
                    arg_left <= i_45_2 && i_45_2 < storeIndex ==> Heap[(loc(a_2, i_45_2): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
                  );
                  assume (forall i_46: int ::
                    { (loc(a_2, i_46): Ref) }
                    storeIndex < i_46 && i_46 <= right ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_46): Ref), val]
                  );
                  assume Seq#Length(pwRec) == right + 1;
                  assume (forall i_47_2: int ::
                    { Seq#Index(pwRec, i_47_2) }
                    arg_left <= i_47_2 && i_47_2 <= right ==> arg_left <= Seq#Index(pwRec, i_47_2) && Seq#Index(pwRec, i_47_2) <= right
                  );
                  assume (forall i_48_2: int, j_5_1: int ::
                    { Seq#Index(pwRec, i_48_2), Seq#Index(pwRec, j_5_1) }
                    arg_left <= i_48_2 && (i_48_2 < j_5_1 && j_5_1 <= right) ==> Seq#Index(pwRec, i_48_2) != Seq#Index(pwRec, j_5_1)
                  );
                  assume (forall i_49: int ::
                    { Seq#Index(pwRec, i_49) }
                    arg_left <= i_49 && i_49 <= right ==> Heap[(loc(a_2, i_49): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwRec, i_49)): Ref), val]
                  );
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert dummy(pwRec[storeIndex]) -- arrays_quickselect_rec.vpr@203.7--203.38
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of dummy(pwRec[storeIndex])
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex] into pwRec might be negative. (arrays_quickselect_rec.vpr@203.14--203.38) [117759]"}
                    storeIndex >= 0;
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex] into pwRec might exceed sequence length. (arrays_quickselect_rec.vpr@203.14--203.38) [117760]"}
                    storeIndex < Seq#Length(pwRec);
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion dummy(pwRec[storeIndex]) might not hold. (arrays_quickselect_rec.vpr@203.14--203.38) [117761]"}
                  dummy(Heap, Seq#Index(pwRec, storeIndex));
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale |pw| == right + 1 -- arrays_quickselect_rec.vpr@205.7--205.31
                assume Seq#Length(pw) == right + 1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[i] }
  //     left <= i && i <= pivotIndex ==> pw[i] == pwPar[i]) -- arrays_quickselect_rec.vpr@206.7--206.81
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[i] } left <= i && i <= pivotIndex ==> pw[i] == pwPar[i])
                  if (*) {
                    if (left_1 <= i_35 && i_35 <= pivotIndex) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@206.14--206.81) [117762]"}
                        i_35 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@206.14--206.81) [117763]"}
                        i_35 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might be negative. (arrays_quickselect_rec.vpr@206.14--206.81) [117764]"}
                        i_35 >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might exceed sequence length. (arrays_quickselect_rec.vpr@206.14--206.81) [117765]"}
                        i_35 < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_51: int ::
                  { Seq#Index(pw, i_51) } { Seq#Index(pwPar, i_51) }
                  left_1 <= i_51 && i_51 <= pivotIndex ==> Seq#Index(pw, i_51) == Seq#Index(pwPar, i_51)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[pwRec[i]] }
  //     pivotIndex + 1 <= i && i <= right ==> pw[i] == pwPar[pwRec[i]]) -- arrays_quickselect_rec.vpr@207.7--207.93
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[pwRec[i]] } pivotIndex + 1 <= i && i <= right ==> pw[i] == pwPar[pwRec[i]])
                  if (*) {
                    if (pivotIndex + 1 <= i_36 && i_36 <= right) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec.vpr@207.14--207.93) [117766]"}
                        i_36 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@207.14--207.93) [117767]"}
                        i_36 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might be negative. (arrays_quickselect_rec.vpr@207.14--207.93) [117768]"}
                        i_36 >= 0;
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might exceed sequence length. (arrays_quickselect_rec.vpr@207.14--207.93) [117769]"}
                        i_36 < Seq#Length(pwRec);
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i]] into pwPar might be negative. (arrays_quickselect_rec.vpr@207.14--207.93) [117770]"}
                        Seq#Index(pwRec, i_36) >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i]] into pwPar might exceed sequence length. (arrays_quickselect_rec.vpr@207.14--207.93) [117771]"}
                        Seq#Index(pwRec, i_36) < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_53: int ::
                  { Seq#Index(pw, i_53) } { Seq#Index(pwPar, Seq#Index(pwRec, i_53)) }
                  pivotIndex + 1 <= i_53 && i_53 <= right ==> Seq#Index(pw, i_53) == Seq#Index(pwPar, Seq#Index(pwRec, i_53))
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec.vpr@140.11--140.52) [117772]"}
      left_1 <= storeIndex;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion storeIndex <= right might not hold. (arrays_quickselect_rec.vpr@140.11--140.52) [117773]"}
      storeIndex <= right;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@142.11--142.74) [117774]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered11(i_14_1), neverTriggered11(i_14_2) }
        (((i_14_1 != i_14_2 && (left_1 <= i_14_1 && i_14_1 <= right)) && (left_1 <= i_14_2 && i_14_2 <= right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_14_1): Ref) != (loc(a_2, i_14_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@142.11--142.74) [117775]"}
        (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        left_1 <= i_14_1 && i_14_1 <= right ==> Mask[(loc(a_2, i_14_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        (left_1 <= i_14_1 && i_14_1 <= right) && NoPerm < FullPerm ==> qpRange11((loc(a_2, i_14_1): Ref)) && invRecv11((loc(a_2, i_14_1): Ref)) == i_14_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (left_1 <= invRecv11(o_4) && invRecv11(o_4) <= right) && (NoPerm < FullPerm && qpRange11(o_4)) ==> (loc(a_2, invRecv11(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((left_1 <= invRecv11(o_4) && invRecv11(o_4) <= right) && (NoPerm < FullPerm && qpRange11(o_4)) ==> (loc(a_2, invRecv11(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((left_1 <= invRecv11(o_4) && invRecv11(o_4) <= right) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion storeIndex == n might not hold. (arrays_quickselect_rec.vpr@144.11--144.26) [117776]"}
      storeIndex == n;
    if (*) {
      if (left_1 <= i_15 && i_15 < storeIndex) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, i).val <= loc(a, storeIndex).val might not hold. (arrays_quickselect_rec.vpr@145.11--145.100) [117777]"}
          Heap[(loc(a_2, i_15): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val];
      }
      assume false;
    }
    assume (forall i_16_1_1: int ::
      { (loc(a_2, i_16_1_1): Ref) }
      left_1 <= i_16_1_1 && i_16_1_1 < storeIndex ==> Heap[(loc(a_2, i_16_1_1): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
    );
    if (*) {
      if (storeIndex < i_17 && i_17 <= right) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, storeIndex).val <= loc(a, i).val might not hold. (arrays_quickselect_rec.vpr@146.11--146.100) [117778]"}
          Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_17): Ref), val];
      }
      assume false;
    }
    assume (forall i_18_1_1: int ::
      { (loc(a_2, i_18_1_1): Ref) }
      storeIndex < i_18_1_1 && i_18_1_1 <= right ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_18_1_1): Ref), val]
    );
    assert {:msg "  Postcondition of select_rec might not hold. Assertion |pw| == right + 1 might not hold. (arrays_quickselect_rec.vpr@148.11--148.28) [117779]"}
      Seq#Length(pw) == right + 1;
    if (*) {
      if (left_1 <= i_19 && i_19 <= right) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec.vpr@149.11--149.87) [117780]"}
          left_1 <= Seq#Index(pw, i_19);
        assert {:msg "  Postcondition of select_rec might not hold. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec.vpr@149.11--149.87) [117781]"}
          Seq#Index(pw, i_19) <= right;
      }
      assume false;
    }
    assume (forall i_20_1_1: int ::
      { Seq#Index(pw, i_20_1_1) }
      left_1 <= i_20_1_1 && i_20_1_1 <= right ==> left_1 <= Seq#Index(pw, i_20_1_1) && Seq#Index(pw, i_20_1_1) <= right
    );
    if (*) {
      if (left_1 <= i_21 && (i_21 < j_2_1 && j_2_1 <= right)) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion pw[i] != pw[j] might not hold. (arrays_quickselect_rec.vpr@150.11--150.87) [117782]"}
          Seq#Index(pw, i_21) != Seq#Index(pw, j_2_1);
      }
      assume false;
    }
    assume (forall i_22_1_1: int, j_3_1_1: int ::
      { Seq#Index(pw, i_22_1_1), Seq#Index(pw, j_3_1_1) }
      left_1 <= i_22_1_1 && (i_22_1_1 < j_3_1_1 && j_3_1_1 <= right) ==> Seq#Index(pw, i_22_1_1) != Seq#Index(pw, j_3_1_1)
    );
    if (*) {
      if (left_1 <= i_23 && i_23 <= right) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, i).val == old(loc(a, pw[i]).val) might not hold. (arrays_quickselect_rec.vpr@152.11--152.39) [117783]"}
          Heap[(loc(a_2, i_23): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_23)): Ref), val];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(pw, i_24_1_1) }
      left_1 <= i_24_1_1 && i_24_1_1 <= right ==> Heap[(loc(a_2, i_24_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_24_1_1)): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method client
// ==================================================

procedure client(a_2: IArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_43: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var storeIndex: int;
  var pw: (Seq int);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 10 < (len_1(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@214.12--214.72) [117784]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange18((loc(a_2, i_1): Ref)) && invRecv18((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        ((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_4) ==> (loc(a_2, invRecv18(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv18(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i <= 10 ==> loc(a, i).val == i)
      if (*) {
        if (0 <= i_43 && i_43 <= 10) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@215.12--215.69) [117785]"}
            HasDirectPerm(Mask, (loc(a_2, i_43): Ref), val);
        }
        assume false;
      }
    assume (forall i_3: int ::
      { (loc(a_2, i_3): Ref) }
      0 <= i_3 && i_3 <= 10 ==> Heap[(loc(a_2, i_3): Ref), val] == i_3
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
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@216.11--216.71) [117786]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5): Ref) != (loc(a_2, i_5_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
        (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange19((loc(a_2, i_5): Ref)) && invRecv19((loc(a_2, i_5): Ref)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        ((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (loc(a_2, invRecv19(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
        0 <= i_5 && i_5 < (len_1(a_2): int) ==> (loc(a_2, i_5): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv19(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: storeIndex, pw := select_rec(a, 0, 10, 3) -- arrays_quickselect_rec.vpr@221.3--221.44
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method select_rec might not hold. Assertion 10 < len(a) might not hold. (arrays_quickselect_rec.vpr@221.3--221.44) [117787]"}
        10 < (len_1(a_2): int);
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver loc(a, i) is injective
        assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@221.3--221.44) [117788]"}
          (forall i_7_1: int, i_7_2: int ::
          { neverTriggered21(i_7_1), neverTriggered21(i_7_2) }
          (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 <= 10)) && (0 <= i_7_2 && i_7_2 <= 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_7_1): Ref) != (loc(a_2, i_7_2): Ref)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@221.3--221.44) [117789]"}
          (forall i_7_1: int ::
          { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
          0 <= i_7_1 && i_7_1 <= 10 ==> Mask[(loc(a_2, i_7_1): Ref), val] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver loc(a, i)
        assume (forall i_7_1: int ::
          { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
          (0 <= i_7_1 && i_7_1 <= 10) && NoPerm < FullPerm ==> qpRange21((loc(a_2, i_7_1): Ref)) && invRecv21((loc(a_2, i_7_1): Ref)) == i_7_1
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          (0 <= invRecv21(o_4) && invRecv21(o_4) <= 10) && (NoPerm < FullPerm && qpRange21(o_4)) ==> (loc(a_2, invRecv21(o_4)): Ref) == o_4
        );
      
      // -- assume permission updates for field val
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          ((0 <= invRecv21(o_4) && invRecv21(o_4) <= 10) && (NoPerm < FullPerm && qpRange21(o_4)) ==> (loc(a_2, invRecv21(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv21(o_4) && invRecv21(o_4) <= 10) && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc storeIndex, pw;
    
    // -- Inhaling postcondition
      assume 0 <= storeIndex;
      assume storeIndex <= 10;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@221.3--221.44) [117790]"}
        (forall i_8_2: int, i_8_3: int ::
        
        (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 <= 10)) && (0 <= i_8_3 && i_8_3 <= 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_8_2): Ref) != (loc(a_2, i_8_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_8_2: int ::
          { (loc(a_2, i_8_2): Ref) } { (loc(a_2, i_8_2): Ref) }
          (0 <= i_8_2 && i_8_2 <= 10) && NoPerm < FullPerm ==> qpRange22((loc(a_2, i_8_2): Ref)) && invRecv22((loc(a_2, i_8_2): Ref)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          ((0 <= invRecv22(o_4) && invRecv22(o_4) <= 10) && NoPerm < FullPerm) && qpRange22(o_4) ==> (loc(a_2, invRecv22(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_8_2: int ::
          { (loc(a_2, i_8_2): Ref) } { (loc(a_2, i_8_2): Ref) }
          0 <= i_8_2 && i_8_2 <= 10 ==> (loc(a_2, i_8_2): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv22(o_4) && invRecv22(o_4) <= 10) && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv22(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv22(o_4) && invRecv22(o_4) <= 10) && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume storeIndex == 3;
      assume (forall i_9_1: int ::
        { (loc(a_2, i_9_1): Ref) }
        0 <= i_9_1 && i_9_1 < storeIndex ==> Heap[(loc(a_2, i_9_1): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
      );
      assume (forall i_10_1: int ::
        { (loc(a_2, i_10_1): Ref) }
        storeIndex < i_10_1 && i_10_1 <= 10 ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_10_1): Ref), val]
      );
      assume Seq#Length(pw) == 11;
      assume (forall i_11_1: int ::
        { Seq#Index(pw, i_11_1) }
        0 <= i_11_1 && i_11_1 <= 10 ==> 0 <= Seq#Index(pw, i_11_1) && Seq#Index(pw, i_11_1) <= 10
      );
      assume (forall i_12_1: int, j_9: int ::
        { Seq#Index(pw, i_12_1), Seq#Index(pw, j_9) }
        0 <= i_12_1 && (i_12_1 < j_9 && j_9 <= 10) ==> Seq#Index(pw, i_12_1) != Seq#Index(pw, j_9)
      );
      assume (forall i_13_1: int ::
        { Seq#Index(pw, i_13_1) }
        0 <= i_13_1 && i_13_1 <= 10 ==> Heap[(loc(a_2, i_13_1): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert storeIndex == 3 -- arrays_quickselect_rec.vpr@223.3--223.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion storeIndex == 3 might not hold. (arrays_quickselect_rec.vpr@223.10--223.25) [117791]"}
      storeIndex == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val) -- arrays_quickselect_rec.vpr@224.3--224.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val)
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec.vpr@224.10--224.67) [117792]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, storeIndex): Ref), val);
      assert {:msg "  Assert might fail. Index pw[storeIndex] into pw might be negative. (arrays_quickselect_rec.vpr@224.10--224.67) [117793]"}
        storeIndex >= 0;
      assert {:msg "  Assert might fail. Index pw[storeIndex] into pw might exceed sequence length. (arrays_quickselect_rec.vpr@224.10--224.67) [117794]"}
        storeIndex < Seq#Length(pw);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, pw[storeIndex]).val (arrays_quickselect_rec.vpr@224.10--224.67) [117795]"}
        HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, storeIndex)): Ref), val);
    assert {:msg "  Assert might fail. Assertion loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val) might not hold. (arrays_quickselect_rec.vpr@224.10--224.67) [117796]"}
      Heap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, storeIndex)): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 0).val) == 0 -- arrays_quickselect_rec.vpr@226.3--226.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 0).val) == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 0).val (arrays_quickselect_rec.vpr@226.10--226.33) [117797]"}
        HasDirectPerm(oldMask, (loc(a_2, 0): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 0).val) == 0 might not hold. (arrays_quickselect_rec.vpr@226.10--226.33) [117798]"}
      oldHeap[(loc(a_2, 0): Ref), val] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 3).val) == 3 -- arrays_quickselect_rec.vpr@227.3--227.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 3).val) == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 3).val (arrays_quickselect_rec.vpr@227.10--227.33) [117799]"}
        HasDirectPerm(oldMask, (loc(a_2, 3): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 3).val) == 3 might not hold. (arrays_quickselect_rec.vpr@227.10--227.33) [117800]"}
      oldHeap[(loc(a_2, 3): Ref), val] == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 2).val) != old(loc(a, 3).val) -- arrays_quickselect_rec.vpr@228.3--228.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 2).val) != old(loc(a, 3).val)
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 2).val (arrays_quickselect_rec.vpr@228.10--228.50) [117801]"}
        HasDirectPerm(oldMask, (loc(a_2, 2): Ref), val);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 3).val (arrays_quickselect_rec.vpr@228.10--228.50) [117802]"}
        HasDirectPerm(oldMask, (loc(a_2, 3): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 2).val) != old(loc(a, 3).val) might not hold. (arrays_quickselect_rec.vpr@228.10--228.50) [117803]"}
      oldHeap[(loc(a_2, 2): Ref), val] != oldHeap[(loc(a_2, 3): Ref), val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec.vpr@216.11--216.71) [117804]"}
        (forall i_6_1: int, i_6_2: int ::
        { neverTriggered20(i_6_1), neverTriggered20(i_6_2) }
        (((i_6_1 != i_6_2 && (0 <= i_6_1 && i_6_1 < (len_1(a_2): int))) && (0 <= i_6_2 && i_6_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_1): Ref) != (loc(a_2, i_6_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of client might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec.vpr@216.11--216.71) [117805]"}
        (forall i_6_1: int ::
        { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
        0 <= i_6_1 && i_6_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i_6_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_6_1: int ::
        { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
        (0 <= i_6_1 && i_6_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange20((loc(a_2, i_6_1): Ref)) && invRecv20((loc(a_2, i_6_1): Ref)) == i_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (0 <= invRecv20(o_4) && invRecv20(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> (loc(a_2, invRecv20(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> (loc(a_2, invRecv20(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv20(o_4) && invRecv20(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}