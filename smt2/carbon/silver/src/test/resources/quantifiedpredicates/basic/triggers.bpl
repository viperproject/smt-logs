// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:57:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/triggers.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/triggers-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
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
function  neverTriggered2(x_4: Ref): bool;
function  neverTriggered3(x_6: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(y_1: Ref): bool;
function  neverTriggered6(x_1: Ref): bool;
function  neverTriggered7(y_1: Ref): bool;
function  neverTriggered8(y_3_2: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
function  neverTriggered10(y_1: Ref): bool;
function  neverTriggered11(y_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_1_1_1: Ref): Ref;
function  invRecv2(r_2_1_1: Ref): Ref;
function  invRecv3(r_3_1: Ref): Ref;
function  invRecv4(r_1_1_1: Ref): Ref;
function  invRecv5(r_2_1_1: Ref): Ref;
function  invRecv6(r_1_1_1: Ref): Ref;
function  invRecv7(r_2_1_1: Ref): Ref;
function  invRecv8(r_3_1: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_1_1_1: Ref): bool;
function  qpRange2(r_2_1_1: Ref): bool;
function  qpRange3(r_3_1: Ref): bool;
function  qpRange4(r_1_1_1: Ref): bool;
function  qpRange5(r_2_1_1: Ref): bool;
function  qpRange6(r_1_1_1: Ref): bool;
function  qpRange7(r_2_1_1: Ref): bool;
function  qpRange8(r_3_1: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: fun2
// - height 0: fun
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

// ==================================================
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, r_1: Ref, i: int): Ref;
function  fun'(Heap: HeapType, r_1: Ref, i: int): Ref;
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { fun(Heap, r_1, i) }
  fun(Heap, r_1, i) == fun'(Heap, r_1, i) && dummyFunction(fun#triggerStateless(r_1, i))
);
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { fun'(Heap, r_1, i) }
  dummyFunction(fun#triggerStateless(r_1, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), fun(Heap, r_1, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun(Heap, r_1, i) == r_1
);

// Framing axioms
function  fun#frame(frame: FrameType, r_1: Ref, i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), fun'(Heap, r_1, i) }
  state(Heap, Mask) ==> fun'(Heap, r_1, i) == fun#frame(EmptyFrame, r_1, i)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, r_1: Ref, i: int): bool;

// State-independent trigger function
function  fun#triggerStateless(r_1: Ref, i: int): Ref;

// Check contract well-formedness and postcondition
procedure fun#definedness(r_1: Ref, i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := r_1;
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, r_1: Ref): Ref;
function  fun2'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { fun2(Heap, r_1) }
  fun2(Heap, r_1) == fun2'(Heap, r_1) && dummyFunction(fun2#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { fun2'(Heap, r_1) }
  dummyFunction(fun2#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), fun2(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun2(Heap, r_1) == r_1
);

