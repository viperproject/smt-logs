// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:14:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/injectivity.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/injectivity-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_23: Ref, f_25: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_23, f_25] }
  Heap[o_23, $allocated] ==> Heap[Heap[o_23, f_25], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref, f_26: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, f_26] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_24, f_26) ==> Heap[o_24, f_26] == ExhaleHeap[o_24, f_26]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7), ExhaleHeap[null, PredicateMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> Heap[null, PredicateMaskField(pm_f_7)] == ExhaleHeap[null, PredicateMaskField(pm_f_7)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_7, f_26] }
    Heap[null, PredicateMaskField(pm_f_7)][o2_7, f_26] ==> Heap[o2_7, f_26] == ExhaleHeap[o2_7, f_26]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7), ExhaleHeap[null, WandMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> Heap[null, WandMaskField(pm_f_7)] == ExhaleHeap[null, WandMaskField(pm_f_7)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_7, f_26] }
    Heap[null, WandMaskField(pm_f_7)][o2_7, f_26] ==> Heap[o2_7, f_26] == ExhaleHeap[o2_7, f_26]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_24, $allocated] ==> ExhaleHeap[o_24, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_23: Ref, f_27: (Field A B), v: B ::
  { Heap[o_23, f_27:=v] }
  succHeap(Heap, Heap[o_23, f_27:=v])
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
function  neverTriggered3(x_6: Ref): bool;
function  neverTriggered4(x_7: Ref): bool;
function  neverTriggered5(x_8_1: Ref): bool;
function  neverTriggered6(x_1: Ref): bool;
function  neverTriggered7(x_3: Ref): bool;
function  neverTriggered8(x_5: Ref): bool;
function  neverTriggered9(x_7: Ref): bool;
function  neverTriggered10(x_8_1: Ref): bool;
function  neverTriggered11(x_1: Ref): bool;
function  neverTriggered12(x_3: Ref): bool;
function  neverTriggered13(x_6: Ref): bool;
function  neverTriggered14(x_7: Ref): bool;
function  neverTriggered15(x_8_1: Ref): bool;
function  neverTriggered16(x_1: Ref): bool;
function  neverTriggered17(x_3: Ref): bool;
function  neverTriggered18(x_5: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_3: Ref): bool;
function  neverTriggered21(x_5: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(a_2: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(a_1_1: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(a_2: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(a_1_1: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(a_2: Ref, i: int): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(a_1_1: Ref, i_1: int): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(a_2: Ref, i: int): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(recv: Ref): Ref;
function  invRecv21(a_2: Ref, i: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(a_2: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(a_1_1: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(a_2: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(a_1_1: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(a_2: Ref, i: int): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(a_1_1: Ref, i_1: int): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(a_2: Ref, i: int): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(a_2: Ref, i: int): bool;

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
// Translation of predicate pred1
// ==================================================

type PredicateType_pred1;
function  pred1(a_2: Ref): Field PredicateType_pred1 FrameType;
function  pred1#sm(a_2: Ref): Field PredicateType_pred1 PMaskType;
axiom (forall a_2: Ref ::
  { PredicateMaskField(pred1(a_2)) }
  PredicateMaskField(pred1(a_2)) == pred1#sm(a_2)
);
axiom (forall a_2: Ref ::
  { pred1(a_2) }
  IsPredicateField(pred1(a_2))
);
axiom (forall a_2: Ref ::
  { pred1(a_2) }
  getPredWandId(pred1(a_2)) == 0
);
function  pred1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, a2: Ref ::
  { pred1(a_2), pred1(a2) }
  pred1(a_2) == pred1(a2) ==> a_2 == a2
);
axiom (forall a_2: Ref, a2: Ref ::
  { pred1#sm(a_2), pred1#sm(a2) }
  pred1#sm(a_2) == pred1#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: Ref ::
  { pred1#trigger(Heap, pred1(a_2)) }
  pred1#everUsed(pred1(a_2))
);

procedure pred1#definedness(a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate pred2
// ==================================================

type PredicateType_pred2;
function  pred2(a_2: Ref, i: int): Field PredicateType_pred2 FrameType;
function  pred2#sm(a_2: Ref, i: int): Field PredicateType_pred2 PMaskType;
axiom (forall a_2: Ref, i: int ::
  { PredicateMaskField(pred2(a_2, i)) }
  PredicateMaskField(pred2(a_2, i)) == pred2#sm(a_2, i)
);
axiom (forall a_2: Ref, i: int ::
  { pred2(a_2, i) }
  IsPredicateField(pred2(a_2, i))
);
axiom (forall a_2: Ref, i: int ::
  { pred2(a_2, i) }
  getPredWandId(pred2(a_2, i)) == 1
);
function  pred2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, i: int, a2: Ref, i2_1: int ::
  { pred2(a_2, i), pred2(a2, i2_1) }
  pred2(a_2, i) == pred2(a2, i2_1) ==> a_2 == a2 && i == i2_1
);
axiom (forall a_2: Ref, i: int, a2: Ref, i2_1: int ::
  { pred2#sm(a_2, i), pred2#sm(a2, i2_1) }
  pred2#sm(a_2, i) == pred2#sm(a2, i2_1) ==> a_2 == a2 && i == i2_1
);

axiom (forall Heap: HeapType, a_2: Ref, i: int ::
  { pred2#trigger(Heap, pred2(a_2, i)) }
  pred2#everUsed(pred2(a_2, i))
);

procedure pred2#definedness(a_2: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_1
// ==================================================

procedure test01_1(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@17.10--17.46) [102025]"}
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(y), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(y), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(y) might not be injective. (injectivity.vpr@19.9--19.64) [102026]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered2(x_3), neverTriggered2(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv2(y) == x_3 && qpRange2(y)
      );
      assume (forall a_2: Ref ::
        { invRecv2(a_2) }
        (Seq#Contains(xs, invRecv2(a_2)) && NoPerm < FullPerm) && qpRange2(a_2) ==> y == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv2(a_2)) && NoPerm < FullPerm) && qpRange2(a_2) ==> (NoPerm < FullPerm ==> y == a_2) && QPMask[null, pred1(a_2)] == PostMask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv2(a_2)) && NoPerm < FullPerm) && qpRange2(a_2)) ==> QPMask[null, pred1(a_2)] == PostMask[null, pred1(a_2)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@19.9--19.64) [102027]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[x_6, f_7] } { QPMask[x_6, f_7] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> qpRange3(x_6) && invRecv3(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (Seq#Contains(xs, invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { PostHeap[x_6, f_7] } { QPMask[x_6, f_7] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv3(o_4)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred1(y), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(y) might not be injective. (injectivity.vpr@19.9--19.64) [102028]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered4(x_7), neverTriggered4(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01_1 might not hold. There might be insufficient permission to access pred1(y) (injectivity.vpr@19.9--19.64) [102029]"}
        (forall x_7: Ref ::
        { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> Mask[null, pred1(y)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred1(y), write)
      assume (forall x_7: Ref ::
        { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> invRecv4(y) == x_7 && qpRange4(y)
      );
      assume (forall a_1_1: Ref ::
        { invRecv4(a_1_1) }
        (Seq#Contains(xs, invRecv4(a_1_1)) && NoPerm < FullPerm) && qpRange4(a_1_1) ==> y == a_1_1
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        (Seq#Contains(xs, invRecv4(a_1_1)) && NoPerm < FullPerm) && qpRange4(a_1_1) ==> y == a_1_1 && QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)] - FullPerm
      );
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        !((Seq#Contains(xs, invRecv4(a_1_1)) && NoPerm < FullPerm) && qpRange4(a_1_1)) ==> QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@19.9--19.64) [102030]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered5(x_8_1), neverTriggered5(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01_1 might not hold. There might be insufficient permission to access x.f (injectivity.vpr@19.9--19.64) [102031]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> qpRange5(x_8_1) && invRecv5(x_8_1) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method test01_2
// ==================================================

procedure test01_2(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, pred1(y):=Mask[null, pred1(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@24.10--24.46) [102032]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange6(x_1) && invRecv6(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Seq#Contains(xs, invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      oldMask := Mask;
      oldHeap := Heap;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@26.9--26.64) [102033]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange7(x_3) && invRecv7(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred1(y), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred1(y), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(y) might not be injective. (injectivity.vpr@26.9--26.64) [102034]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered8(x_5), neverTriggered8(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv8(y) == x_5 && qpRange8(y)
      );
      assume (forall a_2: Ref ::
        { invRecv8(a_2) }
        (Seq#Contains(xs, invRecv8(a_2)) && NoPerm < FullPerm) && qpRange8(a_2) ==> y == a_2
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        (Seq#Contains(xs, invRecv8(a_2)) && NoPerm < FullPerm) && qpRange8(a_2) ==> (NoPerm < FullPerm ==> y == a_2) && QPMask[null, pred1(a_2)] == PostMask[null, pred1(a_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref ::
        { QPMask[null, pred1(a_2)] }
        !((Seq#Contains(xs, invRecv8(a_2)) && NoPerm < FullPerm) && qpRange8(a_2)) ==> QPMask[null, pred1(a_2)] == PostMask[null, pred1(a_2)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@26.9--26.64) [102035]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered9(x_7), neverTriggered9(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01_2 might not hold. There might be insufficient permission to access x.f (injectivity.vpr@26.9--26.64) [102036]"}
        (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> Mask[x_7, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> qpRange9(x_7) && invRecv9(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(xs, invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred1(y), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred1(y) might not be injective. (injectivity.vpr@26.9--26.64) [102037]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered10(x_8_1), neverTriggered10(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01_2 might not hold. There might be insufficient permission to access pred1(y) (injectivity.vpr@26.9--26.64) [102038]"}
        (forall x_8_1: Ref ::
        { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[null, pred1(y)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred1(y), write)
      assume (forall x_8_1: Ref ::
        { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> invRecv10(y) == x_8_1 && qpRange10(y)
      );
      assume (forall a_1_1: Ref ::
        { invRecv10(a_1_1) }
        (Seq#Contains(xs, invRecv10(a_1_1)) && NoPerm < FullPerm) && qpRange10(a_1_1) ==> y == a_1_1
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        (Seq#Contains(xs, invRecv10(a_1_1)) && NoPerm < FullPerm) && qpRange10(a_1_1) ==> y == a_1_1 && QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)] - FullPerm
      );
      assume (forall a_1_1: Ref ::
        { QPMask[null, pred1(a_1_1)] }
        !((Seq#Contains(xs, invRecv10(a_1_1)) && NoPerm < FullPerm) && qpRange10(a_1_1)) ==> QPMask[null, pred1(a_1_1)] == Mask[null, pred1(a_1_1)]
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
// Translation of method test02
// ==================================================

procedure test02(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, pred2(y, 1):=Mask[null, pred2(y, 1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@32.11--32.49) [102039]"}
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(y, 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred2(y, 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred2(y, 1) might not be injective. (injectivity.vpr@34.10--34.68) [102040]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered12(x_3), neverTriggered12(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv12(y, 1) == x_3 && qpRange12(y, 1)
      );
      assume (forall a_2: Ref, i: int ::
        { invRecv12(a_2, i) }
        (Seq#Contains(xs, invRecv12(a_2, i)) && NoPerm < FullPerm) && qpRange12(a_2, i) ==> y == a_2 && 1 == i
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        (Seq#Contains(xs, invRecv12(a_2, i)) && NoPerm < FullPerm) && qpRange12(a_2, i) ==> (NoPerm < FullPerm ==> y == a_2 && 1 == i) && QPMask[null, pred2(a_2, i)] == PostMask[null, pred2(a_2, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        !((Seq#Contains(xs, invRecv12(a_2, i)) && NoPerm < FullPerm) && qpRange12(a_2, i)) ==> QPMask[null, pred2(a_2, i)] == PostMask[null, pred2(a_2, i)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@34.10--34.68) [102041]"}
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
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred2(y, 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred2(y, 1) might not be injective. (injectivity.vpr@34.10--34.68) [102042]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered14(x_7), neverTriggered14(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access pred2(y, 1) (injectivity.vpr@34.10--34.68) [102043]"}
        (forall x_7: Ref ::
        { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> Mask[null, pred2(y, 1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred2(y, 1), write)
      assume (forall x_7: Ref ::
        { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> invRecv14(y, 1) == x_7 && qpRange14(y, 1)
      );
      assume (forall a_1_1: Ref, i_1: int ::
        { invRecv14(a_1_1, i_1) }
        (Seq#Contains(xs, invRecv14(a_1_1, i_1)) && NoPerm < FullPerm) && qpRange14(a_1_1, i_1) ==> y == a_1_1 && 1 == i_1
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, i_1: int ::
        { QPMask[null, pred2(a_1_1, i_1)] }
        (Seq#Contains(xs, invRecv14(a_1_1, i_1)) && NoPerm < FullPerm) && qpRange14(a_1_1, i_1) ==> (y == a_1_1 && 1 == i_1) && QPMask[null, pred2(a_1_1, i_1)] == Mask[null, pred2(a_1_1, i_1)] - FullPerm
      );
      assume (forall a_1_1: Ref, i_1: int ::
        { QPMask[null, pred2(a_1_1, i_1)] }
        !((Seq#Contains(xs, invRecv14(a_1_1, i_1)) && NoPerm < FullPerm) && qpRange14(a_1_1, i_1)) ==> QPMask[null, pred2(a_1_1, i_1)] == Mask[null, pred2(a_1_1, i_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@34.10--34.68) [102044]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered15(x_8_1), neverTriggered15(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.f (injectivity.vpr@34.10--34.68) [102045]"}
        (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[x_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, f_7] } { QPMask[x_8_1, f_7] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> qpRange15(x_8_1) && invRecv15(x_8_1) == x_8_1
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
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03_1
// ==================================================

procedure test03_1(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@39.10--39.46) [102046]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange16(x_1) && invRecv16(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> invRecv16(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv16(o_4)) && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall x: Ref ::
  //     { (x in xs) }
  //     (x in xs) ==> acc(pred2(x, 1), write)) &&
  //   (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- injectivity.vpr@42.2--42.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(x, 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred2(x, 1), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource pred2(x, 1) might not be injective. (injectivity.vpr@42.9--42.66) [102048]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered17(x_3), neverTriggered17(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred2(x, 1) (injectivity.vpr@42.9--42.66) [102049]"}
        (forall x_3: Ref ::
        { Heap[null, pred2(x_3, 1)] } { Mask[null, pred2(x_3, 1)] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> Mask[null, pred2(x_3, 1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred2(x, 1), write)
      assume (forall x_3: Ref ::
        { Heap[null, pred2(x_3, 1)] } { Mask[null, pred2(x_3, 1)] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv17(x_3, 1) == x_3 && qpRange17(x_3, 1)
      );
      assume (forall a_2: Ref, i: int ::
        { invRecv17(a_2, i) }
        (Seq#Contains(xs, invRecv17(a_2, i)) && NoPerm < FullPerm) && qpRange17(a_2, i) ==> invRecv17(a_2, i) == a_2 && 1 == i
      );
    
    // -- assume permission updates
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        (Seq#Contains(xs, invRecv17(a_2, i)) && NoPerm < FullPerm) && qpRange17(a_2, i) ==> (invRecv17(a_2, i) == a_2 && 1 == i) && QPMask[null, pred2(a_2, i)] == Mask[null, pred2(a_2, i)] - FullPerm
      );
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        !((Seq#Contains(xs, invRecv17(a_2, i)) && NoPerm < FullPerm) && qpRange17(a_2, i)) ==> QPMask[null, pred2(a_2, i)] == Mask[null, pred2(a_2, i)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (injectivity.vpr@42.9--42.66) [102051]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered18(x_5), neverTriggered18(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (injectivity.vpr@42.9--42.66) [102052]"}
        (forall x_5: Ref ::
        { Heap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> Mask[x_5, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_5: Ref ::
        { Heap[x_5, f_7] } { QPMask[x_5, f_7] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> qpRange18(x_5) && invRecv18(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv18(o_4)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method test03_2
// ==================================================

procedure test03_2(xs: (Seq Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (injectivity.vpr@46.10--46.46) [102053]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange19(x_1) && invRecv19(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        (Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> invRecv19(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> invRecv19(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv19(o_4)) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) &&
  //   (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(x, 1), write)) -- injectivity.vpr@49.2--49.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (injectivity.vpr@49.9--49.66) [102055]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered20(x_3), neverTriggered20(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (injectivity.vpr@49.9--49.66) [102056]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) ==> Mask[x_3, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> qpRange20(x_3) && invRecv20(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv20(o_4)) && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred2(x, 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred2(x, 1), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource pred2(x, 1) might not be injective. (injectivity.vpr@49.9--49.66) [102058]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered21(x_5), neverTriggered21(x_5_1) }
        (((x_5 != x_5_1 && Seq#Contains(xs, x_5)) && Seq#Contains(xs, x_5_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred2(x, 1) (injectivity.vpr@49.9--49.66) [102059]"}
        (forall x_5: Ref ::
        { Heap[null, pred2(x_5, 1)] } { Mask[null, pred2(x_5, 1)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) ==> Mask[null, pred2(x_5, 1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred2(x, 1), write)
      assume (forall x_5: Ref ::
        { Heap[null, pred2(x_5, 1)] } { Mask[null, pred2(x_5, 1)] } { Seq#ContainsTrigger(xs, x_5) } { Seq#Contains(xs, x_5) }
        Seq#Contains(xs, x_5) && NoPerm < FullPerm ==> invRecv21(x_5, 1) == x_5 && qpRange21(x_5, 1)
      );
      assume (forall a_2: Ref, i: int ::
        { invRecv21(a_2, i) }
        (Seq#Contains(xs, invRecv21(a_2, i)) && NoPerm < FullPerm) && qpRange21(a_2, i) ==> invRecv21(a_2, i) == a_2 && 1 == i
      );
    
    // -- assume permission updates
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        (Seq#Contains(xs, invRecv21(a_2, i)) && NoPerm < FullPerm) && qpRange21(a_2, i) ==> (invRecv21(a_2, i) == a_2 && 1 == i) && QPMask[null, pred2(a_2, i)] == Mask[null, pred2(a_2, i)] - FullPerm
      );
      assume (forall a_2: Ref, i: int ::
        { QPMask[null, pred2(a_2, i)] }
        !((Seq#Contains(xs, invRecv21(a_2, i)) && NoPerm < FullPerm) && qpRange21(a_2, i)) ==> QPMask[null, pred2(a_2, i)] == Mask[null, pred2(a_2, i)]
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
    assume state(Heap, Mask);
}