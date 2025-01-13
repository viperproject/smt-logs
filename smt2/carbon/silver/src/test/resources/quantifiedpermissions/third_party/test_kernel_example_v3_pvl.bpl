// 
// Translation of Viper program.
// 
// Date:         2025-01-13 17:51:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_v3_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_kernel_example_v3_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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
function  neverTriggered4(_x_tid_1: int): bool;
function  neverTriggered5(_x_tid_3: int): bool;
function  neverTriggered6(_x_tid_5: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

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

const unique Ref__a: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__a);
axiom !IsWandField(Ref__a);
const unique Ref__b: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__b);
axiom !IsWandField(Ref__b);
const unique Ref__c: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__c);
axiom !IsWandField(Ref__c);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__main_main
// ==================================================

procedure Ref__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_1: Ref;
  var __flatten_3: Ref;
  var __flatten_4: Ref;
  var __flatten_6: Ref;
  var __flatten_7: Ref;
  var __flatten_8: Ref;
  var __flatten_10: Ref;
  var __last_barrier: int;
  var __flatten_2: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var __flatten_5: int;
  var __flatten_9: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@21.12--21.34) [13116]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@23.12--23.34) [13117]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@25.12--25.34) [13118]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@26.12--26.58) [13119]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@26.12--26.58) [13120]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@26.12--26.58) [13121]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__a], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@27.12--27.58) [13122]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@27.12--27.58) [13123]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@27.12--27.58) [13124]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__b], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@28.12--28.58) [13125]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@28.12--28.58) [13126]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@28.12--28.58) [13127]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@28.12--28.58) [13128]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@29.12--29.50) [13129]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@29.12--29.50) [13130]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@29.12--29.50) [13131]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@29.12--29.50) [13132]"}
        HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value);
    assume Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
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
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@36.11--36.33) [13133]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@38.11--38.33) [13134]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@40.11--40.33) [13135]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@41.11--41.40) [13136]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@41.11--41.40) [13137]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@42.11--42.40) [13138]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@42.11--42.40) [13139]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@43.11--43.40) [13140]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@43.11--43.40) [13141]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13142]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13143]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13144]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13145]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@45.11--45.49) [13146]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@45.11--45.49) [13147]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@45.11--45.49) [13148]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@45.11--45.49) [13149]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13150]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13151]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13152]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13153]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@47.11--47.49) [13154]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@47.11--47.49) [13155]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@47.11--47.49) [13156]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@47.11--47.49) [13157]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13158]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13159]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13160]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13161]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@49.11--49.49) [13162]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@49.11--49.49) [13163]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@49.11--49.49) [13164]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@49.11--49.49) [13165]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_6, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[__flatten_8, $allocated];
    assume Heap[__flatten_10, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_kernel_example_v3_pvl.vpr@62.3--62.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := diz.Ref__b[tid] -- test_kernel_example_v3_pvl.vpr@63.3--63.33
    
    // -- Check definedness of diz.Ref__b[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@63.3--63.33) [13166]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@63.3--63.33) [13167]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@63.3--63.33) [13168]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    __flatten_1 := Seq#Index(Heap[diz, Ref__b], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := diz.Ref__c[tid] -- test_kernel_example_v3_pvl.vpr@64.3--64.33
    
    // -- Check definedness of diz.Ref__c[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@64.3--64.33) [13169]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@64.3--64.33) [13170]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@64.3--64.33) [13171]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    __flatten_3 := Seq#Index(Heap[diz, Ref__c], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := __flatten_3.Ref__Integer_value -- test_kernel_example_v3_pvl.vpr@65.3--65.48
    
    // -- Check definedness of __flatten_3.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@65.3--65.48) [13172]"}
        HasDirectPerm(Mask, __flatten_3, Ref__Integer_value);
    __flatten_2 := Heap[__flatten_3, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1.Ref__Integer_value := __flatten_2 -- test_kernel_example_v3_pvl.vpr@66.3--66.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_1.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@66.3--66.48) [13173]"}
      FullPerm == Mask[__flatten_1, Ref__Integer_value];
    Heap := Heap[__flatten_1, Ref__Integer_value:=__flatten_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert diz.Ref__b[tid].Ref__Integer_value > 0 -- test_kernel_example_v3_pvl.vpr@67.3--67.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@67.10--67.48) [13174]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__b);
      assert {:msg "  Assert might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@67.10--67.48) [13175]"}
        tid >= 0;
      assert {:msg "  Assert might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@67.10--67.48) [13176]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@67.10--67.48) [13177]"}
        HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value);
    assert {:msg "  Assert might fail. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v3_pvl.vpr@67.10--67.48) [13178]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4) -- test_kernel_example_v3_pvl.vpr@68.3--68.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@68.10--68.56) [13179]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__b);
      assert {:msg "  Exhale might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@68.10--68.56) [13180]"}
        tid >= 0;
      assert {:msg "  Exhale might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@68.10--68.56) [13181]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := 1 / 4;
    assert {:msg "  Exhale might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@68.10--68.56) [13182]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@68.10--68.56) [13183]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale tid > 0 ==> acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4) -- test_kernel_example_v3_pvl.vpr@69.3--69.74
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4)
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@69.10--69.74) [13184]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Inhale might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@69.10--69.74) [13185]"}
          tid - 1 >= 0;
        assert {:msg "  Inhale might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@69.10--69.74) [13186]"}
          tid - 1 < Seq#Length(Heap[diz, Ref__b]);
      perm := 1 / 4;
      assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@69.10--69.74) [13187]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid - 1) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale tid > 0 ==> diz.Ref__b[tid - 1].Ref__Integer_value > 0 -- test_kernel_example_v3_pvl.vpr@70.3--70.68
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__b[tid - 1].Ref__Integer_value > 0
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@70.10--70.68) [13188]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Inhale might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@70.10--70.68) [13189]"}
          tid - 1 >= 0;
        assert {:msg "  Inhale might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@70.10--70.68) [13190]"}
          tid - 1 < Seq#Length(Heap[diz, Ref__b]);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@70.10--70.68) [13191]"}
          HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value);
      assume Heap[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (tid > 0) -- test_kernel_example_v3_pvl.vpr@71.3--82.4
    if (tid > 0) {
      
      // -- Translating statement: __flatten_4 := diz.Ref__a[tid] -- test_kernel_example_v3_pvl.vpr@72.5--72.35
        
        // -- Check definedness of diz.Ref__a[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@72.5--72.35) [13192]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@72.5--72.35) [13193]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@72.5--72.35) [13194]"}
            tid < Seq#Length(Heap[diz, Ref__a]);
        __flatten_4 := Seq#Index(Heap[diz, Ref__a], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_6 := diz.Ref__b[tid - 1] -- test_kernel_example_v3_pvl.vpr@73.5--73.39
        
        // -- Check definedness of diz.Ref__b[tid - 1]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@73.5--73.39) [13195]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@73.5--73.39) [13196]"}
            tid - 1 >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@73.5--73.39) [13197]"}
            tid - 1 < Seq#Length(Heap[diz, Ref__b]);
        __flatten_6 := Seq#Index(Heap[diz, Ref__b], tid - 1);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_7 := diz.Ref__b[tid] -- test_kernel_example_v3_pvl.vpr@74.5--74.35
        
        // -- Check definedness of diz.Ref__b[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@74.5--74.35) [13198]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@74.5--74.35) [13199]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@74.5--74.35) [13200]"}
            tid < Seq#Length(Heap[diz, Ref__b]);
        __flatten_7 := Seq#Index(Heap[diz, Ref__b], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_5 := __flatten_6.Ref__Integer_value +
  //   __flatten_7.Ref__Integer_value -- test_kernel_example_v3_pvl.vpr@75.5--75.83
        
        // -- Check definedness of __flatten_6.Ref__Integer_value + __flatten_7.Ref__Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_6.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@75.5--75.83) [13201]"}
            HasDirectPerm(Mask, __flatten_6, Ref__Integer_value);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_7.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@75.5--75.83) [13202]"}
            HasDirectPerm(Mask, __flatten_7, Ref__Integer_value);
        __flatten_5 := Heap[__flatten_6, Ref__Integer_value] + Heap[__flatten_7, Ref__Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_4.Ref__Integer_value := __flatten_5 -- test_kernel_example_v3_pvl.vpr@76.5--76.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@76.5--76.50) [13203]"}
          FullPerm == Mask[__flatten_4, Ref__Integer_value];
        Heap := Heap[__flatten_4, Ref__Integer_value:=__flatten_5];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_8 := diz.Ref__a[tid] -- test_kernel_example_v3_pvl.vpr@78.5--78.35
        
        // -- Check definedness of diz.Ref__a[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@78.5--78.35) [13204]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@78.5--78.35) [13205]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@78.5--78.35) [13206]"}
            tid < Seq#Length(Heap[diz, Ref__a]);
        __flatten_8 := Seq#Index(Heap[diz, Ref__a], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := diz.Ref__b[tid] -- test_kernel_example_v3_pvl.vpr@79.5--79.36
        
        // -- Check definedness of diz.Ref__b[tid]
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@79.5--79.36) [13207]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@79.5--79.36) [13208]"}
            tid >= 0;
          assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@79.5--79.36) [13209]"}
            tid < Seq#Length(Heap[diz, Ref__b]);
        __flatten_10 := Seq#Index(Heap[diz, Ref__b], tid);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_9 := __flatten_10.Ref__Integer_value -- test_kernel_example_v3_pvl.vpr@80.5--80.51
        
        // -- Check definedness of __flatten_10.Ref__Integer_value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_10.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@80.5--80.51) [13210]"}
            HasDirectPerm(Mask, __flatten_10, Ref__Integer_value);
        __flatten_9 := Heap[__flatten_10, Ref__Integer_value];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_8.Ref__Integer_value := __flatten_9 -- test_kernel_example_v3_pvl.vpr@81.5--81.50
        assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_8.Ref__Integer_value (test_kernel_example_v3_pvl.vpr@81.5--81.50) [13211]"}
          FullPerm == Mask[__flatten_8, Ref__Integer_value];
        Heap := Heap[__flatten_8, Ref__Integer_value:=__flatten_9];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v3_pvl.vpr@30.11--30.19) [13212]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v3_pvl.vpr@31.11--31.23) [13213]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid == lid might not hold. (test_kernel_example_v3_pvl.vpr@32.11--32.21) [13214]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v3_pvl.vpr@33.11--33.26) [13215]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v3_pvl.vpr@34.11--34.19) [13216]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@35.11--35.36) [13217]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@36.11--36.33) [13218]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@37.11--37.36) [13219]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@38.11--38.33) [13220]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@39.11--39.36) [13221]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@40.11--40.33) [13222]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v3_pvl.vpr@41.11--41.40) [13223]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v3_pvl.vpr@42.11--42.40) [13224]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v3_pvl.vpr@43.11--43.40) [13225]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13226]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@44.11--44.57) [13227]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v3_pvl.vpr@45.11--45.49) [13228]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] > 0;
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13229]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@46.11--46.57) [13230]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v3_pvl.vpr@47.11--47.49) [13231]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] > 0;
    perm := 1 / 4;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13232]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@48.11--48.57) [13233]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value > 0 might not hold. (test_kernel_example_v3_pvl.vpr@49.11--49.49) [13234]"}
      Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_resources_of_1
