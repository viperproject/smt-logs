// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:13:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_binomial_noauto-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_41: Ref, f_27: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_41, f_27] }
  Heap[o_41, $allocated] ==> Heap[Heap[o_41, f_27], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref, f_48: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, f_48] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_42, f_48) ==> Heap[o_42, f_48] == ExhaleHeap[o_42, f_48]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_42, $allocated] ==> ExhaleHeap[o_42, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_41: Ref, f_44: (Field A B), v: B ::
  { Heap[o_41, f_44:=v] }
  succHeap(Heap, Heap[o_41, f_44:=v])
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

function  neverTriggered1(tid_1: int): bool;
function  neverTriggered2(tid_5: int): bool;
function  neverTriggered3(tid_6_1: int): bool;
function  neverTriggered4(tid_1: int): bool;
function  neverTriggered5(tid_3: int): bool;
function  neverTriggered6(tid_4_1: int): bool;
function  neverTriggered7(_x_tid_1: int): bool;
function  neverTriggered8(_x_tid_3: int): bool;
function  neverTriggered9(_x_tid_1: int): bool;
function  neverTriggered10(_x_tid_3: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: demo__bin
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

const unique demo__ar: Field NormalField (Seq Ref);
axiom !IsPredicateField(demo__ar);
axiom !IsWandField(demo__ar);
const unique demo__tmp: Field NormalField (Seq Ref);
axiom !IsPredicateField(demo__tmp);
axiom !IsWandField(demo__tmp);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function demo__bin
// ==================================================

// Uninterpreted function definitions
function  demo__bin(Heap: HeapType, N: int, k: int): int;
function  demo__bin'(Heap: HeapType, N: int, k: int): int;
axiom (forall Heap: HeapType, N: int, k: int ::
  { demo__bin(Heap, N, k) }
  demo__bin(Heap, N, k) == demo__bin'(Heap, N, k) && dummyFunction(demo__bin#triggerStateless(N, k))
);
axiom (forall Heap: HeapType, N: int, k: int ::
  { demo__bin'(Heap, N, k) }
  dummyFunction(demo__bin#triggerStateless(N, k))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, N: int, k: int ::
  { state(Heap, Mask), demo__bin(Heap, N, k) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (N >= 0 && 0 <= k) && k <= N ==> demo__bin(Heap, N, k) == (if k == 0 || (k == N || N <= 0) then 1 else demo__bin'(Heap, N - 1, k - 1) + demo__bin'(Heap, N - 1, k))
);

// Framing axioms
function  demo__bin#frame(frame: FrameType, N: int, k: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, N: int, k: int ::
  { state(Heap, Mask), demo__bin'(Heap, N, k) }
  state(Heap, Mask) ==> demo__bin'(Heap, N, k) == demo__bin#frame(EmptyFrame, N, k)
);

// Trigger function (controlling recursive postconditions)
function  demo__bin#trigger(frame: FrameType, N: int, k: int): bool;

// State-independent trigger function
function  demo__bin#triggerStateless(N: int, k: int): int;

// Check contract well-formedness and postcondition
procedure demo__bin#definedness(N: int, k: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume N >= 0;
    assume state(Heap, Mask);
    assume 0 <= k;
    assume state(Heap, Mask);
    assume k <= N;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (k == 0 || (k == N || N <= 0) ? 1 : demo__bin(N - 1, k - 1) + demo__bin(N - 1, k))
      if (k == 0 || (k == N || N <= 0)) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_noauto.vpr@15.43--15.66) [36661]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k - 1 might not hold. (test_binomial_noauto.vpr@15.43--15.66) [36662]"}
            0 <= k - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k - 1 <= N - 1 might not hold. (test_binomial_noauto.vpr@15.43--15.66) [36663]"}
            k - 1 <= N - 1;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume demo__bin#trigger(EmptyFrame, N - 1, k - 1);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_noauto.vpr@15.69--15.88) [36664]"}
            N - 1 >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= k might not hold. (test_binomial_noauto.vpr@15.69--15.88) [36665]"}
            0 <= k;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion k <= N - 1 might not hold. (test_binomial_noauto.vpr@15.69--15.88) [36666]"}
            k <= N - 1;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume demo__bin#trigger(EmptyFrame, N - 1, k);
        }
      }
  
  // -- Translate function body
    Result := (if k == 0 || (k == N || N <= 0) then 1 else demo__bin(Heap, N - 1, k - 1) + demo__bin(Heap, N - 1, k));
}

// ==================================================
// Translation of method demo__main_main
// ==================================================

procedure demo__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_1: Ref;
  var __flatten_3: Ref;
  var __flatten_5: Ref;
  var __flatten_6: Ref;
  var __flatten_8: Ref;
  var __flatten_9: Ref;
  var __last_barrier: int;
  var N: int;
  var __flatten_2: int;
  var ExhaleHeap: HeapType;
  var __flatten_7: int;
  var __flatten_4: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@27.12--27.35) [36667]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@29.12--29.36) [36668]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@31.12--31.60) [36669]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@31.12--31.60) [36670]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@31.12--31.60) [36671]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, demo__ar], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@32.12--32.61) [36672]"}
        HasDirectPerm(Mask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@32.12--32.61) [36673]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@32.12--32.61) [36674]"}
        tid < Seq#Length(Heap[diz, demo__tmp]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@39.11--39.34) [36675]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@41.11--41.35) [36676]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@42.11--42.44) [36677]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@42.11--42.44) [36678]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@43.11--43.46) [36679]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@43.11--43.46) [36680]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@45.11--45.59) [36681]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@45.11--45.59) [36682]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@45.11--45.59) [36683]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, demo__ar], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@46.11--46.76) [36684]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@46.11--46.76) [36685]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@46.11--46.76) [36686]"}
        tid < Seq#Length(PostHeap[diz, demo__ar]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@46.11--46.76) [36687]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion gsize - 1 >= 0 might not hold. (test_binomial_noauto.vpr@46.51--46.76) [36688]"}
          gsize - 1 >= 0;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@46.51--46.76) [36689]"}
          0 <= tid;
        assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= gsize - 1 might not hold. (test_binomial_noauto.vpr@46.51--46.76) [36690]"}
          tid <= gsize - 1;
        // Stop execution
        assume false;
      }
    assume PostHeap[Seq#Index(PostHeap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(PostHeap, gsize - 1, tid);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_9, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_binomial_noauto.vpr@59.3--59.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: N := 1 -- test_binomial_noauto.vpr@60.3--60.9
    N := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := diz.demo__ar[tid] -- test_binomial_noauto.vpr@61.3--61.35
    
    // -- Check definedness of diz.demo__ar[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@61.3--61.35) [36691]"}
        HasDirectPerm(Mask, diz, demo__ar);
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@61.3--61.35) [36692]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@61.3--61.35) [36693]"}
        tid < Seq#Length(Heap[diz, demo__ar]);
    __flatten_1 := Seq#Index(Heap[diz, demo__ar], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := 1 -- test_binomial_noauto.vpr@62.3--62.19
    __flatten_2 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1.Ref__Integer_value := __flatten_2 -- test_binomial_noauto.vpr@63.3--63.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_1.Ref__Integer_value (test_binomial_noauto.vpr@63.3--63.48) [36694]"}
      FullPerm == Mask[__flatten_1, Ref__Integer_value];
    Heap := Heap[__flatten_1, Ref__Integer_value:=__flatten_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (N < gsize - 1) -- test_binomial_noauto.vpr@64.3--113.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= tid might not hold on entry. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@65.15--65.23) [36695]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not hold on entry. Assertion tid < tcount might not hold. (test_binomial_noauto.vpr@66.15--66.27) [36696]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not hold on entry. Assertion tid == lid might not hold. (test_binomial_noauto.vpr@67.15--67.25) [36697]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not hold on entry. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@68.15--68.30) [36698]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not hold on entry. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@69.15--69.23) [36699]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@70.15--70.42) [36700]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not hold on entry. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@71.15--71.38) [36701]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not hold on entry. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@72.15--72.43) [36702]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not hold on entry. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@73.15--73.39) [36703]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant gsize > 1 might not hold on entry. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@74.15--74.24) [36704]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not hold on entry. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@75.15--75.20) [36705]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not hold on entry. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@76.15--76.24) [36706]"}
          N < gsize;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.demo__ar[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@77.15--77.63) [36707]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not hold on entry. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@78.15--78.64) [36708]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold on entry. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_noauto.vpr@79.15--79.88) [36709]"}
          Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc __flatten_7, __flatten_9, __flatten_8, __flatten_6, N, __flatten_4, __flatten_5, __flatten_3;
      assume Heap[__flatten_9, $allocated];
      assume Heap[__flatten_8, $allocated];
      assume Heap[__flatten_6, $allocated];
      assume Heap[__flatten_5, $allocated];
      assume Heap[__flatten_3, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= tid;
        assume state(Heap, Mask);
        assume tid < tcount;
        assume state(Heap, Mask);
        assume tid == lid;
        assume state(Heap, Mask);
        assume tcount == gsize;
        assume state(Heap, Mask);
        assume gid == 0;
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of |diz.demo__ar| == gsize
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@71.15--71.38) [36710]"}
            HasDirectPerm(Mask, diz, demo__ar);
        assume Seq#Length(Heap[diz, demo__ar]) == gsize;
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of |diz.demo__tmp| == gsize
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@73.15--73.39) [36711]"}
            HasDirectPerm(Mask, diz, demo__tmp);
        assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assume state(Heap, Mask);
        assume gsize > 1;
        assume state(Heap, Mask);
        assume 0 < N;
        assume state(Heap, Mask);
        assume N < gsize;
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(diz.demo__ar[tid].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@77.15--77.63) [36712]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@77.15--77.63) [36713]"}
            tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@77.15--77.63) [36714]"}
            tid < Seq#Length(Heap[diz, demo__ar]);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__ar], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@78.15--78.64) [36715]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@78.15--78.64) [36716]"}
            tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@78.15--78.64) [36717]"}
            tid < Seq#Length(Heap[diz, demo__tmp]);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@79.15--79.88) [36718]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@79.15--79.88) [36719]"}
            tid >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@79.15--79.88) [36720]"}
            tid < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@79.15--79.88) [36721]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
          if (tid < N) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@79.66--79.83) [36722]"}
                N >= 0;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@79.66--79.83) [36723]"}
                0 <= tid;
              assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_noauto.vpr@79.66--79.83) [36724]"}
                tid <= N;
              // Stop execution
              assume false;
            }
          }
        assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
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
        assume 0 <= tid;
        assume tid < tcount;
        assume tid == lid;
        assume tcount == gsize;
        assume gid == 0;
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
        assume state(Heap, Mask);
        assume Seq#Length(Heap[diz, demo__ar]) == gsize;
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
        assume state(Heap, Mask);
        assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assume gsize > 1;
        assume 0 < N;
        assume N < gsize;
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__ar], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        assume state(Heap, Mask);
        // Check and assume guard
        assume N < gsize - 1;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_3 := diz.demo__tmp[tid] -- test_binomial_noauto.vpr@81.5--81.38
            
            // -- Check definedness of diz.demo__tmp[tid]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@81.5--81.38) [36725]"}
                HasDirectPerm(Mask, diz, demo__tmp);
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@81.5--81.38) [36726]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@81.5--81.38) [36727]"}
                tid < Seq#Length(Heap[diz, demo__tmp]);
            __flatten_3 := Seq#Index(Heap[diz, demo__tmp], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_5 := diz.demo__ar[tid] -- test_binomial_noauto.vpr@82.5--82.37
            
            // -- Check definedness of diz.demo__ar[tid]
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@82.5--82.37) [36728]"}
                HasDirectPerm(Mask, diz, demo__ar);
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@82.5--82.37) [36729]"}
                tid >= 0;
              assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@82.5--82.37) [36730]"}
                tid < Seq#Length(Heap[diz, demo__ar]);
            __flatten_5 := Seq#Index(Heap[diz, demo__ar], tid);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_4 := __flatten_5.Ref__Integer_value -- test_binomial_noauto.vpr@83.5--83.50
            
            // -- Check definedness of __flatten_5.Ref__Integer_value
              assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (test_binomial_noauto.vpr@83.5--83.50) [36731]"}
                HasDirectPerm(Mask, __flatten_5, Ref__Integer_value);
            __flatten_4 := Heap[__flatten_5, Ref__Integer_value];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_3.Ref__Integer_value := __flatten_4 -- test_binomial_noauto.vpr@84.5--84.50
            assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_binomial_noauto.vpr@84.5--84.50) [36732]"}
              FullPerm == Mask[__flatten_3, Ref__Integer_value];
            Heap := Heap[__flatten_3, Ref__Integer_value:=__flatten_4];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert gsize > 1 -- test_binomial_noauto.vpr@85.5--85.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@85.12--85.21) [36733]"}
              gsize > 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert 0 < N -- test_binomial_noauto.vpr@86.5--86.17
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@86.12--86.17) [36734]"}
              0 < N;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert N < gsize -- test_binomial_noauto.vpr@87.5--87.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@87.12--87.21) [36735]"}
              N < gsize;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert 0 <= tid && tid < N ==>
  //   diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid) -- test_binomial_noauto.vpr@88.5--88.100
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (0 <= tid && tid < N) {
              
              // -- Check definedness of diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid)
                assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@88.12--88.100) [36736]"}
                  HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                assert {:msg "  Assert might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@88.12--88.100) [36737]"}
                  tid >= 0;
                assert {:msg "  Assert might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@88.12--88.100) [36738]"}
                  tid < Seq#Length(Heap[diz, demo__tmp]);
                assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@88.12--88.100) [36739]"}
                  HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@88.82--88.99) [36740]"}
                    N >= 0;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@88.82--88.99) [36741]"}
                    0 <= tid;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_noauto.vpr@88.82--88.99) [36742]"}
                    tid <= N;
                  // Stop execution
                  assume false;
                }
              assert {:msg "  Assert might fail. Assertion diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid) might not hold. (test_binomial_noauto.vpr@88.12--88.100) [36743]"}
                Heap[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] == demo__bin(Heap, N, tid);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale tid < gsize - 1 ==>
  //   acc(diz.demo__tmp[tid].Ref__Integer_value, write) -- test_binomial_noauto.vpr@89.5--89.83
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (tid < gsize - 1) {
              
              // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
                assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@89.12--89.83) [36744]"}
                  HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                assert {:msg "  Exhale might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@89.12--89.83) [36745]"}
                  tid >= 0;
                assert {:msg "  Exhale might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@89.12--89.83) [36746]"}
                  tid < Seq#Length(Heap[diz, demo__tmp]);
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@89.12--89.83) [36747]"}
                  perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale gsize > 1 -- test_binomial_noauto.vpr@90.5--90.21
            assume gsize > 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale 0 < N -- test_binomial_noauto.vpr@91.5--91.17
            assume 0 < N;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale N < gsize -- test_binomial_noauto.vpr@92.5--92.21
            assume N < gsize;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write) -- test_binomial_noauto.vpr@93.5--93.79
            if (tid > 0) {
              
              // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
                assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@93.12--93.79) [36748]"}
                  HasDirectPerm(Mask, diz, demo__tmp);
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@93.12--93.79) [36749]"}
                  tid - 1 >= 0;
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@93.12--93.79) [36750]"}
                  tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
              perm := FullPerm;
              assume Seq#Index(Heap[diz, demo__tmp], tid - 1) != null;
              Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale 0 < tid && tid <= N ==>
  //   diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) -- test_binomial_noauto.vpr@94.5--94.108
            if (0 < tid && tid <= N) {
              assume state(Heap, Mask);
              
              // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
                assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@94.12--94.108) [36751]"}
                  HasDirectPerm(Mask, diz, demo__tmp);
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@94.12--94.108) [36752]"}
                  tid - 1 >= 0;
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@94.12--94.108) [36753]"}
                  tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_noauto.vpr@94.12--94.108) [36754]"}
                  HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@94.86--94.107) [36755]"}
                    N >= 0;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_noauto.vpr@94.86--94.107) [36756]"}
                    0 <= tid - 1;
                  assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_noauto.vpr@94.86--94.107) [36757]"}
                    tid - 1 <= N;
                  // Stop execution
                  assume false;
                }
              assume Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: N := N + 1 -- test_binomial_noauto.vpr@95.5--95.15
            N := N + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: if (0 < tid && tid < N) -- test_binomial_noauto.vpr@96.5--104.6
            if (0 < tid && tid < N) {
              
              // -- Translating statement: assert diz.demo__tmp[tid - 1].Ref__Integer_value ==
  //   demo__bin(N - 1, tid - 1) &&
  //   diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid) -- test_binomial_noauto.vpr@97.7--97.153
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@97.14--97.153) [36758]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@97.14--97.153) [36759]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@97.14--97.153) [36760]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_noauto.vpr@97.14--97.153) [36761]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_noauto.vpr@97.60--97.85) [36762]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_noauto.vpr@97.60--97.85) [36763]"}
                      0 <= tid - 1;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N - 1 might not hold. (test_binomial_noauto.vpr@97.60--97.85) [36764]"}
                      tid - 1 <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N - 1, tid - 1) might not hold. (test_binomial_noauto.vpr@97.14--97.153) [36765]"}
                  Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N - 1, tid - 1);
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@97.14--97.153) [36766]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@97.14--97.153) [36767]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@97.14--97.153) [36768]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@97.14--97.153) [36769]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N - 1 >= 0 might not hold. (test_binomial_noauto.vpr@97.131--97.152) [36770]"}
                      N - 1 >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@97.131--97.152) [36771]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N - 1 might not hold. (test_binomial_noauto.vpr@97.131--97.152) [36772]"}
                      tid <= N - 1;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N - 1, tid) might not hold. (test_binomial_noauto.vpr@97.14--97.153) [36773]"}
                  Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, N - 1, tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_6 := diz.demo__ar[tid] -- test_binomial_noauto.vpr@98.7--98.39
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@98.7--98.39) [36774]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@98.7--98.39) [36775]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@98.7--98.39) [36776]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_6 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_8 := diz.demo__tmp[tid - 1] -- test_binomial_noauto.vpr@99.7--99.44
                
                // -- Check definedness of diz.demo__tmp[tid - 1]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@99.7--99.44) [36777]"}
                    HasDirectPerm(Mask, diz, demo__tmp);
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@99.7--99.44) [36778]"}
                    tid - 1 >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@99.7--99.44) [36779]"}
                    tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
                __flatten_8 := Seq#Index(Heap[diz, demo__tmp], tid - 1);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_9 := diz.demo__ar[tid] -- test_binomial_noauto.vpr@100.7--100.39
                
                // -- Check definedness of diz.demo__ar[tid]
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@100.7--100.39) [36780]"}
                    HasDirectPerm(Mask, diz, demo__ar);
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@100.7--100.39) [36781]"}
                    tid >= 0;
                  assert {:msg "  Assignment might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@100.7--100.39) [36782]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                __flatten_9 := Seq#Index(Heap[diz, demo__ar], tid);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_7 := __flatten_8.Ref__Integer_value +
  //   __flatten_9.Ref__Integer_value -- test_binomial_noauto.vpr@101.7--101.85
                
                // -- Check definedness of __flatten_8.Ref__Integer_value + __flatten_9.Ref__Integer_value
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (test_binomial_noauto.vpr@101.7--101.85) [36783]"}
                    HasDirectPerm(Mask, __flatten_8, Ref__Integer_value);
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_9.Ref__Integer_value (test_binomial_noauto.vpr@101.7--101.85) [36784]"}
                    HasDirectPerm(Mask, __flatten_9, Ref__Integer_value);
                __flatten_7 := Heap[__flatten_8, Ref__Integer_value] + Heap[__flatten_9, Ref__Integer_value];
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_6.Ref__Integer_value := __flatten_7 -- test_binomial_noauto.vpr@102.7--102.52
                assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_binomial_noauto.vpr@102.7--102.52) [36785]"}
                  FullPerm == Mask[__flatten_6, Ref__Integer_value];
                Heap := Heap[__flatten_6, Ref__Integer_value:=__flatten_7];
                assume state(Heap, Mask);
              
              // -- Translating statement: assert diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) -- test_binomial_noauto.vpr@103.7--103.71
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@103.14--103.71) [36786]"}
                    HasDirectPerm(ExhaleWellDef0Mask, diz, demo__ar);
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@103.14--103.71) [36787]"}
                    tid >= 0;
                  assert {:msg "  Assert might fail. Index diz.demo__ar[tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@103.14--103.71) [36788]"}
                    tid < Seq#Length(Heap[diz, demo__ar]);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@103.14--103.71) [36789]"}
                    HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@103.54--103.71) [36790]"}
                      N >= 0;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@103.54--103.71) [36791]"}
                      0 <= tid;
                    assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_noauto.vpr@103.54--103.71) [36792]"}
                      tid <= N;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(N, tid) might not hold. (test_binomial_noauto.vpr@103.14--103.71) [36793]"}
                  Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, N, tid);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: assert gsize > 1 -- test_binomial_noauto.vpr@105.5--105.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@105.12--105.21) [36794]"}
              gsize > 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert 0 < N -- test_binomial_noauto.vpr@106.5--106.17
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@106.12--106.17) [36795]"}
              0 < N;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert N < gsize -- test_binomial_noauto.vpr@107.5--107.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@107.12--107.21) [36796]"}
              N < gsize;
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale tid > 0 ==> acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write) -- test_binomial_noauto.vpr@108.5--108.79
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (tid > 0) {
              
              // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
                assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@108.12--108.79) [36797]"}
                  HasDirectPerm(ExhaleWellDef0Mask, diz, demo__tmp);
                assert {:msg "  Exhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@108.12--108.79) [36798]"}
                  tid - 1 >= 0;
                assert {:msg "  Exhale might fail. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@108.12--108.79) [36799]"}
                  tid - 1 < Seq#Length(Heap[diz, demo__tmp]);
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_noauto.vpr@108.12--108.79) [36800]"}
                  perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
              }
              Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale gsize > 1 -- test_binomial_noauto.vpr@109.5--109.21
            assume gsize > 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale 0 < N -- test_binomial_noauto.vpr@110.5--110.17
            assume 0 < N;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale N < gsize -- test_binomial_noauto.vpr@111.5--111.21
            assume N < gsize;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale tid < gsize - 1 ==>
  //   acc(diz.demo__tmp[tid].Ref__Integer_value, write) -- test_binomial_noauto.vpr@112.5--112.83
            if (tid < gsize - 1) {
              
              // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
                assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@112.12--112.83) [36801]"}
                  HasDirectPerm(Mask, diz, demo__tmp);
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@112.12--112.83) [36802]"}
                  tid >= 0;
                assert {:msg "  Inhale might fail. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@112.12--112.83) [36803]"}
                  tid < Seq#Length(Heap[diz, demo__tmp]);
              perm := FullPerm;
              assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
              Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant 0 <= tid might not be preserved. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@65.15--65.23) [36804]"}
          0 <= tid;
        assert {:msg "  Loop invariant tid < tcount might not be preserved. Assertion tid < tcount might not hold. (test_binomial_noauto.vpr@66.15--66.27) [36805]"}
          tid < tcount;
        assert {:msg "  Loop invariant tid == lid might not be preserved. Assertion tid == lid might not hold. (test_binomial_noauto.vpr@67.15--67.25) [36806]"}
          tid == lid;
        assert {:msg "  Loop invariant tcount == gsize might not be preserved. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@68.15--68.30) [36807]"}
          tcount == gsize;
        assert {:msg "  Loop invariant gid == 0 might not be preserved. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@69.15--69.23) [36808]"}
          gid == 0;
        assert {:msg "  Loop invariant acc(diz.demo__ar, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@70.15--70.42) [36809]"}
          Mask[diz, demo__ar] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__ar];
        Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__ar| == gsize might not be preserved. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@71.15--71.38) [36810]"}
          Seq#Length(Heap[diz, demo__ar]) == gsize;
        assert {:msg "  Loop invariant acc(diz.demo__tmp, wildcard) might not be preserved. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@72.15--72.43) [36811]"}
          Mask[diz, demo__tmp] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, demo__tmp];
        Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
        assert {:msg "  Loop invariant |diz.demo__tmp| == gsize might not be preserved. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@73.15--73.39) [36812]"}
          Seq#Length(Heap[diz, demo__tmp]) == gsize;
        assert {:msg "  Loop invariant gsize > 1 might not be preserved. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@74.15--74.24) [36813]"}
          gsize > 1;
        assert {:msg "  Loop invariant 0 < N might not be preserved. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@75.15--75.20) [36814]"}
          0 < N;
        assert {:msg "  Loop invariant N < gsize might not be preserved. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@76.15--76.24) [36815]"}
          N < gsize;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.demo__ar[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@77.15--77.63) [36816]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.demo__tmp[tid].Ref__Integer_value, write) might not be preserved. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@78.15--78.64) [36817]"}
            perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
        }
        Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
        assert {:msg "  Loop invariant diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not be preserved. Assertion diz.demo__ar[tid].Ref__Integer_value == (tid < N ? demo__bin(N, tid) : 1) might not hold. (test_binomial_noauto.vpr@79.15--79.88) [36818]"}
          Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(N < gsize - 1);
      assume state(Heap, Mask);
      assume 0 <= tid;
      assume tid < tcount;
      assume tid == lid;
      assume tcount == gsize;
      assume gid == 0;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, demo__ar]) == gsize;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
      assume gsize > 1;
      assume 0 < N;
      assume N < gsize;
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__ar], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, demo__tmp], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == (if tid < N then demo__bin(Heap, N, tid) else 1);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@33.11--33.19) [36819]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid < tcount might not hold. (test_binomial_noauto.vpr@34.11--34.23) [36820]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tid == lid might not hold. (test_binomial_noauto.vpr@35.11--35.21) [36821]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@36.11--36.26) [36822]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@37.11--37.19) [36823]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@38.11--38.38) [36824]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@39.11--39.34) [36825]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@40.11--40.39) [36826]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@41.11--41.35) [36827]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_noauto.vpr@42.11--42.44) [36828]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_noauto.vpr@43.11--43.46) [36829]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@44.11--44.20) [36830]"}
      gsize > 1;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of demo__main_main might not hold. There might be insufficient permission to access diz.demo__ar[tid].Ref__Integer_value (test_binomial_noauto.vpr@45.11--45.59) [36831]"}
        perm <= Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of demo__main_main might not hold. Assertion diz.demo__ar[tid].Ref__Integer_value == demo__bin(gsize - 1, tid) might not hold. (test_binomial_noauto.vpr@46.11--46.76) [36832]"}
      Heap[Seq#Index(Heap[diz, demo__ar], tid), Ref__Integer_value] == demo__bin(Heap, gsize - 1, tid);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_resources_of_1
// ==================================================

procedure demo__main_resources_of_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var tid_24: int;
  var QPMask: MaskType;
  var tid_20: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_2: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@122.12--122.35) [36833]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@124.12--124.36) [36834]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_14 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@129.12--129.148) [36835]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_14 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_5 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@129.12--129.148) [36836]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_14 >= 0 && (i_14 < Seq#Length(Heap[diz, demo__tmp]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, demo__tmp]) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@129.12--129.148) [36837]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@129.12--129.148) [36838]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@129.12--129.148) [36839]"}
            i_14 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@129.12--129.148) [36840]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@129.12--129.148) [36841]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@129.12--129.148) [36842]"}
            j_5 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_1), Seq#Index(Heap[diz, demo__tmp], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__tmp]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__tmp]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_1) != Seq#Index(Heap[diz, demo__tmp], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < (gsize - 1 < gsize ? gsize - 1 : gsize) ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_24 && tid_24 < (if gsize - 1 < gsize then gsize - 1 else gsize)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@130.13--130.147) [36843]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@130.13--130.147) [36844]"}
            tid_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@130.13--130.147) [36845]"}
            tid_24 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@130.13--130.147) [36846]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && (0 <= tid_1_1 && tid_1_1 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_1) != Seq#Index(Heap[diz, demo__tmp], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_1) } { Seq#Index(Heap[diz, demo__tmp], tid_1) }
        (0 <= tid_1 && tid_1 < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, demo__tmp], tid_1)) && invRecv1(Seq#Index(Heap[diz, demo__tmp], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_1) } { Seq#Index(Heap[diz, demo__tmp], tid_1) }
        0 <= tid_1 && tid_1 < (if gsize - 1 < gsize then gsize - 1 else gsize) ==> Seq#Index(Heap[diz, demo__tmp], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } { demo__bin(N, tid) } 0 <= tid && (tid < gsize && (0 <= tid && tid < N)) ==> diz.demo__tmp[tid].Ref__Integer_value == demo__bin(N, tid))
      if (*) {
        if (0 <= tid_20 && (tid_20 < gsize && (0 <= tid_20 && tid_20 < N))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@131.13--131.153) [36847]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@131.13--131.153) [36848]"}
            tid_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@131.13--131.153) [36849]"}
            tid_20 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@131.13--131.153) [36850]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], tid_20), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@131.135--131.152) [36851]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@131.135--131.152) [36852]"}
              0 <= tid_20;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid <= N might not hold. (test_binomial_noauto.vpr@131.135--131.152) [36853]"}
              tid_20 <= N;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall tid_3: int ::
      { Seq#Index(Heap[diz, demo__tmp], tid_3) } { demo__bin#frame(EmptyFrame, N, tid_3) }
      0 <= tid_3 && (tid_3 < gsize && (0 <= tid_3 && tid_3 < N)) ==> Heap[Seq#Index(Heap[diz, demo__tmp], tid_3), Ref__Integer_value] == demo__bin(Heap, N, tid_3)
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@135.11--135.34) [36854]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@137.11--137.35) [36855]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@139.11--139.44) [36856]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@139.11--139.44) [36857]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@140.11--140.46) [36858]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@140.11--140.46) [36859]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_2 && tid_2 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@141.12--141.135) [36860]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@141.12--141.135) [36861]"}
            tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@141.12--141.135) [36862]"}
            tid_2 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@141.12--141.135) [36863]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize - 1)) && (0 <= tid_5_1 && tid_5_1 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_5) != Seq#Index(PostHeap[diz, demo__tmp], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_5) } { Seq#Index(PostHeap[diz, demo__tmp], tid_5) }
        (0 <= tid_5 && tid_5 < gsize - 1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(PostHeap[diz, demo__tmp], tid_5)) && invRecv2(Seq#Index(PostHeap[diz, demo__tmp], tid_5)) == tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_5) } { Seq#Index(PostHeap[diz, demo__tmp], tid_5) }
        0 <= tid_5 && tid_5 < gsize - 1 ==> Seq#Index(PostHeap[diz, demo__tmp], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@132.11--132.26) [36864]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@133.11--133.19) [36865]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@134.11--134.38) [36866]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@135.11--135.34) [36867]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@136.11--136.39) [36868]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@137.11--137.35) [36869]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@138.11--138.20) [36870]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_noauto.vpr@139.11--139.44) [36871]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_noauto.vpr@140.11--140.46) [36872]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@141.12--141.135) [36873]"}
        (forall tid_6_1: int, tid_6_2: int ::
        { neverTriggered3(tid_6_1), neverTriggered3(tid_6_2) }
        (((tid_6_1 != tid_6_2 && (0 <= tid_6_1 && tid_6_1 < gsize - 1)) && (0 <= tid_6_2 && tid_6_2 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_6_1) != Seq#Index(Heap[diz, demo__tmp], tid_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@141.12--141.135) [36874]"}
        (forall tid_6_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_6_1) } { Seq#Index(Heap[diz, demo__tmp], tid_6_1) }
        0 <= tid_6_1 && tid_6_1 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_6_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_6_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_6_1) } { Seq#Index(Heap[diz, demo__tmp], tid_6_1) }
        (0 <= tid_6_1 && tid_6_1 < gsize - 1) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[diz, demo__tmp], tid_6_1)) && invRecv3(Seq#Index(Heap[diz, demo__tmp], tid_6_1)) == tid_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv3(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_resources_of_2
// ==================================================

procedure demo__main_resources_of_2(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_7: int;
  var j_7: int;
  var tid_6: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_8: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@151.12--151.35) [36875]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@153.12--153.36) [36876]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_7 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@158.12--158.148) [36877]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_7 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_7 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@158.12--158.148) [36878]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_7 >= 0 && (i_7 < Seq#Length(Heap[diz, demo__tmp]) && (j_7 >= 0 && (j_7 < Seq#Length(Heap[diz, demo__tmp]) && i_7 != j_7)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@158.12--158.148) [36879]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@158.12--158.148) [36880]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@158.12--158.148) [36881]"}
            i_7 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@158.12--158.148) [36882]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@158.12--158.148) [36883]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@158.12--158.148) [36884]"}
            j_7 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_1), Seq#Index(Heap[diz, demo__tmp], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__tmp]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__tmp]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_1) != Seq#Index(Heap[diz, demo__tmp], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_6 && tid_6 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@159.13--159.136) [36885]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@159.13--159.136) [36886]"}
            tid_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@159.13--159.136) [36887]"}
            tid_6 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@159.13--159.136) [36888]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize - 1)) && (0 <= tid_1_1 && tid_1_1 < gsize - 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_1) != Seq#Index(Heap[diz, demo__tmp], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_1) } { Seq#Index(Heap[diz, demo__tmp], tid_1) }
        (0 <= tid_1 && tid_1 < gsize - 1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(Heap[diz, demo__tmp], tid_1)) && invRecv4(Seq#Index(Heap[diz, demo__tmp], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_1) } { Seq#Index(Heap[diz, demo__tmp], tid_1) }
        0 <= tid_1 && tid_1 < gsize - 1 ==> Seq#Index(Heap[diz, demo__tmp], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv4(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize - 1) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@163.11--163.34) [36889]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@165.11--165.35) [36890]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@167.11--167.44) [36891]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@167.11--167.44) [36892]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@168.11--168.46) [36893]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@168.11--168.46) [36894]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.demo__tmp[tid] } 0 <= tid && tid < (gsize - 1 < gsize ? gsize - 1 : gsize) ==> acc(diz.demo__tmp[tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= tid_8 && tid_8 < (if gsize - 1 < gsize then gsize - 1 else gsize)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@169.12--169.146) [36895]"}
            HasDirectPerm(PostMask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@169.12--169.146) [36896]"}
            tid_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@169.12--169.146) [36897]"}
            tid_8 < Seq#Length(PostHeap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@169.12--169.146) [36898]"}
      (forall tid_3: int, tid_3_1: int ::
      
      (((tid_3 != tid_3_1 && (0 <= tid_3 && tid_3 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && (0 <= tid_3_1 && tid_3_1 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], tid_3) != Seq#Index(PostHeap[diz, demo__tmp], tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_3: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_3) } { Seq#Index(PostHeap[diz, demo__tmp], tid_3) }
        (0 <= tid_3 && tid_3 < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm ==> qpRange5(Seq#Index(PostHeap[diz, demo__tmp], tid_3)) && invRecv5(Seq#Index(PostHeap[diz, demo__tmp], tid_3)) == tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_3: int ::
        { Seq#Index(PostHeap[diz, demo__tmp], tid_3) } { Seq#Index(PostHeap[diz, demo__tmp], tid_3) }
        0 <= tid_3 && tid_3 < (if gsize - 1 < gsize then gsize - 1 else gsize) ==> Seq#Index(PostHeap[diz, demo__tmp], tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv5(o_4) && invRecv5(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[diz, demo__tmp], invRecv5(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@160.11--160.26) [36899]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@161.11--161.19) [36900]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@162.11--162.38) [36901]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@163.11--163.34) [36902]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@164.11--164.39) [36903]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@165.11--165.35) [36904]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@166.11--166.20) [36905]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_noauto.vpr@167.11--167.44) [36906]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_noauto.vpr@168.11--168.46) [36907]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver diz.demo__tmp[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@169.12--169.146) [36908]"}
        (forall tid_4_1: int, tid_4_2: int ::
        { neverTriggered6(tid_4_1), neverTriggered6(tid_4_2) }
        (((tid_4_1 != tid_4_2 && (0 <= tid_4_1 && tid_4_1 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && (0 <= tid_4_2 && tid_4_2 < (if gsize - 1 < gsize then gsize - 1 else gsize))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], tid_4_1) != Seq#Index(Heap[diz, demo__tmp], tid_4_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of demo__main_resources_of_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@169.12--169.146) [36909]"}
        (forall tid_4_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_4_1) } { Seq#Index(Heap[diz, demo__tmp], tid_4_1) }
        0 <= tid_4_1 && tid_4_1 < (if gsize - 1 < gsize then gsize - 1 else gsize) ==> Mask[Seq#Index(Heap[diz, demo__tmp], tid_4_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver diz.demo__tmp[tid]
      assume (forall tid_4_1: int ::
        { Seq#Index(Heap[diz, demo__tmp], tid_4_1) } { Seq#Index(Heap[diz, demo__tmp], tid_4_1) }
        (0 <= tid_4_1 && tid_4_1 < (if gsize - 1 < gsize then gsize - 1 else gsize)) && NoPerm < FullPerm ==> qpRange6(Seq#Index(Heap[diz, demo__tmp], tid_4_1)) && invRecv6(Seq#Index(Heap[diz, demo__tmp], tid_4_1)) == tid_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (0 <= invRecv6(o_4) && invRecv6(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(Heap[diz, demo__tmp], invRecv6(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv6(o_4) && invRecv6(o_4) < (if gsize - 1 < gsize then gsize - 1 else gsize)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_post_check_1
// ==================================================

procedure demo__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_10: int;
  var j_4: int;
  var i_11: int;
  var j_11: int;
  var _x_tid_10: int;
  var QPMask: MaskType;
  var _x_tid_11: int;
  var _x_tid_12: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@182.12--182.35) [36910]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@184.12--184.36) [36911]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_10 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@185.12--185.144) [36912]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_10 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_4 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@185.12--185.144) [36913]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_10 >= 0 && (i_10 < Seq#Length(Heap[diz, demo__ar]) && (j_4 >= 0 && (j_4 < Seq#Length(Heap[diz, demo__ar]) && i_10 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@185.12--185.144) [36914]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@185.12--185.144) [36915]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@185.12--185.144) [36916]"}
            i_10 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@185.12--185.144) [36917]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@185.12--185.144) [36918]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@185.12--185.144) [36919]"}
            j_4 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_11 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@186.12--186.148) [36920]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_11 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_11 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@186.12--186.148) [36921]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_11 >= 0 && (i_11 < Seq#Length(Heap[diz, demo__tmp]) && (j_11 >= 0 && (j_11 < Seq#Length(Heap[diz, demo__tmp]) && i_11 != j_11)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@186.12--186.148) [36922]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@186.12--186.148) [36923]"}
            i_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@186.12--186.148) [36924]"}
            i_11 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@186.12--186.148) [36925]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@186.12--186.148) [36926]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@186.12--186.148) [36927]"}
            j_11 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_10 && _x_tid_10 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@187.13--187.124) [36928]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@187.13--187.124) [36929]"}
            _x_tid_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@187.13--187.124) [36930]"}
            _x_tid_10 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@187.13--187.124) [36931]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange7(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv7(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv7(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < gsize) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_11 && _x_tid_11 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@188.13--188.125) [36932]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@188.13--188.125) [36933]"}
            _x_tid_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@188.13--188.125) [36934]"}
            _x_tid_11 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@188.13--188.125) [36935]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange8(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv8(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv8(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < gsize) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } { demo__bin(N, _x_tid) } 0 <= _x_tid && (_x_tid < gsize && (0 <= _x_tid && _x_tid < N)) ==> diz.demo__tmp[_x_tid].Ref__Integer_value == demo__bin(N, _x_tid))
      if (*) {
        if (0 <= _x_tid_12 && (_x_tid_12 < gsize && (0 <= _x_tid_12 && _x_tid_12 < N))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@192.13--192.174) [36936]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@192.13--192.174) [36937]"}
            _x_tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@192.13--192.174) [36938]"}
            _x_tid_12 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[_x_tid].Ref__Integer_value (test_binomial_noauto.vpr@192.13--192.174) [36939]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, demo__tmp], _x_tid_12), Ref__Integer_value);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@192.153--192.173) [36940]"}
              N >= 0;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= _x_tid might not hold. (test_binomial_noauto.vpr@192.153--192.173) [36941]"}
              0 <= _x_tid_12;
            assert {:msg "  Precondition of function demo__bin might not hold. Assertion _x_tid <= N might not hold. (test_binomial_noauto.vpr@192.153--192.173) [36942]"}
              _x_tid_12 <= N;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall _x_tid_5: int ::
      { Seq#Index(Heap[diz, demo__tmp], _x_tid_5) } { demo__bin#frame(EmptyFrame, N, _x_tid_5) }
      0 <= _x_tid_5 && (_x_tid_5 < gsize && (0 <= _x_tid_5 && _x_tid_5 < N)) ==> Heap[Seq#Index(Heap[diz, demo__tmp], _x_tid_5), Ref__Integer_value] == demo__bin(Heap, N, _x_tid_5)
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@199.11--199.34) [36943]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@201.11--201.35) [36944]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@202.11--202.44) [36945]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@202.11--202.44) [36946]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@203.11--203.46) [36947]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@203.11--203.46) [36948]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.demo__tmp[tid - 1].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@204.11--204.78) [36949]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@204.11--204.78) [36950]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@204.11--204.78) [36951]"}
          tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    assume 0 < N;
    assume state(PostHeap, PostMask);
    assume N < gsize;
    assume state(PostHeap, PostMask);
    if (0 < tid && tid <= N) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@208.11--208.107) [36952]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@208.11--208.107) [36953]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid - 1] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@208.11--208.107) [36954]"}
          tid - 1 < Seq#Length(PostHeap[diz, demo__tmp]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_noauto.vpr@208.11--208.107) [36955]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion N >= 0 might not hold. (test_binomial_noauto.vpr@208.85--208.106) [36956]"}
            N >= 0;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion 0 <= tid - 1 might not hold. (test_binomial_noauto.vpr@208.85--208.106) [36957]"}
            0 <= tid - 1;
          assert {:msg "  Precondition of function demo__bin might not hold. Assertion tid - 1 <= N might not hold. (test_binomial_noauto.vpr@208.85--208.106) [36958]"}
            tid - 1 <= N;
          // Stop execution
          assume false;
        }
      assume PostHeap[Seq#Index(PostHeap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(PostHeap, N, tid - 1);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@193.11--193.19) [36959]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_binomial_noauto.vpr@194.11--194.23) [36960]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_binomial_noauto.vpr@195.11--195.21) [36961]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@196.11--196.26) [36962]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@197.11--197.19) [36963]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@198.11--198.38) [36964]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@199.11--199.34) [36965]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@200.11--200.39) [36966]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@201.11--201.35) [36967]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_noauto.vpr@202.11--202.44) [36968]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_noauto.vpr@203.11--203.46) [36969]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    if (tid > 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. There might be insufficient permission to access diz.demo__tmp[tid - 1].Ref__Integer_value (test_binomial_noauto.vpr@204.11--204.78) [36970]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@205.11--205.20) [36971]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@206.11--206.16) [36972]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@207.11--207.20) [36973]"}
      N < gsize;
    if (0 < tid && tid <= N) {
      assert {:msg "  Postcondition of demo__main_post_check_1 might not hold. Assertion diz.demo__tmp[tid - 1].Ref__Integer_value == demo__bin(N, tid - 1) might not hold. (test_binomial_noauto.vpr@208.11--208.107) [36974]"}
        Heap[Seq#Index(Heap[diz, demo__tmp], tid - 1), Ref__Integer_value] == demo__bin(Heap, N, tid - 1);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method demo__main_post_check_2
// ==================================================

procedure demo__main_post_check_2(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, N: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_13: int;
  var j_12: int;
  var i_20: int;
  var j_13: int;
  var _x_tid_2: int;
  var QPMask: MaskType;
  var _x_tid_4: int;
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume tid == lid;
    assume state(Heap, Mask);
    assume tcount == gsize;
    assume state(Heap, Mask);
    assume gid == 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@221.12--221.35) [36975]"}
        HasDirectPerm(Mask, diz, demo__ar);
    assume Seq#Length(Heap[diz, demo__ar]) == gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@223.12--223.36) [36976]"}
        HasDirectPerm(Mask, diz, demo__tmp);
    assume Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__ar[i], diz.demo__ar[j] } i >= 0 && (i < |diz.demo__ar| && (j >= 0 && (j < |diz.demo__ar| && i != j))) ==> diz.demo__ar[i] != diz.demo__ar[j])
      if (*) {
        if (i_13 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@224.12--224.144) [36977]"}
            HasDirectPerm(Mask, diz, demo__ar);
          if (i_13 < Seq#Length(Heap[diz, demo__ar])) {
            if (j_12 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@224.12--224.144) [36978]"}
                HasDirectPerm(Mask, diz, demo__ar);
            }
          }
        }
        if (i_13 >= 0 && (i_13 < Seq#Length(Heap[diz, demo__ar]) && (j_12 >= 0 && (j_12 < Seq#Length(Heap[diz, demo__ar]) && i_13 != j_12)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@224.12--224.144) [36979]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@224.12--224.144) [36980]"}
            i_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[i] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@224.12--224.144) [36981]"}
            i_13 < Seq#Length(Heap[diz, demo__ar]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@224.12--224.144) [36982]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@224.12--224.144) [36983]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[j] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@224.12--224.144) [36984]"}
            j_12 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, demo__ar], i_1), Seq#Index(Heap[diz, demo__ar], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, demo__ar]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, demo__ar]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, demo__ar], i_1) != Seq#Index(Heap[diz, demo__ar], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.demo__tmp[i], diz.demo__tmp[j] } i >= 0 && (i < |diz.demo__tmp| && (j >= 0 && (j < |diz.demo__tmp| && i != j))) ==> diz.demo__tmp[i] != diz.demo__tmp[j])
      if (*) {
        if (i_20 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@225.12--225.148) [36985]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          if (i_20 < Seq#Length(Heap[diz, demo__tmp])) {
            if (j_13 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@225.12--225.148) [36986]"}
                HasDirectPerm(Mask, diz, demo__tmp);
            }
          }
        }
        if (i_20 >= 0 && (i_20 < Seq#Length(Heap[diz, demo__tmp]) && (j_13 >= 0 && (j_13 < Seq#Length(Heap[diz, demo__tmp]) && i_20 != j_13)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@225.12--225.148) [36987]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@225.12--225.148) [36988]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[i] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@225.12--225.148) [36989]"}
            i_20 < Seq#Length(Heap[diz, demo__tmp]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@225.12--225.148) [36990]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@225.12--225.148) [36991]"}
            j_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[j] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@225.12--225.148) [36992]"}
            j_13 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, demo__tmp], i_3), Seq#Index(Heap[diz, demo__tmp], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, demo__tmp]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, demo__tmp]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, demo__tmp], i_3) != Seq#Index(Heap[diz, demo__tmp], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__ar[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__ar[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_2 && _x_tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@226.13--226.124) [36993]"}
            HasDirectPerm(Mask, diz, demo__ar);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might be negative. (test_binomial_noauto.vpr@226.13--226.124) [36994]"}
            _x_tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__ar[_x_tid] into diz.demo__ar might exceed sequence length. (test_binomial_noauto.vpr@226.13--226.124) [36995]"}
            _x_tid_2 < Seq#Length(Heap[diz, demo__ar]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__ar[_x_tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@226.13--226.124) [36996]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != Seq#Index(Heap[diz, demo__ar], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange9(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) && invRecv9(Seq#Index(Heap[diz, demo__ar], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(Heap[diz, demo__ar], invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, demo__ar], _x_tid_1) } { Seq#Index(Heap[diz, demo__ar], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, demo__ar], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__ar], invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < gsize) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.demo__tmp[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.demo__tmp[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_4 && _x_tid_4 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@227.13--227.125) [36997]"}
            HasDirectPerm(Mask, diz, demo__tmp);
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@227.13--227.125) [36998]"}
            _x_tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[_x_tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@227.13--227.125) [36999]"}
            _x_tid_4 < Seq#Length(Heap[diz, demo__tmp]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.demo__tmp[_x_tid].Ref__Integer_value might not be injective. (test_binomial_noauto.vpr@227.13--227.125) [37000]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != Seq#Index(Heap[diz, demo__tmp], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange10(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) && invRecv10(Seq#Index(Heap[diz, demo__tmp], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(Heap[diz, demo__tmp], invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) } { Seq#Index(Heap[diz, demo__tmp], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, demo__tmp], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, demo__tmp], invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < gsize) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume gsize > 1;
    assume state(Heap, Mask);
    assume 0 < N;
    assume state(Heap, Mask);
    assume N < gsize;
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume tid == lid;
    assume state(PostHeap, PostMask);
    assume tcount == gsize;
    assume state(PostHeap, PostMask);
    assume gid == 0;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__ar:=PostMask[diz, demo__ar] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__ar| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@237.11--237.34) [37001]"}
        HasDirectPerm(PostMask, diz, demo__ar);
    assume Seq#Length(PostHeap[diz, demo__ar]) == gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, demo__tmp:=PostMask[diz, demo__tmp] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.demo__tmp| == gsize
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@239.11--239.35) [37002]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
    assume Seq#Length(PostHeap[diz, demo__tmp]) == gsize;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__ar == old(diz.demo__ar)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@240.11--240.44) [37003]"}
        HasDirectPerm(PostMask, diz, demo__ar);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@240.11--240.44) [37004]"}
        HasDirectPerm(oldMask, diz, demo__ar);
    assume Seq#Equal(PostHeap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.demo__tmp == old(diz.demo__tmp)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@241.11--241.46) [37005]"}
        HasDirectPerm(PostMask, diz, demo__tmp);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@241.11--241.46) [37006]"}
        HasDirectPerm(oldMask, diz, demo__tmp);
    assume Seq#Equal(PostHeap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    assume state(PostHeap, PostMask);
    if (tid < gsize - 1) {
      
      // -- Check definedness of acc(diz.demo__tmp[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@242.11--242.82) [37007]"}
          HasDirectPerm(PostMask, diz, demo__tmp);
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might be negative. (test_binomial_noauto.vpr@242.11--242.82) [37008]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.demo__tmp[tid] into diz.demo__tmp might exceed sequence length. (test_binomial_noauto.vpr@242.11--242.82) [37009]"}
          tid < Seq#Length(PostHeap[diz, demo__tmp]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, demo__tmp], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, demo__tmp], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume gsize > 1;
    assume state(PostHeap, PostMask);
    assume 0 < N;
    assume state(PostHeap, PostMask);
    assume N < gsize;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 <= tid might not hold. (test_binomial_noauto.vpr@231.11--231.19) [37010]"}
      0 <= tid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid < tcount might not hold. (test_binomial_noauto.vpr@232.11--232.23) [37011]"}
      tid < tcount;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tid == lid might not hold. (test_binomial_noauto.vpr@233.11--233.21) [37012]"}
      tid == lid;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion tcount == gsize might not hold. (test_binomial_noauto.vpr@234.11--234.26) [37013]"}
      tcount == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gid == 0 might not hold. (test_binomial_noauto.vpr@235.11--235.19) [37014]"}
      gid == 0;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__ar (test_binomial_noauto.vpr@236.11--236.38) [37015]"}
      Mask[diz, demo__ar] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__ar];
    Mask := Mask[diz, demo__ar:=Mask[diz, demo__ar] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__ar| == gsize might not hold. (test_binomial_noauto.vpr@237.11--237.34) [37016]"}
      Seq#Length(Heap[diz, demo__ar]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp (test_binomial_noauto.vpr@238.11--238.39) [37017]"}
      Mask[diz, demo__tmp] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, demo__tmp];
    Mask := Mask[diz, demo__tmp:=Mask[diz, demo__tmp] - wildcard];
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion |diz.demo__tmp| == gsize might not hold. (test_binomial_noauto.vpr@239.11--239.35) [37018]"}
      Seq#Length(Heap[diz, demo__tmp]) == gsize;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__ar == old(diz.demo__ar) might not hold. (test_binomial_noauto.vpr@240.11--240.44) [37019]"}
      Seq#Equal(Heap[diz, demo__ar], oldHeap[diz, demo__ar]);
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion diz.demo__tmp == old(diz.demo__tmp) might not hold. (test_binomial_noauto.vpr@241.11--241.46) [37020]"}
      Seq#Equal(Heap[diz, demo__tmp], oldHeap[diz, demo__tmp]);
    if (tid < gsize - 1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. There might be insufficient permission to access diz.demo__tmp[tid].Ref__Integer_value (test_binomial_noauto.vpr@242.11--242.82) [37021]"}
          perm <= Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, demo__tmp], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion gsize > 1 might not hold. (test_binomial_noauto.vpr@243.11--243.20) [37022]"}
      gsize > 1;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion 0 < N might not hold. (test_binomial_noauto.vpr@244.11--244.16) [37023]"}
      0 < N;
    assert {:msg "  Postcondition of demo__main_post_check_2 might not hold. Assertion N < gsize might not hold. (test_binomial_noauto.vpr@245.11--245.20) [37024]"}
      N < gsize;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}