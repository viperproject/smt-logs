// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:56:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedcombinations/functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

function  neverTriggered1(i_4_1: int): bool;
function  neverTriggered2(i_4_1: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i_2_1: int): bool;
function  neverTriggered5(i_3: int): bool;
function  neverTriggered6(i_4_1: int): bool;
function  neverTriggered7(i_1: int): bool;
function  neverTriggered8(i_3: int): bool;
function  neverTriggered9(i_4_1: int): bool;
function  neverTriggered10(i_5: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(x: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(x: Ref): int;
function  invRecv8(x_1: Ref): int;
function  invRecv9(x_2_2: Ref): int;
function  invRecv10(x_3: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(x: Ref): bool;
function  qpRange8(x_1: Ref): bool;
function  qpRange9(x_2_2: Ref): bool;
function  qpRange10(x_3: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 3: get_f
// - height 2: get_P
// - height 1: fun_P
// - height 0: fun_f
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

// ==================================================
// Translation of function fun_f
// ==================================================

// Uninterpreted function definitions
function  fun_f(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
function  fun_f'(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_f(Heap, xs, j_9) }
  fun_f(Heap, xs, j_9) == fun_f'(Heap, xs, j_9) && dummyFunction(fun_f#triggerStateless(xs, j_9))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_f'(Heap, xs, j_9) }
  dummyFunction(fun_f#triggerStateless(xs, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun_f(Heap, xs, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (forall ix_20: int, jx_20: int ::
    { Seq#Index(xs, ix_20), Seq#Index(xs, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(xs) && (jx_20 >= 0 && (jx_20 < Seq#Length(xs) && ix_20 != jx_20))) ==> Seq#Index(xs, ix_20) != Seq#Index(xs, jx_20)
  ) && (0 <= j_9 && j_9 < Seq#Length(xs)) ==> fun_f(Heap, xs, j_9) == get_f(Heap, Seq#Index(xs, j_9))
);

// Framing axioms
function  fun_f#frame(frame: FrameType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun_f'(Heap, xs, j_9) }
  state(Heap, Mask) ==> fun_f'(Heap, xs, j_9) == fun_f#frame(FrameFragment(fun_f#condqp1(Heap, xs, j_9)), xs, j_9)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write)) in function fun_f
// ==================================================

function  fun_f#condqp1(Heap: HeapType, xs_1_1: (Seq Ref), j_1_1_1: int): int;
function  sk_fun_f#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) && sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) && sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) && sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(xs, sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9))), f_7] == Heap1Heap[Seq#Index(xs, sk_fun_f#condqp1(fun_f#condqp1(Heap2Heap, xs, j_9), fun_f#condqp1(Heap1Heap, xs, j_9))), f_7]) ==> fun_f#condqp1(Heap2Heap, xs, j_9) == fun_f#condqp1(Heap1Heap, xs, j_9)
);

// Trigger function (controlling recursive postconditions)
function  fun_f#trigger(frame: FrameType, xs: (Seq Ref), j_9: int): bool;

// State-independent trigger function
function  fun_f#triggerStateless(xs: (Seq Ref), j_9: int): int;

// Check contract well-formedness and postcondition
procedure fun_f#definedness(xs: (Seq Ref), j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix: int;
  var jx: int;
  var i_2: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { xs[ix], xs[jx] } ix >= 0 && (ix < |xs| && (jx >= 0 && (jx < |xs| && ix != jx))) ==> xs[ix] != xs[jx])
      if (*) {
        if (ix >= 0 && (ix < Seq#Length(xs) && (jx >= 0 && (jx < Seq#Length(xs) && ix != jx)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[ix] into xs might be negative. (functions.vpr@7.12--7.116) [103646]"}
            ix >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[ix] into xs might exceed sequence length. (functions.vpr@7.12--7.116) [103647]"}
            ix < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[jx] into xs might be negative. (functions.vpr@7.12--7.116) [103648]"}
            jx >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[jx] into xs might exceed sequence length. (functions.vpr@7.12--7.116) [103649]"}
            jx < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(xs, ix_3), Seq#Index(xs, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(xs) && (jx_3 >= 0 && (jx_3 < Seq#Length(xs) && ix_3 != jx_3))) ==> Seq#Index(xs, ix_3) != Seq#Index(xs, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(xs[i].f, write))
      if (*) {
        if (0 <= i_2 && i_2 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@8.12--8.64) [103650]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@8.12--8.64) [103651]"}
            i_2 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource xs[i].f might not be injective. (functions.vpr@8.12--8.64) [103652]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < Seq#Length(xs))) && (0 <= i_4_2 && i_4_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#Index(xs, i_4_1) }
        (0 <= i_4_1 && i_4_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange1(Seq#Index(xs, i_4_1)) && invRecv1(Seq#Index(xs, i_4_1)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(xs, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { Seq#Index(xs, i_4_1) } { Seq#Index(xs, i_4_1) }
        0 <= i_4_1 && i_4_1 < Seq#Length(xs) ==> Seq#Index(xs, i_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= j_9;
    assume j_9 < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of get_f(xs[j])
      assert {:msg "  Function might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@6.1--10.17) [103653]"}
        j_9 >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@6.1--10.17) [103654]"}
        j_9 < Seq#Length(xs);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_f might not hold. There might be insufficient permission to access xs[j].f (functions.vpr@10.3--10.15) [103655]"}
          NoPerm < perm ==> NoPerm < Mask[Seq#Index(xs, j_9), f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := get_f(Heap, Seq#Index(xs, j_9));
}

// ==================================================
// Translation of function get_f
// ==================================================

// Uninterpreted function definitions
function  get_f(Heap: HeapType, x: Ref): int;
function  get_f'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get_f(Heap, x) }
  get_f(Heap, x) == get_f'(Heap, x) && dummyFunction(get_f#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get_f'(Heap, x) }
  dummyFunction(get_f#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get_f(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> get_f(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  get_f#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get_f'(Heap, x) }
  state(Heap, Mask) ==> get_f'(Heap, x) == get_f#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  get_f#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get_f#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get_f#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@12.1--14.8) [103656]"}
        HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function fun_P
// ==================================================

// Uninterpreted function definitions
function  fun_P(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
function  fun_P'(Heap: HeapType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_P(Heap, xs, j_9) }
  fun_P(Heap, xs, j_9) == fun_P'(Heap, xs, j_9) && dummyFunction(fun_P#triggerStateless(xs, j_9))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_P'(Heap, xs, j_9) }
  dummyFunction(fun_P#triggerStateless(xs, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun_P(Heap, xs, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (forall ix_20: int, jx_20: int ::
    { Seq#Index(xs, ix_20), Seq#Index(xs, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(xs) && (jx_20 >= 0 && (jx_20 < Seq#Length(xs) && ix_20 != jx_20))) ==> Seq#Index(xs, ix_20) != Seq#Index(xs, jx_20)
  ) && (0 <= j_9 && j_9 < Seq#Length(xs)) ==> fun_P(Heap, xs, j_9) == get_P(Heap, Seq#Index(xs, j_9))
);

// Framing axioms
function  fun_P#frame(frame: FrameType, xs: (Seq Ref), j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), j_9: int ::
  { state(Heap, Mask), fun_P'(Heap, xs, j_9) }
  state(Heap, Mask) ==> fun_P'(Heap, xs, j_9) == fun_P#frame(FrameFragment(fun_P#condqp2(Heap, xs, j_9)), xs, j_9)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(P(xs[i]), write)) in function fun_P
// ==================================================

function  fun_P#condqp2(Heap: HeapType, xs_1_1: (Seq Ref), j_1_1_1: int): int;
function  sk_fun_P#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Seq Ref), j_9: int ::
  { fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) && sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm <==> (0 <= sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) && sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm) && ((0 <= sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) && sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9)) < Seq#Length(xs)) && NoPerm < FullPerm ==> Heap2Heap[null, P(Seq#Index(xs, sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9))))] == Heap1Heap[null, P(Seq#Index(xs, sk_fun_P#condqp2(fun_P#condqp2(Heap2Heap, xs, j_9), fun_P#condqp2(Heap1Heap, xs, j_9))))]) ==> fun_P#condqp2(Heap2Heap, xs, j_9) == fun_P#condqp2(Heap1Heap, xs, j_9)
);

// Trigger function (controlling recursive postconditions)
function  fun_P#trigger(frame: FrameType, xs: (Seq Ref), j_9: int): bool;

// State-independent trigger function
function  fun_P#triggerStateless(xs: (Seq Ref), j_9: int): int;

// Check contract well-formedness and postcondition
procedure fun_P#definedness(xs: (Seq Ref), j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_2: int;
  var jx_2: int;
  var i_6: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { xs[ix], xs[jx] } ix >= 0 && (ix < |xs| && (jx >= 0 && (jx < |xs| && ix != jx))) ==> xs[ix] != xs[jx])
      if (*) {
        if (ix_2 >= 0 && (ix_2 < Seq#Length(xs) && (jx_2 >= 0 && (jx_2 < Seq#Length(xs) && ix_2 != jx_2)))) {
          assert {:msg "  Contract might not be well-formed. Index xs[ix] into xs might be negative. (functions.vpr@39.12--39.116) [103657]"}
            ix_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[ix] into xs might exceed sequence length. (functions.vpr@39.12--39.116) [103658]"}
            ix_2 < Seq#Length(xs);
          assert {:msg "  Contract might not be well-formed. Index xs[jx] into xs might be negative. (functions.vpr@39.12--39.116) [103659]"}
            jx_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[jx] into xs might exceed sequence length. (functions.vpr@39.12--39.116) [103660]"}
            jx_2 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(xs, ix_3), Seq#Index(xs, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(xs) && (jx_3 >= 0 && (jx_3 < Seq#Length(xs) && ix_3 != jx_3))) ==> Seq#Index(xs, ix_3) != Seq#Index(xs, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { xs[i] } 0 <= i && i < |xs| ==> acc(P(xs[i]), write))
      if (*) {
        if (0 <= i_6 && i_6 < Seq#Length(xs)) {
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might be negative. (functions.vpr@40.12--40.60) [103661]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index xs[i] into xs might exceed sequence length. (functions.vpr@40.12--40.60) [103662]"}
            i_6 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(xs[i]), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(xs[i]) might not be injective. (functions.vpr@40.12--40.60) [103663]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered2(i_4_1), neverTriggered2(i_4_2) }
        (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < Seq#Length(xs))) && (0 <= i_4_2 && i_4_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, i_4_1) != Seq#Index(xs, i_4_2)
      );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Heap[null, P(Seq#Index(xs, i_4_1))] } { Mask[null, P(Seq#Index(xs, i_4_1))] } { Seq#Index(xs, i_4_1) }
        (0 <= i_4_1 && i_4_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> invRecv2(Seq#Index(xs, i_4_1)) == i_4_1 && qpRange2(Seq#Index(xs, i_4_1))
      );
      assume (forall x: Ref ::
        { invRecv2(x) }
        ((0 <= invRecv2(x) && invRecv2(x) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(x) ==> Seq#Index(xs, invRecv2(x)) == x
      );
    
    // -- Define updated permissions
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        ((0 <= invRecv2(x) && invRecv2(x) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(x) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv2(x)) == x) && QPMask[null, P(x)] == Mask[null, P(x)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        !(((0 <= invRecv2(x) && invRecv2(x) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange2(x)) ==> QPMask[null, P(x)] == Mask[null, P(x)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= j_9;
    assume j_9 < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of get_P(xs[j])
      assert {:msg "  Function might not be well-formed. Index xs[j] into xs might be negative. (functions.vpr@38.1--42.17) [103664]"}
        j_9 >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[j] into xs might exceed sequence length. (functions.vpr@38.1--42.17) [103665]"}
        j_9 < Seq#Length(xs);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_P might not hold. There might be insufficient permission to access P(xs[j]) (functions.vpr@42.3--42.15) [103666]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(Seq#Index(xs, j_9))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := get_P(Heap, Seq#Index(xs, j_9));
}

// ==================================================
// Translation of function get_P
// ==================================================

// Uninterpreted function definitions
function  get_P(Heap: HeapType, x: Ref): int;
function  get_P'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get_P(Heap, x) }
  get_P(Heap, x) == get_P'(Heap, x) && dummyFunction(get_P#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get_P'(Heap, x) }
  dummyFunction(get_P#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get_P(Heap, x) } { state(Heap, Mask), get_P#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> get_P(Heap, x) == get_f(Heap, x)
);

// Framing axioms
function  get_P#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get_P'(Heap, x) } { state(Heap, Mask), get_P#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) ==> get_P'(Heap, x) == get_P#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  get_P#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get_P#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get_P#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), write) in get_f(x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (functions.vpr@44.1--46.31) [103667]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_f might not hold. There might be insufficient permission to access x.f (functions.vpr@46.21--46.29) [103668]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := get_f(Heap, x);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_f
// ==================================================

procedure test_f() returns ()
  modifies Heap, Mask;
{
  var l1_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var k: int;
  var ys: (Seq Ref);
  var ix_21: int;
  var jx_21: int;
  var i_8: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_2_1: int;
  var jx_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var Labell1Mask: MaskType;
  var Labell1Heap: HeapType;
  var ix_4_1: int;
  var jx_4_1: int;
  var j_10: int;
  var ix_6: int;
  var jx_6: int;
  var j_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    l1_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= k -- functions.vpr@19.10--19.16
    assume 0 <= k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k < |ys| -- functions.vpr@19.20--19.28
    assume k < Seq#Length(ys);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall ix: Int, jx: Int ::
  //     { ys[ix], ys[jx] }
  //     ix >= 0 && (ix < |ys| && (jx >= 0 && (jx < |ys| && ix != jx))) ==>
  //     ys[ix] != ys[jx]) -- functions.vpr@21.3--21.114
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ys[ix], ys[jx] } ix >= 0 && (ix < |ys| && (jx >= 0 && (jx < |ys| && ix != jx))) ==> ys[ix] != ys[jx])
      if (*) {
        if (ix_21 >= 0 && (ix_21 < Seq#Length(ys) && (jx_21 >= 0 && (jx_21 < Seq#Length(ys) && ix_21 != jx_21)))) {
          assert {:msg "  Inhale might fail. Index ys[ix] into ys might be negative. (functions.vpr@21.10--21.114) [103669]"}
            ix_21 >= 0;
          assert {:msg "  Inhale might fail. Index ys[ix] into ys might exceed sequence length. (functions.vpr@21.10--21.114) [103670]"}
            ix_21 < Seq#Length(ys);
          assert {:msg "  Inhale might fail. Index ys[jx] into ys might be negative. (functions.vpr@21.10--21.114) [103671]"}
            jx_21 >= 0;
          assert {:msg "  Inhale might fail. Index ys[jx] into ys might exceed sequence length. (functions.vpr@21.10--21.114) [103672]"}
            jx_21 < Seq#Length(ys);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(ys, ix_1), Seq#Index(ys, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(ys) && (jx_1 >= 0 && (jx_1 < Seq#Length(ys) && ix_1 != jx_1))) ==> Seq#Index(ys, ix_1) != Seq#Index(ys, jx_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { ys[i] }
  //     0 <= i && i < |ys| ==> acc(ys[i].f, write)) -- functions.vpr@22.3--22.62
    
    // -- Check definedness of (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(ys[i].f, write))
      if (*) {
        if (0 <= i_8 && i_8 < Seq#Length(ys)) {
          assert {:msg "  Inhale might fail. Index ys[i] into ys might be negative. (functions.vpr@22.10--22.62) [103673]"}
            i_8 >= 0;
          assert {:msg "  Inhale might fail. Index ys[i] into ys might exceed sequence length. (functions.vpr@22.10--22.62) [103674]"}
            i_8 < Seq#Length(ys);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource ys[i].f might not be injective. (functions.vpr@22.10--22.62) [103675]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(ys))) && (0 <= i_1_1 && i_1_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_1) != Seq#Index(ys, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(ys, i_1) } { Seq#Index(ys, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange3(Seq#Index(ys, i_1)) && invRecv3(Seq#Index(ys, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4) ==> Seq#Index(ys, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(ys, i_1) } { Seq#Index(ys, i_1) }
        0 <= i_1 && i_1 < Seq#Length(ys) ==> Seq#Index(ys, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ys, invRecv3(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun_f(ys, k) == 0 -- functions.vpr@23.3--23.27
    assume state(Heap, Mask);
    
    // -- Check definedness of fun_f(ys, k) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (ix_2_1 >= 0 && (ix_2_1 < Seq#Length(ys) && (jx_2_1 >= 0 && (jx_2_1 < Seq#Length(ys) && ix_2_1 != jx_2_1)))) {
            assert {:msg "  Precondition of function fun_f might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@23.10--23.22) [103676]"}
              Seq#Index(ys, ix_2_1) != Seq#Index(ys, jx_2_1);
          }
          assume false;
        }
        assume (forall ix_3_1: int, jx_3_1: int ::
          { Seq#Index(ys, ix_3_1), Seq#Index(ys, jx_3_1) }
          ix_3_1 >= 0 && (ix_3_1 < Seq#Length(ys) && (jx_3_1 >= 0 && (jx_3_1 < Seq#Length(ys) && ix_3_1 != jx_3_1))) ==> Seq#Index(ys, ix_3_1) != Seq#Index(ys, jx_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver ys[i] is injective
          assert {:msg "  Precondition of function fun_f might not hold. Quantified resource ys[i].f might not be injective. (functions.vpr@23.10--23.22) [103677]"}
            (forall i_2_1: int, i_2_2: int ::
            { neverTriggered4(i_2_1), neverTriggered4(i_2_2) }
            (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < Seq#Length(ys))) && (0 <= i_2_2 && i_2_2 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_2_1) != Seq#Index(ys, i_2_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun_f might not hold. There might be insufficient permission to access ys[i].f (functions.vpr@23.10--23.22) [103678]"}
            (forall i_2_1: int ::
            { Seq#Index(ys, i_2_1) } { Seq#Index(ys, i_2_1) }
            0 <= i_2_1 && i_2_1 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Mask[Seq#Index(ys, i_2_1), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver ys[i]
          assume (forall i_2_1: int ::
            { Seq#Index(ys, i_2_1) } { Seq#Index(ys, i_2_1) }
            (0 <= i_2_1 && i_2_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange4(Seq#Index(ys, i_2_1)) && invRecv4(Seq#Index(ys, i_2_1)) == i_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(ys)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(ys, invRecv4(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun_f might not hold. Assertion 0 <= k might not hold. (functions.vpr@23.10--23.22) [103679]"}
          0 <= k;
        assert {:msg "  Precondition of function fun_f might not hold. Assertion k < |ys| might not hold. (functions.vpr@23.10--23.22) [103680]"}
          k < Seq#Length(ys);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun_f(Heap, ys, k) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale get_f(ys[k]) == 0 -- functions.vpr@24.3--24.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get_f(ys[k]) == 0
      assert {:msg "  Exhale might fail. Index ys[k] into ys might be negative. (functions.vpr@24.10--24.27) [103681]"}
        k >= 0;
      assert {:msg "  Exhale might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@24.10--24.27) [103682]"}
        k < Seq#Length(ys);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_f might not hold. There might be insufficient permission to access ys[k].f (functions.vpr@24.10--24.22) [103683]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[Seq#Index(ys, k), f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion get_f(ys[k]) == 0 might not hold. (functions.vpr@24.10--24.27) [103684]"}
      get_f(Heap, Seq#Index(ys, k)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: label l1 -- functions.vpr@26.3--26.11
    l1_2:
    Labell1Mask := Mask;
    Labell1Heap := Heap;
    l1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: ys[k].f := ys[k].f - 1 -- functions.vpr@28.3--28.25
    
    // -- Check definedness of ys[k]
      assert {:msg "  Assignment might fail. Index ys[k] into ys might be negative. (functions.vpr@28.3--28.25) [103685]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@28.3--28.25) [103686]"}
        k < Seq#Length(ys);
    
    // -- Check definedness of ys[k].f - 1
      assert {:msg "  Assignment might fail. Index ys[k] into ys might be negative. (functions.vpr@28.3--28.25) [103687]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@28.3--28.25) [103688]"}
        k < Seq#Length(ys);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access ys[k].f (functions.vpr@28.3--28.25) [103689]"}
        HasDirectPerm(Mask, Seq#Index(ys, k), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ys[k].f (functions.vpr@28.3--28.25) [103690]"}
      FullPerm == Mask[Seq#Index(ys, k), f_7];
    Heap := Heap[Seq#Index(ys, k), f_7:=Heap[Seq#Index(ys, k), f_7] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get_f(ys[k]) < old[l1](fun_f(ys, k)) -- functions.vpr@30.3--30.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get_f(ys[k]) < old[l1](fun_f(ys, k))
      assert {:msg "  Assert might fail. Index ys[k] into ys might be negative. (functions.vpr@30.10--30.46) [103691]"}
        k >= 0;
      assert {:msg "  Assert might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@30.10--30.46) [103692]"}
        k < Seq#Length(ys);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_f might not hold. There might be insufficient permission to access ys[k].f (functions.vpr@30.10--30.22) [103693]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[Seq#Index(ys, k), f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state l1 required to evaluate old[l1](fun_f(ys, k)). (functions.vpr@30.10--30.46) [103694]"}
        l1_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := Labell1Mask;
        ExhaleWellDef1Heap := Labell1Heap;
        if (*) {
          if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ys) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ys) && ix_4_1 != jx_4_1)))) {
            assert {:msg "  Precondition of function fun_f might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@30.33--30.45) [103695]"}
              Seq#Index(ys, ix_4_1) != Seq#Index(ys, jx_4_1);
          }
          assume false;
        }
        assume (forall ix_5_1: int, jx_5_1: int ::
          { Seq#Index(ys, ix_5_1), Seq#Index(ys, jx_5_1) }
          ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ys) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ys) && ix_5_1 != jx_5_1))) ==> Seq#Index(ys, ix_5_1) != Seq#Index(ys, jx_5_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver ys[i] is injective
          assert {:msg "  Precondition of function fun_f might not hold. Quantified resource ys[i].f might not be injective. (functions.vpr@30.33--30.45) [103696]"}
            (forall i_3: int, i_3_1: int ::
            { neverTriggered5(i_3), neverTriggered5(i_3_1) }
            (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(ys))) && (0 <= i_3_1 && i_3_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_3) != Seq#Index(ys, i_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun_f might not hold. There might be insufficient permission to access ys[i].f (functions.vpr@30.33--30.45) [103697]"}
            (forall i_3: int ::
            { Seq#Index(ys, i_3) } { Seq#Index(ys, i_3) }
            0 <= i_3 && i_3 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Labell1Mask[Seq#Index(ys, i_3), f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver ys[i]
          assume (forall i_3: int ::
            { Seq#Index(ys, i_3) } { Seq#Index(ys, i_3) }
            (0 <= i_3 && i_3 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange5(Seq#Index(ys, i_3)) && invRecv5(Seq#Index(ys, i_3)) == i_3
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(ys)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> Seq#Index(ys, invRecv5(o_4)) == o_4
          );
        assert {:msg "  Precondition of function fun_f might not hold. Assertion 0 <= k might not hold. (functions.vpr@30.33--30.45) [103698]"}
          0 <= k;
        assert {:msg "  Precondition of function fun_f might not hold. Assertion k < |ys| might not hold. (functions.vpr@30.33--30.45) [103699]"}
          k < Seq#Length(ys);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
        Labell1Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get_f(ys[k]) < old[l1](fun_f(ys, k)) might not hold. (functions.vpr@30.10--30.46) [103700]"}
      get_f(Heap, Seq#Index(ys, k)) < fun_f(Labell1Heap, ys, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { get_f(ys[j]) }
  //     { old[l1](fun_f(ys, j)) }
  //     0 <= j && (j < |ys| && j != k) ==>
  //     get_f(ys[j]) == old[l1](fun_f(ys, j))) -- functions.vpr@31.3--31.97
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { get_f(ys[j]) } { old[l1](fun_f(ys, j)) } 0 <= j && (j < |ys| && j != k) ==> get_f(ys[j]) == old[l1](fun_f(ys, j)))
      if (*) {
        if (0 <= j_10 && (j_10 < Seq#Length(ys) && j_10 != k)) {
          assert {:msg "  Assert might fail. Index ys[j] into ys might be negative. (functions.vpr@31.10--31.97) [103701]"}
            j_10 >= 0;
          assert {:msg "  Assert might fail. Index ys[j] into ys might exceed sequence length. (functions.vpr@31.10--31.97) [103702]"}
            j_10 < Seq#Length(ys);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get_f might not hold. There might be insufficient permission to access ys[j].f (functions.vpr@31.60--31.72) [103703]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[Seq#Index(ys, j_10), f_7];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. Did not reach labelled state l1 required to evaluate old[l1](fun_f(ys, j)). (functions.vpr@31.10--31.97) [103704]"}
            l1_lblGuard;
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := Labell1Mask;
            ExhaleWellDef1Heap := Labell1Heap;
            if (*) {
              if (ix_6 >= 0 && (ix_6 < Seq#Length(ys) && (jx_6 >= 0 && (jx_6 < Seq#Length(ys) && ix_6 != jx_6)))) {
                assert {:msg "  Precondition of function fun_f might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@31.84--31.96) [103705]"}
                  Seq#Index(ys, ix_6) != Seq#Index(ys, jx_6);
              }
              assume false;
            }
            assume (forall ix_7_1: int, jx_7_1: int ::
              { Seq#Index(ys, ix_7_1), Seq#Index(ys, jx_7_1) }
              ix_7_1 >= 0 && (ix_7_1 < Seq#Length(ys) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(ys) && ix_7_1 != jx_7_1))) ==> Seq#Index(ys, ix_7_1) != Seq#Index(ys, jx_7_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver ys[i] is injective
              assert {:msg "  Precondition of function fun_f might not hold. Quantified resource ys[i].f might not be injective. (functions.vpr@31.84--31.96) [103706]"}
                (forall i_4_1: int, i_4_2: int ::
                { neverTriggered6(i_4_1), neverTriggered6(i_4_2) }
                (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < Seq#Length(ys))) && (0 <= i_4_2 && i_4_2 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_4_1) != Seq#Index(ys, i_4_2)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function fun_f might not hold. There might be insufficient permission to access ys[i].f (functions.vpr@31.84--31.96) [103707]"}
                (forall i_4_1: int ::
                { Seq#Index(ys, i_4_1) } { Seq#Index(ys, i_4_1) }
                0 <= i_4_1 && i_4_1 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Labell1Mask[Seq#Index(ys, i_4_1), f_7] > NoPerm
              );
            
            // -- assumptions for inverse of receiver ys[i]
              assume (forall i_4_1: int ::
                { Seq#Index(ys, i_4_1) } { Seq#Index(ys, i_4_1) }
                (0 <= i_4_1 && i_4_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> qpRange6(Seq#Index(ys, i_4_1)) && invRecv6(Seq#Index(ys, i_4_1)) == i_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                (0 <= invRecv6(o_4) && invRecv6(o_4) < Seq#Length(ys)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(ys, invRecv6(o_4)) == o_4
              );
            assert {:msg "  Precondition of function fun_f might not hold. Assertion 0 <= j might not hold. (functions.vpr@31.84--31.96) [103708]"}
              0 <= j_10;
            assert {:msg "  Precondition of function fun_f might not hold. Assertion j < |ys| might not hold. (functions.vpr@31.84--31.96) [103709]"}
              j_10 < Seq#Length(ys);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
            Labell1Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && (j_1 < Seq#Length(ys) && j_1 != k)) {
        assert {:msg "  Assert might fail. Assertion get_f(ys[j]) == old[l1](fun_f(ys, j)) might not hold. (functions.vpr@31.10--31.97) [103710]"}
          get_f(Heap, Seq#Index(ys, j_1)) == fun_f(Labell1Heap, ys, j_1);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { get_f#frame(FrameFragment(Heap[Seq#Index(ys, j_2_1_1), f_7]), Seq#Index(ys, j_2_1_1)) } { fun_f#frame(FrameFragment(fun_f#condqp1(Labell1Heap, ys, j_2_1_1)), ys, j_2_1_1) }
      0 <= j_2_1_1 && (j_2_1_1 < Seq#Length(ys) && j_2_1_1 != k) ==> get_f(Heap, Seq#Index(ys, j_2_1_1)) == fun_f(Labell1Heap, ys, j_2_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_P
// ==================================================

procedure test_P() returns ()
  modifies Heap, Mask;
{
  var l1_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var k: int;
  var ys: (Seq Ref);
  var ix_26: int;
  var jx_26: int;
  var i_11: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_2_1: int;
  var jx_2_1: int;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var Labell1Mask: MaskType;
  var Labell1Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ix_4_1: int;
  var jx_4_1: int;
  var j_25: int;
  var ix_6: int;
  var jx_6: int;
  var j_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    l1_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= k -- functions.vpr@51.10--51.16
    assume 0 <= k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k < |ys| -- functions.vpr@51.20--51.28
    assume k < Seq#Length(ys);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall ix: Int, jx: Int ::
  //     { ys[ix], ys[jx] }
  //     ix >= 0 && (ix < |ys| && (jx >= 0 && (jx < |ys| && ix != jx))) ==>
  //     ys[ix] != ys[jx]) -- functions.vpr@53.3--53.114
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ys[ix], ys[jx] } ix >= 0 && (ix < |ys| && (jx >= 0 && (jx < |ys| && ix != jx))) ==> ys[ix] != ys[jx])
      if (*) {
        if (ix_26 >= 0 && (ix_26 < Seq#Length(ys) && (jx_26 >= 0 && (jx_26 < Seq#Length(ys) && ix_26 != jx_26)))) {
          assert {:msg "  Inhale might fail. Index ys[ix] into ys might be negative. (functions.vpr@53.10--53.114) [103711]"}
            ix_26 >= 0;
          assert {:msg "  Inhale might fail. Index ys[ix] into ys might exceed sequence length. (functions.vpr@53.10--53.114) [103712]"}
            ix_26 < Seq#Length(ys);
          assert {:msg "  Inhale might fail. Index ys[jx] into ys might be negative. (functions.vpr@53.10--53.114) [103713]"}
            jx_26 >= 0;
          assert {:msg "  Inhale might fail. Index ys[jx] into ys might exceed sequence length. (functions.vpr@53.10--53.114) [103714]"}
            jx_26 < Seq#Length(ys);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(ys, ix_1), Seq#Index(ys, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(ys) && (jx_1 >= 0 && (jx_1 < Seq#Length(ys) && ix_1 != jx_1))) ==> Seq#Index(ys, ix_1) != Seq#Index(ys, jx_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { ys[i] }
  //     0 <= i && i < |ys| ==> acc(P(ys[i]), write)) -- functions.vpr@54.3--54.58
    
    // -- Check definedness of (forall i: Int :: { ys[i] } 0 <= i && i < |ys| ==> acc(P(ys[i]), write))
      if (*) {
        if (0 <= i_11 && i_11 < Seq#Length(ys)) {
          assert {:msg "  Inhale might fail. Index ys[i] into ys might be negative. (functions.vpr@54.10--54.58) [103715]"}
            i_11 >= 0;
          assert {:msg "  Inhale might fail. Index ys[i] into ys might exceed sequence length. (functions.vpr@54.10--54.58) [103716]"}
            i_11 < Seq#Length(ys);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(ys[i]), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(ys[i]) might not be injective. (functions.vpr@54.10--54.58) [103717]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered7(i_1), neverTriggered7(i_1_1) }
        (((i_1 != i_1_1 && (0 <= i_1 && i_1 < Seq#Length(ys))) && (0 <= i_1_1 && i_1_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_1) != Seq#Index(ys, i_1_1)
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, P(Seq#Index(ys, i_1))] } { Mask[null, P(Seq#Index(ys, i_1))] } { Seq#Index(ys, i_1) }
        (0 <= i_1 && i_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> invRecv7(Seq#Index(ys, i_1)) == i_1 && qpRange7(Seq#Index(ys, i_1))
      );
      assume (forall x: Ref ::
        { invRecv7(x) }
        ((0 <= invRecv7(x) && invRecv7(x) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange7(x) ==> Seq#Index(ys, invRecv7(x)) == x
      );
    
    // -- Define updated permissions
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        ((0 <= invRecv7(x) && invRecv7(x) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange7(x) ==> (NoPerm < FullPerm ==> Seq#Index(ys, invRecv7(x)) == x) && QPMask[null, P(x)] == Mask[null, P(x)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: Ref ::
        { QPMask[null, P(x)] }
        !(((0 <= invRecv7(x) && invRecv7(x) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange7(x)) ==> QPMask[null, P(x)] == Mask[null, P(x)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun_P(ys, k) == 0 -- functions.vpr@55.3--55.27
    assume state(Heap, Mask);
    
    // -- Check definedness of fun_P(ys, k) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (ix_2_1 >= 0 && (ix_2_1 < Seq#Length(ys) && (jx_2_1 >= 0 && (jx_2_1 < Seq#Length(ys) && ix_2_1 != jx_2_1)))) {
            assert {:msg "  Precondition of function fun_P might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@55.10--55.22) [103718]"}
              Seq#Index(ys, ix_2_1) != Seq#Index(ys, jx_2_1);
          }
          assume false;
        }
        assume (forall ix_3_1: int, jx_3_1: int ::
          { Seq#Index(ys, ix_3_1), Seq#Index(ys, jx_3_1) }
          ix_3_1 >= 0 && (ix_3_1 < Seq#Length(ys) && (jx_3_1 >= 0 && (jx_3_1 < Seq#Length(ys) && ix_3_1 != jx_3_1))) ==> Seq#Index(ys, ix_3_1) != Seq#Index(ys, jx_3_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(P(ys[i]), write) is injective
          assert {:msg "  Precondition of function fun_P might not hold. Quantified resource P(ys[i]) might not be injective. (functions.vpr@55.10--55.22) [103719]"}
            (forall i_3: int, i_3_1: int ::
            { neverTriggered8(i_3), neverTriggered8(i_3_1) }
            (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(ys))) && (0 <= i_3_1 && i_3_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_3) != Seq#Index(ys, i_3_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun_P might not hold. There might be insufficient permission to access P(ys[i]) (functions.vpr@55.10--55.22) [103720]"}
            (forall i_3: int ::
            { Heap[null, P(Seq#Index(ys, i_3))] } { Mask[null, P(Seq#Index(ys, i_3))] } { Seq#Index(ys, i_3) }
            0 <= i_3 && i_3 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Mask[null, P(Seq#Index(ys, i_3))] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(ys[i]), write)
          assume (forall i_3: int ::
            { Heap[null, P(Seq#Index(ys, i_3))] } { Mask[null, P(Seq#Index(ys, i_3))] } { Seq#Index(ys, i_3) }
            (0 <= i_3 && i_3 < Seq#Length(ys)) && NoPerm < FullPerm ==> invRecv8(Seq#Index(ys, i_3)) == i_3 && qpRange8(Seq#Index(ys, i_3))
          );
          assume (forall x_1: Ref ::
            { invRecv8(x_1) }
            ((0 <= invRecv8(x_1) && invRecv8(x_1) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange8(x_1) ==> Seq#Index(ys, invRecv8(x_1)) == x_1
          );
        assert {:msg "  Precondition of function fun_P might not hold. Assertion 0 <= k might not hold. (functions.vpr@55.10--55.22) [103721]"}
          0 <= k;
        assert {:msg "  Precondition of function fun_P might not hold. Assertion k < |ys| might not hold. (functions.vpr@55.10--55.22) [103722]"}
          k < Seq#Length(ys);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun_P(Heap, ys, k) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale get_P(ys[k]) == 0 -- functions.vpr@56.3--56.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get_P(ys[k]) == 0
      assert {:msg "  Exhale might fail. Index ys[k] into ys might be negative. (functions.vpr@56.10--56.27) [103723]"}
        k >= 0;
      assert {:msg "  Exhale might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@56.10--56.27) [103724]"}
        k < Seq#Length(ys);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_P might not hold. There might be insufficient permission to access P(ys[k]) (functions.vpr@56.10--56.22) [103725]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(Seq#Index(ys, k))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion get_P(ys[k]) == 0 might not hold. (functions.vpr@56.10--56.27) [103726]"}
      get_P(Heap, Seq#Index(ys, k)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: label l1 -- functions.vpr@58.3--58.11
    l1_2:
    Labell1Mask := Mask;
    Labell1Heap := Heap;
    l1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(ys[k]), write) -- functions.vpr@60.3--60.18
    
    // -- Check definedness of acc(P(ys[k]), write)
      assert {:msg "  Unfolding P(ys[k]) might fail. Index ys[k] into ys might be negative. (functions.vpr@60.3--60.18) [103727]"}
        k >= 0;
      assert {:msg "  Unfolding P(ys[k]) might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@60.3--60.18) [103728]"}
        k < Seq#Length(ys);
    assume P#trigger(Heap, P(Seq#Index(ys, k)));
    assume Heap[null, P(Seq#Index(ys, k))] == FrameFragment(Heap[Seq#Index(ys, k), f_7]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(ys[k]) might fail. There might be insufficient permission to access P(ys[k]) (functions.vpr@60.3--60.18) [103731]"}
        perm <= Mask[null, P(Seq#Index(ys, k))];
    }
    Mask := Mask[null, P(Seq#Index(ys, k)):=Mask[null, P(Seq#Index(ys, k))] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(Seq#Index(ys, k)))) {
        havoc newVersion;
        Heap := Heap[null, P(Seq#Index(ys, k)):=newVersion];
      }
    perm := FullPerm;
    assume Seq#Index(ys, k) != null;
    Mask := Mask[Seq#Index(ys, k), f_7:=Mask[Seq#Index(ys, k), f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: ys[k].f := ys[k].f - 1 -- functions.vpr@61.3--61.25
    
    // -- Check definedness of ys[k]
      assert {:msg "  Assignment might fail. Index ys[k] into ys might be negative. (functions.vpr@61.3--61.25) [103733]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@61.3--61.25) [103734]"}
        k < Seq#Length(ys);
    
    // -- Check definedness of ys[k].f - 1
      assert {:msg "  Assignment might fail. Index ys[k] into ys might be negative. (functions.vpr@61.3--61.25) [103735]"}
        k >= 0;
      assert {:msg "  Assignment might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@61.3--61.25) [103736]"}
        k < Seq#Length(ys);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access ys[k].f (functions.vpr@61.3--61.25) [103737]"}
        HasDirectPerm(Mask, Seq#Index(ys, k), f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ys[k].f (functions.vpr@61.3--61.25) [103738]"}
      FullPerm == Mask[Seq#Index(ys, k), f_7];
    Heap := Heap[Seq#Index(ys, k), f_7:=Heap[Seq#Index(ys, k), f_7] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(ys[k]), write) -- functions.vpr@62.3--62.16
    
    // -- Check definedness of acc(P(ys[k]), write)
      assert {:msg "  Folding P(ys[k]) might fail. Index ys[k] into ys might be negative. (functions.vpr@62.3--62.16) [103739]"}
        k >= 0;
      assert {:msg "  Folding P(ys[k]) might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@62.3--62.16) [103740]"}
        k < Seq#Length(ys);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(ys[k]) might fail. There might be insufficient permission to access ys[k].f (functions.vpr@62.3--62.16) [103743]"}
        perm <= Mask[Seq#Index(ys, k), f_7];
    }
    Mask := Mask[Seq#Index(ys, k), f_7:=Mask[Seq#Index(ys, k), f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(Seq#Index(ys, k)):=Mask[null, P(Seq#Index(ys, k))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(Seq#Index(ys, k)));
    assume Heap[null, P(Seq#Index(ys, k))] == FrameFragment(Heap[Seq#Index(ys, k), f_7]);
    if (!HasDirectPerm(Mask, null, P(Seq#Index(ys, k)))) {
      Heap := Heap[null, P#sm(Seq#Index(ys, k)):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(Seq#Index(ys, k)):=freshVersion];
    }
    Heap := Heap[null, P#sm(Seq#Index(ys, k)):=Heap[null, P#sm(Seq#Index(ys, k))][Seq#Index(ys, k), f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get_P(ys[k]) < old[l1](fun_P(ys, k)) -- functions.vpr@64.3--64.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get_P(ys[k]) < old[l1](fun_P(ys, k))
      assert {:msg "  Assert might fail. Index ys[k] into ys might be negative. (functions.vpr@64.10--64.46) [103745]"}
        k >= 0;
      assert {:msg "  Assert might fail. Index ys[k] into ys might exceed sequence length. (functions.vpr@64.10--64.46) [103746]"}
        k < Seq#Length(ys);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get_P might not hold. There might be insufficient permission to access P(ys[k]) (functions.vpr@64.10--64.22) [103747]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(Seq#Index(ys, k))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. Did not reach labelled state l1 required to evaluate old[l1](fun_P(ys, k)). (functions.vpr@64.10--64.46) [103748]"}
        l1_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := Labell1Mask;
        ExhaleWellDef1Heap := Labell1Heap;
        if (*) {
          if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ys) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ys) && ix_4_1 != jx_4_1)))) {
            assert {:msg "  Precondition of function fun_P might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@64.33--64.45) [103749]"}
              Seq#Index(ys, ix_4_1) != Seq#Index(ys, jx_4_1);
          }
          assume false;
        }
        assume (forall ix_5_1: int, jx_5_1: int ::
          { Seq#Index(ys, ix_5_1), Seq#Index(ys, jx_5_1) }
          ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ys) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ys) && ix_5_1 != jx_5_1))) ==> Seq#Index(ys, ix_5_1) != Seq#Index(ys, jx_5_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(P(ys[i]), write) is injective
          assert {:msg "  Precondition of function fun_P might not hold. Quantified resource P(ys[i]) might not be injective. (functions.vpr@64.33--64.45) [103750]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered9(i_4_1), neverTriggered9(i_4_2) }
            (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < Seq#Length(ys))) && (0 <= i_4_2 && i_4_2 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_4_1) != Seq#Index(ys, i_4_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun_P might not hold. There might be insufficient permission to access P(ys[i]) (functions.vpr@64.33--64.45) [103751]"}
            (forall i_4_1: int ::
            { Labell1Heap[null, P(Seq#Index(ys, i_4_1))] } { Labell1Mask[null, P(Seq#Index(ys, i_4_1))] } { Seq#Index(ys, i_4_1) }
            0 <= i_4_1 && i_4_1 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Labell1Mask[null, P(Seq#Index(ys, i_4_1))] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(ys[i]), write)
          assume (forall i_4_1: int ::
            { Labell1Heap[null, P(Seq#Index(ys, i_4_1))] } { Labell1Mask[null, P(Seq#Index(ys, i_4_1))] } { Seq#Index(ys, i_4_1) }
            (0 <= i_4_1 && i_4_1 < Seq#Length(ys)) && NoPerm < FullPerm ==> invRecv9(Seq#Index(ys, i_4_1)) == i_4_1 && qpRange9(Seq#Index(ys, i_4_1))
          );
          assume (forall x_2_2: Ref ::
            { invRecv9(x_2_2) }
            ((0 <= invRecv9(x_2_2) && invRecv9(x_2_2) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange9(x_2_2) ==> Seq#Index(ys, invRecv9(x_2_2)) == x_2_2
          );
        assert {:msg "  Precondition of function fun_P might not hold. Assertion 0 <= k might not hold. (functions.vpr@64.33--64.45) [103752]"}
          0 <= k;
        assert {:msg "  Precondition of function fun_P might not hold. Assertion k < |ys| might not hold. (functions.vpr@64.33--64.45) [103753]"}
          k < Seq#Length(ys);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
        Labell1Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get_P(ys[k]) < old[l1](fun_P(ys, k)) might not hold. (functions.vpr@64.10--64.46) [103754]"}
      get_P(Heap, Seq#Index(ys, k)) < fun_P(Labell1Heap, ys, k);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { get_P(ys[j]) }
  //     { old[l1](fun_P(ys, j)) }
  //     0 <= j && (j < |ys| && j != k) ==>
  //     get_P(ys[j]) == old[l1](fun_P(ys, j))) -- functions.vpr@65.3--65.97
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { get_P(ys[j]) } { old[l1](fun_P(ys, j)) } 0 <= j && (j < |ys| && j != k) ==> get_P(ys[j]) == old[l1](fun_P(ys, j)))
      if (*) {
        if (0 <= j_25 && (j_25 < Seq#Length(ys) && j_25 != k)) {
          assert {:msg "  Assert might fail. Index ys[j] into ys might be negative. (functions.vpr@65.10--65.97) [103755]"}
            j_25 >= 0;
          assert {:msg "  Assert might fail. Index ys[j] into ys might exceed sequence length. (functions.vpr@65.10--65.97) [103756]"}
            j_25 < Seq#Length(ys);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get_P might not hold. There might be insufficient permission to access P(ys[j]) (functions.vpr@65.60--65.72) [103757]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(Seq#Index(ys, j_25))];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. Did not reach labelled state l1 required to evaluate old[l1](fun_P(ys, j)). (functions.vpr@65.10--65.97) [103758]"}
            l1_lblGuard;
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := Labell1Mask;
            ExhaleWellDef1Heap := Labell1Heap;
            if (*) {
              if (ix_6 >= 0 && (ix_6 < Seq#Length(ys) && (jx_6 >= 0 && (jx_6 < Seq#Length(ys) && ix_6 != jx_6)))) {
                assert {:msg "  Precondition of function fun_P might not hold. Assertion ys[ix] != ys[jx] might not hold. (functions.vpr@65.84--65.96) [103759]"}
                  Seq#Index(ys, ix_6) != Seq#Index(ys, jx_6);
              }
              assume false;
            }
            assume (forall ix_7_1: int, jx_7_1: int ::
              { Seq#Index(ys, ix_7_1), Seq#Index(ys, jx_7_1) }
              ix_7_1 >= 0 && (ix_7_1 < Seq#Length(ys) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(ys) && ix_7_1 != jx_7_1))) ==> Seq#Index(ys, ix_7_1) != Seq#Index(ys, jx_7_1)
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver acc(P(ys[i]), write) is injective
              assert {:msg "  Precondition of function fun_P might not hold. Quantified resource P(ys[i]) might not be injective. (functions.vpr@65.84--65.96) [103760]"}
                (forall i_5: int, i_5_1: int ::
                { neverTriggered10(i_5), neverTriggered10(i_5_1) }
                (((i_5 != i_5_1 && (0 <= i_5 && i_5 < Seq#Length(ys))) && (0 <= i_5_1 && i_5_1 < Seq#Length(ys))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ys, i_5) != Seq#Index(ys, i_5_1)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function fun_P might not hold. There might be insufficient permission to access P(ys[i]) (functions.vpr@65.84--65.96) [103761]"}
                (forall i_5: int ::
                { Labell1Heap[null, P(Seq#Index(ys, i_5))] } { Labell1Mask[null, P(Seq#Index(ys, i_5))] } { Seq#Index(ys, i_5) }
                0 <= i_5 && i_5 < Seq#Length(ys) ==> FullPerm > NoPerm ==> Labell1Mask[null, P(Seq#Index(ys, i_5))] > NoPerm
              );
            
            // -- assumptions for inverse of receiver acc(P(ys[i]), write)
              assume (forall i_5: int ::
                { Labell1Heap[null, P(Seq#Index(ys, i_5))] } { Labell1Mask[null, P(Seq#Index(ys, i_5))] } { Seq#Index(ys, i_5) }
                (0 <= i_5 && i_5 < Seq#Length(ys)) && NoPerm < FullPerm ==> invRecv10(Seq#Index(ys, i_5)) == i_5 && qpRange10(Seq#Index(ys, i_5))
              );
              assume (forall x_3: Ref ::
                { invRecv10(x_3) }
                ((0 <= invRecv10(x_3) && invRecv10(x_3) < Seq#Length(ys)) && NoPerm < FullPerm) && qpRange10(x_3) ==> Seq#Index(ys, invRecv10(x_3)) == x_3
              );
            assert {:msg "  Precondition of function fun_P might not hold. Assertion 0 <= j might not hold. (functions.vpr@65.84--65.96) [103762]"}
              0 <= j_25;
            assert {:msg "  Precondition of function fun_P might not hold. Assertion j < |ys| might not hold. (functions.vpr@65.84--65.96) [103763]"}
              j_25 < Seq#Length(ys);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Labell1Heap, ExhaleHeap, Labell1Mask);
            Labell1Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= j_1 && (j_1 < Seq#Length(ys) && j_1 != k)) {
        assert {:msg "  Assert might fail. Assertion get_P(ys[j]) == old[l1](fun_P(ys, j)) might not hold. (functions.vpr@65.10--65.97) [103764]"}
          get_P(Heap, Seq#Index(ys, j_1)) == fun_P(Labell1Heap, ys, j_1);
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { get_P#frame(Heap[null, P(Seq#Index(ys, j_2_1_1))], Seq#Index(ys, j_2_1_1)) } { fun_P#frame(FrameFragment(fun_P#condqp2(Labell1Heap, ys, j_2_1_1)), ys, j_2_1_1) }
      0 <= j_2_1_1 && (j_2_1_1 < Seq#Length(ys) && j_2_1_1 != k) ==> get_P(Heap, Seq#Index(ys, j_2_1_1)) == fun_P(Labell1Heap, ys, j_2_1_1)
    );
    assume state(Heap, Mask);
}