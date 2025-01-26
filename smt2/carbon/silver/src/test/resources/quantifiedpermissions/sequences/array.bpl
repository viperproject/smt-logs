// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/array.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/array-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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

function  neverTriggered1(k_3: int): bool;
function  neverTriggered2(k_6_2: int): bool;
function  neverTriggered3(k_10: int): bool;
function  neverTriggered4(k_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: get
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

const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);
const unique array_1: Field NormalField (Seq Ref);
axiom !IsPredicateField(array_1);
axiom !IsWandField(array_1);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref, i: int): int;
function  get'(Heap: HeapType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { get(Heap, this, i) }
  get(Heap, this, i) == get'(Heap, this, i) && dummyFunction(get#triggerStateless(this, i))
);
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { get'(Heap, this, i) }
  dummyFunction(get#triggerStateless(this, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), get(Heap, this, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < Seq#Length(Heap[this, array_1]) ==> get(Heap, this, i) == Heap[Seq#Index(Heap[this, array_1], i), value_1]
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), get'(Heap, this, i) }
  state(Heap, Mask) ==> get'(Heap, this, i) == get#frame(CombineFrames(FrameFragment(Heap[this, array_1]), FrameFragment(Heap[Seq#Index(Heap[this, array_1], i), value_1])), this, i)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref, i: int): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, array_1:=Mask[this, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |this.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@34.10--34.36) [183287]"}
        HasDirectPerm(Mask, this, array_1);
    assume i < Seq#Length(Heap[this, array_1]);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.array[i].value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@35.10--35.44) [183288]"}
        HasDirectPerm(Mask, this, array_1);
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might be negative. (array.vpr@35.10--35.44) [183289]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (array.vpr@35.10--35.44) [183290]"}
        i < Seq#Length(Heap[this, array_1]);
    havoc wildcard;
    perm := wildcard;
    assume Seq#Index(Heap[this, array_1], i) != null;
    Mask := Mask[Seq#Index(Heap[this, array_1], i), value_1:=Mask[Seq#Index(Heap[this, array_1], i), value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.array[i].value
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.array (array.vpr@32.1--38.2) [183291]"}
        HasDirectPerm(Mask, this, array_1);
      assert {:msg "  Function might not be well-formed. Index this.array[i] into this.array might be negative. (array.vpr@32.1--38.2) [183292]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (array.vpr@32.1--38.2) [183293]"}
        i < Seq#Length(Heap[this, array_1]);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.array[i].value (array.vpr@32.1--38.2) [183294]"}
        HasDirectPerm(Mask, Seq#Index(Heap[this, array_1], i), value_1);
  
  // -- Translate function body
    Result := Heap[Seq#Index(Heap[this, array_1], i), value_1];
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var k_16: int;
  var j_14: int;
  var k_6: int;
  var QPMask: MaskType;
  var k_19: int;
  var j_12: int;
  var k_7: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_4_2: int;
  var j_2_2: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, array_1:=Mask[this, array_1] + perm];
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
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, array_1:=PostMask[this, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |this.array| == i
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@10.9--10.26) [183295]"}
        HasDirectPerm(PostMask, this, array_1);
    assume Seq#Length(PostHeap[this, array_1]) == i;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int, j: Int :: { (k in [0..i)), (j in [0..i)) } { (k in [0..i)), this.array[j] } { (j in [0..i)), this.array[k] } { this.array[k], this.array[j] } (k in [0..i)) && ((j in [0..i)) && k != j) ==> this.array[k] != this.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, i), k_16) && (Seq#Contains(Seq#Range(0, i), j_14) && k_16 != j_14)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@11.9--11.105) [183296]"}
            HasDirectPerm(PostMask, this, array_1);
          assert {:msg "  Contract might not be well-formed. Index this.array[k] into this.array might be negative. (array.vpr@11.9--11.105) [183297]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[k] into this.array might exceed sequence length. (array.vpr@11.9--11.105) [183298]"}
            k_16 < Seq#Length(PostHeap[this, array_1]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@11.9--11.105) [183299]"}
            HasDirectPerm(PostMask, this, array_1);
          assert {:msg "  Contract might not be well-formed. Index this.array[j] into this.array might be negative. (array.vpr@11.9--11.105) [183300]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[j] into this.array might exceed sequence length. (array.vpr@11.9--11.105) [183301]"}
            j_14 < Seq#Length(PostHeap[this, array_1]);
        }
        assume false;
      }
    assume (forall k_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, i), k_1), Seq#ContainsTrigger(Seq#Range(0, i), j_1) } { Seq#ContainsTrigger(Seq#Range(0, i), k_1), Seq#Contains(Seq#Range(0, i), j_1) } { Seq#Contains(Seq#Range(0, i), k_1), Seq#ContainsTrigger(Seq#Range(0, i), j_1) } { Seq#Contains(Seq#Range(0, i), k_1), Seq#Contains(Seq#Range(0, i), j_1) } { Seq#ContainsTrigger(Seq#Range(0, i), k_1), Seq#Index(PostHeap[this, array_1], j_1) } { Seq#Contains(Seq#Range(0, i), k_1), Seq#Index(PostHeap[this, array_1], j_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_1), Seq#Index(PostHeap[this, array_1], k_1) } { Seq#Contains(Seq#Range(0, i), j_1), Seq#Index(PostHeap[this, array_1], k_1) } { Seq#Index(PostHeap[this, array_1], k_1), Seq#Index(PostHeap[this, array_1], j_1) }
      Seq#Contains(Seq#Range(0, i), k_1) && (Seq#Contains(Seq#Range(0, i), j_1) && k_1 != j_1) ==> Seq#Index(PostHeap[this, array_1], k_1) != Seq#Index(PostHeap[this, array_1], j_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..i)) } { this.array[k] } (k in [0..i)) ==> acc(this.array[k].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, i), k_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@12.9--12.72) [183302]"}
            HasDirectPerm(PostMask, this, array_1);
          assert {:msg "  Contract might not be well-formed. Index this.array[k] into this.array might be negative. (array.vpr@12.9--12.72) [183303]"}
            k_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index this.array[k] into this.array might exceed sequence length. (array.vpr@12.9--12.72) [183304]"}
            k_6 < Seq#Length(PostHeap[this, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource this.array[k].value might not be injective. (array.vpr@12.9--12.72) [183305]"}
      (forall k_3: int, k_3_2: int ::
      
      (((k_3 != k_3_2 && Seq#Contains(Seq#Range(0, i), k_3)) && Seq#Contains(Seq#Range(0, i), k_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(PostHeap[this, array_1], k_3) != Seq#Index(PostHeap[this, array_1], k_3_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(PostHeap[this, array_1], k_3) } { Seq#ContainsTrigger(Seq#Range(0, i), k_3) } { Seq#Contains(Seq#Range(0, i), k_3) } { Seq#Index(PostHeap[this, array_1], k_3) }
        Seq#Contains(Seq#Range(0, i), k_3) && NoPerm < FullPerm ==> qpRange1(Seq#Index(PostHeap[this, array_1], k_3)) && invRecv1(Seq#Index(PostHeap[this, array_1], k_3)) == k_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> Seq#Index(PostHeap[this, array_1], invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(PostHeap[this, array_1], k_3) } { Seq#ContainsTrigger(Seq#Range(0, i), k_3) } { Seq#Contains(Seq#Range(0, i), k_3) } { Seq#Index(PostHeap[this, array_1], k_3) }
        Seq#Contains(Seq#Range(0, i), k_3) ==> Seq#Index(PostHeap[this, array_1], k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(PostHeap[this, array_1], invRecv1(o_9)) == o_9) && QPMask[o_9, value_1] == PostMask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(0, i), invRecv1(o_9)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, value_1] == PostMask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale |this.array| == i &&
  //   ((forall k: Int, j: Int ::
  //     { (k in [0..i)), (j in [0..i)) }
  //     { (k in [0..i)), this.array[j] }
  //     { (j in [0..i)), this.array[k] }
  //     { this.array[k], this.array[j] }
  //     (k in [0..i)) && ((j in [0..i)) && k != j) ==>
  //     this.array[k] != this.array[j]) &&
  //   (forall k: Int ::
  //     { (k in [0..i)) }
  //     { this.array[k] }
  //     (k in [0..i)) ==> acc(this.array[k].value, write))) -- array.vpr@14.5--16.73
    
    // -- Check definedness of |this.array| == i
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (array.vpr@14.12--16.73) [183306]"}
        HasDirectPerm(Mask, this, array_1);
    assume Seq#Length(Heap[this, array_1]) == i;
    
    // -- Check definedness of (forall k: Int, j: Int :: { (k in [0..i)), (j in [0..i)) } { (k in [0..i)), this.array[j] } { (j in [0..i)), this.array[k] } { this.array[k], this.array[j] } (k in [0..i)) && ((j in [0..i)) && k != j) ==> this.array[k] != this.array[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, i), k_19) && (Seq#Contains(Seq#Range(0, i), j_12) && k_19 != j_12)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (array.vpr@14.12--16.73) [183307]"}
            HasDirectPerm(Mask, this, array_1);
          assert {:msg "  Inhale might fail. Index this.array[k] into this.array might be negative. (array.vpr@14.12--16.73) [183308]"}
            k_19 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[k] into this.array might exceed sequence length. (array.vpr@14.12--16.73) [183309]"}
            k_19 < Seq#Length(Heap[this, array_1]);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (array.vpr@14.12--16.73) [183310]"}
            HasDirectPerm(Mask, this, array_1);
          assert {:msg "  Inhale might fail. Index this.array[j] into this.array might be negative. (array.vpr@14.12--16.73) [183311]"}
            j_12 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[j] into this.array might exceed sequence length. (array.vpr@14.12--16.73) [183312]"}
            j_12 < Seq#Length(Heap[this, array_1]);
        }
        assume false;
      }
    assume (forall k_8: int, j_5: int ::
      { Seq#ContainsTrigger(Seq#Range(0, i), k_8), Seq#ContainsTrigger(Seq#Range(0, i), j_5) } { Seq#ContainsTrigger(Seq#Range(0, i), k_8), Seq#Contains(Seq#Range(0, i), j_5) } { Seq#Contains(Seq#Range(0, i), k_8), Seq#ContainsTrigger(Seq#Range(0, i), j_5) } { Seq#Contains(Seq#Range(0, i), k_8), Seq#Contains(Seq#Range(0, i), j_5) } { Seq#ContainsTrigger(Seq#Range(0, i), k_8), Seq#Index(Heap[this, array_1], j_5) } { Seq#Contains(Seq#Range(0, i), k_8), Seq#Index(Heap[this, array_1], j_5) } { Seq#ContainsTrigger(Seq#Range(0, i), j_5), Seq#Index(Heap[this, array_1], k_8) } { Seq#Contains(Seq#Range(0, i), j_5), Seq#Index(Heap[this, array_1], k_8) } { Seq#Index(Heap[this, array_1], k_8), Seq#Index(Heap[this, array_1], j_5) }
      Seq#Contains(Seq#Range(0, i), k_8) && (Seq#Contains(Seq#Range(0, i), j_5) && k_8 != j_5) ==> Seq#Index(Heap[this, array_1], k_8) != Seq#Index(Heap[this, array_1], j_5)
    );
    
    // -- Check definedness of (forall k: Int :: { (k in [0..i)) } { this.array[k] } (k in [0..i)) ==> acc(this.array[k].value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, i), k_7)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.array (array.vpr@14.12--16.73) [183313]"}
            HasDirectPerm(Mask, this, array_1);
          assert {:msg "  Inhale might fail. Index this.array[k] into this.array might be negative. (array.vpr@14.12--16.73) [183314]"}
            k_7 >= 0;
          assert {:msg "  Inhale might fail. Index this.array[k] into this.array might exceed sequence length. (array.vpr@14.12--16.73) [183315]"}
            k_7 < Seq#Length(Heap[this, array_1]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource this.array[k].value might not be injective. (array.vpr@14.12--16.73) [183316]"}
      (forall k_10: int, k_10_2: int ::
      
      (((k_10 != k_10_2 && Seq#Contains(Seq#Range(0, i), k_10)) && Seq#Contains(Seq#Range(0, i), k_10_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, array_1], k_10) != Seq#Index(Heap[this, array_1], k_10_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_10: int ::
        { Seq#Index(Heap[this, array_1], k_10) } { Seq#ContainsTrigger(Seq#Range(0, i), k_10) } { Seq#Contains(Seq#Range(0, i), k_10) } { Seq#Index(Heap[this, array_1], k_10) }
        Seq#Contains(Seq#Range(0, i), k_10) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[this, array_1], k_10)) && invRecv3(Seq#Index(Heap[this, array_1], k_10)) == k_10
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> Seq#Index(Heap[this, array_1], invRecv3(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_10: int ::
        { Seq#Index(Heap[this, array_1], k_10) } { Seq#ContainsTrigger(Seq#Range(0, i), k_10) } { Seq#Contains(Seq#Range(0, i), k_10) } { Seq#Index(Heap[this, array_1], k_10) }
        Seq#Contains(Seq#Range(0, i), k_10) ==> Seq#Index(Heap[this, array_1], k_10) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        ((Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[this, array_1], invRecv3(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(0, i), invRecv3(o_9)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.array (array.vpr@9.9--9.34) [183317]"}
      Mask[this, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, array_1];
    Mask := Mask[this, array_1:=Mask[this, array_1] - wildcard];
    assert {:msg "  Postcondition of init might not hold. Assertion |this.array| == i might not hold. (array.vpr@10.9--10.26) [183318]"}
      Seq#Length(Heap[this, array_1]) == i;
    if (*) {
      if (Seq#Contains(Seq#Range(0, i), k_4_2) && (Seq#Contains(Seq#Range(0, i), j_2_2) && k_4_2 != j_2_2)) {
        assert {:msg "  Postcondition of init might not hold. Assertion this.array[k] != this.array[j] might not hold. (array.vpr@11.9--11.105) [183319]"}
          Seq#Index(Heap[this, array_1], k_4_2) != Seq#Index(Heap[this, array_1], j_2_2);
      }
      assume false;
    }
    assume (forall k_5_1_1: int, j_3_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, i), k_5_1_1), Seq#ContainsTrigger(Seq#Range(0, i), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), k_5_1_1), Seq#Contains(Seq#Range(0, i), j_3_1_1) } { Seq#Contains(Seq#Range(0, i), k_5_1_1), Seq#ContainsTrigger(Seq#Range(0, i), j_3_1_1) } { Seq#Contains(Seq#Range(0, i), k_5_1_1), Seq#Contains(Seq#Range(0, i), j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), k_5_1_1), Seq#Index(Heap[this, array_1], j_3_1_1) } { Seq#Contains(Seq#Range(0, i), k_5_1_1), Seq#Index(Heap[this, array_1], j_3_1_1) } { Seq#ContainsTrigger(Seq#Range(0, i), j_3_1_1), Seq#Index(Heap[this, array_1], k_5_1_1) } { Seq#Contains(Seq#Range(0, i), j_3_1_1), Seq#Index(Heap[this, array_1], k_5_1_1) } { Seq#Index(Heap[this, array_1], k_5_1_1), Seq#Index(Heap[this, array_1], j_3_1_1) }
      Seq#Contains(Seq#Range(0, i), k_5_1_1) && (Seq#Contains(Seq#Range(0, i), j_3_1_1) && k_5_1_1 != j_3_1_1) ==> Seq#Index(Heap[this, array_1], k_5_1_1) != Seq#Index(Heap[this, array_1], j_3_1_1)
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver this.array[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource this.array[k].value might not be injective. (array.vpr@12.9--12.72) [183320]"}
        (forall k_6_2: int, k_6_3: int ::
        { neverTriggered2(k_6_2), neverTriggered2(k_6_3) }
        (((k_6_2 != k_6_3 && Seq#Contains(Seq#Range(0, i), k_6_2)) && Seq#Contains(Seq#Range(0, i), k_6_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[this, array_1], k_6_2) != Seq#Index(Heap[this, array_1], k_6_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.array[k].value (array.vpr@12.9--12.72) [183321]"}
        (forall k_6_2: int ::
        { Seq#Index(Heap[this, array_1], k_6_2) } { Seq#ContainsTrigger(Seq#Range(0, i), k_6_2) } { Seq#Contains(Seq#Range(0, i), k_6_2) } { Seq#Index(Heap[this, array_1], k_6_2) }
        Seq#Contains(Seq#Range(0, i), k_6_2) ==> Mask[Seq#Index(Heap[this, array_1], k_6_2), value_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver this.array[k]
      assume (forall k_6_2: int ::
        { Seq#Index(Heap[this, array_1], k_6_2) } { Seq#ContainsTrigger(Seq#Range(0, i), k_6_2) } { Seq#Contains(Seq#Range(0, i), k_6_2) } { Seq#Index(Heap[this, array_1], k_6_2) }
        Seq#Contains(Seq#Range(0, i), k_6_2) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[this, array_1], k_6_2)) && invRecv2(Seq#Index(Heap[this, array_1], k_6_2)) == k_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9)) ==> Seq#Index(Heap[this, array_1], invRecv2(o_9)) == o_9
      );
    
    // -- assume permission updates for field value
      assume (forall o_9: Ref ::
        { QPMask[o_9, value_1] }
        (Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9)) ==> Seq#Index(Heap[this, array_1], invRecv2(o_9)) == o_9 && QPMask[o_9, value_1] == Mask[o_9, value_1] - FullPerm) && (!(Seq#Contains(Seq#Range(0, i), invRecv2(o_9)) && (NoPerm < FullPerm && qpRange2(o_9))) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method set
// ==================================================

procedure set_3(this: Ref, i: int, val_2: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, array_1:=Mask[this, array_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    
    // -- Check definedness of i < |this.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@21.10--21.36) [183322]"}
        HasDirectPerm(Mask, this, array_1);
    assume i < Seq#Length(Heap[this, array_1]);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.array[i].value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@22.10--22.41) [183323]"}
        HasDirectPerm(Mask, this, array_1);
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might be negative. (array.vpr@22.10--22.41) [183324]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (array.vpr@22.10--22.41) [183325]"}
        i < Seq#Length(Heap[this, array_1]);
    perm := FullPerm;
    assume Seq#Index(Heap[this, array_1], i) != null;
    Mask := Mask[Seq#Index(Heap[this, array_1], i), value_1:=Mask[Seq#Index(Heap[this, array_1], i), value_1] + perm];
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
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    PostMask := PostMask[this, array_1:=PostMask[this, array_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    
    // -- Check definedness of i < |this.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@24.9--24.35) [183326]"}
        HasDirectPerm(PostMask, this, array_1);
    assume i < Seq#Length(PostHeap[this, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(this.array[i].value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@25.9--25.40) [183327]"}
        HasDirectPerm(PostMask, this, array_1);
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might be negative. (array.vpr@25.9--25.40) [183328]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (array.vpr@25.9--25.40) [183329]"}
        i < Seq#Length(PostHeap[this, array_1]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[this, array_1], i) != null;
    PostMask := PostMask[Seq#Index(PostHeap[this, array_1], i), value_1:=PostMask[Seq#Index(PostHeap[this, array_1], i), value_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    
    // -- Check definedness of i < |this.array|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@26.9--26.35) [183330]"}
        HasDirectPerm(PostMask, this, array_1);
    assume i < Seq#Length(PostHeap[this, array_1]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.array[i].value == val
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array (array.vpr@27.9--27.35) [183331]"}
        HasDirectPerm(PostMask, this, array_1);
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might be negative. (array.vpr@27.9--27.35) [183332]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index this.array[i] into this.array might exceed sequence length. (array.vpr@27.9--27.35) [183333]"}
        i < Seq#Length(PostHeap[this, array_1]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.array[i].value (array.vpr@27.9--27.35) [183334]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[this, array_1], i), value_1);
    assume PostHeap[Seq#Index(PostHeap[this, array_1], i), value_1] == val_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.array[i].value := val -- array.vpr@29.5--29.31
    
    // -- Check definedness of this.array[i]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array (array.vpr@29.5--29.31) [183335]"}
        HasDirectPerm(Mask, this, array_1);
      assert {:msg "  Assignment might fail. Index this.array[i] into this.array might be negative. (array.vpr@29.5--29.31) [183336]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index this.array[i] into this.array might exceed sequence length. (array.vpr@29.5--29.31) [183337]"}
        i < Seq#Length(Heap[this, array_1]);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.array[i].value (array.vpr@29.5--29.31) [183338]"}
      FullPerm == Mask[Seq#Index(Heap[this, array_1], i), value_1];
    Heap := Heap[Seq#Index(Heap[this, array_1], i), value_1:=val_2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access this.array (array.vpr@23.9--23.34) [183339]"}
      Mask[this, array_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, array_1];
    Mask := Mask[this, array_1:=Mask[this, array_1] - wildcard];
    assert {:msg "  Postcondition of set might not hold. Assertion 0 <= i might not hold. (array.vpr@24.9--24.35) [183340]"}
      0 <= i;
    assert {:msg "  Postcondition of set might not hold. Assertion i < |this.array| might not hold. (array.vpr@24.9--24.35) [183341]"}
      i < Seq#Length(Heap[this, array_1]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access this.array[i].value (array.vpr@25.9--25.40) [183342]"}
        perm <= Mask[Seq#Index(Heap[this, array_1], i), value_1];
    }
    Mask := Mask[Seq#Index(Heap[this, array_1], i), value_1:=Mask[Seq#Index(Heap[this, array_1], i), value_1] - perm];
    assert {:msg "  Postcondition of set might not hold. Assertion 0 <= i might not hold. (array.vpr@26.9--26.35) [183343]"}
      0 <= i;
    assert {:msg "  Postcondition of set might not hold. Assertion i < |this.array| might not hold. (array.vpr@26.9--26.35) [183344]"}
      i < Seq#Length(Heap[this, array_1]);
    assert {:msg "  Postcondition of set might not hold. Assertion this.array[i].value == val might not hold. (array.vpr@27.9--27.35) [183345]"}
      Heap[Seq#Index(Heap[this, array_1], i), value_1] == val_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method caller
// ==================================================

procedure caller() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var mutableArray: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var QPMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[mutableArray, $allocated];
  
  // -- Translating statement: mutableArray := new(array) -- array.vpr@43.5--43.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    mutableArray := freshObj;
    Mask := Mask[mutableArray, array_1:=Mask[mutableArray, array_1] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: init(mutableArray, 5) -- array.vpr@44.5--44.26
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method init might not hold. There might be insufficient permission to access mutableArray.array (array.vpr@44.5--44.26) [183346]"}
          perm <= Mask[mutableArray, array_1];
      }
      Mask := Mask[mutableArray, array_1:=Mask[mutableArray, array_1] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume mutableArray != null;
      Mask := Mask[mutableArray, array_1:=Mask[mutableArray, array_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Length(Heap[mutableArray, array_1]) == 5;
      assume (forall k: int, j: int ::
        { Seq#ContainsTrigger(Seq#Range(0, 5), k), Seq#ContainsTrigger(Seq#Range(0, 5), j) } { Seq#ContainsTrigger(Seq#Range(0, 5), k), Seq#Contains(Seq#Range(0, 5), j) } { Seq#Contains(Seq#Range(0, 5), k), Seq#ContainsTrigger(Seq#Range(0, 5), j) } { Seq#Contains(Seq#Range(0, 5), k), Seq#Contains(Seq#Range(0, 5), j) } { Seq#ContainsTrigger(Seq#Range(0, 5), k), Seq#Index(Heap[mutableArray, array_1], j) } { Seq#Contains(Seq#Range(0, 5), k), Seq#Index(Heap[mutableArray, array_1], j) } { Seq#ContainsTrigger(Seq#Range(0, 5), j), Seq#Index(Heap[mutableArray, array_1], k) } { Seq#Contains(Seq#Range(0, 5), j), Seq#Index(Heap[mutableArray, array_1], k) } { Seq#Index(Heap[mutableArray, array_1], k), Seq#Index(Heap[mutableArray, array_1], j) }
        Seq#Contains(Seq#Range(0, 5), k) && (Seq#Contains(Seq#Range(0, 5), j) && k != j) ==> Seq#Index(Heap[mutableArray, array_1], k) != Seq#Index(Heap[mutableArray, array_1], j)
      );
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource mutableArray.array[k].value might not be injective. (array.vpr@44.5--44.26) [183347]"}
        (forall k_1: int, k_1_1: int ::
        
        (((k_1 != k_1_1 && Seq#Contains(Seq#Range(0, 5), k_1)) && Seq#Contains(Seq#Range(0, 5), k_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[mutableArray, array_1], k_1) != Seq#Index(Heap[mutableArray, array_1], k_1_1)
      );
      
      // -- Define Inverse Function
        assume (forall k_1: int ::
          { Seq#Index(Heap[mutableArray, array_1], k_1) } { Seq#ContainsTrigger(Seq#Range(0, 5), k_1) } { Seq#Contains(Seq#Range(0, 5), k_1) } { Seq#Index(Heap[mutableArray, array_1], k_1) }
          Seq#Contains(Seq#Range(0, 5), k_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(Heap[mutableArray, array_1], k_1)) && invRecv4(Seq#Index(Heap[mutableArray, array_1], k_1)) == k_1
        );
        assume (forall o_9: Ref ::
          { invRecv4(o_9) }
          (Seq#Contains(Seq#Range(0, 5), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> Seq#Index(Heap[mutableArray, array_1], invRecv4(o_9)) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_1: int ::
          { Seq#Index(Heap[mutableArray, array_1], k_1) } { Seq#ContainsTrigger(Seq#Range(0, 5), k_1) } { Seq#Contains(Seq#Range(0, 5), k_1) } { Seq#Index(Heap[mutableArray, array_1], k_1) }
          Seq#Contains(Seq#Range(0, 5), k_1) ==> Seq#Index(Heap[mutableArray, array_1], k_1) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, value_1] }
          ((Seq#Contains(Seq#Range(0, 5), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[mutableArray, array_1], invRecv4(o_9)) == o_9) && QPMask[o_9, value_1] == Mask[o_9, value_1] + FullPerm) && (!((Seq#Contains(Seq#Range(0, 5), invRecv4(o_9)) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, value_1] == Mask[o_9, value_1])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != value_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(mutableArray, 0, 2) -- array.vpr@45.5--45.28
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access mutableArray.array (array.vpr@45.5--45.28) [183348]"}
        Mask[mutableArray, array_1] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[mutableArray, array_1];
      Mask := Mask[mutableArray, array_1:=Mask[mutableArray, array_1] - wildcard];
      assert {:msg "  The precondition of method set might not hold. Assertion 0 < |mutableArray.array| might not hold. (array.vpr@45.5--45.28) [183349]"}
        0 < Seq#Length(Heap[mutableArray, array_1]);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access mutableArray.array[0].value (array.vpr@45.5--45.28) [183350]"}
          perm <= Mask[Seq#Index(Heap[mutableArray, array_1], 0), value_1];
      }
      Mask := Mask[Seq#Index(Heap[mutableArray, array_1], 0), value_1:=Mask[Seq#Index(Heap[mutableArray, array_1], 0), value_1] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume mutableArray != null;
      Mask := Mask[mutableArray, array_1:=Mask[mutableArray, array_1] + perm];
      assume state(Heap, Mask);
      assume 0 < Seq#Length(Heap[mutableArray, array_1]);
      perm := FullPerm;
      assume Seq#Index(Heap[mutableArray, array_1], 0) != null;
      Mask := Mask[Seq#Index(Heap[mutableArray, array_1], 0), value_1:=Mask[Seq#Index(Heap[mutableArray, array_1], 0), value_1] + perm];
      assume state(Heap, Mask);
      assume 0 < Seq#Length(Heap[mutableArray, array_1]);
      assume Heap[Seq#Index(Heap[mutableArray, array_1], 0), value_1] == 2;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(mutableArray, 0) == 2 -- array.vpr@46.5--46.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(mutableArray, 0) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access mutableArray.array (array.vpr@46.12--46.32) [183351]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[mutableArray, array_1];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < |mutableArray.array| might not hold. (array.vpr@46.12--46.32) [183352]"}
          0 < Seq#Length(ExhaleWellDef0Heap[mutableArray, array_1]);
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access mutableArray.array[0].value (array.vpr@46.12--46.32) [183353]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[Seq#Index(ExhaleWellDef0Heap[mutableArray, array_1], 0), value_1];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(mutableArray, 0) == 2 might not hold. (array.vpr@46.12--46.37) [183354]"}
      get(Heap, mutableArray, 0) == 2;
    assume state(Heap, Mask);
}