// ==================================================

procedure Ref__main_resources_of_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, gid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var j: int;
  var tid_20: int;
  var QPMask: MaskType;
  var tid_2: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var tid_4: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
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
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@91.12--91.34) [13235]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@93.12--93.34) [13236]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@95.12--95.34) [13237]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_14 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13238]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_14 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_5 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13239]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_14 >= 0 && (i_14 < Seq#Length(Heap[diz, Ref__a]) && (j_5 >= 0 && (j_5 < Seq#Length(Heap[diz, Ref__a]) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13240]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13241]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13242]"}
            i_14 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13243]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13244]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@96.12--96.136) [13245]"}
            j_5 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
      if (*) {
        if (i_2 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13246]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_2 < Seq#Length(Heap[diz, Ref__b])) {
            if (j >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13247]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_2 >= 0 && (i_2 < Seq#Length(Heap[diz, Ref__b]) && (j >= 0 && (j < Seq#Length(Heap[diz, Ref__b]) && i_2 != j)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13248]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13249]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13250]"}
            i_2 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13251]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13252]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@97.12--97.136) [13253]"}
            j < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3), Seq#Index(Heap[diz, Ref__b], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, Ref__b]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, Ref__b]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, Ref__b], i_3) != Seq#Index(Heap[diz, Ref__b], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_20 && tid_20 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@98.13--98.110) [13254]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@98.13--98.110) [13255]"}
            tid_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@98.13--98.110) [13256]"}
            tid_20 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@98.13--98.110) [13257]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < gsize)) && (0 <= tid_1_1 && tid_1_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__b], tid_1) != Seq#Index(Heap[diz, Ref__b], tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_1) } { Seq#Index(Heap[diz, Ref__b], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && NoPerm < 1 / 4 ==> qpRange1(Seq#Index(Heap[diz, Ref__b], tid_1)) && invRecv1(Seq#Index(Heap[diz, Ref__b], tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < 1 / 4) && qpRange1(o_4) ==> Seq#Index(Heap[diz, Ref__b], invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@98.13--98.110) [13258]"}
      (forall tid_1: int ::
      { Seq#Index(Heap[diz, Ref__b], tid_1) } { Seq#Index(Heap[diz, Ref__b], tid_1) }
      0 <= tid_1 && tid_1 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_1) } { Seq#Index(Heap[diz, Ref__b], tid_1) }
        (0 <= tid_1 && tid_1 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < 1 / 4) && qpRange1(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__b], invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < gsize) && NoPerm < 1 / 4) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } 0 <= tid && tid < gsize ==> diz.Ref__b[tid].Ref__Integer_value > 0)
      if (*) {
        if (0 <= tid_2 && tid_2 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@99.13--99.104) [13259]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@99.13--99.104) [13260]"}
            tid_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@99.13--99.104) [13261]"}
            tid_2 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@99.13--99.104) [13262]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], tid_2), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall tid_3: int ::
      { Seq#Index(Heap[diz, Ref__b], tid_3) }
      0 <= tid_3 && tid_3 < gsize ==> Heap[Seq#Index(Heap[diz, Ref__b], tid_3), Ref__Integer_value] > 0
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
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@103.11--103.33) [13263]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@105.11--105.33) [13264]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@107.11--107.33) [13265]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@108.11--108.40) [13266]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@108.11--108.40) [13267]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@109.11--109.40) [13268]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@109.11--109.40) [13269]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@110.11--110.40) [13270]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@110.11--110.40) [13271]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int :: { diz.Ref__b[tid] } (0 <= 0 ? 1 : 0) - 1 <= tid && tid < gsize - 1 ==> acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= tid_4 && tid_4 < gsize - 1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13272]"}
            HasDirectPerm(PostMask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13273]"}
            tid_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13274]"}
            tid_4 < Seq#Length(PostHeap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13275]"}
      (forall tid_5: int, tid_5_1: int ::
      
      (((tid_5 != tid_5_1 && (0 <= tid_5 && tid_5 < gsize - 1)) && (0 <= tid_5_1 && tid_5_1 < gsize - 1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], tid_5) != Seq#Index(PostHeap[diz, Ref__b], tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_5) } { Seq#Index(PostHeap[diz, Ref__b], tid_5) }
        (0 <= tid_5 && tid_5 < gsize - 1) && NoPerm < 1 / 4 ==> qpRange2(Seq#Index(PostHeap[diz, Ref__b], tid_5)) && invRecv2(Seq#Index(PostHeap[diz, Ref__b], tid_5)) == tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange2(o_4) ==> Seq#Index(PostHeap[diz, Ref__b], invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13276]"}
      (forall tid_5: int ::
      { Seq#Index(PostHeap[diz, Ref__b], tid_5) } { Seq#Index(PostHeap[diz, Ref__b], tid_5) }
      0 <= tid_5 && tid_5 < gsize - 1 ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_5: int ::
        { Seq#Index(PostHeap[diz, Ref__b], tid_5) } { Seq#Index(PostHeap[diz, Ref__b], tid_5) }
        (0 <= tid_5 && tid_5 < gsize - 1) && 1 / 4 > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange2(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(PostHeap[diz, Ref__b], invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < gsize - 1) && NoPerm < 1 / 4) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
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
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v3_pvl.vpr@100.11--100.26) [13277]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v3_pvl.vpr@101.11--101.19) [13278]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@102.11--102.36) [13279]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@103.11--103.33) [13280]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@104.11--104.36) [13281]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@105.11--105.33) [13282]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@106.11--106.36) [13283]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@107.11--107.33) [13284]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v3_pvl.vpr@108.11--108.40) [13285]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v3_pvl.vpr@109.11--109.40) [13286]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v3_pvl.vpr@110.11--110.40) [13287]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13288]"}
        (forall tid_6_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_6_1) } { Seq#Index(Heap[diz, Ref__b], tid_6_1) }
        (0 <= tid_6_1 && tid_6_1 < gsize - 1) && dummyFunction(Heap[Seq#Index(Heap[diz, Ref__b], tid_6_1), Ref__Integer_value]) ==> 1 / 4 >= NoPerm
      );
    
    // -- check if receiver diz.Ref__b[tid] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13289]"}
        (forall tid_6_1: int, tid_6_2: int ::
        { neverTriggered3(tid_6_1), neverTriggered3(tid_6_2) }
        (((tid_6_1 != tid_6_2 && (0 <= tid_6_1 && tid_6_1 < gsize - 1)) && (0 <= tid_6_2 && tid_6_2 < gsize - 1)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__b], tid_6_1) != Seq#Index(Heap[diz, Ref__b], tid_6_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__main_resources_of_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@111.12--111.132) [13290]"}
        (forall tid_6_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_6_1) } { Seq#Index(Heap[diz, Ref__b], tid_6_1) }
        0 <= tid_6_1 && tid_6_1 < gsize - 1 ==> Mask[Seq#Index(Heap[diz, Ref__b], tid_6_1), Ref__Integer_value] >= 1 / 4
      );
    
    // -- assumptions for inverse of receiver diz.Ref__b[tid]
      assume (forall tid_6_1: int ::
        { Seq#Index(Heap[diz, Ref__b], tid_6_1) } { Seq#Index(Heap[diz, Ref__b], tid_6_1) }
        (0 <= tid_6_1 && tid_6_1 < gsize - 1) && NoPerm < 1 / 4 ==> qpRange3(Seq#Index(Heap[diz, Ref__b], tid_6_1)) && invRecv3(Seq#Index(Heap[diz, Ref__b], tid_6_1)) == tid_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange3(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange3(o_4)) ==> Seq#Index(Heap[diz, Ref__b], invRecv3(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 4) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < gsize - 1) && (NoPerm < 1 / 4 && qpRange3(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
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
// Translation of method Ref__main_post_check_1
// ==================================================

procedure Ref__main_post_check_1(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_8: int;
  var j_3: int;
  var i_9: int;
  var j_10: int;
  var i_10: int;
  var j_4: int;
  var _x_tid_9: int;
  var QPMask: MaskType;
  var _x_tid_10: int;
  var _x_tid_11: int;
  var _x_tid_12: int;
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
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@124.12--124.34) [13291]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@126.12--126.34) [13292]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@128.12--128.34) [13293]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__a[i], diz.Ref__a[j] } i >= 0 && (i < |diz.Ref__a| && (j >= 0 && (j < |diz.Ref__a| && i != j))) ==> diz.Ref__a[i] != diz.Ref__a[j])
      if (*) {
        if (i_8 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13294]"}
            HasDirectPerm(Mask, diz, Ref__a);
          if (i_8 < Seq#Length(Heap[diz, Ref__a])) {
            if (j_3 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13295]"}
                HasDirectPerm(Mask, diz, Ref__a);
            }
          }
        }
        if (i_8 >= 0 && (i_8 < Seq#Length(Heap[diz, Ref__a]) && (j_3 >= 0 && (j_3 < Seq#Length(Heap[diz, Ref__a]) && i_8 != j_3)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13296]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13297]"}
            i_8 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[i] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13298]"}
            i_8 < Seq#Length(Heap[diz, Ref__a]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13299]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13300]"}
            j_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[j] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@129.12--129.136) [13301]"}
            j_3 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(Heap[diz, Ref__a], i_1), Seq#Index(Heap[diz, Ref__a], j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(Heap[diz, Ref__a]) && (j_1 >= 0 && (j_1 < Seq#Length(Heap[diz, Ref__a]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Ref__a], i_1) != Seq#Index(Heap[diz, Ref__a], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__b[i], diz.Ref__b[j] } i >= 0 && (i < |diz.Ref__b| && (j >= 0 && (j < |diz.Ref__b| && i != j))) ==> diz.Ref__b[i] != diz.Ref__b[j])
      if (*) {
        if (i_9 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13302]"}
            HasDirectPerm(Mask, diz, Ref__b);
          if (i_9 < Seq#Length(Heap[diz, Ref__b])) {
            if (j_10 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13303]"}
                HasDirectPerm(Mask, diz, Ref__b);
            }
          }
        }
        if (i_9 >= 0 && (i_9 < Seq#Length(Heap[diz, Ref__b]) && (j_10 >= 0 && (j_10 < Seq#Length(Heap[diz, Ref__b]) && i_9 != j_10)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13304]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13305]"}
            i_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[i] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13306]"}
            i_9 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13307]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13308]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[j] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@130.12--130.136) [13309]"}
            j_10 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    assume (forall i_3: int, j_3_1: int ::
      { Seq#Index(Heap[diz, Ref__b], i_3), Seq#Index(Heap[diz, Ref__b], j_3_1) }
      i_3 >= 0 && (i_3 < Seq#Length(Heap[diz, Ref__b]) && (j_3_1 >= 0 && (j_3_1 < Seq#Length(Heap[diz, Ref__b]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, Ref__b], i_3) != Seq#Index(Heap[diz, Ref__b], j_3_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Ref__c[i], diz.Ref__c[j] } i >= 0 && (i < |diz.Ref__c| && (j >= 0 && (j < |diz.Ref__c| && i != j))) ==> diz.Ref__c[i] != diz.Ref__c[j])
      if (*) {
        if (i_10 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13310]"}
            HasDirectPerm(Mask, diz, Ref__c);
          if (i_10 < Seq#Length(Heap[diz, Ref__c])) {
            if (j_4 >= 0) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13311]"}
                HasDirectPerm(Mask, diz, Ref__c);
            }
          }
        }
        if (i_10 >= 0 && (i_10 < Seq#Length(Heap[diz, Ref__c]) && (j_4 >= 0 && (j_4 < Seq#Length(Heap[diz, Ref__c]) && i_10 != j_4)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13312]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13313]"}
            i_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[i] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13314]"}
            i_10 < Seq#Length(Heap[diz, Ref__c]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13315]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13316]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[j] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@131.12--131.136) [13317]"}
            j_4 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    assume (forall i_5: int, j_5_1: int ::
      { Seq#Index(Heap[diz, Ref__c], i_5), Seq#Index(Heap[diz, Ref__c], j_5_1) }
      i_5 >= 0 && (i_5 < Seq#Length(Heap[diz, Ref__c]) && (j_5_1 >= 0 && (j_5_1 < Seq#Length(Heap[diz, Ref__c]) && i_5 != j_5_1))) ==> Seq#Index(Heap[diz, Ref__c], i_5) != Seq#Index(Heap[diz, Ref__c], j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__a[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__a[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_9 && _x_tid_9 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@132.13--132.122) [13318]"}
            HasDirectPerm(Mask, diz, Ref__a);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might be negative. (test_kernel_example_v3_pvl.vpr@132.13--132.122) [13319]"}
            _x_tid_9 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[_x_tid] into diz.Ref__a might exceed sequence length. (test_kernel_example_v3_pvl.vpr@132.13--132.122) [13320]"}
            _x_tid_9 < Seq#Length(Heap[diz, Ref__a]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__a[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@132.13--132.122) [13321]"}
      (forall _x_tid_1: int, _x_tid_1_1: int ::
      
      (((_x_tid_1 != _x_tid_1_1 && (0 <= _x_tid_1 && _x_tid_1 < gsize)) && (0 <= _x_tid_1_1 && _x_tid_1_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != Seq#Index(Heap[diz, Ref__a], _x_tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        (0 <= _x_tid_1 && _x_tid_1 < gsize) && NoPerm < FullPerm ==> qpRange4(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) && invRecv4(Seq#Index(Heap[diz, Ref__a], _x_tid_1)) == _x_tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(Heap[diz, Ref__a], invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_1: int ::
        { Seq#Index(Heap[diz, Ref__a], _x_tid_1) } { Seq#Index(Heap[diz, Ref__a], _x_tid_1) }
        0 <= _x_tid_1 && _x_tid_1 < gsize ==> Seq#Index(Heap[diz, Ref__a], _x_tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__a], invRecv4(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < gsize) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__b[_x_tid].Ref__Integer_value, write))
      if (*) {
        if (0 <= _x_tid_10 && _x_tid_10 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@133.13--133.122) [13322]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@133.13--133.122) [13323]"}
            _x_tid_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@133.13--133.122) [13324]"}
            _x_tid_10 < Seq#Length(Heap[diz, Ref__b]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__b[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@133.13--133.122) [13325]"}
      (forall _x_tid_3: int, _x_tid_3_1: int ::
      
      (((_x_tid_3 != _x_tid_3_1 && (0 <= _x_tid_3 && _x_tid_3 < gsize)) && (0 <= _x_tid_3_1 && _x_tid_3_1 < gsize)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != Seq#Index(Heap[diz, Ref__b], _x_tid_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        (0 <= _x_tid_3 && _x_tid_3 < gsize) && NoPerm < FullPerm ==> qpRange5(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) && invRecv5(Seq#Index(Heap[diz, Ref__b], _x_tid_3)) == _x_tid_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(Heap[diz, Ref__b], invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_3: int ::
        { Seq#Index(Heap[diz, Ref__b], _x_tid_3) } { Seq#Index(Heap[diz, Ref__b], _x_tid_3) }
        0 <= _x_tid_3 && _x_tid_3 < gsize ==> Seq#Index(Heap[diz, Ref__b], _x_tid_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Ref__b], invRecv5(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < gsize) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__c[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> acc(diz.Ref__c[_x_tid].Ref__Integer_value, 1 / 4))
      if (*) {
        if (0 <= _x_tid_11 && _x_tid_11 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@134.13--134.122) [13326]"}
            HasDirectPerm(Mask, diz, Ref__c);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might be negative. (test_kernel_example_v3_pvl.vpr@134.13--134.122) [13327]"}
            _x_tid_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[_x_tid] into diz.Ref__c might exceed sequence length. (test_kernel_example_v3_pvl.vpr@134.13--134.122) [13328]"}
            _x_tid_11 < Seq#Length(Heap[diz, Ref__c]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Ref__c[_x_tid].Ref__Integer_value might not be injective. (test_kernel_example_v3_pvl.vpr@134.13--134.122) [13329]"}
      (forall _x_tid_5: int, _x_tid_5_1: int ::
      
      (((_x_tid_5 != _x_tid_5_1 && (0 <= _x_tid_5 && _x_tid_5 < gsize)) && (0 <= _x_tid_5_1 && _x_tid_5_1 < gsize)) && NoPerm < 1 / 4) && NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != Seq#Index(Heap[diz, Ref__c], _x_tid_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && NoPerm < 1 / 4 ==> qpRange6(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) && invRecv6(Seq#Index(Heap[diz, Ref__c], _x_tid_5)) == _x_tid_5
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4) ==> Seq#Index(Heap[diz, Ref__c], invRecv6(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@134.13--134.122) [13330]"}
      (forall _x_tid_5: int ::
      { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
      0 <= _x_tid_5 && _x_tid_5 < gsize ==> 1 / 4 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall _x_tid_5: int ::
        { Seq#Index(Heap[diz, Ref__c], _x_tid_5) } { Seq#Index(Heap[diz, Ref__c], _x_tid_5) }
        (0 <= _x_tid_5 && _x_tid_5 < gsize) && 1 / 4 > NoPerm ==> Seq#Index(Heap[diz, Ref__c], _x_tid_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4) ==> (NoPerm < 1 / 4 ==> Seq#Index(Heap[diz, Ref__c], invRecv6(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 4) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < gsize) && NoPerm < 1 / 4) && qpRange6(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall _x_tid: Int :: { diz.Ref__b[_x_tid] } 0 <= _x_tid && _x_tid < gsize ==> diz.Ref__b[_x_tid].Ref__Integer_value > 0)
      if (*) {
        if (0 <= _x_tid_12 && _x_tid_12 < gsize) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@135.13--135.116) [13331]"}
            HasDirectPerm(Mask, diz, Ref__b);
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@135.13--135.116) [13332]"}
            _x_tid_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[_x_tid] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@135.13--135.116) [13333]"}
            _x_tid_12 < Seq#Length(Heap[diz, Ref__b]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[_x_tid].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@135.13--135.116) [13334]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Ref__b], _x_tid_12), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall _x_tid_7: int ::
      { Seq#Index(Heap[diz, Ref__b], _x_tid_7) }
      0 <= _x_tid_7 && _x_tid_7 < gsize ==> Heap[Seq#Index(Heap[diz, Ref__b], _x_tid_7), Ref__Integer_value] > 0
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
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@142.11--142.33) [13335]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@144.11--144.33) [13336]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@146.11--146.33) [13337]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@147.11--147.40) [13338]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@147.11--147.40) [13339]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@148.11--148.40) [13340]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@148.11--148.40) [13341]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@149.11--149.40) [13342]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@149.11--149.40) [13343]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of acc(diz.Ref__b[tid - 1].Ref__Integer_value, 1 / 4)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13344]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13345]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13346]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 4;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13347]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid - 1) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (tid > 0) {
      
      // -- Check definedness of diz.Ref__b[tid - 1].Ref__Integer_value > 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@151.11--151.69) [13348]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might be negative. (test_kernel_example_v3_pvl.vpr@151.11--151.69) [13349]"}
          tid - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid - 1] into diz.Ref__b might exceed sequence length. (test_kernel_example_v3_pvl.vpr@151.11--151.69) [13350]"}
          tid - 1 < Seq#Length(PostHeap[diz, Ref__b]);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@151.11--151.69) [13351]"}
          HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value);
      assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion 0 <= tid might not hold. (test_kernel_example_v3_pvl.vpr@136.11--136.19) [13352]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid < tcount might not hold. (test_kernel_example_v3_pvl.vpr@137.11--137.23) [13353]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tid == lid might not hold. (test_kernel_example_v3_pvl.vpr@138.11--138.21) [13354]"}
      tid == lid;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion tcount == gsize might not hold. (test_kernel_example_v3_pvl.vpr@139.11--139.26) [13355]"}
      tcount == gsize;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion gid == 0 might not hold. (test_kernel_example_v3_pvl.vpr@140.11--140.19) [13356]"}
      gid == 0;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__a (test_kernel_example_v3_pvl.vpr@141.11--141.36) [13357]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@142.11--142.33) [13358]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b (test_kernel_example_v3_pvl.vpr@143.11--143.36) [13359]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@144.11--144.33) [13360]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__c (test_kernel_example_v3_pvl.vpr@145.11--145.36) [13361]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_kernel_example_v3_pvl.vpr@146.11--146.33) [13362]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_kernel_example_v3_pvl.vpr@147.11--147.40) [13363]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_kernel_example_v3_pvl.vpr@148.11--148.40) [13364]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_kernel_example_v3_pvl.vpr@149.11--149.40) [13365]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (tid > 0) {
      perm := 1 / 4;
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Fraction 1 / 4 might be negative. (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13366]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. There might be insufficient permission to access diz.Ref__b[tid - 1].Ref__Integer_value (test_kernel_example_v3_pvl.vpr@150.11--150.75) [13367]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] - perm];
    }
    if (tid > 0) {
      assert {:msg "  Postcondition of Ref__main_post_check_1 might not hold. Assertion diz.Ref__b[tid - 1].Ref__Integer_value > 0 might not hold. (test_kernel_example_v3_pvl.vpr@151.11--151.69) [13368]"}
        Heap[Seq#Index(Heap[diz, Ref__b], tid - 1), Ref__Integer_value] > 0;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}