// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:10:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/parallel_max-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(i_3: int): bool;
function  neverTriggered2(i_7_1: int): bool;
function  neverTriggered3(i_10_1: int): bool;
function  neverTriggered4(i1_1_1: int): bool;
function  neverTriggered5(i2_1_1: int): bool;
function  neverTriggered6(i3_1: int): bool;
function  neverTriggered7(i5_1: int): bool;
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique array: Field NormalField (Seq Ref);
axiom !IsPredicateField(array);
axiom !IsWandField(array);

// ==================================================
// Translation of method parallel_max
// ==================================================

procedure parallel_max(a_2: Ref, start: int, end: int, kperm: Perm) returns (mx: int, pos: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var l_5: int;
  var middle: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i1_25: int;
  var i2_9: int;
  var i3_11: int;
  var posl: int;
  var ml: int;
  var l1: int;
  var i5: int;
  var posr: int;
  var mr: int;
  var l2: int;
  var i6: int;
  var i6_1: int;
  var i_8_2: int;
  var j_4_1: int;
  var l_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume a_2 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= start;
    assume start < end;
    
    // -- Check definedness of end < |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@13.12--13.56) [64830]"}
        HasDirectPerm(Mask, a_2, array);
    assume end < Seq#Length(Heap[a_2, array]);
    assume state(Heap, Mask);
    assume NoPerm <= kperm;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_14) && (Seq#Contains(Seq#Range(start, end), j_5) && i_14 != j_5)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@15.12--15.112) [64831]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (parallel_max.vpr@15.12--15.112) [64832]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (parallel_max.vpr@15.12--15.112) [64833]"}
            i_14 < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@15.12--15.112) [64834]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (parallel_max.vpr@15.12--15.112) [64835]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (parallel_max.vpr@15.12--15.112) [64836]"}
            j_5 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#ContainsTrigger(Seq#Range(start, end), j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Contains(Seq#Range(start, end), j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#Contains(Seq#Range(start, end), i_1), Seq#Index(Heap[a_2, array], j_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Contains(Seq#Range(start, end), j_1), Seq#Index(Heap[a_2, array], i_1) } { Seq#Index(Heap[a_2, array], i_1), Seq#Index(Heap[a_2, array], j_1) }
      Seq#Contains(Seq#Range(start, end), i_1) && (Seq#Contains(Seq#Range(start, end), j_1) && i_1 != j_1) ==> Seq#Index(Heap[a_2, array], i_1) != Seq#Index(Heap[a_2, array], j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, kperm))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@16.12--16.78) [64837]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (parallel_max.vpr@16.12--16.78) [64838]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (parallel_max.vpr@16.12--16.78) [64839]"}
            i_2 < Seq#Length(Heap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (parallel_max.vpr@16.12--16.78) [64840]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && Seq#Contains(Seq#Range(start, end), i_3)) && Seq#Contains(Seq#Range(start, end), i_3_1)) && NoPerm < kperm) && NoPerm < kperm ==> Seq#Index(Heap[a_2, array], i_3) != Seq#Index(Heap[a_2, array], i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(Heap[a_2, array], i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(Heap[a_2, array], i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) && NoPerm < kperm ==> qpRange1(Seq#Index(Heap[a_2, array], i_3)) && invRecv1(Seq#Index(Heap[a_2, array], i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < kperm) && qpRange1(o_4) ==> Seq#Index(Heap[a_2, array], invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction kperm might be negative. (parallel_max.vpr@16.12--16.78) [64841]"}
      (forall i_3: int ::
      { Seq#Index(Heap[a_2, array], i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(Heap[a_2, array], i_3) }
      Seq#Contains(Seq#Range(start, end), i_3) ==> kperm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(Heap[a_2, array], i_3) } { Seq#ContainsTrigger(Seq#Range(start, end), i_3) } { Seq#Contains(Seq#Range(start, end), i_3) } { Seq#Index(Heap[a_2, array], i_3) }
        Seq#Contains(Seq#Range(start, end), i_3) && kperm > NoPerm ==> Seq#Index(Heap[a_2, array], i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < kperm) && qpRange1(o_4) ==> (NoPerm < kperm ==> Seq#Index(Heap[a_2, array], invRecv1(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + kperm) && (!((Seq#Contains(Seq#Range(start, end), invRecv1(o_4)) && NoPerm < kperm) && qpRange1(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |a.array| >= 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@17.12--17.26) [64842]"}
        HasDirectPerm(Mask, a_2, array);
    assume Seq#Length(Heap[a_2, array]) >= 1;
    assume state(Heap, Mask);
    assume NoPerm < kperm;
    assume kperm < FullPerm;
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
    havoc wildcard;
    perm := wildcard;
    assume a_2 != null;
    PostMask := PostMask[a_2, array:=PostMask[a_2, array] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of end < |a.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@20.11--20.26) [64843]"}
        HasDirectPerm(PostMask, a_2, array);
    assume end < Seq#Length(PostHeap[a_2, array]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [start..end)), (j in [start..end)) } { (i in [start..end)), a.array[j] } { (j in [start..end)), a.array[i] } { a.array[i], a.array[j] } (i in [start..end)) && ((j in [start..end)) && i != j) ==> a.array[i] != a.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_4) && (Seq#Contains(Seq#Range(start, end), j_6) && i_4 != j_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@21.11--21.111) [64844]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (parallel_max.vpr@21.11--21.111) [64845]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (parallel_max.vpr@21.11--21.111) [64846]"}
            i_4 < Seq#Length(PostHeap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@21.11--21.111) [64847]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might be negative. (parallel_max.vpr@21.11--21.111) [64848]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[j] into a.array might exceed sequence length. (parallel_max.vpr@21.11--21.111) [64849]"}
            j_6 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#ContainsTrigger(Seq#Range(start, end), j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Contains(Seq#Range(start, end), j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_5), Seq#Index(PostHeap[a_2, array], j_3_1) } { Seq#Contains(Seq#Range(start, end), i_5), Seq#Index(PostHeap[a_2, array], j_3_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_3_1), Seq#Index(PostHeap[a_2, array], i_5) } { Seq#Contains(Seq#Range(start, end), j_3_1), Seq#Index(PostHeap[a_2, array], i_5) } { Seq#Index(PostHeap[a_2, array], i_5), Seq#Index(PostHeap[a_2, array], j_3_1) }
      Seq#Contains(Seq#Range(start, end), i_5) && (Seq#Contains(Seq#Range(start, end), j_3_1) && i_5 != j_3_1) ==> Seq#Index(PostHeap[a_2, array], i_5) != Seq#Index(PostHeap[a_2, array], j_3_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in [start..end)) } { a.array[i] } (i in [start..end)) ==> acc(a.array[i].value, kperm))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@22.11--22.77) [64850]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might be negative. (parallel_max.vpr@22.11--22.77) [64851]"}
            i_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[i] into a.array might exceed sequence length. (parallel_max.vpr@22.11--22.77) [64852]"}
            i_6 < Seq#Length(PostHeap[a_2, array]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (parallel_max.vpr@22.11--22.77) [64853]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && Seq#Contains(Seq#Range(start, end), i_7_1)) && Seq#Contains(Seq#Range(start, end), i_7_2)) && NoPerm < kperm) && NoPerm < kperm ==> Seq#Index(PostHeap[a_2, array], i_7_1) != Seq#Index(PostHeap[a_2, array], i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(PostHeap[a_2, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) && NoPerm < kperm ==> qpRange2(Seq#Index(PostHeap[a_2, array], i_7_1)) && invRecv2(Seq#Index(PostHeap[a_2, array], i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < kperm) && qpRange2(o_4) ==> Seq#Index(PostHeap[a_2, array], invRecv2(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction kperm might be negative. (parallel_max.vpr@22.11--22.77) [64854]"}
      (forall i_7_1: int ::
      { Seq#Index(PostHeap[a_2, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(PostHeap[a_2, array], i_7_1) }
      Seq#Contains(Seq#Range(start, end), i_7_1) ==> kperm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(PostHeap[a_2, array], i_7_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_7_1) } { Seq#Contains(Seq#Range(start, end), i_7_1) } { Seq#Index(PostHeap[a_2, array], i_7_1) }
        Seq#Contains(Seq#Range(start, end), i_7_1) && kperm > NoPerm ==> Seq#Index(PostHeap[a_2, array], i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        ((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < kperm) && qpRange2(o_4) ==> (NoPerm < kperm ==> Seq#Index(PostHeap[a_2, array], invRecv2(o_4)) == o_4) && QPMask[o_4, value] == PostMask[o_4, value] + kperm) && (!((Seq#Contains(Seq#Range(start, end), invRecv2(o_4)) && NoPerm < kperm) && qpRange2(o_4)) ==> QPMask[o_4, value] == PostMask[o_4, value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume start <= pos;
    assume pos < end;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.array[pos].value == mx
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@24.11--24.35) [64855]"}
        HasDirectPerm(PostMask, a_2, array);
      assert {:msg "  Contract might not be well-formed. Index a.array[pos] into a.array might be negative. (parallel_max.vpr@24.11--24.35) [64856]"}
        pos >= 0;
      assert {:msg "  Contract might not be well-formed. Index a.array[pos] into a.array might exceed sequence length. (parallel_max.vpr@24.11--24.35) [64857]"}
        pos < Seq#Length(PostHeap[a_2, array]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array[pos].value (parallel_max.vpr@24.11--24.35) [64858]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[a_2, array], pos), value);
    assume PostHeap[Seq#Index(PostHeap[a_2, array], pos), value] == mx;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall l: Int :: { (l in [start..end)) } { a.array[l] } (l in [start..end)) ==> a.array[l].value <= mx)
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), l_5)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array (parallel_max.vpr@25.12--25.71) [64859]"}
            HasDirectPerm(PostMask, a_2, array);
          assert {:msg "  Contract might not be well-formed. Index a.array[l] into a.array might be negative. (parallel_max.vpr@25.12--25.71) [64860]"}
            l_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a.array[l] into a.array might exceed sequence length. (parallel_max.vpr@25.12--25.71) [64861]"}
            l_5 < Seq#Length(PostHeap[a_2, array]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.array[l].value (parallel_max.vpr@25.12--25.71) [64862]"}
            HasDirectPerm(PostMask, Seq#Index(PostHeap[a_2, array], l_5), value);
        }
        assume false;
      }
    assume (forall l_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), l_1) } { Seq#Contains(Seq#Range(start, end), l_1) } { Seq#Index(PostHeap[a_2, array], l_1) }
      Seq#Contains(Seq#Range(start, end), l_1) ==> PostHeap[Seq#Index(PostHeap[a_2, array], l_1), value] <= mx
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (end - start > 1) -- parallel_max.vpr@34.5--75.6
    if (end - start > 1) {
      
      // -- Translating statement: middle := start + (end - start) \ 2 -- parallel_max.vpr@36.9--36.40
        middle := start + (end - start) div 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale a != null -- parallel_max.vpr@39.9--39.25
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion a != null might not hold. (parallel_max.vpr@39.16--39.25) [64863]"}
          a_2 != null;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- parallel_max.vpr@40.9--40.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@40.16--40.38) [64864]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale 0 <= start && (start < middle && middle < |a.array|) -- parallel_max.vpr@41.9--41.66
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion 0 <= start might not hold. (parallel_max.vpr@41.16--41.66) [64865]"}
          0 <= start;
        assert {:msg "  Exhale might fail. Assertion start < middle might not hold. (parallel_max.vpr@41.16--41.66) [64866]"}
          start < middle;
        
        // -- Check definedness of middle < |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@41.16--41.66) [64867]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion middle < |a.array| might not hold. (parallel_max.vpr@41.16--41.66) [64868]"}
          middle < Seq#Length(Heap[a_2, array]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i1: Int ::
  //     { (i1 in [start..middle)) }
  //     { a.array[i1] }
  //     (i1 in [start..middle)) ==> acc(a.array[i1].value, 1 / 2 * kperm)) -- parallel_max.vpr@42.9--42.98
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i1: Int :: { (i1 in [start..middle)) } { a.array[i1] } (i1 in [start..middle)) ==> acc(a.array[i1].value, 1 / 2 * kperm))
          if (*) {
            if (Seq#Contains(Seq#Range(start, middle), i1_25)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@42.16--42.98) [64869]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
              assert {:msg "  Exhale might fail. Index a.array[i1] into a.array might be negative. (parallel_max.vpr@42.16--42.98) [64870]"}
                i1_25 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i1] into a.array might exceed sequence length. (parallel_max.vpr@42.16--42.98) [64871]"}
                i1_25 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Exhale might fail. Fraction 1 / 2 * kperm might be negative. (parallel_max.vpr@42.16--42.98) [64872]"}
            (forall i1_1_1: int ::
            { Seq#Index(Heap[a_2, array], i1_1_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i1_1_1) } { Seq#Contains(Seq#Range(start, middle), i1_1_1) } { Seq#Index(Heap[a_2, array], i1_1_1) }
            Seq#Contains(Seq#Range(start, middle), i1_1_1) && dummyFunction(Heap[Seq#Index(Heap[a_2, array], i1_1_1), value]) ==> 1 / 2 * kperm >= NoPerm
          );
        
        // -- check if receiver a.array[i1] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i1].value might not be injective. (parallel_max.vpr@42.16--42.98) [64873]"}
            (forall i1_1_1: int, i1_1_2: int ::
            { neverTriggered4(i1_1_1), neverTriggered4(i1_1_2) }
            (((i1_1_1 != i1_1_2 && Seq#Contains(Seq#Range(start, middle), i1_1_1)) && Seq#Contains(Seq#Range(start, middle), i1_1_2)) && NoPerm < 1 / 2 * kperm) && NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], i1_1_1) != Seq#Index(Heap[a_2, array], i1_1_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i1].value (parallel_max.vpr@42.16--42.98) [64874]"}
            (forall i1_1_1: int ::
            { Seq#Index(Heap[a_2, array], i1_1_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i1_1_1) } { Seq#Contains(Seq#Range(start, middle), i1_1_1) } { Seq#Index(Heap[a_2, array], i1_1_1) }
            Seq#Contains(Seq#Range(start, middle), i1_1_1) ==> Mask[Seq#Index(Heap[a_2, array], i1_1_1), value] >= 1 / 2 * kperm
          );
        
        // -- assumptions for inverse of receiver a.array[i1]
          assume (forall i1_1_1: int ::
            { Seq#Index(Heap[a_2, array], i1_1_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i1_1_1) } { Seq#Contains(Seq#Range(start, middle), i1_1_1) } { Seq#Index(Heap[a_2, array], i1_1_1) }
            Seq#Contains(Seq#Range(start, middle), i1_1_1) && NoPerm < 1 / 2 * kperm ==> qpRange4(Seq#Index(Heap[a_2, array], i1_1_1)) && invRecv4(Seq#Index(Heap[a_2, array], i1_1_1)) == i1_1_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            Seq#Contains(Seq#Range(start, middle), invRecv4(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange4(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv4(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(start, middle), invRecv4(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange4(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv4(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - 1 / 2 * kperm) && (!(Seq#Contains(Seq#Range(start, middle), invRecv4(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange4(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale |a.array| >= 1 -- parallel_max.vpr@43.9--43.30
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of |a.array| >= 1
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@43.16--43.30) [64875]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion |a.array| >= 1 might not hold. (parallel_max.vpr@43.16--43.30) [64876]"}
          Seq#Length(Heap[a_2, array]) >= 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale none < 1 / 2 * kperm && 1 / 2 * kperm < write -- parallel_max.vpr@44.9--44.65
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion none < 1 / 2 * kperm might not hold. (parallel_max.vpr@44.16--44.65) [64877]"}
          NoPerm < 1 / 2 * kperm;
        assert {:msg "  Exhale might fail. Assertion 1 / 2 * kperm < write might not hold. (parallel_max.vpr@44.16--44.65) [64878]"}
          1 / 2 * kperm < FullPerm;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale a != null -- parallel_max.vpr@47.9--47.25
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion a != null might not hold. (parallel_max.vpr@47.16--47.25) [64879]"}
          a_2 != null;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale acc(a.array, wildcard) -- parallel_max.vpr@48.9--48.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@48.16--48.38) [64880]"}
          Mask[a_2, array] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[a_2, array];
        Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale 0 <= middle && (middle < end && end < |a.array|) -- parallel_max.vpr@49.9--49.62
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion 0 <= middle might not hold. (parallel_max.vpr@49.16--49.62) [64881]"}
          0 <= middle;
        assert {:msg "  Exhale might fail. Assertion middle < end might not hold. (parallel_max.vpr@49.16--49.62) [64882]"}
          middle < end;
        
        // -- Check definedness of end < |a.array|
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@49.16--49.62) [64883]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion end < |a.array| might not hold. (parallel_max.vpr@49.16--49.62) [64884]"}
          end < Seq#Length(Heap[a_2, array]);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i2: Int ::
  //     { (i2 in [middle..end)) }
  //     { a.array[i2] }
  //     (i2 in [middle..end)) ==> acc(a.array[i2].value, 1 / 2 * kperm)) -- parallel_max.vpr@50.9--50.96
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i2: Int :: { (i2 in [middle..end)) } { a.array[i2] } (i2 in [middle..end)) ==> acc(a.array[i2].value, 1 / 2 * kperm))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end), i2_9)) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@50.16--50.96) [64885]"}
                HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
              assert {:msg "  Exhale might fail. Index a.array[i2] into a.array might be negative. (parallel_max.vpr@50.16--50.96) [64886]"}
                i2_9 >= 0;
              assert {:msg "  Exhale might fail. Index a.array[i2] into a.array might exceed sequence length. (parallel_max.vpr@50.16--50.96) [64887]"}
                i2_9 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Exhale might fail. Fraction 1 / 2 * kperm might be negative. (parallel_max.vpr@50.16--50.96) [64888]"}
            (forall i2_1_1: int ::
            { Seq#Index(Heap[a_2, array], i2_1_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i2_1_1) } { Seq#Contains(Seq#Range(middle, end), i2_1_1) } { Seq#Index(Heap[a_2, array], i2_1_1) }
            Seq#Contains(Seq#Range(middle, end), i2_1_1) && dummyFunction(Heap[Seq#Index(Heap[a_2, array], i2_1_1), value]) ==> 1 / 2 * kperm >= NoPerm
          );
        
        // -- check if receiver a.array[i2] is injective
          assert {:msg "  Exhale might fail. Quantified resource a.array[i2].value might not be injective. (parallel_max.vpr@50.16--50.96) [64889]"}
            (forall i2_1_1: int, i2_1_2: int ::
            { neverTriggered5(i2_1_1), neverTriggered5(i2_1_2) }
            (((i2_1_1 != i2_1_2 && Seq#Contains(Seq#Range(middle, end), i2_1_1)) && Seq#Contains(Seq#Range(middle, end), i2_1_2)) && NoPerm < 1 / 2 * kperm) && NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], i2_1_1) != Seq#Index(Heap[a_2, array], i2_1_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array[i2].value (parallel_max.vpr@50.16--50.96) [64890]"}
            (forall i2_1_1: int ::
            { Seq#Index(Heap[a_2, array], i2_1_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i2_1_1) } { Seq#Contains(Seq#Range(middle, end), i2_1_1) } { Seq#Index(Heap[a_2, array], i2_1_1) }
            Seq#Contains(Seq#Range(middle, end), i2_1_1) ==> Mask[Seq#Index(Heap[a_2, array], i2_1_1), value] >= 1 / 2 * kperm
          );
        
        // -- assumptions for inverse of receiver a.array[i2]
          assume (forall i2_1_1: int ::
            { Seq#Index(Heap[a_2, array], i2_1_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i2_1_1) } { Seq#Contains(Seq#Range(middle, end), i2_1_1) } { Seq#Index(Heap[a_2, array], i2_1_1) }
            Seq#Contains(Seq#Range(middle, end), i2_1_1) && NoPerm < 1 / 2 * kperm ==> qpRange5(Seq#Index(Heap[a_2, array], i2_1_1)) && invRecv5(Seq#Index(Heap[a_2, array], i2_1_1)) == i2_1_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            Seq#Contains(Seq#Range(middle, end), invRecv5(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange5(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv5(o_4)) == o_4
          );
        
        // -- assume permission updates for field value
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            (Seq#Contains(Seq#Range(middle, end), invRecv5(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange5(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv5(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - 1 / 2 * kperm) && (!(Seq#Contains(Seq#Range(middle, end), invRecv5(o_4)) && (NoPerm < 1 / 2 * kperm && qpRange5(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale |a.array| >= 1 -- parallel_max.vpr@51.9--51.30
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of |a.array| >= 1
          assert {:msg "  Exhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@51.16--51.30) [64891]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
        assert {:msg "  Exhale might fail. Assertion |a.array| >= 1 might not hold. (parallel_max.vpr@51.16--51.30) [64892]"}
          Seq#Length(Heap[a_2, array]) >= 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale none < 1 / 2 * kperm && 1 / 2 * kperm < write -- parallel_max.vpr@52.9--52.65
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion none < 1 / 2 * kperm might not hold. (parallel_max.vpr@52.16--52.65) [64893]"}
          NoPerm < 1 / 2 * kperm;
        assert {:msg "  Exhale might fail. Assertion 1 / 2 * kperm < write might not hold. (parallel_max.vpr@52.16--52.65) [64894]"}
          1 / 2 * kperm < FullPerm;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(a.array, wildcard) -- parallel_max.vpr@55.9--55.38
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale middle < |a.array| -- parallel_max.vpr@56.9--56.34
        
        // -- Check definedness of middle < |a.array|
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@56.16--56.34) [64895]"}
            HasDirectPerm(Mask, a_2, array);
        assume middle < Seq#Length(Heap[a_2, array]);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i3: Int ::
  //     { (i3 in [start..middle)) }
  //     { a.array[i3] }
  //     (i3 in [start..middle)) ==> acc(a.array[i3].value, 1 / 2 * kperm)) -- parallel_max.vpr@57.9--57.98
        
        // -- Check definedness of (forall i3: Int :: { (i3 in [start..middle)) } { a.array[i3] } (i3 in [start..middle)) ==> acc(a.array[i3].value, 1 / 2 * kperm))
          if (*) {
            if (Seq#Contains(Seq#Range(start, middle), i3_11)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@57.16--57.98) [64896]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[i3] into a.array might be negative. (parallel_max.vpr@57.16--57.98) [64897]"}
                i3_11 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i3] into a.array might exceed sequence length. (parallel_max.vpr@57.16--57.98) [64898]"}
                i3_11 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i3].value might not be injective. (parallel_max.vpr@57.16--57.98) [64899]"}
          (forall i3_1: int, i3_1_1: int ::
          
          (((i3_1 != i3_1_1 && Seq#Contains(Seq#Range(start, middle), i3_1)) && Seq#Contains(Seq#Range(start, middle), i3_1_1)) && NoPerm < 1 / 2 * kperm) && NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], i3_1) != Seq#Index(Heap[a_2, array], i3_1_1)
        );
        
        // -- Define Inverse Function
          assume (forall i3_1: int ::
            { Seq#Index(Heap[a_2, array], i3_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i3_1) } { Seq#Contains(Seq#Range(start, middle), i3_1) } { Seq#Index(Heap[a_2, array], i3_1) }
            Seq#Contains(Seq#Range(start, middle), i3_1) && NoPerm < 1 / 2 * kperm ==> qpRange6(Seq#Index(Heap[a_2, array], i3_1)) && invRecv6(Seq#Index(Heap[a_2, array], i3_1)) == i3_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            (Seq#Contains(Seq#Range(start, middle), invRecv6(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange6(o_4) ==> Seq#Index(Heap[a_2, array], invRecv6(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Inhale might fail. Fraction 1 / 2 * kperm might be negative. (parallel_max.vpr@57.16--57.98) [64900]"}
          (forall i3_1: int ::
          { Seq#Index(Heap[a_2, array], i3_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i3_1) } { Seq#Contains(Seq#Range(start, middle), i3_1) } { Seq#Index(Heap[a_2, array], i3_1) }
          Seq#Contains(Seq#Range(start, middle), i3_1) ==> 1 / 2 * kperm >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i3_1: int ::
            { Seq#Index(Heap[a_2, array], i3_1) } { Seq#ContainsTrigger(Seq#Range(start, middle), i3_1) } { Seq#Contains(Seq#Range(start, middle), i3_1) } { Seq#Index(Heap[a_2, array], i3_1) }
            Seq#Contains(Seq#Range(start, middle), i3_1) && 1 / 2 * kperm > NoPerm ==> Seq#Index(Heap[a_2, array], i3_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(start, middle), invRecv6(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange6(o_4) ==> (NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], invRecv6(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + 1 / 2 * kperm) && (!((Seq#Contains(Seq#Range(start, middle), invRecv6(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange6(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale start <= posl && posl < middle -- parallel_max.vpr@58.9--58.42
        assume start <= posl;
        assume posl < middle;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array[posl].value == ml -- parallel_max.vpr@59.9--59.41
        
        // -- Check definedness of a.array[posl].value == ml
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@59.16--59.41) [64901]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Inhale might fail. Index a.array[posl] into a.array might be negative. (parallel_max.vpr@59.16--59.41) [64902]"}
            posl >= 0;
          assert {:msg "  Inhale might fail. Index a.array[posl] into a.array might exceed sequence length. (parallel_max.vpr@59.16--59.41) [64903]"}
            posl < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array[posl].value (parallel_max.vpr@59.16--59.41) [64904]"}
            HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], posl), value);
        assume Heap[Seq#Index(Heap[a_2, array], posl), value] == ml;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall l1: Int ::
  //     { (l1 in [start..middle)) }
  //     { a.array[l1] }
  //     (l1 in [start..middle)) ==> a.array[l1].value <= ml) -- parallel_max.vpr@60.9--60.85
        
        // -- Check definedness of (forall l1: Int :: { (l1 in [start..middle)) } { a.array[l1] } (l1 in [start..middle)) ==> a.array[l1].value <= ml)
          if (*) {
            if (Seq#Contains(Seq#Range(start, middle), l1)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@60.17--60.84) [64905]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[l1] into a.array might be negative. (parallel_max.vpr@60.17--60.84) [64906]"}
                l1 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[l1] into a.array might exceed sequence length. (parallel_max.vpr@60.17--60.84) [64907]"}
                l1 < Seq#Length(Heap[a_2, array]);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array[l1].value (parallel_max.vpr@60.17--60.84) [64908]"}
                HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], l1), value);
            }
            assume false;
          }
        assume (forall l1_1: int ::
          { Seq#ContainsTrigger(Seq#Range(start, middle), l1_1) } { Seq#Contains(Seq#Range(start, middle), l1_1) } { Seq#Index(Heap[a_2, array], l1_1) }
          Seq#Contains(Seq#Range(start, middle), l1_1) ==> Heap[Seq#Index(Heap[a_2, array], l1_1), value] <= ml
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale acc(a.array, wildcard) -- parallel_max.vpr@63.9--63.38
        havoc wildcard;
        perm := wildcard;
        assume a_2 != null;
        Mask := Mask[a_2, array:=Mask[a_2, array] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale middle < |a.array| -- parallel_max.vpr@64.9--64.34
        
        // -- Check definedness of middle < |a.array|
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@64.16--64.34) [64909]"}
            HasDirectPerm(Mask, a_2, array);
        assume middle < Seq#Length(Heap[a_2, array]);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i5: Int ::
  //     { (i5 in [middle..end)) }
  //     { a.array[i5] }
  //     (i5 in [middle..end)) ==> acc(a.array[i5].value, 1 / 2 * kperm)) -- parallel_max.vpr@65.9--65.96
        
        // -- Check definedness of (forall i5: Int :: { (i5 in [middle..end)) } { a.array[i5] } (i5 in [middle..end)) ==> acc(a.array[i5].value, 1 / 2 * kperm))
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end), i5)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@65.16--65.96) [64910]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[i5] into a.array might be negative. (parallel_max.vpr@65.16--65.96) [64911]"}
                i5 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[i5] into a.array might exceed sequence length. (parallel_max.vpr@65.16--65.96) [64912]"}
                i5 < Seq#Length(Heap[a_2, array]);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource a.array[i5].value might not be injective. (parallel_max.vpr@65.16--65.96) [64913]"}
          (forall i5_1: int, i5_1_1: int ::
          
          (((i5_1 != i5_1_1 && Seq#Contains(Seq#Range(middle, end), i5_1)) && Seq#Contains(Seq#Range(middle, end), i5_1_1)) && NoPerm < 1 / 2 * kperm) && NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], i5_1) != Seq#Index(Heap[a_2, array], i5_1_1)
        );
        
        // -- Define Inverse Function
          assume (forall i5_1: int ::
            { Seq#Index(Heap[a_2, array], i5_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i5_1) } { Seq#Contains(Seq#Range(middle, end), i5_1) } { Seq#Index(Heap[a_2, array], i5_1) }
            Seq#Contains(Seq#Range(middle, end), i5_1) && NoPerm < 1 / 2 * kperm ==> qpRange7(Seq#Index(Heap[a_2, array], i5_1)) && invRecv7(Seq#Index(Heap[a_2, array], i5_1)) == i5_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (Seq#Contains(Seq#Range(middle, end), invRecv7(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange7(o_4) ==> Seq#Index(Heap[a_2, array], invRecv7(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Inhale might fail. Fraction 1 / 2 * kperm might be negative. (parallel_max.vpr@65.16--65.96) [64914]"}
          (forall i5_1: int ::
          { Seq#Index(Heap[a_2, array], i5_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i5_1) } { Seq#Contains(Seq#Range(middle, end), i5_1) } { Seq#Index(Heap[a_2, array], i5_1) }
          Seq#Contains(Seq#Range(middle, end), i5_1) ==> 1 / 2 * kperm >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i5_1: int ::
            { Seq#Index(Heap[a_2, array], i5_1) } { Seq#ContainsTrigger(Seq#Range(middle, end), i5_1) } { Seq#Contains(Seq#Range(middle, end), i5_1) } { Seq#Index(Heap[a_2, array], i5_1) }
            Seq#Contains(Seq#Range(middle, end), i5_1) && 1 / 2 * kperm > NoPerm ==> Seq#Index(Heap[a_2, array], i5_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, value] }
            ((Seq#Contains(Seq#Range(middle, end), invRecv7(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange7(o_4) ==> (NoPerm < 1 / 2 * kperm ==> Seq#Index(Heap[a_2, array], invRecv7(o_4)) == o_4) && QPMask[o_4, value] == Mask[o_4, value] + 1 / 2 * kperm) && (!((Seq#Contains(Seq#Range(middle, end), invRecv7(o_4)) && NoPerm < 1 / 2 * kperm) && qpRange7(o_4)) ==> QPMask[o_4, value] == Mask[o_4, value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale middle <= posr && posr < end -- parallel_max.vpr@66.9--66.40
        assume middle <= posr;
        assume posr < end;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale a.array[posr].value == mr -- parallel_max.vpr@67.9--67.41
        
        // -- Check definedness of a.array[posr].value == mr
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@67.16--67.41) [64915]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Inhale might fail. Index a.array[posr] into a.array might be negative. (parallel_max.vpr@67.16--67.41) [64916]"}
            posr >= 0;
          assert {:msg "  Inhale might fail. Index a.array[posr] into a.array might exceed sequence length. (parallel_max.vpr@67.16--67.41) [64917]"}
            posr < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array[posr].value (parallel_max.vpr@67.16--67.41) [64918]"}
            HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], posr), value);
        assume Heap[Seq#Index(Heap[a_2, array], posr), value] == mr;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall l2: Int ::
  //     { (l2 in [middle..end)) }
  //     { a.array[l2] }
  //     (l2 in [middle..end)) ==> a.array[l2].value <= mr) -- parallel_max.vpr@68.9--68.83
        
        // -- Check definedness of (forall l2: Int :: { (l2 in [middle..end)) } { a.array[l2] } (l2 in [middle..end)) ==> a.array[l2].value <= mr)
          if (*) {
            if (Seq#Contains(Seq#Range(middle, end), l2)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array (parallel_max.vpr@68.17--68.82) [64919]"}
                HasDirectPerm(Mask, a_2, array);
              assert {:msg "  Inhale might fail. Index a.array[l2] into a.array might be negative. (parallel_max.vpr@68.17--68.82) [64920]"}
                l2 >= 0;
              assert {:msg "  Inhale might fail. Index a.array[l2] into a.array might exceed sequence length. (parallel_max.vpr@68.17--68.82) [64921]"}
                l2 < Seq#Length(Heap[a_2, array]);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access a.array[l2].value (parallel_max.vpr@68.17--68.82) [64922]"}
                HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], l2), value);
            }
            assume false;
          }
        assume (forall l2_1: int ::
          { Seq#ContainsTrigger(Seq#Range(middle, end), l2_1) } { Seq#Contains(Seq#Range(middle, end), l2_1) } { Seq#Index(Heap[a_2, array], l2_1) }
          Seq#Contains(Seq#Range(middle, end), l2_1) ==> Heap[Seq#Index(Heap[a_2, array], l2_1), value] <= mr
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: mx := (ml > mr ? ml : mr) -- parallel_max.vpr@70.9--70.30
        mx := (if ml > mr then ml else mr);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (mx == ml) -- parallel_max.vpr@71.9--71.59
        if (mx == ml) {
          
          // -- Translating statement: pos := posl -- parallel_max.vpr@71.25--71.36
            pos := posl;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: pos := posr -- parallel_max.vpr@71.46--71.57
            pos := posr;
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: mx := a.array[start].value -- parallel_max.vpr@73.9--73.37
        
        // -- Check definedness of a.array[start].value
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array (parallel_max.vpr@73.9--73.37) [64923]"}
            HasDirectPerm(Mask, a_2, array);
          assert {:msg "  Assignment might fail. Index a.array[start] into a.array might be negative. (parallel_max.vpr@73.9--73.37) [64924]"}
            start >= 0;
          assert {:msg "  Assignment might fail. Index a.array[start] into a.array might exceed sequence length. (parallel_max.vpr@73.9--73.37) [64925]"}
            start < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access a.array[start].value (parallel_max.vpr@73.9--73.37) [64926]"}
            HasDirectPerm(Mask, Seq#Index(Heap[a_2, array], start), value);
        mx := Heap[Seq#Index(Heap[a_2, array], start), value];
        assume state(Heap, Mask);
      
      // -- Translating statement: pos := start -- parallel_max.vpr@74.9--74.21
        pos := start;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i6: Int ::
  //     { (i6 in [start..end)) }
  //     { old(a.array[i6]) }
  //     (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value)) -- parallel_max.vpr@78.5--78.95
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i6: Int :: { (i6 in [start..end)) } { old(a.array[i6]) } (i6 in [start..end)) ==> a.array[i6].value == old(a.array[i6].value))
      if (*) {
        if (Seq#Contains(Seq#Range(start, end), i6)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.array (parallel_max.vpr@78.12--78.95) [64927]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_2, array);
          assert {:msg "  Assert might fail. Index a.array[i6] into a.array might be negative. (parallel_max.vpr@78.12--78.95) [64928]"}
            i6 >= 0;
          assert {:msg "  Assert might fail. Index a.array[i6] into a.array might exceed sequence length. (parallel_max.vpr@78.12--78.95) [64929]"}
            i6 < Seq#Length(Heap[a_2, array]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.array[i6].value (parallel_max.vpr@78.12--78.95) [64930]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(Heap[a_2, array], i6), value);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.array (parallel_max.vpr@78.12--78.95) [64931]"}
            HasDirectPerm(oldMask, a_2, array);
          assert {:msg "  Assert might fail. Index a.array[i6] into a.array might be negative. (parallel_max.vpr@78.12--78.95) [64932]"}
            i6 >= 0;
          assert {:msg "  Assert might fail. Index a.array[i6] into a.array might exceed sequence length. (parallel_max.vpr@78.12--78.95) [64933]"}
            i6 < Seq#Length(oldHeap[a_2, array]);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.array[i6].value (parallel_max.vpr@78.12--78.95) [64934]"}
            HasDirectPerm(oldMask, Seq#Index(oldHeap[a_2, array], i6), value);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i6_1)) {
        assert {:msg "  Assert might fail. Assertion a.array[i6].value == old(a.array[i6].value) might not hold. (parallel_max.vpr@78.12--78.95) [64935]"}
          Heap[Seq#Index(Heap[a_2, array], i6_1), value] == oldHeap[Seq#Index(oldHeap[a_2, array], i6_1), value];
      }
      assume false;
    }
    assume (forall i6_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i6_2_1) } { Seq#Contains(Seq#Range(start, end), i6_2_1) } { Seq#Index(oldHeap[a_2, array], i6_2_1) }
      Seq#Contains(Seq#Range(start, end), i6_2_1) ==> Heap[Seq#Index(Heap[a_2, array], i6_2_1), value] == oldHeap[Seq#Index(oldHeap[a_2, array], i6_2_1), value]
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of parallel_max might not hold. There might be insufficient permission to access a.array (parallel_max.vpr@19.11--19.33) [64936]"}
      Mask[a_2, array] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[a_2, array];
    Mask := Mask[a_2, array:=Mask[a_2, array] - wildcard];
    assert {:msg "  Postcondition of parallel_max might not hold. Assertion end < |a.array| might not hold. (parallel_max.vpr@20.11--20.26) [64937]"}
      end < Seq#Length(Heap[a_2, array]);
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), i_8_2) && (Seq#Contains(Seq#Range(start, end), j_4_1) && i_8_2 != j_4_1)) {
        assert {:msg "  Postcondition of parallel_max might not hold. Assertion a.array[i] != a.array[j] might not hold. (parallel_max.vpr@21.11--21.111) [64938]"}
          Seq#Index(Heap[a_2, array], i_8_2) != Seq#Index(Heap[a_2, array], j_4_1);
      }
      assume false;
    }
    assume (forall i_9_1_1: int, j_5_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1_1), Seq#Contains(Seq#Range(start, end), j_5_1_1) } { Seq#Contains(Seq#Range(start, end), i_9_1_1), Seq#ContainsTrigger(Seq#Range(start, end), j_5_1_1) } { Seq#Contains(Seq#Range(start, end), i_9_1_1), Seq#Contains(Seq#Range(start, end), j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_9_1_1), Seq#Index(Heap[a_2, array], j_5_1_1) } { Seq#Contains(Seq#Range(start, end), i_9_1_1), Seq#Index(Heap[a_2, array], j_5_1_1) } { Seq#ContainsTrigger(Seq#Range(start, end), j_5_1_1), Seq#Index(Heap[a_2, array], i_9_1_1) } { Seq#Contains(Seq#Range(start, end), j_5_1_1), Seq#Index(Heap[a_2, array], i_9_1_1) } { Seq#Index(Heap[a_2, array], i_9_1_1), Seq#Index(Heap[a_2, array], j_5_1_1) }
      Seq#Contains(Seq#Range(start, end), i_9_1_1) && (Seq#Contains(Seq#Range(start, end), j_5_1_1) && i_9_1_1 != j_5_1_1) ==> Seq#Index(Heap[a_2, array], i_9_1_1) != Seq#Index(Heap[a_2, array], j_5_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of parallel_max might not hold. Fraction kperm might be negative. (parallel_max.vpr@22.11--22.77) [64939]"}
        (forall i_10_1: int ::
        { Seq#Index(Heap[a_2, array], i_10_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_10_1) } { Seq#Contains(Seq#Range(start, end), i_10_1) } { Seq#Index(Heap[a_2, array], i_10_1) }
        Seq#Contains(Seq#Range(start, end), i_10_1) && dummyFunction(Heap[Seq#Index(Heap[a_2, array], i_10_1), value]) ==> kperm >= NoPerm
      );
    
    // -- check if receiver a.array[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a.array[i].value might not be injective. (parallel_max.vpr@22.11--22.77) [64940]"}
        (forall i_10_1: int, i_10_2: int ::
        { neverTriggered3(i_10_1), neverTriggered3(i_10_2) }
        (((i_10_1 != i_10_2 && Seq#Contains(Seq#Range(start, end), i_10_1)) && Seq#Contains(Seq#Range(start, end), i_10_2)) && NoPerm < kperm) && NoPerm < kperm ==> Seq#Index(Heap[a_2, array], i_10_1) != Seq#Index(Heap[a_2, array], i_10_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of parallel_max might not hold. There might be insufficient permission to access a.array[i].value (parallel_max.vpr@22.11--22.77) [64941]"}
        (forall i_10_1: int ::
        { Seq#Index(Heap[a_2, array], i_10_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_10_1) } { Seq#Contains(Seq#Range(start, end), i_10_1) } { Seq#Index(Heap[a_2, array], i_10_1) }
        Seq#Contains(Seq#Range(start, end), i_10_1) ==> Mask[Seq#Index(Heap[a_2, array], i_10_1), value] >= kperm
      );
    
    // -- assumptions for inverse of receiver a.array[i]
      assume (forall i_10_1: int ::
        { Seq#Index(Heap[a_2, array], i_10_1) } { Seq#ContainsTrigger(Seq#Range(start, end), i_10_1) } { Seq#Contains(Seq#Range(start, end), i_10_1) } { Seq#Index(Heap[a_2, array], i_10_1) }
        Seq#Contains(Seq#Range(start, end), i_10_1) && NoPerm < kperm ==> qpRange3(Seq#Index(Heap[a_2, array], i_10_1)) && invRecv3(Seq#Index(Heap[a_2, array], i_10_1)) == i_10_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < kperm && qpRange3(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field value
      assume (forall o_4: Ref ::
        { QPMask[o_4, value] }
        (Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < kperm && qpRange3(o_4)) ==> Seq#Index(Heap[a_2, array], invRecv3(o_4)) == o_4 && QPMask[o_4, value] == Mask[o_4, value] - kperm) && (!(Seq#Contains(Seq#Range(start, end), invRecv3(o_4)) && (NoPerm < kperm && qpRange3(o_4))) ==> QPMask[o_4, value] == Mask[o_4, value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of parallel_max might not hold. Assertion start <= pos might not hold. (parallel_max.vpr@23.11--23.32) [64942]"}
      start <= pos;
    assert {:msg "  Postcondition of parallel_max might not hold. Assertion pos < end might not hold. (parallel_max.vpr@23.11--23.32) [64943]"}
      pos < end;
    assert {:msg "  Postcondition of parallel_max might not hold. Assertion a.array[pos].value == mx might not hold. (parallel_max.vpr@24.11--24.35) [64944]"}
      Heap[Seq#Index(Heap[a_2, array], pos), value] == mx;
    if (*) {
      if (Seq#Contains(Seq#Range(start, end), l_2_1)) {
        assert {:msg "  Postcondition of parallel_max might not hold. Assertion a.array[l].value <= mx might not hold. (parallel_max.vpr@25.12--25.71) [64945]"}
          Heap[Seq#Index(Heap[a_2, array], l_2_1), value] <= mx;
      }
      assume false;
    }
    assume (forall l_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(start, end), l_3_1) } { Seq#Contains(Seq#Range(start, end), l_3_1) } { Seq#Index(Heap[a_2, array], l_3_1) }
      Seq#Contains(Seq#Range(start, end), l_3_1) ==> Heap[Seq#Index(Heap[a_2, array], l_3_1), value] <= mx
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}