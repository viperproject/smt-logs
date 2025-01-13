// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:19:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/sequences/sequence_incompletenesses.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/sequences/sequence_incompletenesses-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_19] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_76: Ref, f_53: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_76, f_53] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_76, f_53) ==> Heap[o_76, f_53] == ExhaleHeap[o_76, f_53]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_42), ExhaleHeap[null, PredicateMaskField(pm_f_42)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsPredicateField(pm_f_42) ==> Heap[null, PredicateMaskField(pm_f_42)] == ExhaleHeap[null, PredicateMaskField(pm_f_42)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_42) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsPredicateField(pm_f_42) ==> (forall <A, B> o2_42: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_42, f_53] }
    Heap[null, PredicateMaskField(pm_f_42)][o2_42, f_53] ==> Heap[o2_42, f_53] == ExhaleHeap[o2_42, f_53]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_42), ExhaleHeap[null, WandMaskField(pm_f_42)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsWandField(pm_f_42) ==> Heap[null, WandMaskField(pm_f_42)] == ExhaleHeap[null, WandMaskField(pm_f_42)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_42: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_42) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_42) && IsWandField(pm_f_42) ==> (forall <A, B> o2_42: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_42, f_53] }
    Heap[null, WandMaskField(pm_f_42)][o2_42, f_53] ==> Heap[o2_42, f_53] == ExhaleHeap[o2_42, f_53]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_76: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_76, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_76, $allocated] ==> ExhaleHeap[o_76, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_14: (Field A B), v: B ::
  { Heap[o_14, f_14:=v] }
  succHeap(Heap, Heap[o_14, f_14:=v])
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
function  neverTriggered2(i_1: int): bool;
function  neverTriggered3(i_2_1: int): bool;
function  neverTriggered4(i_4_1: int): bool;
function  neverTriggered5(i_5: int): bool;
function  neverTriggered6(i_7_1: int): bool;
function  neverTriggered7(i_8_2: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_2_1: int): bool;
function  neverTriggered10(i_4_1: int): bool;
function  neverTriggered11(i_5: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_8_2: int): bool;
function  neverTriggered14(i_1: int): bool;
function  neverTriggered15(i_2_1: int): bool;
function  neverTriggered16(i_4_1: int): bool;
function  neverTriggered17(i_5: int): bool;
function  neverTriggered18(i_7_1: int): bool;
function  neverTriggered19(i_8_2: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: valid
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function len
function  len_1(_a: ArrayDomainType): int;

// Translation of domain function slot
function  slot(_a: ArrayDomainType, i_79: int): Ref;

// Translation of domain function slotToArray
function  slotToArray(_r: Ref): ArrayDomainType;

// Translation of domain function slotToIndex
function  slotToIndex(_r: Ref): int;

// Translation of domain axiom injectivity
axiom (forall _a_1: ArrayDomainType, i: int ::
  { (len_1(_a_1): int), (slot(_a_1, i): Ref) } { (len_1(_a_1): int), (slotToArray((slot(_a_1, i): Ref)): ArrayDomainType) } { (len_1(_a_1): int), (slotToIndex((slot(_a_1, i): Ref)): int) } { (slotToArray((slot(_a_1, i): Ref)): ArrayDomainType) } { (slotToIndex((slot(_a_1, i): Ref)): int) }
  0 <= i && i < (len_1(_a_1): int) ==> (slotToArray((slot(_a_1, i): Ref)): ArrayDomainType) == _a_1 && (slotToIndex((slot(_a_1, i): Ref)): int) == i
);

// Translation of domain axiom lenPositive
axiom (forall _a_1: ArrayDomainType ::
  { (len_1(_a_1): int) }
  (len_1(_a_1): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField (Seq (Seq int));
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function valid
// ==================================================

// Uninterpreted function definitions
function  valid_1(Heap: HeapType, s_2: (Seq int), lenTiles: int, isStart: bool): bool;
function  valid'(Heap: HeapType, s_2: (Seq int), lenTiles: int, isStart: bool): bool;
axiom (forall Heap: HeapType, s_2: (Seq int), lenTiles: int, isStart: bool ::
  { valid_1(Heap, s_2, lenTiles, isStart) }
  valid_1(Heap, s_2, lenTiles, isStart) == valid'(Heap, s_2, lenTiles, isStart) && dummyFunction(valid#triggerStateless(s_2, lenTiles, isStart))
);
axiom (forall Heap: HeapType, s_2: (Seq int), lenTiles: int, isStart: bool ::
  { valid'(Heap, s_2, lenTiles, isStart) }
  dummyFunction(valid#triggerStateless(s_2, lenTiles, isStart))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Seq int), lenTiles: int, isStart: bool ::
  { state(Heap, Mask), valid_1(Heap, s_2, lenTiles, isStart) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> valid_1(Heap, s_2, lenTiles, isStart) == (if Seq#Length(s_2) == 0 then lenTiles == 0 else (if Seq#Length(s_2) == 1 then lenTiles == Seq#Index(s_2, 0) && (if isStart then Seq#Index(s_2, 0) == 0 || Seq#Index(s_2, 0) >= 3 else Seq#Index(s_2, 0) >= 3) else (if isStart then Seq#Index(s_2, 0) == 0 || Seq#Index(s_2, 0) >= 3 else Seq#Index(s_2, 0) >= 3) && (Seq#Index(s_2, 1) > 0 && valid'(Heap, Seq#Drop(s_2, 2), lenTiles - Seq#Index(s_2, 1) - Seq#Index(s_2, 0), false))))
);

// Framing axioms
function  valid#frame(frame: FrameType, s_2: (Seq int), lenTiles: int, isStart: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Seq int), lenTiles: int, isStart: bool ::
  { state(Heap, Mask), valid'(Heap, s_2, lenTiles, isStart) }
  state(Heap, Mask) ==> valid'(Heap, s_2, lenTiles, isStart) == valid#frame(EmptyFrame, s_2, lenTiles, isStart)
);

// Trigger function (controlling recursive postconditions)
function  valid#trigger_1(frame: FrameType, s_2: (Seq int), lenTiles: int, isStart: bool): bool;

// State-independent trigger function
function  valid#triggerStateless(s_2: (Seq int), lenTiles: int, isStart: bool): bool;

// Check contract well-formedness and postcondition
procedure valid#definedness(s_2: (Seq int), lenTiles: int, isStart: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|s| == 0 ? lenTiles == 0 : (|s| == 1 ? lenTiles == s[0] && (isStart ? s[0] == 0 || s[0] >= 3 : s[0] >= 3) : (isStart ? s[0] == 0 || s[0] >= 3 : s[0] >= 3) && (s[1] > 0 && valid(s[2..], lenTiles - s[1] - s[0], false))))
      if (Seq#Length(s_2) == 0) {
      } else {
        if (Seq#Length(s_2) == 1) {
          assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183189]"}
            0 < Seq#Length(s_2);
          if (lenTiles == Seq#Index(s_2, 0)) {
            if (isStart) {
              assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183190]"}
                0 < Seq#Length(s_2);
              if (!(Seq#Index(s_2, 0) == 0)) {
                assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183191]"}
                  0 < Seq#Length(s_2);
              }
            } else {
              assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183192]"}
                0 < Seq#Length(s_2);
            }
          }
        } else {
          if (isStart) {
            assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183193]"}
              0 < Seq#Length(s_2);
            if (!(Seq#Index(s_2, 0) == 0)) {
              assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183194]"}
                0 < Seq#Length(s_2);
            }
          } else {
            assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183195]"}
              0 < Seq#Length(s_2);
          }
          if ((if isStart then Seq#Index(s_2, 0) == 0 || Seq#Index(s_2, 0) >= 3 else Seq#Index(s_2, 0) >= 3)) {
            assert {:msg "  Function might not be well-formed. Index s[1] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183196]"}
              1 < Seq#Length(s_2);
            if (Seq#Index(s_2, 1) > 0) {
              assert {:msg "  Function might not be well-formed. Index s[1] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183197]"}
                1 < Seq#Length(s_2);
              assert {:msg "  Function might not be well-formed. Index s[0] into s might exceed sequence length. (sequence_incompletenesses.vpr@21.1--29.2) [183198]"}
                0 < Seq#Length(s_2);
              if (*) {
                // Stop execution
                assume false;
              } else {
                // Enable postcondition for recursive call
                assume valid#trigger_1(EmptyFrame, Seq#Drop(s_2, 2), lenTiles - Seq#Index(s_2, 1) - Seq#Index(s_2, 0), false);
              }
            }
          }
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(s_2) == 0 then lenTiles == 0 else (if Seq#Length(s_2) == 1 then lenTiles == Seq#Index(s_2, 0) && (if isStart then Seq#Index(s_2, 0) == 0 || Seq#Index(s_2, 0) >= 3 else Seq#Index(s_2, 0) >= 3) else (if isStart then Seq#Index(s_2, 0) == 0 || Seq#Index(s_2, 0) >= 3 else Seq#Index(s_2, 0) >= 3) && (Seq#Index(s_2, 1) > 0 && valid_1(Heap, Seq#Drop(s_2, 2), lenTiles - Seq#Index(s_2, 1) - Seq#Index(s_2, 0), false))));
}

// ==================================================
// Translation of method colourings0
// ==================================================

procedure colourings0(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j: int;
  var j_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (len_1(a_2): int) == 51;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@38.12--38.72) [183199]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_1): Ref) != (slot(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((slot(a_2, i_1): Ref)) && invRecv1((slot(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (slot(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (slot(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: slot(a, 0).val := Seq(Seq[Int]()) -- sequence_incompletenesses.vpr@40.3--40.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 0).val (sequence_incompletenesses.vpr@40.3--40.30) [183200]"}
      FullPerm == Mask[(slot(a_2, 0): Ref), val];
    Heap := Heap[(slot(a_2, 0): Ref), val:=Seq#Singleton((Seq#Empty(): Seq int))];
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 1).val := Seq(Seq(0, 1)) -- sequence_incompletenesses.vpr@44.3--44.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@44.3--44.33) [183201]"}
      FullPerm == Mask[(slot(a_2, 1): Ref), val];
    Heap := Heap[(slot(a_2, 1): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert valid(Seq[Int](), 0, false) -- sequence_incompletenesses.vpr@45.3--45.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of valid(Seq[Int](), 0, false)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion valid(Seq[Int](), 0, false) might not hold. (sequence_incompletenesses.vpr@45.10--45.30) [183202]"}
      valid_1(Heap, (Seq#Empty(): Seq int), 0, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 1).val[j], 1, true) }
  //     0 <= j && j < |slot(a, 1).val| ==>
  //     slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true)) -- sequence_incompletenesses.vpr@49.3--50.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 1).val[j], 1, true) } 0 <= j && j < |slot(a, 1).val| ==> slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true))
      if (*) {
        if (0 <= j) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@49.10--50.71) [183203]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
        }
        if (0 <= j && j < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@49.10--50.71) [183204]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@49.10--50.71) [183205]"}
            j >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@49.10--50.71) [183206]"}
            j < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
          if (Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@49.10--50.71) [183207]"}
              HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@49.10--50.71) [183208]"}
              j >= 0;
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@49.10--50.71) [183209]"}
              j < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && j_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion slot(a, 1).val[j] == Seq(0, 1) might not hold. (sequence_incompletenesses.vpr@49.10--50.71) [183210]"}
          Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)));
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 1).val[j], 1, true) might not hold. (sequence_incompletenesses.vpr@49.10--50.71) [183211]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), 1, true);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true) }
      0 <= j_2_1_1 && j_2_1_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]) ==> Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1))) && valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method colourings1