// Framing axioms
function  fun2#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), fun2'(Heap, r_1) }
  state(Heap, Mask) ==> fun2'(Heap, r_1) == fun2#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure fun2#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := r_1;
}

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
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(xs: (Seq Ref), r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var x_33: Ref;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_10: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_8_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { fun(x, i) } (x in xs) ==> acc(pred(fun(x, i)), write))
      if (*) {
        if (Seq#Contains(xs, x_33)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun(x, i)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun(x, i)) might not be injective. (triggers.vpr@18.14--18.63) [106669]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun(Heap, x_1, i) != fun(Heap, x_1_1, i)
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { Mask[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) } { fun#frame(EmptyFrame, x_1, i) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv1(fun(Heap, x_1, i)) == x_1 && qpRange1(fun(Heap, x_1, i))
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv1(r_1_1_1) }
        (Seq#Contains(xs, invRecv1(r_1_1_1)) && NoPerm < FullPerm) && qpRange1(r_1_1_1) ==> fun(Heap, invRecv1(r_1_1_1), i) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        (Seq#Contains(xs, invRecv1(r_1_1_1)) && NoPerm < FullPerm) && qpRange1(r_1_1_1) ==> (NoPerm < FullPerm ==> fun(Heap, invRecv1(r_1_1_1), i) == r_1_1_1) && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !((Seq#Contains(xs, invRecv1(r_1_1_1)) && NoPerm < FullPerm) && qpRange1(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { fun2(x) } (x in xs) ==> acc(pred(fun2(x)), write))
      if (*) {
        if (Seq#Contains(xs, x_10)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun2(x)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(x)) might not be injective. (triggers.vpr@19.13--19.59) [106670]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered2(x_4), neverTriggered2(x_4_1) }
        (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(PostHeap, x_4) != fun2(PostHeap, x_4_1)
      );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { PostHeap[null, pred_3(fun2#frame(EmptyFrame, x_4))] } { PostMask[null, pred_3(fun2#frame(EmptyFrame, x_4))] } { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) } { fun2#frame(EmptyFrame, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> invRecv2(fun2(PostHeap, x_4)) == x_4 && qpRange2(fun2(PostHeap, x_4))
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv2(r_2_1_1) }
        (Seq#Contains(xs, invRecv2(r_2_1_1)) && NoPerm < FullPerm) && qpRange2(r_2_1_1) ==> fun2(PostHeap, invRecv2(r_2_1_1)) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        (Seq#Contains(xs, invRecv2(r_2_1_1)) && NoPerm < FullPerm) && qpRange2(r_2_1_1) ==> (NoPerm < FullPerm ==> fun2(PostHeap, invRecv2(r_2_1_1)) == r_2_1_1) && QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        !((Seq#Contains(xs, invRecv2(r_2_1_1)) && NoPerm < FullPerm) && qpRange2(r_2_1_1)) ==> QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert (forall x: Ref :: { fun(x, i) } { fun2(x) } fun(x, i) == fun2(x)) -- triggers.vpr@21.5--21.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { fun(x, i) } { fun2(x) } fun(x, i) == fun2(x))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion fun(x, i) == fun2(x) might not hold. (triggers.vpr@21.12--21.49) [106671]"}
        fun(Heap, x_8_1, i) == fun2(Heap, x_8_1);
      assume false;
    }
    assume (forall x_9_1: Ref ::
      { fun#frame(EmptyFrame, x_9_1, i) } { fun2#frame(EmptyFrame, x_9_1) }
      fun(Heap, x_9_1, i) == fun2(Heap, x_9_1)
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(fun2(x)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(x)) might not be injective. (triggers.vpr@19.13--19.59) [106672]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered3(x_6), neverTriggered3(x_6_1) }
        (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(Heap, x_6) != fun2(Heap, x_6_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access pred(fun2(x)) (triggers.vpr@19.13--19.59) [106673]"}
        (forall x_6: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, x_6))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, x_6))] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) } { fun2#frame(EmptyFrame, x_6) }
        Seq#Contains(xs, x_6) ==> Mask[null, pred_3(fun2(Heap, x_6))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(fun2(x)), write)
      assume (forall x_6: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, x_6))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, x_6))] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) } { fun2#frame(EmptyFrame, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> invRecv3(fun2(Heap, x_6)) == x_6 && qpRange3(fun2(Heap, x_6))
      );
      assume (forall r_3_1: Ref ::
        { invRecv3(r_3_1) }
        (Seq#Contains(xs, invRecv3(r_3_1)) && NoPerm < FullPerm) && qpRange3(r_3_1) ==> fun2(Heap, invRecv3(r_3_1)) == r_3_1
      );
    
    // -- assume permission updates
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        (Seq#Contains(xs, invRecv3(r_3_1)) && NoPerm < FullPerm) && qpRange3(r_3_1) ==> fun2(Heap, invRecv3(r_3_1)) == r_3_1 && QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)] - FullPerm
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        !((Seq#Contains(xs, invRecv3(r_3_1)) && NoPerm < FullPerm) && qpRange3(r_3_1)) ==> QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)]
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
// Translation of method t4a
// ==================================================

procedure t4a(xs: (Seq Ref), r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x_11: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var y_11: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { fun2(x) }
  //     (x in xs) ==> acc(pred(fun(x, i)), write)) -- triggers.vpr@25.3--25.68
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { fun2(x) } (x in xs) ==> acc(pred(fun(x, i)), write))
      if (*) {
        if (Seq#Contains(xs, x_11)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun(x, i)), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource pred(fun(x, i)) might not be injective. (triggers.vpr@25.10--25.68) [106674]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered4(x_1), neverTriggered4(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun(Heap, x_1, i) != fun(Heap, x_1_1, i)
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { Mask[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { fun2#frame(EmptyFrame, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv4(fun(Heap, x_1, i)) == x_1 && qpRange4(fun(Heap, x_1, i))
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv4(r_1_1_1) }
        (Seq#Contains(xs, invRecv4(r_1_1_1)) && NoPerm < FullPerm) && qpRange4(r_1_1_1) ==> fun(Heap, invRecv4(r_1_1_1), i) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        (Seq#Contains(xs, invRecv4(r_1_1_1)) && NoPerm < FullPerm) && qpRange4(r_1_1_1) ==> (NoPerm < FullPerm ==> fun(Heap, invRecv4(r_1_1_1), i) == r_1_1_1) && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !((Seq#Contains(xs, invRecv4(r_1_1_1)) && NoPerm < FullPerm) && qpRange4(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall y: Ref ::
  //     { fun(y, i) }
  //     (y in xs) ==> acc(pred(fun2(y)), write)) -- triggers.vpr@26.3--26.68
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall y: Ref :: { fun(y, i) } (y in xs) ==> acc(pred(fun2(y)), write))
      if (*) {
        if (Seq#Contains(xs, y_11)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(fun2(y)), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource pred(fun2(y)) might not be injective. (triggers.vpr@26.10--26.68) [106676]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered5(y_1), neverTriggered5(y_1_1) }
        (((y_1 != y_1_1 && Seq#Contains(xs, y_1)) && Seq#Contains(xs, y_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(Heap, y_1) != fun2(Heap, y_1_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access pred(fun2(y)) (triggers.vpr@26.10--26.68) [106677]"}
        (forall y_1: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) ==> Mask[null, pred_3(fun2(Heap, y_1))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(fun2(y)), write)
      assume (forall y_1: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) && NoPerm < FullPerm ==> invRecv5(fun2(Heap, y_1)) == y_1 && qpRange5(fun2(Heap, y_1))
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv5(r_2_1_1) }
        (Seq#Contains(xs, invRecv5(r_2_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1_1) ==> fun2(Heap, invRecv5(r_2_1_1)) == r_2_1_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        (Seq#Contains(xs, invRecv5(r_2_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1_1) ==> fun2(Heap, invRecv5(r_2_1_1)) == r_2_1_1 && QPMask[null, pred_3(r_2_1_1)] == Mask[null, pred_3(r_2_1_1)] - FullPerm
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        !((Seq#Contains(xs, invRecv5(r_2_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1_1)) ==> QPMask[null, pred_3(r_2_1_1)] == Mask[null, pred_3(r_2_1_1)]
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

// ==================================================
// Translation of method t4b
// ==================================================

procedure t4b(xs: (Seq Ref), r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var x_32: Ref;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y_12: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { fun2(x) } (x in xs) ==> acc(pred(fun(x, i)), write))
      if (*) {
        if (Seq#Contains(xs, x_32)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun(x, i)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun(x, i)) might not be injective. (triggers.vpr@30.12--30.70) [106678]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered6(x_1), neverTriggered6(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun(Heap, x_1, i) != fun(Heap, x_1_1, i)
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { Mask[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { fun2#frame(EmptyFrame, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv6(fun(Heap, x_1, i)) == x_1 && qpRange6(fun(Heap, x_1, i))
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv6(r_1_1_1) }
        (Seq#Contains(xs, invRecv6(r_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_1_1_1) ==> fun(Heap, invRecv6(r_1_1_1), i) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        (Seq#Contains(xs, invRecv6(r_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_1_1_1) ==> (NoPerm < FullPerm ==> fun(Heap, invRecv6(r_1_1_1), i) == r_1_1_1) && QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1_1)] }
        !((Seq#Contains(xs, invRecv6(r_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_1_1_1)) ==> QPMask[null, pred_3(r_1_1_1)] == Mask[null, pred_3(r_1_1_1)]
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall y: Ref :: { fun(y, i) } (y in xs) ==> acc(pred(fun2(y)), write))
      if (*) {
        if (Seq#Contains(xs, y_12)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun2(y)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(y)) might not be injective. (triggers.vpr@31.12--31.70) [106679]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered7(y_1), neverTriggered7(y_1_1) }
        (((y_1 != y_1_1 && Seq#Contains(xs, y_1)) && Seq#Contains(xs, y_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(PostHeap, y_1) != fun2(PostHeap, y_1_1)
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { PostHeap[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { PostMask[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) && NoPerm < FullPerm ==> invRecv7(fun2(PostHeap, y_1)) == y_1 && qpRange7(fun2(PostHeap, y_1))
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv7(r_2_1_1) }
        (Seq#Contains(xs, invRecv7(r_2_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1_1) ==> fun2(PostHeap, invRecv7(r_2_1_1)) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        (Seq#Contains(xs, invRecv7(r_2_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1_1) ==> (NoPerm < FullPerm ==> fun2(PostHeap, invRecv7(r_2_1_1)) == r_2_1_1) && QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, pred_3(r_2_1_1)] }
        !((Seq#Contains(xs, invRecv7(r_2_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1_1)) ==> QPMask[null, pred_3(r_2_1_1)] == PostMask[null, pred_3(r_2_1_1)]
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
      
    
    // -- check if receiver acc(pred(fun2(y)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(y)) might not be injective. (triggers.vpr@31.12--31.70) [106680]"}
        (forall y_3_2: Ref, y_3_3: Ref ::
        { neverTriggered8(y_3_2), neverTriggered8(y_3_3) }
        (((y_3_2 != y_3_3 && Seq#Contains(xs, y_3_2)) && Seq#Contains(xs, y_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(Heap, y_3_2) != fun2(Heap, y_3_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t4b might not hold. There might be insufficient permission to access pred(fun2(y)) (triggers.vpr@31.12--31.70) [106681]"}
        (forall y_3_2: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { fun#frame(EmptyFrame, y_3_2, i) }
        Seq#Contains(xs, y_3_2) ==> Mask[null, pred_3(fun2(Heap, y_3_2))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(fun2(y)), write)
      assume (forall y_3_2: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { fun#frame(EmptyFrame, y_3_2, i) }
        Seq#Contains(xs, y_3_2) && NoPerm < FullPerm ==> invRecv8(fun2(Heap, y_3_2)) == y_3_2 && qpRange8(fun2(Heap, y_3_2))
      );
      assume (forall r_3_1: Ref ::
        { invRecv8(r_3_1) }
        (Seq#Contains(xs, invRecv8(r_3_1)) && NoPerm < FullPerm) && qpRange8(r_3_1) ==> fun2(Heap, invRecv8(r_3_1)) == r_3_1
      );
    
    // -- assume permission updates
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        (Seq#Contains(xs, invRecv8(r_3_1)) && NoPerm < FullPerm) && qpRange8(r_3_1) ==> fun2(Heap, invRecv8(r_3_1)) == r_3_1 && QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)] - FullPerm
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, pred_3(r_3_1)] }
        !((Seq#Contains(xs, invRecv8(r_3_1)) && NoPerm < FullPerm) && qpRange8(r_3_1)) ==> QPMask[null, pred_3(r_3_1)] == Mask[null, pred_3(r_3_1)]
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
// Translation of method t5b
// ==================================================

procedure t5b(xs: (Seq Ref), r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var x_18: Ref;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y_13: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { fun2(x) } (x in xs) ==> acc(fun(x, i).f, write))
      if (*) {
        if (Seq#Contains(xs, x_18)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource fun(x, i).f might not be injective. (triggers.vpr@35.12--35.66) [106682]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun(Heap, x_1, i) != fun(Heap, x_1_1, i)
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { fun#frame(EmptyFrame, x_1, i) } { fun2#frame(EmptyFrame, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange9(fun(Heap, x_1, i)) && invRecv9(fun(Heap, x_1, i)) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> fun(Heap, invRecv9(o_4), i) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { fun#frame(EmptyFrame, x_1, i) } { fun2#frame(EmptyFrame, x_1) }
        Seq#Contains(xs, x_1) ==> fun(Heap, x_1, i) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> fun(Heap, invRecv9(o_4), i) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv9(o_4)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall y: Ref :: { fun(y, i) } (y in xs) ==> acc(fun2(y).f, write))
      if (*) {
        if (Seq#Contains(xs, y_13)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource fun2(y).f might not be injective. (triggers.vpr@36.12--36.66) [106683]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && Seq#Contains(xs, y_1)) && Seq#Contains(xs, y_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(PostHeap, y_1) != fun2(PostHeap, y_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { fun2#frame(EmptyFrame, y_1) } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) && NoPerm < FullPerm ==> qpRange10(fun2(PostHeap, y_1)) && invRecv10(fun2(PostHeap, y_1)) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> fun2(PostHeap, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { fun2#frame(EmptyFrame, y_1) } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) ==> fun2(PostHeap, y_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> fun2(PostHeap, invRecv10(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(xs, invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver fun2(y) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource fun2(y).f might not be injective. (triggers.vpr@36.12--36.66) [106684]"}
        (forall y_2: Ref, y_2_1: Ref ::
        { neverTriggered11(y_2), neverTriggered11(y_2_1) }
        (((y_2 != y_2_1 && Seq#Contains(xs, y_2)) && Seq#Contains(xs, y_2_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(Heap, y_2) != fun2(Heap, y_2_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t5b might not hold. There might be insufficient permission to access fun2(y).f (triggers.vpr@36.12--36.66) [106685]"}
        (forall y_2: Ref ::
        { fun2#frame(EmptyFrame, y_2) } { fun#frame(EmptyFrame, y_2, i) }
        Seq#Contains(xs, y_2) ==> Mask[fun2(Heap, y_2), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver fun2(y)
      assume (forall y_2: Ref ::
        { fun2#frame(EmptyFrame, y_2) } { fun#frame(EmptyFrame, y_2, i) }
        Seq#Contains(xs, y_2) && NoPerm < FullPerm ==> qpRange11(fun2(Heap, y_2)) && invRecv11(fun2(Heap, y_2)) == y_2
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> fun2(Heap, invRecv11(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4)) ==> fun2(Heap, invRecv11(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv11(o_4)) && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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