// ==================================================

procedure colourings1(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_2: int;
  var j_1: int;
  var j_7: int;
  var j_4_1: int;
  var j_3: int;
  var j_7_1: int;
  var n: int;
  var m_17: int;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  var m_19: int;
  var j_4: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_6_1: int;
  var perm: Perm;
  var n1_1: int;
  var j_14_1: int;
  var j_16_2: int;
  var n1_6: int;
  var j_11: int;
  var j_25: int;
  var oldSoln: (Seq int);
  var soln: (Seq int);
  var n1_5: int;
  var j_24_2: int;
  var j_26_2: int;
  var m_5_2: int;
  var j_30_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (len_1(a_2): int) == 51;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@58.12--58.72) [183212]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_1): Ref) != (slot(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((slot(a_2, i_1): Ref)) && invRecv2((slot(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (slot(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (slot(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: slot(a, 0).val := Seq(Seq[Int]()) -- sequence_incompletenesses.vpr@60.3--60.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 0).val (sequence_incompletenesses.vpr@60.3--60.30) [183213]"}
      FullPerm == Mask[(slot(a_2, 0): Ref), val];
    Heap := Heap[(slot(a_2, 0): Ref), val:=Seq#Singleton((Seq#Empty(): Seq int))];
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 1).val := Seq(Seq(0, 1)) -- sequence_incompletenesses.vpr@64.3--64.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@64.3--64.33) [183214]"}
      FullPerm == Mask[(slot(a_2, 1): Ref), val];
    Heap := Heap[(slot(a_2, 1): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert valid(Seq[Int](), 0, false) -- sequence_incompletenesses.vpr@65.3--65.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of valid(Seq[Int](), 0, false)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion valid(Seq[Int](), 0, false) might not hold. (sequence_incompletenesses.vpr@65.10--65.30) [183215]"}
      valid_1(Heap, (Seq#Empty(): Seq int), 0, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 1)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@66.3--66.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 1)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@66.10--66.32) [183216]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 1).val[j], 1, true) }
  //     0 <= j && j < |slot(a, 1).val| ==>
  //     slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true)) -- sequence_incompletenesses.vpr@67.3--68.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 1).val[j], 1, true) } 0 <= j && j < |slot(a, 1).val| ==> slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true))
      if (*) {
        if (0 <= j_2) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@67.10--68.71) [183217]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
        }
        if (0 <= j_2 && j_2 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@67.10--68.71) [183218]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@67.10--68.71) [183219]"}
            j_2 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@67.10--68.71) [183220]"}
            j_2 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
          if (Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@67.10--68.71) [183221]"}
              HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@67.10--68.71) [183222]"}
              j_2 >= 0;
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@67.10--68.71) [183223]"}
              j_2 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && j_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion slot(a, 1).val[j] == Seq(0, 1) might not hold. (sequence_incompletenesses.vpr@67.10--68.71) [183224]"}
          Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)));
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 1).val[j], 1, true) might not hold. (sequence_incompletenesses.vpr@67.10--68.71) [183225]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), 1, true);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true) }
      0 <= j_2_1_1 && j_2_1_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]) ==> Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1))) && valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 2).val := Seq(Seq(0, 2)) -- sequence_incompletenesses.vpr@70.3--70.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@70.3--70.33) [183226]"}
      FullPerm == Mask[(slot(a_2, 2): Ref), val];
    Heap := Heap[(slot(a_2, 2): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 2)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@71.3--71.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 2)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@71.10--71.32) [183227]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 2).val[j], 2, true) }
  //     0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true)) -- sequence_incompletenesses.vpr@72.3--73.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 2).val[j], 2, true) } 0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true))
      if (*) {
        if (0 <= j_7) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@72.10--73.37) [183228]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
        }
        if (0 <= j_7 && j_7 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@72.10--73.37) [183229]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might be negative. (sequence_incompletenesses.vpr@72.10--73.37) [183230]"}
            j_7 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might exceed sequence length. (sequence_incompletenesses.vpr@72.10--73.37) [183231]"}
            j_7 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_4_1 && j_4_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 2).val[j], 2, true) might not hold. (sequence_incompletenesses.vpr@72.10--73.37) [183232]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_4_1), 2, true);
      }
      assume false;
    }
    assume (forall j_5_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true) }
      0 <= j_5_1_1 && j_5_1_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 3).val := Seq(Seq(0, 3), Seq(3)) -- sequence_incompletenesses.vpr@75.3--75.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@75.3--75.40) [183233]"}
      FullPerm == Mask[(slot(a_2, 3): Ref), val];
    Heap := Heap[(slot(a_2, 3): Ref), val:=Seq#Append(Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(3))), Seq#Singleton(Seq#Singleton(3)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 3)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@76.3--76.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 3)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@76.10--76.32) [183234]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(3)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 3).val[j], 3, true) }
  //     0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true)) -- sequence_incompletenesses.vpr@77.3--78.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 3).val[j], 3, true) } 0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true))
      if (*) {
        if (0 <= j_3) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@77.10--78.37) [183235]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
        }
        if (0 <= j_3 && j_3 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@77.10--78.37) [183236]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might be negative. (sequence_incompletenesses.vpr@77.10--78.37) [183237]"}
            j_3 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might exceed sequence length. (sequence_incompletenesses.vpr@77.10--78.37) [183238]"}
            j_3 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_7_1 && j_7_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 3).val[j], 3, true) might not hold. (sequence_incompletenesses.vpr@77.10--78.37) [183239]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_7_1), 3, true);
      }
      assume false;
    }
    assume (forall j_8_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true) }
      0 <= j_8_1_1 && j_8_1_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: n := 4 -- sequence_incompletenesses.vpr@80.3--80.19
    n := 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (n <= 50) -- sequence_incompletenesses.vpr@81.3--120.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@82.13--82.30) [183240]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@82.13--82.30) [183241]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@83.13--83.25) [183242]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@84.13--84.73) [183243]"}
            (forall i_2_1: int, i_2_2: int ::
            { neverTriggered3(i_2_1), neverTriggered3(i_2_2) }
            (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(a_2): int))) && (0 <= i_2_2 && i_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_2_1): Ref) != (slot(a_2, i_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@84.13--84.73) [183244]"}
            (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_2_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            (0 <= i_2_1 && i_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((slot(a_2, i_2_1): Ref)) && invRecv3((slot(a_2, i_2_1): Ref)) == i_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv3(o_4) }
            (0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (slot(a_2, invRecv3(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (slot(a_2, invRecv3(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_17 && (m_17 < n && (0 <= j_9_1 && j_9_1 < Seq#Length(Heap[(slot(a_2, m_17): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not hold on entry. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@85.13--86.39) [183245]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_17): Ref), val], j_9_1), m_17, true);
          }
          assume false;
        }
        assume (forall m_1_1_1: int, j_10_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1) } { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) }
          0 <= m_1_1_1 && (m_1_1_1 < n && (0 <= j_10_1 && j_10_1 < Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc n;
    
    // -- Check definedness of invariant
      if (*) {
        assume 4 <= n;
        assume n <= 51;
        assume state(Heap, Mask);
        assume (len_1(a_2): int) == 51;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@84.13--84.73) [183246]"}
          (forall i_4_1: int, i_4_2: int ::
          
          (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len_1(a_2): int))) && (0 <= i_4_2 && i_4_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_4_1): Ref) != (slot(a_2, i_4_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((slot(a_2, i_4_1): Ref)) && invRecv4((slot(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            ((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (slot(a_2, invRecv4(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            0 <= i_4_1 && i_4_1 < (len_1(a_2): int) ==> (slot(a_2, i_4_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true))
          if (*) {
            if (0 <= m_19) {
              if (m_19 < n) {
                if (0 <= j_4) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@85.13--86.39) [183247]"}
                    HasDirectPerm(Mask, (slot(a_2, m_19): Ref), val);
                }
              }
            }
            if (0 <= m_19 && (m_19 < n && (0 <= j_4 && j_4 < Seq#Length(Heap[(slot(a_2, m_19): Ref), val])))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@85.13--86.39) [183248]"}
                HasDirectPerm(Mask, (slot(a_2, m_19): Ref), val);
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might be negative. (sequence_incompletenesses.vpr@85.13--86.39) [183249]"}
                j_4 >= 0;
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might exceed sequence length. (sequence_incompletenesses.vpr@85.13--86.39) [183250]"}
                j_4 < Seq#Length(Heap[(slot(a_2, m_19): Ref), val]);
              if (*) {
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall m_3: int, j_12_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2) } { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) }
          0 <= m_3 && (m_3 < n && (0 <= j_12_2 && j_12_2 < Seq#Length(Heap[(slot(a_2, m_3): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true)
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
        assume 4 <= n;
        assume n <= 51;
        assume (len_1(a_2): int) == 51;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@84.13--84.73) [183251]"}
          (forall i_5: int, i_5_1: int ::
          
          (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_5): Ref) != (slot(a_2, i_5_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((slot(a_2, i_5): Ref)) && invRecv5((slot(a_2, i_5): Ref)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (slot(a_2, invRecv5(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            0 <= i_5 && i_5 < (len_1(a_2): int) ==> (slot(a_2, i_5): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall m_4_1: int, j_13_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2) } { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) }
          0 <= m_4_1 && (m_4_1 < n && (0 <= j_13_2 && j_13_2 < Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume n <= 50;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: slot(a, n).val := Seq[Seq[Int]]() -- sequence_incompletenesses.vpr@88.5--88.27
            assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@88.5--88.27) [183252]"}
              FullPerm == Mask[(slot(a_2, n): Ref), val];
            Heap := Heap[(slot(a_2, n): Ref), val:=(Seq#Empty(): Seq (Seq int))];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := 0 -- sequence_incompletenesses.vpr@90.5--90.21
            i_6_1 := 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: while (i < |slot(a, n - 1).val|) -- sequence_incompletenesses.vpr@91.5--117.6
            
            // -- Before loop head
              
              // -- Exhale loop invariant before loop
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@92.17--92.42) [183253]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@92.17--92.42) [183254]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@93.17--93.29) [183255]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@94.17--94.49) [183256]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@94.17--94.49) [183257]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not hold on entry. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@95.17--95.35) [183258]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not hold on entry. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@96.17--96.37) [183259]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_1 == n - 1 && (0 <= j_14_1 && j_14_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not hold on entry. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@97.17--98.44) [183260]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1): Ref), val], j_14_1), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_15_1_1: int, n1_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1) }
                  n1_1_1 == n - 1 && (0 <= j_15_1_1 && j_15_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_16_2 && j_16_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not hold on entry. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@99.17--99.104) [183261]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_16_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_17_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1) }
                  0 <= j_17_1_1 && j_17_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
            
            // -- Havoc loop written variables (except locals)
              havoc i_6_1;
            
            // -- Check definedness of invariant
              if (*) {
                perm := 1 / 2;
                assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@92.17--92.42) [183262]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume state(Heap, Mask);
                assume 0 <= i_6_1;
                
                // -- Check definedness of i <= |slot(a, n - 1).val|
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@94.17--94.49) [183263]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of |slot(a, n).val| == i
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@96.17--96.37) [183264]"}
                    HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true))
                  if (*) {
                    if (n1_6 == n - 1) {
                      if (0 <= j_11) {
                        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@97.17--98.44) [183265]"}
                          HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      }
                    }
                    if (n1_6 == n - 1 && (0 <= j_11 && j_11 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n1).val (sequence_incompletenesses.vpr@97.17--98.44) [183266]"}
                        HasDirectPerm(Mask, (slot(a_2, n1_6): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might be negative. (sequence_incompletenesses.vpr@97.17--98.44) [183267]"}
                        j_11 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might exceed sequence length. (sequence_incompletenesses.vpr@97.17--98.44) [183268]"}
                        j_11 < Seq#Length(Heap[(slot(a_2, n1_6): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_19_1: int, n1_3: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1) }
                  n1_3 == n - 1 && (0 <= j_19_1 && j_19_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1), n - 1, true)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true))
                  if (*) {
                    if (0 <= j_25 && j_25 < i_6_1) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@99.17--99.104) [183269]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might be negative. (sequence_incompletenesses.vpr@99.17--99.104) [183270]"}
                        j_25 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might exceed sequence length. (sequence_incompletenesses.vpr@99.17--99.104) [183271]"}
                        j_25 < Seq#Length(Heap[(slot(a_2, n): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_21_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1) }
                  0 <= j_21_1 && j_21_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1), n, true)
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
                perm := 1 / 2;
                assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@92.17--92.42) [183272]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume 0 <= i_6_1;
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume (forall j_22_2: int, n1_4: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2) }
                  n1_4 == n - 1 && (0 <= j_22_2 && j_22_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2), n - 1, true)
                );
                assume state(Heap, Mask);
                assume (forall j_23_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1) }
                  0 <= j_23_1 && j_23_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1), n, true)
                );
                assume state(Heap, Mask);
                // Check and assume guard
                
                // -- Check definedness of i < |slot(a, n - 1).val|
                  assert {:msg "  While statement might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@91.11--91.32) [183273]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                
                // -- Translate loop body
                  
                  // -- Translating statement: oldSoln := slot(a, n - 1).val[i] -- sequence_incompletenesses.vpr@101.7--101.51
                    
                    // -- Check definedness of slot(a, n - 1).val[i]
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@101.7--101.51) [183274]"}
                        HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might be negative. (sequence_incompletenesses.vpr@101.7--101.51) [183275]"}
                        i_6_1 >= 0;
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might exceed sequence length. (sequence_incompletenesses.vpr@101.7--101.51) [183276]"}
                        i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                    oldSoln := Seq#Index(Heap[(slot(a_2, n - 1): Ref), val], i_6_1);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: if (oldSoln[0] == 0) -- sequence_incompletenesses.vpr@104.7--114.8
                    
                    // -- Check definedness of oldSoln[0] == 0
                      assert {:msg "  Conditional statement might fail. Index oldSoln[0] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@104.10--104.25) [183277]"}
                        0 < Seq#Length(oldSoln);
                    if (Seq#Index(oldSoln, 0) == 0) {
                      
                      // -- Translating statement: soln := oldSoln[1 := oldSoln[1] + 1] -- sequence_incompletenesses.vpr@105.9--105.43
                        
                        // -- Check definedness of oldSoln[1 := oldSoln[1] + 1]
                          assert {:msg "  Assignment might fail. Index oldSoln[1] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@105.9--105.43) [183278]"}
                            1 < Seq#Length(oldSoln);
                        soln := Seq#Append(Seq#Take(oldSoln, 1), Seq#Append(Seq#Singleton(Seq#Index(oldSoln, 1) + 1), Seq#Drop(oldSoln, 2)));
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@108.9--108.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@108.16--108.34) [183279]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    } else {
                      
                      // -- Translating statement: soln := Seq(0, 1) ++ oldSoln -- sequence_incompletenesses.vpr@110.9--110.36
                        soln := Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), oldSoln);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert soln[2..] == oldSoln -- sequence_incompletenesses.vpr@111.9--111.36
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        assert {:msg "  Assert might fail. Assertion soln[2..] == oldSoln might not hold. (sequence_incompletenesses.vpr@111.16--111.36) [183280]"}
                          Seq#Equal(Seq#Drop(soln, 2), oldSoln);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(oldSoln, n - 1, false) -- sequence_incompletenesses.vpr@112.9--112.40
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(oldSoln, n - 1, false)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(oldSoln, n - 1, false) might not hold. (sequence_incompletenesses.vpr@112.16--112.40) [183281]"}
                          valid_1(Heap, oldSoln, n - 1, false);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@113.9--113.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@113.16--113.34) [183282]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    }
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: slot(a, n).val := slot(a, n).val ++ Seq(soln) -- sequence_incompletenesses.vpr@115.7--115.50
                    
                    // -- Check definedness of slot(a, n).val ++ Seq(soln)
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@115.7--115.50) [183283]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@115.7--115.50) [183284]"}
                      FullPerm == Mask[(slot(a_2, n): Ref), val];
                    Heap := Heap[(slot(a_2, n): Ref), val:=Seq#Append(Heap[(slot(a_2, n): Ref), val], Seq#Singleton(soln))];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: i := i + 1 -- sequence_incompletenesses.vpr@116.7--116.17
                    i_6_1 := i_6_1 + 1;
                    assume state(Heap, Mask);
                // Exhale invariant
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@92.17--92.42) [183285]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@92.17--92.42) [183286]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@93.17--93.29) [183287]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@94.17--94.49) [183288]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@94.17--94.49) [183289]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not be preserved. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@95.17--95.35) [183290]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not be preserved. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@96.17--96.37) [183291]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_5 == n - 1 && (0 <= j_24_2 && j_24_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not be preserved. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@97.17--98.44) [183292]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_5): Ref), val], j_24_2), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_25_1_1: int, n1_6_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1) }
                  n1_6_1 == n - 1 && (0 <= j_25_1_1 && j_25_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_26_2 && j_26_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not be preserved. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@99.17--99.104) [183293]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_26_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_27_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1) }
                  0 <= j_27_1_1 && j_27_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Terminate execution
                assume false;
              }
            
            // -- Inhale loop invariant after loop, and assume guard
              assume !(i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]));
              assume state(Heap, Mask);
              perm := 1 / 2;
              assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@92.17--92.42) [183294]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
              Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
              assume state(Heap, Mask);
              assume (len_1(a_2): int) == 51;
              assume 0 <= i_6_1;
              assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
              perm := FullPerm;
              assume (slot(a_2, n): Ref) != null;
              Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
              assume state(Heap, Mask);
              assume (forall j_28_2: int, n1_7: int ::
                { Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2) }
                n1_7 == n - 1 && (0 <= j_28_2 && j_28_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2), n - 1, true)
              );
              assume state(Heap, Mask);
              assume (forall j_29_1: int ::
                { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1) }
                0 <= j_29_1 && j_29_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1), n, true)
              );
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: n := n + 1 -- sequence_incompletenesses.vpr@119.5--119.15
            n := n + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@82.13--82.30) [183295]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@82.13--82.30) [183296]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@83.13--83.25) [183297]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@84.13--84.73) [183298]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered6(i_7_1), neverTriggered6(i_7_2) }
            (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < (len_1(a_2): int))) && (0 <= i_7_2 && i_7_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_7_1): Ref) != (slot(a_2, i_7_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@84.13--84.73) [183299]"}
            (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            0 <= i_7_1 && i_7_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_7_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            (0 <= i_7_1 && i_7_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((slot(a_2, i_7_1): Ref)) && invRecv6((slot(a_2, i_7_1): Ref)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            (0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (slot(a_2, invRecv6(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (slot(a_2, invRecv6(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_5_2 && (m_5_2 < n && (0 <= j_30_1 && j_30_1 < Seq#Length(Heap[(slot(a_2, m_5_2): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not be preserved. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@85.13--86.39) [183300]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_5_2): Ref), val], j_30_1), m_5_2, true);
          }
          assume false;
        }
        assume (forall m_6_1_1: int, j_31_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1) } { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) }
          0 <= m_6_1_1 && (m_6_1_1 < n && (0 <= j_31_1 && j_31_1 < Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(n <= 50);
      assume state(Heap, Mask);
      assume 4 <= n;
      assume n <= 51;
      assume (len_1(a_2): int) == 51;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@84.13--84.73) [183301]"}
        (forall i_8_2: int, i_8_3: int ::
        
        (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < (len_1(a_2): int))) && (0 <= i_8_3 && i_8_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_8_2): Ref) != (slot(a_2, i_8_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          (0 <= i_8_2 && i_8_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((slot(a_2, i_8_2): Ref)) && invRecv7((slot(a_2, i_8_2): Ref)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv7(o_4) }
          ((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (slot(a_2, invRecv7(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          0 <= i_8_2 && i_8_2 < (len_1(a_2): int) ==> (slot(a_2, i_8_2): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv7(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall m_7_2: int, j_32_1: int ::
        { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1) } { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) }
        0 <= m_7_2 && (m_7_2 < n && (0 <= j_32_1 && j_32_1 < Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method colourings2
// ==================================================

procedure colourings2(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_21: int;
  var j_1: int;
  var j_12: int;
  var j_4_1: int;
  var j_13: int;
  var j_7_1: int;
  var n: int;
  var m_17: int;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  var m_20: int;
  var j_15: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_6_1: int;
  var perm: Perm;
  var n1_1: int;
  var j_14_1: int;
  var j_16_2: int;
  var n1_8: int;
  var j_16: int;
  var j_22: int;
  var oldSoln: (Seq int);
  var soln: (Seq int);
  var n1_5: int;
  var j_24_2: int;
  var j_26_2: int;
  var m_5_2: int;
  var j_30_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (len_1(a_2): int) == 51;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { slot(a, i).val } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@129.12--129.88) [183302]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_1): Ref) != (slot(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { Heap[(slot(a_2, i_1): Ref), val] }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange8((slot(a_2, i_1): Ref)) && invRecv8((slot(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (slot(a_2, invRecv8(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { Heap[(slot(a_2, i_1): Ref), val] }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (slot(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: slot(a, 0).val := Seq(Seq[Int]()) -- sequence_incompletenesses.vpr@131.3--131.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 0).val (sequence_incompletenesses.vpr@131.3--131.30) [183303]"}
      FullPerm == Mask[(slot(a_2, 0): Ref), val];
    Heap := Heap[(slot(a_2, 0): Ref), val:=Seq#Singleton((Seq#Empty(): Seq int))];
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 1).val := Seq(Seq(0, 1)) -- sequence_incompletenesses.vpr@135.3--135.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@135.3--135.33) [183304]"}
      FullPerm == Mask[(slot(a_2, 1): Ref), val];
    Heap := Heap[(slot(a_2, 1): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert valid(Seq[Int](), 0, false) -- sequence_incompletenesses.vpr@136.3--136.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of valid(Seq[Int](), 0, false)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion valid(Seq[Int](), 0, false) might not hold. (sequence_incompletenesses.vpr@136.10--136.30) [183305]"}
      valid_1(Heap, (Seq#Empty(): Seq int), 0, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 1)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@137.3--137.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 1)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@137.10--137.32) [183306]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 1).val[j], 1, true) }
  //     0 <= j && j < |slot(a, 1).val| ==>
  //     slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true)) -- sequence_incompletenesses.vpr@138.3--139.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 1).val[j], 1, true) } 0 <= j && j < |slot(a, 1).val| ==> slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true))
      if (*) {
        if (0 <= j_21) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@138.10--139.71) [183307]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
        }
        if (0 <= j_21 && j_21 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@138.10--139.71) [183308]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@138.10--139.71) [183309]"}
            j_21 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@138.10--139.71) [183310]"}
            j_21 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
          if (Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_21), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@138.10--139.71) [183311]"}
              HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@138.10--139.71) [183312]"}
              j_21 >= 0;
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@138.10--139.71) [183313]"}
              j_21 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && j_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion slot(a, 1).val[j] == Seq(0, 1) might not hold. (sequence_incompletenesses.vpr@138.10--139.71) [183314]"}
          Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)));
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 1).val[j], 1, true) might not hold. (sequence_incompletenesses.vpr@138.10--139.71) [183315]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), 1, true);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true) }
      0 <= j_2_1_1 && j_2_1_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]) ==> Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1))) && valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 2).val := Seq(Seq(0, 2)) -- sequence_incompletenesses.vpr@141.3--141.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@141.3--141.33) [183316]"}
      FullPerm == Mask[(slot(a_2, 2): Ref), val];
    Heap := Heap[(slot(a_2, 2): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 2)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@142.3--142.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 2)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@142.10--142.32) [183317]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 2).val[j], 2, true) }
  //     0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true)) -- sequence_incompletenesses.vpr@143.3--144.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 2).val[j], 2, true) } 0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true))
      if (*) {
        if (0 <= j_12) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@143.10--144.37) [183318]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
        }
        if (0 <= j_12 && j_12 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@143.10--144.37) [183319]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might be negative. (sequence_incompletenesses.vpr@143.10--144.37) [183320]"}
            j_12 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might exceed sequence length. (sequence_incompletenesses.vpr@143.10--144.37) [183321]"}
            j_12 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_4_1 && j_4_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 2).val[j], 2, true) might not hold. (sequence_incompletenesses.vpr@143.10--144.37) [183322]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_4_1), 2, true);
      }
      assume false;
    }
    assume (forall j_5_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true) }
      0 <= j_5_1_1 && j_5_1_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 3).val := Seq(Seq(0, 3), Seq(3)) -- sequence_incompletenesses.vpr@146.3--146.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@146.3--146.40) [183323]"}
      FullPerm == Mask[(slot(a_2, 3): Ref), val];
    Heap := Heap[(slot(a_2, 3): Ref), val:=Seq#Append(Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(3))), Seq#Singleton(Seq#Singleton(3)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 3)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@147.3--147.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 3)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@147.10--147.32) [183324]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(3)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 3).val[j], 3, true) }
  //     0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true)) -- sequence_incompletenesses.vpr@148.3--149.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 3).val[j], 3, true) } 0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true))
      if (*) {
        if (0 <= j_13) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@148.10--149.37) [183325]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
        }
        if (0 <= j_13 && j_13 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@148.10--149.37) [183326]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might be negative. (sequence_incompletenesses.vpr@148.10--149.37) [183327]"}
            j_13 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might exceed sequence length. (sequence_incompletenesses.vpr@148.10--149.37) [183328]"}
            j_13 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_7_1 && j_7_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 3).val[j], 3, true) might not hold. (sequence_incompletenesses.vpr@148.10--149.37) [183329]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_7_1), 3, true);
      }
      assume false;
    }
    assume (forall j_8_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true) }
      0 <= j_8_1_1 && j_8_1_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: n := 4 -- sequence_incompletenesses.vpr@151.3--151.19
    n := 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (n <= 50) -- sequence_incompletenesses.vpr@152.3--191.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@153.13--153.30) [183330]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@153.13--153.30) [183331]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@154.13--154.25) [183332]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@155.13--155.73) [183333]"}
            (forall i_2_1: int, i_2_2: int ::
            { neverTriggered9(i_2_1), neverTriggered9(i_2_2) }
            (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(a_2): int))) && (0 <= i_2_2 && i_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_2_1): Ref) != (slot(a_2, i_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@155.13--155.73) [183334]"}
            (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_2_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            (0 <= i_2_1 && i_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange9((slot(a_2, i_2_1): Ref)) && invRecv9((slot(a_2, i_2_1): Ref)) == i_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            (0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> (slot(a_2, invRecv9(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> (slot(a_2, invRecv9(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_17 && (m_17 < n && (0 <= j_9_1 && j_9_1 < Seq#Length(Heap[(slot(a_2, m_17): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not hold on entry. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@156.13--157.39) [183335]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_17): Ref), val], j_9_1), m_17, true);
          }
          assume false;
        }
        assume (forall m_1_1_1: int, j_10_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1) } { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) }
          0 <= m_1_1_1 && (m_1_1_1 < n && (0 <= j_10_1 && j_10_1 < Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc n;
    
    // -- Check definedness of invariant
      if (*) {
        assume 4 <= n;
        assume n <= 51;
        assume state(Heap, Mask);
        assume (len_1(a_2): int) == 51;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@155.13--155.73) [183336]"}
          (forall i_4_1: int, i_4_2: int ::
          
          (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len_1(a_2): int))) && (0 <= i_4_2 && i_4_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_4_1): Ref) != (slot(a_2, i_4_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange10((slot(a_2, i_4_1): Ref)) && invRecv10((slot(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            ((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (slot(a_2, invRecv10(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            0 <= i_4_1 && i_4_1 < (len_1(a_2): int) ==> (slot(a_2, i_4_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv10(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true))
          if (*) {
            if (0 <= m_20) {
              if (m_20 < n) {
                if (0 <= j_15) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@156.13--157.39) [183337]"}
                    HasDirectPerm(Mask, (slot(a_2, m_20): Ref), val);
                }
              }
            }
            if (0 <= m_20 && (m_20 < n && (0 <= j_15 && j_15 < Seq#Length(Heap[(slot(a_2, m_20): Ref), val])))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@156.13--157.39) [183338]"}
                HasDirectPerm(Mask, (slot(a_2, m_20): Ref), val);
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might be negative. (sequence_incompletenesses.vpr@156.13--157.39) [183339]"}
                j_15 >= 0;
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might exceed sequence length. (sequence_incompletenesses.vpr@156.13--157.39) [183340]"}
                j_15 < Seq#Length(Heap[(slot(a_2, m_20): Ref), val]);
              if (*) {
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall m_3: int, j_12_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2) } { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) }
          0 <= m_3 && (m_3 < n && (0 <= j_12_2 && j_12_2 < Seq#Length(Heap[(slot(a_2, m_3): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true)
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
        assume 4 <= n;
        assume n <= 51;
        assume (len_1(a_2): int) == 51;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@155.13--155.73) [183341]"}
          (forall i_5: int, i_5_1: int ::
          
          (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_5): Ref) != (slot(a_2, i_5_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange11((slot(a_2, i_5): Ref)) && invRecv11((slot(a_2, i_5): Ref)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            ((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (slot(a_2, invRecv11(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            0 <= i_5 && i_5 < (len_1(a_2): int) ==> (slot(a_2, i_5): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv11(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall m_4_1: int, j_13_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2) } { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) }
          0 <= m_4_1 && (m_4_1 < n && (0 <= j_13_2 && j_13_2 < Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume n <= 50;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: slot(a, n).val := Seq[Seq[Int]]() -- sequence_incompletenesses.vpr@159.5--159.27
            assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@159.5--159.27) [183342]"}
              FullPerm == Mask[(slot(a_2, n): Ref), val];
            Heap := Heap[(slot(a_2, n): Ref), val:=(Seq#Empty(): Seq (Seq int))];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := 0 -- sequence_incompletenesses.vpr@161.5--161.21
            i_6_1 := 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: while (i < |slot(a, n - 1).val|) -- sequence_incompletenesses.vpr@162.5--188.6
            
            // -- Before loop head
              
              // -- Exhale loop invariant before loop
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@163.17--163.42) [183343]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@163.17--163.42) [183344]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@164.17--164.29) [183345]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@165.17--165.49) [183346]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@165.17--165.49) [183347]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not hold on entry. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@166.17--166.35) [183348]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not hold on entry. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@167.17--167.37) [183349]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_1 == n - 1 && (0 <= j_14_1 && j_14_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not hold on entry. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@168.17--169.42) [183350]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1): Ref), val], j_14_1), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_15_1_1: int, n1_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1) }
                  n1_1_1 == n - 1 && (0 <= j_15_1_1 && j_15_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_16_2 && j_16_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not hold on entry. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@170.17--170.104) [183351]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_16_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_17_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1) }
                  0 <= j_17_1_1 && j_17_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
            
            // -- Havoc loop written variables (except locals)
              havoc i_6_1;
            
            // -- Check definedness of invariant
              if (*) {
                perm := 1 / 2;
                assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@163.17--163.42) [183352]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume state(Heap, Mask);
                assume 0 <= i_6_1;
                
                // -- Check definedness of i <= |slot(a, n - 1).val|
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@165.17--165.49) [183353]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of |slot(a, n).val| == i
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@167.17--167.37) [183354]"}
                    HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true))
                  if (*) {
                    if (n1_8 == n - 1) {
                      if (0 <= j_16) {
                        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@168.17--169.42) [183355]"}
                          HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      }
                    }
                    if (n1_8 == n - 1 && (0 <= j_16 && j_16 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n1).val (sequence_incompletenesses.vpr@168.17--169.42) [183356]"}
                        HasDirectPerm(Mask, (slot(a_2, n1_8): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might be negative. (sequence_incompletenesses.vpr@168.17--169.42) [183357]"}
                        j_16 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might exceed sequence length. (sequence_incompletenesses.vpr@168.17--169.42) [183358]"}
                        j_16 < Seq#Length(Heap[(slot(a_2, n1_8): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_19_1: int, n1_3: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1) }
                  n1_3 == n - 1 && (0 <= j_19_1 && j_19_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1), n - 1, true)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true))
                  if (*) {
                    if (0 <= j_22 && j_22 < i_6_1) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@170.17--170.104) [183359]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might be negative. (sequence_incompletenesses.vpr@170.17--170.104) [183360]"}
                        j_22 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might exceed sequence length. (sequence_incompletenesses.vpr@170.17--170.104) [183361]"}
                        j_22 < Seq#Length(Heap[(slot(a_2, n): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_21_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1) }
                  0 <= j_21_1 && j_21_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1), n, true)
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
                perm := 1 / 2;
                assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@163.17--163.42) [183362]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume 0 <= i_6_1;
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume (forall j_22_2: int, n1_4: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2) }
                  n1_4 == n - 1 && (0 <= j_22_2 && j_22_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2), n - 1, true)
                );
                assume state(Heap, Mask);
                assume (forall j_23_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1) }
                  0 <= j_23_1 && j_23_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1), n, true)
                );
                assume state(Heap, Mask);
                // Check and assume guard
                
                // -- Check definedness of i < |slot(a, n - 1).val|
                  assert {:msg "  While statement might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@162.11--162.32) [183363]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                
                // -- Translate loop body
                  
                  // -- Translating statement: oldSoln := slot(a, n - 1).val[i] -- sequence_incompletenesses.vpr@172.7--172.51
                    
                    // -- Check definedness of slot(a, n - 1).val[i]
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@172.7--172.51) [183364]"}
                        HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might be negative. (sequence_incompletenesses.vpr@172.7--172.51) [183365]"}
                        i_6_1 >= 0;
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might exceed sequence length. (sequence_incompletenesses.vpr@172.7--172.51) [183366]"}
                        i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                    oldSoln := Seq#Index(Heap[(slot(a_2, n - 1): Ref), val], i_6_1);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: if (oldSoln[0] == 0) -- sequence_incompletenesses.vpr@175.7--185.8
                    
                    // -- Check definedness of oldSoln[0] == 0
                      assert {:msg "  Conditional statement might fail. Index oldSoln[0] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@175.10--175.25) [183367]"}
                        0 < Seq#Length(oldSoln);
                    if (Seq#Index(oldSoln, 0) == 0) {
                      
                      // -- Translating statement: soln := oldSoln[1 := oldSoln[1] + 1] -- sequence_incompletenesses.vpr@176.9--176.43
                        
                        // -- Check definedness of oldSoln[1 := oldSoln[1] + 1]
                          assert {:msg "  Assignment might fail. Index oldSoln[1] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@176.9--176.43) [183368]"}
                            1 < Seq#Length(oldSoln);
                        soln := Seq#Append(Seq#Take(oldSoln, 1), Seq#Append(Seq#Singleton(Seq#Index(oldSoln, 1) + 1), Seq#Drop(oldSoln, 2)));
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert soln[2..] == oldSoln[2..] -- sequence_incompletenesses.vpr@177.9--177.41
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        assert {:msg "  Assert might fail. Assertion soln[2..] == oldSoln[2..] might not hold. (sequence_incompletenesses.vpr@177.16--177.41) [183369]"}
                          Seq#Equal(Seq#Drop(soln, 2), Seq#Drop(oldSoln, 2));
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@178.9--178.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@178.16--178.34) [183370]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    } else {
                      
                      // -- Translating statement: soln := Seq(0, 1) ++ oldSoln -- sequence_incompletenesses.vpr@180.9--180.36
                        soln := Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), oldSoln);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(oldSoln, n - 1, false) -- sequence_incompletenesses.vpr@182.9--182.40
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(oldSoln, n - 1, false)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(oldSoln, n - 1, false) might not hold. (sequence_incompletenesses.vpr@182.16--182.40) [183371]"}
                          valid_1(Heap, oldSoln, n - 1, false);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@184.9--184.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@184.16--184.34) [183372]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    }
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: slot(a, n).val := slot(a, n).val ++ Seq(soln) -- sequence_incompletenesses.vpr@186.7--186.50
                    
                    // -- Check definedness of slot(a, n).val ++ Seq(soln)
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@186.7--186.50) [183373]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@186.7--186.50) [183374]"}
                      FullPerm == Mask[(slot(a_2, n): Ref), val];
                    Heap := Heap[(slot(a_2, n): Ref), val:=Seq#Append(Heap[(slot(a_2, n): Ref), val], Seq#Singleton(soln))];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: i := i + 1 -- sequence_incompletenesses.vpr@187.7--187.17
                    i_6_1 := i_6_1 + 1;
                    assume state(Heap, Mask);
                // Exhale invariant
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@163.17--163.42) [183375]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@163.17--163.42) [183376]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@164.17--164.29) [183377]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@165.17--165.49) [183378]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@165.17--165.49) [183379]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not be preserved. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@166.17--166.35) [183380]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not be preserved. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@167.17--167.37) [183381]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_5 == n - 1 && (0 <= j_24_2 && j_24_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not be preserved. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@168.17--169.42) [183382]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_5): Ref), val], j_24_2), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_25_1_1: int, n1_6_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1) }
                  n1_6_1 == n - 1 && (0 <= j_25_1_1 && j_25_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_26_2 && j_26_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not be preserved. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@170.17--170.104) [183383]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_26_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_27_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1) }
                  0 <= j_27_1_1 && j_27_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Terminate execution
                assume false;
              }
            
            // -- Inhale loop invariant after loop, and assume guard
              assume !(i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]));
              assume state(Heap, Mask);
              perm := 1 / 2;
              assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@163.17--163.42) [183384]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
              Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
              assume state(Heap, Mask);
              assume (len_1(a_2): int) == 51;
              assume 0 <= i_6_1;
              assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
              perm := FullPerm;
              assume (slot(a_2, n): Ref) != null;
              Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
              assume state(Heap, Mask);
              assume (forall j_28_2: int, n1_7: int ::
                { Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2) }
                n1_7 == n - 1 && (0 <= j_28_2 && j_28_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2), n - 1, true)
              );
              assume state(Heap, Mask);
              assume (forall j_29_1: int ::
                { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1) }
                0 <= j_29_1 && j_29_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1), n, true)
              );
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: n := n + 1 -- sequence_incompletenesses.vpr@190.5--190.15
            n := n + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@153.13--153.30) [183385]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@153.13--153.30) [183386]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@154.13--154.25) [183387]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@155.13--155.73) [183388]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered12(i_7_1), neverTriggered12(i_7_2) }
            (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < (len_1(a_2): int))) && (0 <= i_7_2 && i_7_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_7_1): Ref) != (slot(a_2, i_7_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@155.13--155.73) [183389]"}
            (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            0 <= i_7_1 && i_7_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_7_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            (0 <= i_7_1 && i_7_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange12((slot(a_2, i_7_1): Ref)) && invRecv12((slot(a_2, i_7_1): Ref)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> (slot(a_2, invRecv12(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> (slot(a_2, invRecv12(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_5_2 && (m_5_2 < n && (0 <= j_30_1 && j_30_1 < Seq#Length(Heap[(slot(a_2, m_5_2): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not be preserved. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@156.13--157.39) [183390]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_5_2): Ref), val], j_30_1), m_5_2, true);
          }
          assume false;
        }
        assume (forall m_6_1_1: int, j_31_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1) } { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) }
          0 <= m_6_1_1 && (m_6_1_1 < n && (0 <= j_31_1 && j_31_1 < Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(n <= 50);
      assume state(Heap, Mask);
      assume 4 <= n;
      assume n <= 51;
      assume (len_1(a_2): int) == 51;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@155.13--155.73) [183391]"}
        (forall i_8_2: int, i_8_3: int ::
        
        (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < (len_1(a_2): int))) && (0 <= i_8_3 && i_8_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_8_2): Ref) != (slot(a_2, i_8_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          (0 <= i_8_2 && i_8_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange13((slot(a_2, i_8_2): Ref)) && invRecv13((slot(a_2, i_8_2): Ref)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv13(o_4) }
          ((0 <= invRecv13(o_4) && invRecv13(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (slot(a_2, invRecv13(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          0 <= i_8_2 && i_8_2 < (len_1(a_2): int) ==> (slot(a_2, i_8_2): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv13(o_4) && invRecv13(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv13(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall m_7_2: int, j_32_1: int ::
        { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1) } { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) }
        0 <= m_7_2 && (m_7_2 < n && (0 <= j_32_1 && j_32_1 < Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method colourings
// ==================================================

procedure colourings(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_23: int;
  var j_1: int;
  var j_17: int;
  var j_4_1: int;
  var j_30: int;
  var j_7_1: int;
  var n: int;
  var m_17: int;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  var m_21: int;
  var j_27: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_6_1: int;
  var perm: Perm;
  var n1_1: int;
  var j_14_1: int;
  var j_16_2: int;
  var n1_9: int;
  var j_24: int;
  var j_28: int;
  var oldSoln: (Seq int);
  var soln: (Seq int);
  var n1_5: int;
  var j_24_2: int;
  var j_26_2: int;
  var m_5_2: int;
  var j_30_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (len_1(a_2): int) == 51;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@198.12--198.72) [183392]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_1): Ref) != (slot(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange14((slot(a_2, i_1): Ref)) && invRecv14((slot(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (slot(a_2, invRecv14(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (slot(a_2, i_1): Ref) } { (slot(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (slot(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv14(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: slot(a, 0).val := Seq(Seq[Int]()) -- sequence_incompletenesses.vpr@200.3--200.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 0).val (sequence_incompletenesses.vpr@200.3--200.30) [183393]"}
      FullPerm == Mask[(slot(a_2, 0): Ref), val];
    Heap := Heap[(slot(a_2, 0): Ref), val:=Seq#Singleton((Seq#Empty(): Seq int))];
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 1).val := Seq(Seq(0, 1)) -- sequence_incompletenesses.vpr@204.3--204.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@204.3--204.33) [183394]"}
      FullPerm == Mask[(slot(a_2, 1): Ref), val];
    Heap := Heap[(slot(a_2, 1): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert valid(Seq[Int](), 0, false) -- sequence_incompletenesses.vpr@205.3--205.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of valid(Seq[Int](), 0, false)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion valid(Seq[Int](), 0, false) might not hold. (sequence_incompletenesses.vpr@205.10--205.30) [183395]"}
      valid_1(Heap, (Seq#Empty(): Seq int), 0, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 1)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@206.3--206.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 1)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@206.10--206.32) [183396]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 1).val[j], 1, true) }
  //     0 <= j && j < |slot(a, 1).val| ==>
  //     slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true)) -- sequence_incompletenesses.vpr@207.3--208.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 1).val[j], 1, true) } 0 <= j && j < |slot(a, 1).val| ==> slot(a, 1).val[j] == Seq(0, 1) && valid(slot(a, 1).val[j], 1, true))
      if (*) {
        if (0 <= j_23) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@207.10--208.71) [183397]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
        }
        if (0 <= j_23 && j_23 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@207.10--208.71) [183398]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@207.10--208.71) [183399]"}
            j_23 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@207.10--208.71) [183400]"}
            j_23 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
          if (Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_23), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 1).val (sequence_incompletenesses.vpr@207.10--208.71) [183401]"}
              HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 1): Ref), val);
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might be negative. (sequence_incompletenesses.vpr@207.10--208.71) [183402]"}
              j_23 >= 0;
            assert {:msg "  Assert might fail. Index slot(a, 1).val[j] into slot(a, 1).val might exceed sequence length. (sequence_incompletenesses.vpr@207.10--208.71) [183403]"}
              j_23 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]);
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && j_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion slot(a, 1).val[j] == Seq(0, 1) might not hold. (sequence_incompletenesses.vpr@207.10--208.71) [183404]"}
          Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1)));
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 1).val[j], 1, true) might not hold. (sequence_incompletenesses.vpr@207.10--208.71) [183405]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_1), 1, true);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true) }
      0 <= j_2_1_1 && j_2_1_1 < Seq#Length(Heap[(slot(a_2, 1): Ref), val]) ==> Seq#Equal(Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), Seq#Append(Seq#Singleton(0), Seq#Singleton(1))) && valid_1(Heap, Seq#Index(Heap[(slot(a_2, 1): Ref), val], j_2_1_1), 1, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 2).val := Seq(Seq(0, 2)) -- sequence_incompletenesses.vpr@210.3--210.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@210.3--210.33) [183406]"}
      FullPerm == Mask[(slot(a_2, 2): Ref), val];
    Heap := Heap[(slot(a_2, 2): Ref), val:=Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 2)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@211.3--211.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 2)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@211.10--211.32) [183407]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(2)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 2).val[j], 2, true) }
  //     0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true)) -- sequence_incompletenesses.vpr@212.3--213.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 2).val[j], 2, true) } 0 <= j && j < |slot(a, 2).val| ==> valid(slot(a, 2).val[j], 2, true))
      if (*) {
        if (0 <= j_17) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@212.10--213.37) [183408]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
        }
        if (0 <= j_17 && j_17 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 2).val (sequence_incompletenesses.vpr@212.10--213.37) [183409]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 2): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might be negative. (sequence_incompletenesses.vpr@212.10--213.37) [183410]"}
            j_17 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 2).val[j] into slot(a, 2).val might exceed sequence length. (sequence_incompletenesses.vpr@212.10--213.37) [183411]"}
            j_17 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_4_1 && j_4_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 2).val[j], 2, true) might not hold. (sequence_incompletenesses.vpr@212.10--213.37) [183412]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_4_1), 2, true);
      }
      assume false;
    }
    assume (forall j_5_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true) }
      0 <= j_5_1_1 && j_5_1_1 < Seq#Length(Heap[(slot(a_2, 2): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 2): Ref), val], j_5_1_1), 2, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: slot(a, 3).val := Seq(Seq(0, 3), Seq(3)) -- sequence_incompletenesses.vpr@215.3--215.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@215.3--215.40) [183413]"}
      FullPerm == Mask[(slot(a_2, 3): Ref), val];
    Heap := Heap[(slot(a_2, 3): Ref), val:=Seq#Append(Seq#Singleton(Seq#Append(Seq#Singleton(0), Seq#Singleton(3))), Seq#Singleton(Seq#Singleton(3)))];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(0, 3)[2..] == Seq[Int]() -- sequence_incompletenesses.vpr@216.3--216.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(0, 3)[2..] == Seq[Int]() might not hold. (sequence_incompletenesses.vpr@216.10--216.32) [183414]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(0), Seq#Singleton(3)), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { valid(slot(a, 3).val[j], 3, true) }
  //     0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true)) -- sequence_incompletenesses.vpr@217.3--218.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { valid(slot(a, 3).val[j], 3, true) } 0 <= j && j < |slot(a, 3).val| ==> valid(slot(a, 3).val[j], 3, true))
      if (*) {
        if (0 <= j_30) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@217.10--218.37) [183415]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
        }
        if (0 <= j_30 && j_30 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access slot(a, 3).val (sequence_incompletenesses.vpr@217.10--218.37) [183416]"}
            HasDirectPerm(ExhaleWellDef0Mask, (slot(a_2, 3): Ref), val);
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might be negative. (sequence_incompletenesses.vpr@217.10--218.37) [183417]"}
            j_30 >= 0;
          assert {:msg "  Assert might fail. Index slot(a, 3).val[j] into slot(a, 3).val might exceed sequence length. (sequence_incompletenesses.vpr@217.10--218.37) [183418]"}
            j_30 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_7_1 && j_7_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val])) {
        assert {:msg "  Assert might fail. Assertion valid(slot(a, 3).val[j], 3, true) might not hold. (sequence_incompletenesses.vpr@217.10--218.37) [183419]"}
          valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_7_1), 3, true);
      }
      assume false;
    }
    assume (forall j_8_1_1: int ::
      { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true) }
      0 <= j_8_1_1 && j_8_1_1 < Seq#Length(Heap[(slot(a_2, 3): Ref), val]) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, 3): Ref), val], j_8_1_1), 3, true)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: n := 4 -- sequence_incompletenesses.vpr@220.3--220.19
    n := 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (n <= 50) -- sequence_incompletenesses.vpr@221.3--259.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@222.13--222.30) [183420]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not hold on entry. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@222.13--222.30) [183421]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@223.13--223.25) [183422]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@224.13--224.73) [183423]"}
            (forall i_2_1: int, i_2_2: int ::
            { neverTriggered15(i_2_1), neverTriggered15(i_2_2) }
            (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(a_2): int))) && (0 <= i_2_2 && i_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_2_1): Ref) != (slot(a_2, i_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not hold on entry. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@224.13--224.73) [183424]"}
            (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_2_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_2_1: int ::
            { (slot(a_2, i_2_1): Ref) } { (slot(a_2, i_2_1): Ref) }
            (0 <= i_2_1 && i_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange15((slot(a_2, i_2_1): Ref)) && invRecv15((slot(a_2, i_2_1): Ref)) == i_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            (0 <= invRecv15(o_4) && invRecv15(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> (slot(a_2, invRecv15(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv15(o_4) && invRecv15(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> (slot(a_2, invRecv15(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv15(o_4) && invRecv15(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_17 && (m_17 < n && (0 <= j_9_1 && j_9_1 < Seq#Length(Heap[(slot(a_2, m_17): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not hold on entry. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@225.13--226.39) [183425]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_17): Ref), val], j_9_1), m_17, true);
          }
          assume false;
        }
        assume (forall m_1_1_1: int, j_10_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1) } { Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true) }
          0 <= m_1_1_1 && (m_1_1_1 < n && (0 <= j_10_1 && j_10_1 < Seq#Length(Heap[(slot(a_2, m_1_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_1_1_1): Ref), val], j_10_1), m_1_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc n;
    
    // -- Check definedness of invariant
      if (*) {
        assume 4 <= n;
        assume n <= 51;
        assume state(Heap, Mask);
        assume (len_1(a_2): int) == 51;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@224.13--224.73) [183426]"}
          (forall i_4_1: int, i_4_2: int ::
          
          (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len_1(a_2): int))) && (0 <= i_4_2 && i_4_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_4_1): Ref) != (slot(a_2, i_4_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange16((slot(a_2, i_4_1): Ref)) && invRecv16((slot(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            ((0 <= invRecv16(o_4) && invRecv16(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (slot(a_2, invRecv16(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_4_1: int ::
            { (slot(a_2, i_4_1): Ref) } { (slot(a_2, i_4_1): Ref) }
            0 <= i_4_1 && i_4_1 < (len_1(a_2): int) ==> (slot(a_2, i_4_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv16(o_4) && invRecv16(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv16(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv16(o_4) && invRecv16(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true))
          if (*) {
            if (0 <= m_21) {
              if (m_21 < n) {
                if (0 <= j_27) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@225.13--226.39) [183427]"}
                    HasDirectPerm(Mask, (slot(a_2, m_21): Ref), val);
                }
              }
            }
            if (0 <= m_21 && (m_21 < n && (0 <= j_27 && j_27 < Seq#Length(Heap[(slot(a_2, m_21): Ref), val])))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, m).val (sequence_incompletenesses.vpr@225.13--226.39) [183428]"}
                HasDirectPerm(Mask, (slot(a_2, m_21): Ref), val);
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might be negative. (sequence_incompletenesses.vpr@225.13--226.39) [183429]"}
                j_27 >= 0;
              assert {:msg "  Contract might not be well-formed. Index slot(a, m).val[j] into slot(a, m).val might exceed sequence length. (sequence_incompletenesses.vpr@225.13--226.39) [183430]"}
                j_27 < Seq#Length(Heap[(slot(a_2, m_21): Ref), val]);
              if (*) {
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall m_3: int, j_12_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2) } { Seq#Length(Heap[(slot(a_2, m_3): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true) }
          0 <= m_3 && (m_3 < n && (0 <= j_12_2 && j_12_2 < Seq#Length(Heap[(slot(a_2, m_3): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_3): Ref), val], j_12_2), m_3, true)
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
        assume 4 <= n;
        assume n <= 51;
        assume (len_1(a_2): int) == 51;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@224.13--224.73) [183431]"}
          (forall i_5: int, i_5_1: int ::
          
          (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_5): Ref) != (slot(a_2, i_5_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange17((slot(a_2, i_5): Ref)) && invRecv17((slot(a_2, i_5): Ref)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            ((0 <= invRecv17(o_4) && invRecv17(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (slot(a_2, invRecv17(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5: int ::
            { (slot(a_2, i_5): Ref) } { (slot(a_2, i_5): Ref) }
            0 <= i_5 && i_5 < (len_1(a_2): int) ==> (slot(a_2, i_5): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv17(o_4) && invRecv17(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv17(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv17(o_4) && invRecv17(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall m_4_1: int, j_13_2: int ::
          { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2) } { Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true) }
          0 <= m_4_1 && (m_4_1 < n && (0 <= j_13_2 && j_13_2 < Seq#Length(Heap[(slot(a_2, m_4_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_4_1): Ref), val], j_13_2), m_4_1, true)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume n <= 50;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: slot(a, n).val := Seq[Seq[Int]]() -- sequence_incompletenesses.vpr@228.5--228.27
            assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@228.5--228.27) [183432]"}
              FullPerm == Mask[(slot(a_2, n): Ref), val];
            Heap := Heap[(slot(a_2, n): Ref), val:=(Seq#Empty(): Seq (Seq int))];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := 0 -- sequence_incompletenesses.vpr@230.5--230.21
            i_6_1 := 0;
            assume state(Heap, Mask);
          
          // -- Translating statement: while (i < |slot(a, n - 1).val|) -- sequence_incompletenesses.vpr@231.5--256.6
            
            // -- Before loop head
              
              // -- Exhale loop invariant before loop
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@232.17--232.42) [183433]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not hold on entry. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@232.17--232.42) [183434]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not hold on entry. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@233.17--233.29) [183435]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@234.17--234.49) [183436]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not hold on entry. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@234.17--234.49) [183437]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not hold on entry. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@235.17--235.35) [183438]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not hold on entry. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@236.17--236.37) [183439]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_1 == n - 1 && (0 <= j_14_1 && j_14_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not hold on entry. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@237.17--238.42) [183440]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1): Ref), val], j_14_1), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_15_1_1: int, n1_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1) }
                  n1_1_1 == n - 1 && (0 <= j_15_1_1 && j_15_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_1_1): Ref), val], j_15_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_16_2 && j_16_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not hold on entry. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@239.17--239.104) [183441]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_16_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_17_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1) }
                  0 <= j_17_1_1 && j_17_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_17_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
            
            // -- Havoc loop written variables (except locals)
              havoc i_6_1;
            
            // -- Check definedness of invariant
              if (*) {
                perm := 1 / 2;
                assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@232.17--232.42) [183442]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume state(Heap, Mask);
                assume 0 <= i_6_1;
                
                // -- Check definedness of i <= |slot(a, n - 1).val|
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@234.17--234.49) [183443]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of |slot(a, n).val| == i
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@236.17--236.37) [183444]"}
                    HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true))
                  if (*) {
                    if (n1_9 == n - 1) {
                      if (0 <= j_24) {
                        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@237.17--238.42) [183445]"}
                          HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      }
                    }
                    if (n1_9 == n - 1 && (0 <= j_24 && j_24 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n1).val (sequence_incompletenesses.vpr@237.17--238.42) [183446]"}
                        HasDirectPerm(Mask, (slot(a_2, n1_9): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might be negative. (sequence_incompletenesses.vpr@237.17--238.42) [183447]"}
                        j_24 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n1).val[j] into slot(a, n1).val might exceed sequence length. (sequence_incompletenesses.vpr@237.17--238.42) [183448]"}
                        j_24 < Seq#Length(Heap[(slot(a_2, n1_9): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_19_1: int, n1_3: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1) }
                  n1_3 == n - 1 && (0 <= j_19_1 && j_19_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_3): Ref), val], j_19_1), n - 1, true)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                
                // -- Check definedness of (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true))
                  if (*) {
                    if (0 <= j_28 && j_28 < i_6_1) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@239.17--239.104) [183449]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might be negative. (sequence_incompletenesses.vpr@239.17--239.104) [183450]"}
                        j_28 >= 0;
                      assert {:msg "  Contract might not be well-formed. Index slot(a, n).val[j] into slot(a, n).val might exceed sequence length. (sequence_incompletenesses.vpr@239.17--239.104) [183451]"}
                        j_28 < Seq#Length(Heap[(slot(a_2, n): Ref), val]);
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    }
                    assume false;
                  }
                assume (forall j_21_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1) }
                  0 <= j_21_1 && j_21_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_21_1), n, true)
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
                perm := 1 / 2;
                assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@232.17--232.42) [183452]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
                assume state(Heap, Mask);
                assume (len_1(a_2): int) == 51;
                assume 0 <= i_6_1;
                assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                assume (slot(a_2, n): Ref) != null;
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
                assume state(Heap, Mask);
                assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                assume state(Heap, Mask);
                assume (forall j_22_2: int, n1_4: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2) }
                  n1_4 == n - 1 && (0 <= j_22_2 && j_22_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_4): Ref), val], j_22_2), n - 1, true)
                );
                assume state(Heap, Mask);
                assume (forall j_23_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1) }
                  0 <= j_23_1 && j_23_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_23_1), n, true)
                );
                assume state(Heap, Mask);
                // Check and assume guard
                
                // -- Check definedness of i < |slot(a, n - 1).val|
                  assert {:msg "  While statement might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@231.11--231.32) [183453]"}
                    HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                assume i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                assume state(Heap, Mask);
                
                // -- Translate loop body
                  
                  // -- Translating statement: oldSoln := slot(a, n - 1).val[i] -- sequence_incompletenesses.vpr@241.7--241.51
                    
                    // -- Check definedness of slot(a, n - 1).val[i]
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@241.7--241.51) [183454]"}
                        HasDirectPerm(Mask, (slot(a_2, n - 1): Ref), val);
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might be negative. (sequence_incompletenesses.vpr@241.7--241.51) [183455]"}
                        i_6_1 >= 0;
                      assert {:msg "  Assignment might fail. Index slot(a, n - 1).val[i] into slot(a, n - 1).val might exceed sequence length. (sequence_incompletenesses.vpr@241.7--241.51) [183456]"}
                        i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                    oldSoln := Seq#Index(Heap[(slot(a_2, n - 1): Ref), val], i_6_1);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: if (oldSoln[0] == 0) -- sequence_incompletenesses.vpr@244.7--253.8
                    
                    // -- Check definedness of oldSoln[0] == 0
                      assert {:msg "  Conditional statement might fail. Index oldSoln[0] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@244.10--244.25) [183457]"}
                        0 < Seq#Length(oldSoln);
                    if (Seq#Index(oldSoln, 0) == 0) {
                      
                      // -- Translating statement: soln := oldSoln[1 := oldSoln[1] + 1] -- sequence_incompletenesses.vpr@245.9--245.43
                        
                        // -- Check definedness of oldSoln[1 := oldSoln[1] + 1]
                          assert {:msg "  Assignment might fail. Index oldSoln[1] into oldSoln might exceed sequence length. (sequence_incompletenesses.vpr@245.9--245.43) [183458]"}
                            1 < Seq#Length(oldSoln);
                        soln := Seq#Append(Seq#Take(oldSoln, 1), Seq#Append(Seq#Singleton(Seq#Index(oldSoln, 1) + 1), Seq#Drop(oldSoln, 2)));
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert soln[2..] == oldSoln[2..] -- sequence_incompletenesses.vpr@246.9--246.41
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        assert {:msg "  Assert might fail. Assertion soln[2..] == oldSoln[2..] might not hold. (sequence_incompletenesses.vpr@246.16--246.41) [183459]"}
                          Seq#Equal(Seq#Drop(soln, 2), Seq#Drop(oldSoln, 2));
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@247.9--247.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@247.16--247.34) [183460]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    } else {
                      
                      // -- Translating statement: soln := Seq(0, 1) ++ oldSoln -- sequence_incompletenesses.vpr@249.9--249.36
                        soln := Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), oldSoln);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert soln[2..] == oldSoln -- sequence_incompletenesses.vpr@250.9--250.36
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        assert {:msg "  Assert might fail. Assertion soln[2..] == oldSoln might not hold. (sequence_incompletenesses.vpr@250.16--250.36) [183461]"}
                          Seq#Equal(Seq#Drop(soln, 2), oldSoln);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(oldSoln, n - 1, false) -- sequence_incompletenesses.vpr@251.9--251.40
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(oldSoln, n - 1, false)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(oldSoln, n - 1, false) might not hold. (sequence_incompletenesses.vpr@251.16--251.40) [183462]"}
                          valid_1(Heap, oldSoln, n - 1, false);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: assert valid(soln, n, true) -- sequence_incompletenesses.vpr@252.9--252.34
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        
                        // -- Check definedness of valid(soln, n, true)
                          if (*) {
                            // Stop execution
                            assume false;
                          }
                        assert {:msg "  Assert might fail. Assertion valid(soln, n, true) might not hold. (sequence_incompletenesses.vpr@252.16--252.34) [183463]"}
                          valid_1(Heap, soln, n, true);
                        assume state(Heap, Mask);
                    }
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: slot(a, n).val := slot(a, n).val ++ Seq(soln) -- sequence_incompletenesses.vpr@254.7--254.50
                    
                    // -- Check definedness of slot(a, n).val ++ Seq(soln)
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@254.7--254.50) [183464]"}
                        HasDirectPerm(Mask, (slot(a_2, n): Ref), val);
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@254.7--254.50) [183465]"}
                      FullPerm == Mask[(slot(a_2, n): Ref), val];
                    Heap := Heap[(slot(a_2, n): Ref), val:=Seq#Append(Heap[(slot(a_2, n): Ref), val], Seq#Singleton(soln))];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: i := i + 1 -- sequence_incompletenesses.vpr@255.7--255.17
                    i_6_1 := i_6_1 + 1;
                    assume state(Heap, Mask);
                // Exhale invariant
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := 1 / 2;
                assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@232.17--232.42) [183466]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n - 1).val, 1 / 2) might not be preserved. There might be insufficient permission to access slot(a, n - 1).val (sequence_incompletenesses.vpr@232.17--232.42) [183467]"}
                    perm <= Mask[(slot(a_2, n - 1): Ref), val];
                }
                Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] - perm];
                assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@233.17--233.29) [183468]"}
                  (len_1(a_2): int) == 51;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion 0 <= i might not hold. (sequence_incompletenesses.vpr@234.17--234.49) [183469]"}
                  0 <= i_6_1;
                assert {:msg "  Loop invariant 0 <= i && i <= |slot(a, n - 1).val| might not be preserved. Assertion i <= |slot(a, n - 1).val| might not hold. (sequence_incompletenesses.vpr@234.17--234.49) [183470]"}
                  i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant acc(slot(a, n).val, write) might not be preserved. There might be insufficient permission to access slot(a, n).val (sequence_incompletenesses.vpr@235.17--235.35) [183471]"}
                    perm <= Mask[(slot(a_2, n): Ref), val];
                }
                Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] - perm];
                assert {:msg "  Loop invariant |slot(a, n).val| == i might not be preserved. Assertion |slot(a, n).val| == i might not hold. (sequence_incompletenesses.vpr@236.17--236.37) [183472]"}
                  Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
                if (*) {
                  if (n1_5 == n - 1 && (0 <= j_24_2 && j_24_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]))) {
                    assert {:msg "  Loop invariant (forall j: Int, n1: Int :: { slot(a, n1).val[j] } n1 == n - 1 && (0 <= j && j < |slot(a, n - 1).val|) ==> valid(slot(a, n1).val[j], n - 1, true)) might not be preserved. Assertion valid(slot(a, n1).val[j], n - 1, true) might not hold. (sequence_incompletenesses.vpr@237.17--238.42) [183473]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_5): Ref), val], j_24_2), n - 1, true);
                  }
                  assume false;
                }
                assume (forall j_25_1_1: int, n1_6_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1) }
                  n1_6_1 == n - 1 && (0 <= j_25_1_1 && j_25_1_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_6_1): Ref), val], j_25_1_1), n - 1, true)
                );
                if (*) {
                  if (0 <= j_26_2 && j_26_2 < i_6_1) {
                    assert {:msg "  Loop invariant (forall j: Int :: { slot(a, n).val[j] } 0 <= j && j < i ==> valid(slot(a, n).val[j], n, true)) might not be preserved. Assertion valid(slot(a, n).val[j], n, true) might not hold. (sequence_incompletenesses.vpr@239.17--239.104) [183474]"}
                      valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_26_2), n, true);
                  }
                  assume false;
                }
                assume (forall j_27_1_1: int ::
                  { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1) }
                  0 <= j_27_1_1 && j_27_1_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_27_1_1), n, true)
                );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Terminate execution
                assume false;
              }
            
            // -- Inhale loop invariant after loop, and assume guard
              assume !(i_6_1 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]));
              assume state(Heap, Mask);
              perm := 1 / 2;
              assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (sequence_incompletenesses.vpr@232.17--232.42) [183475]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> (slot(a_2, n - 1): Ref) != null;
              Mask := Mask[(slot(a_2, n - 1): Ref), val:=Mask[(slot(a_2, n - 1): Ref), val] + perm];
              assume state(Heap, Mask);
              assume (len_1(a_2): int) == 51;
              assume 0 <= i_6_1;
              assume i_6_1 <= Seq#Length(Heap[(slot(a_2, n - 1): Ref), val]);
              perm := FullPerm;
              assume (slot(a_2, n): Ref) != null;
              Mask := Mask[(slot(a_2, n): Ref), val:=Mask[(slot(a_2, n): Ref), val] + perm];
              assume state(Heap, Mask);
              assume Seq#Length(Heap[(slot(a_2, n): Ref), val]) == i_6_1;
              assume state(Heap, Mask);
              assume (forall j_28_2: int, n1_7: int ::
                { Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2) }
                n1_7 == n - 1 && (0 <= j_28_2 && j_28_2 < Seq#Length(Heap[(slot(a_2, n - 1): Ref), val])) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n1_7): Ref), val], j_28_2), n - 1, true)
              );
              assume state(Heap, Mask);
              assume (forall j_29_1: int ::
                { Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1) }
                0 <= j_29_1 && j_29_1 < i_6_1 ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, n): Ref), val], j_29_1), n, true)
              );
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: n := n + 1 -- sequence_incompletenesses.vpr@258.5--258.15
            n := n + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion 4 <= n might not hold. (sequence_incompletenesses.vpr@222.13--222.30) [183476]"}
          4 <= n;
        assert {:msg "  Loop invariant 4 <= n && n <= 51 might not be preserved. Assertion n <= 51 might not hold. (sequence_incompletenesses.vpr@222.13--222.30) [183477]"}
          n <= 51;
        assert {:msg "  Loop invariant len(a) == 51 might not be preserved. Assertion len(a) == 51 might not hold. (sequence_incompletenesses.vpr@223.13--223.25) [183478]"}
          (len_1(a_2): int) == 51;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver slot(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@224.13--224.73) [183479]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered18(i_7_1), neverTriggered18(i_7_2) }
            (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < (len_1(a_2): int))) && (0 <= i_7_2 && i_7_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_7_1): Ref) != (slot(a_2, i_7_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { slot(a, i) } 0 <= i && i < len(a) ==> acc(slot(a, i).val, write)) might not be preserved. There might be insufficient permission to access slot(a, i).val (sequence_incompletenesses.vpr@224.13--224.73) [183480]"}
            (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            0 <= i_7_1 && i_7_1 < (len_1(a_2): int) ==> Mask[(slot(a_2, i_7_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver slot(a, i)
          assume (forall i_7_1: int ::
            { (slot(a_2, i_7_1): Ref) } { (slot(a_2, i_7_1): Ref) }
            (0 <= i_7_1 && i_7_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange18((slot(a_2, i_7_1): Ref)) && invRecv18((slot(a_2, i_7_1): Ref)) == i_7_1
          );
          assume (forall o_4: Ref ::
            { invRecv18(o_4) }
            (0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> (slot(a_2, invRecv18(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> (slot(a_2, invRecv18(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= m_5_2 && (m_5_2 < n && (0 <= j_30_1 && j_30_1 < Seq#Length(Heap[(slot(a_2, m_5_2): Ref), val])))) {
            assert {:msg "  Loop invariant (forall m: Int, j: Int :: { |slot(a, m).val|, slot(a, m).val[j] } { |slot(a, m).val|, valid(slot(a, m).val[j], m, true) } { valid(slot(a, m).val[j], m, true) } 0 <= m && (m < n && (0 <= j && j < |slot(a, m).val|)) ==> valid(slot(a, m).val[j], m, true)) might not be preserved. Assertion valid(slot(a, m).val[j], m, true) might not hold. (sequence_incompletenesses.vpr@225.13--226.39) [183481]"}
              valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_5_2): Ref), val], j_30_1), m_5_2, true);
          }
          assume false;
        }
        assume (forall m_6_1_1: int, j_31_1: int ::
          { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1) } { Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true) }
          0 <= m_6_1_1 && (m_6_1_1 < n && (0 <= j_31_1 && j_31_1 < Seq#Length(Heap[(slot(a_2, m_6_1_1): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_6_1_1): Ref), val], j_31_1), m_6_1_1, true)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(n <= 50);
      assume state(Heap, Mask);
      assume 4 <= n;
      assume n <= 51;
      assume (len_1(a_2): int) == 51;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource slot(a, i).val might not be injective. (sequence_incompletenesses.vpr@224.13--224.73) [183482]"}
        (forall i_8_2: int, i_8_3: int ::
        
        (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < (len_1(a_2): int))) && (0 <= i_8_3 && i_8_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (slot(a_2, i_8_2): Ref) != (slot(a_2, i_8_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          (0 <= i_8_2 && i_8_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange19((slot(a_2, i_8_2): Ref)) && invRecv19((slot(a_2, i_8_2): Ref)) == i_8_2
        );
        assume (forall o_4: Ref ::
          { invRecv19(o_4) }
          ((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (slot(a_2, invRecv19(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_8_2: int ::
          { (slot(a_2, i_8_2): Ref) } { (slot(a_2, i_8_2): Ref) }
          0 <= i_8_2 && i_8_2 < (len_1(a_2): int) ==> (slot(a_2, i_8_2): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> (slot(a_2, invRecv19(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv19(o_4) && invRecv19(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall m_7_2: int, j_32_1: int ::
        { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1) } { Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]), valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) } { valid#frame(EmptyFrame, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true) }
        0 <= m_7_2 && (m_7_2 < n && (0 <= j_32_1 && j_32_1 < Seq#Length(Heap[(slot(a_2, m_7_2): Ref), val]))) ==> valid_1(Heap, Seq#Index(Heap[(slot(a_2, m_7_2): Ref), val], j_32_1), m_7_2, true)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_extend
// ==================================================

procedure test_extend(s_2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ss: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: ss := s ++ Seq(42) -- sequence_incompletenesses.vpr@267.3--267.36
    ss := Seq#Append(s_2, Seq#Singleton(42));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { (i in s) } (i in s) ==> (i in ss[..|ss| - 1])) -- sequence_incompletenesses.vpr@268.3--268.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in s) } (i in s) ==> (i in ss[..|ss| - 1]))
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(s_2, i_1)) {
        assert {:msg "  Assert might fail. Assertion (i in ss[..|ss| - 1]) might not hold. (sequence_incompletenesses.vpr@268.10--268.54) [183483]"}
          Seq#Contains(Seq#Take(ss, Seq#Length(ss) - 1), i_1);
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { Seq#ContainsTrigger(s_2, i_2_1_1) } { Seq#Contains(s_2, i_2_1_1) }
      Seq#Contains(s_2, i_2_1_1) ==> Seq#Contains(Seq#Take(ss, Seq#Length(ss) - 1), i_2_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_extend_left
// ==================================================

procedure test_extend_left(s_2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ss: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: ss := Seq(42) ++ s -- sequence_incompletenesses.vpr@273.3--273.36
    ss := Seq#Append(Seq#Singleton(42), s_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { (i in s) }
  //     { (i in ss[1..]) }
  //     (i in s) ==> (i in ss[1..])) -- sequence_incompletenesses.vpr@275.4--275.50
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in s) } { (i in ss[1..]) } (i in s) ==> (i in ss[1..]))
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(s_2, i_1)) {
        assert {:msg "  Assert might fail. Assertion (i in ss[1..]) might not hold. (sequence_incompletenesses.vpr@275.11--275.50) [183484]"}
          Seq#Contains(Seq#Drop(ss, 1), i_1);
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { Seq#ContainsTrigger(s_2, i_2_1_1) } { Seq#Contains(s_2, i_2_1_1) } { Seq#ContainsTrigger(Seq#Drop(ss, 1), i_2_1_1) } { Seq#Contains(Seq#Drop(ss, 1), i_2_1_1) }
      Seq#Contains(s_2, i_2_1_1) ==> Seq#Contains(Seq#Drop(ss, 1), i_2_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_append_left
// ==================================================

procedure test_append_left(s_2: (Seq int), t_2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ss: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: ss := s ++ t -- sequence_incompletenesses.vpr@280.3--280.30
    ss := Seq#Append(s_2, t_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { (i in s) }
  //     { (i in ss[..|s|]) }
  //     (i in s) ==> (i in ss[..|s|])) -- sequence_incompletenesses.vpr@281.3--281.51
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in s) } { (i in ss[..|s|]) } (i in s) ==> (i in ss[..|s|]))
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(s_2, i_1)) {
        assert {:msg "  Assert might fail. Assertion (i in ss[..|s|]) might not hold. (sequence_incompletenesses.vpr@281.10--281.51) [183485]"}
          Seq#Contains(Seq#Take(ss, Seq#Length(s_2)), i_1);
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { Seq#ContainsTrigger(s_2, i_2_1_1) } { Seq#Contains(s_2, i_2_1_1) } { Seq#ContainsTrigger(Seq#Take(ss, Seq#Length(s_2)), i_2_1_1) } { Seq#Contains(Seq#Take(ss, Seq#Length(s_2)), i_2_1_1) }
      Seq#Contains(s_2, i_2_1_1) ==> Seq#Contains(Seq#Take(ss, Seq#Length(s_2)), i_2_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_append_right
// ==================================================

procedure test_append_right(s_2: (Seq int), t_2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ss: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: ss := s ++ t -- sequence_incompletenesses.vpr@286.3--286.30
    ss := Seq#Append(s_2, t_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { (i in t) }
  //     { (i in ss[|s|..]) }
  //     (i in t) ==> (i in ss[|s|..])) -- sequence_incompletenesses.vpr@288.3--288.51
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { (i in t) } { (i in ss[|s|..]) } (i in t) ==> (i in ss[|s|..]))
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(t_2, i_1)) {
        assert {:msg "  Assert might fail. Assertion (i in ss[|s|..]) might not hold. (sequence_incompletenesses.vpr@288.10--288.51) [183486]"}
          Seq#Contains(Seq#Drop(ss, Seq#Length(s_2)), i_1);
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { Seq#ContainsTrigger(t_2, i_2_1_1) } { Seq#Contains(t_2, i_2_1_1) } { Seq#ContainsTrigger(Seq#Drop(ss, Seq#Length(s_2)), i_2_1_1) } { Seq#Contains(Seq#Drop(ss, Seq#Length(s_2)), i_2_1_1) }
      Seq#Contains(t_2, i_2_1_1) ==> Seq#Contains(Seq#Drop(ss, Seq#Length(s_2)), i_2_1_1)
    );
    assume state(Heap, Mask);
}