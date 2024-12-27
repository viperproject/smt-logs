// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:17:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/blom02.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/blom02-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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

function  neverTriggered1(i2_4: int): bool;
function  neverTriggered2(i3_4: int): bool;
function  neverTriggered3(i2_5: int): bool;
function  neverTriggered4(i3_5: int): bool;
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
// - height 2: Map__DELETED
// - height 1: Map__EMPTY
// - height 0: Map__indexOfLoop
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

const unique Map__keys: Field NormalField (Seq Ref);
axiom !IsPredicateField(Map__keys);
axiom !IsWandField(Map__keys);
const unique Map__values: Field NormalField (Seq Ref);
axiom !IsPredicateField(Map__values);
axiom !IsWandField(Map__values);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function Map__EMPTY
// ==================================================

// Uninterpreted function definitions
function  Map__EMPTY(Heap: HeapType): int;
function  Map__EMPTY'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { Map__EMPTY(Heap) }
  Map__EMPTY(Heap) == Map__EMPTY'(Heap) && dummyFunction(Map__EMPTY#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { Map__EMPTY'(Heap) }
  dummyFunction(Map__EMPTY#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__EMPTY(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Map__EMPTY(Heap) == -1
);

// Framing axioms
function  Map__EMPTY#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__EMPTY'(Heap) }
  state(Heap, Mask) ==> Map__EMPTY'(Heap) == Map__EMPTY#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__EMPTY'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Map__EMPTY#trigger(EmptyFrame)) ==> Map__EMPTY'(Heap) == -1
);

// Trigger function (controlling recursive postconditions)
function  Map__EMPTY#trigger(frame: FrameType): bool;

// State-independent trigger function
function  Map__EMPTY#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure Map__EMPTY#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := -1;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Map__EMPTY might not hold. Assertion result == -1 might not hold. (blom02.vpr@16.11--16.23) [40415]"}
      Result == -1;
}

// ==================================================
// Translation of function Map__DELETED
// ==================================================

// Uninterpreted function definitions
function  Map__DELETED(Heap: HeapType): int;
function  Map__DELETED'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { Map__DELETED(Heap) }
  Map__DELETED(Heap) == Map__DELETED'(Heap) && dummyFunction(Map__DELETED#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { Map__DELETED'(Heap) }
  dummyFunction(Map__DELETED#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__DELETED(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Map__DELETED(Heap) == -2
);

// Framing axioms
function  Map__DELETED#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__DELETED'(Heap) }
  state(Heap, Mask) ==> Map__DELETED'(Heap) == Map__DELETED#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), Map__DELETED'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Map__DELETED#trigger(EmptyFrame)) ==> Map__DELETED'(Heap) == -2
);

// Trigger function (controlling recursive postconditions)
function  Map__DELETED#trigger(frame: FrameType): bool;

// State-independent trigger function
function  Map__DELETED#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure Map__DELETED#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := -2;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Map__DELETED might not hold. Assertion result == -2 might not hold. (blom02.vpr@22.11--22.23) [40416]"}
      Result == -2;
}

// ==================================================
// Translation of function Map__indexOfLoop
// ==================================================

// Uninterpreted function definitions
function  Map__indexOfLoop(Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int): int;
function  Map__indexOfLoop'(Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int): int;
axiom (forall Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { Map__indexOfLoop(Heap, diz, hash, ignoreDeleted, cap) }
  Map__indexOfLoop(Heap, diz, hash, ignoreDeleted, cap) == Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) && dummyFunction(Map__indexOfLoop#triggerStateless(diz, hash, ignoreDeleted, cap))
);
axiom (forall Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) }
  dummyFunction(Map__indexOfLoop#triggerStateless(diz, hash, ignoreDeleted, cap))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { state(Heap, Mask), Map__indexOfLoop(Heap, diz, hash, ignoreDeleted, cap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((((((diz != null && Seq#Length(Heap[diz, Map__keys]) > 0) && Seq#Length(Heap[diz, Map__values]) > 0) && Seq#Length(Heap[diz, Map__keys]) == Seq#Length(Heap[diz, Map__values])) && (forall i: int, j_9: int ::
    { Seq#Index(Heap[diz, Map__keys], i), Seq#Index(Heap[diz, Map__keys], j_9) }
    0 <= i && (i < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_9 && (j_9 < Seq#Length(Heap[diz, Map__keys]) && i != j_9))) ==> Seq#Index(Heap[diz, Map__keys], i) != Seq#Index(Heap[diz, Map__keys], j_9)
  )) && (forall i_1: int, j_1: int ::
    { Seq#Index(Heap[diz, Map__values], i_1), Seq#Index(Heap[diz, Map__values], j_1) }
    0 <= i_1 && (i_1 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_1 && (j_1 < Seq#Length(Heap[diz, Map__values]) && i_1 != j_1))) ==> Seq#Index(Heap[diz, Map__values], i_1) != Seq#Index(Heap[diz, Map__values], j_1)
  )) && (forall i1: int ::
    { Seq#Index(Heap[diz, Map__keys], i1) }
    i1 >= 0 && i1 < Seq#Length(Heap[diz, Map__keys]) ==> Heap[Seq#Index(Heap[diz, Map__keys], i1), Ref__Integer_value] == Map__EMPTY(Heap) || (Heap[Seq#Index(Heap[diz, Map__keys], i1), Ref__Integer_value] == Map__DELETED(Heap) || Heap[Seq#Index(Heap[diz, Map__keys], i1), Ref__Integer_value] >= 0)
  )) && (hash >= 0 && hash < Seq#Length(Heap[diz, Map__keys]))) && cap < Seq#Length(Heap[diz, Map__keys]) ==> Map__indexOfLoop(Heap, diz, hash, ignoreDeleted, cap) == (if cap <= 0 then Map__EMPTY(Heap) else Map__indexOfLoop'(Heap, diz, (hash + 1) mod Seq#Length(Heap[diz, Map__keys]), ignoreDeleted, cap - 1))
);

// Framing axioms
function  Map__indexOfLoop#frame(frame: FrameType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { state(Heap, Mask), Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) }
  state(Heap, Mask) ==> Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) == Map__indexOfLoop#frame(CombineFrames(FrameFragment(Heap[diz, Map__keys]), CombineFrames(FrameFragment(Heap[diz, Map__values]), CombineFrames(FrameFragment(Map__indexOfLoop#condqp1(Heap, diz, hash, ignoreDeleted, cap)), FrameFragment(Map__indexOfLoop#condqp2(Heap, diz, hash, ignoreDeleted, cap))))), diz, hash, ignoreDeleted, cap)
);
// ==================================================
// Function used for framing of quantified permission (forall i2: Int :: { diz.Map__keys[i2] } i2 >= 0 && i2 < |diz.Map__keys| ==> acc(diz.Map__keys[i2].Ref__Integer_value, write)) in function Map__indexOfLoop
// ==================================================

function  Map__indexOfLoop#condqp1(Heap: HeapType, diz_1_1: Ref, hash_1_1: int, ignoreDeleted_1_1: bool, cap_1_1: int): int;
function  sk_Map__indexOfLoop#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap2Heap[diz, Map__keys])) && NoPerm < FullPerm <==> (sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap1Heap[diz, Map__keys])) && NoPerm < FullPerm) && ((sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap2Heap[diz, Map__keys])) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[diz, Map__keys], sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap))), Ref__Integer_value] == Heap1Heap[Seq#Index(Heap1Heap[diz, Map__keys], sk_Map__indexOfLoop#condqp1(Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap))), Ref__Integer_value]) ==> Map__indexOfLoop#condqp1(Heap2Heap, diz, hash, ignoreDeleted, cap) == Map__indexOfLoop#condqp1(Heap1Heap, diz, hash, ignoreDeleted, cap)
);
// ==================================================
// Function used for framing of quantified permission (forall i3: Int :: { diz.Map__values[i3] } i3 >= 0 && i3 < |diz.Map__values| ==> acc(diz.Map__values[i3].Ref__Integer_value, write)) in function Map__indexOfLoop
// ==================================================

function  Map__indexOfLoop#condqp2(Heap: HeapType, diz_1_1: Ref, hash_1_1: int, ignoreDeleted_1_1: bool, cap_1_1: int): int;
function  sk_Map__indexOfLoop#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap2Heap[diz, Map__values])) && NoPerm < FullPerm <==> (sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap1Heap[diz, Map__values])) && NoPerm < FullPerm) && ((sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) >= 0 && sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)) < Seq#Length(Heap2Heap[diz, Map__values])) && NoPerm < FullPerm ==> Heap2Heap[Seq#Index(Heap2Heap[diz, Map__values], sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap))), Ref__Integer_value] == Heap1Heap[Seq#Index(Heap1Heap[diz, Map__values], sk_Map__indexOfLoop#condqp2(Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap), Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap))), Ref__Integer_value]) ==> Map__indexOfLoop#condqp2(Heap2Heap, diz, hash, ignoreDeleted, cap) == Map__indexOfLoop#condqp2(Heap1Heap, diz, hash, ignoreDeleted, cap)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int ::
  { state(Heap, Mask), Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || Map__indexOfLoop#trigger(CombineFrames(FrameFragment(Heap[diz, Map__keys]), CombineFrames(FrameFragment(Heap[diz, Map__values]), CombineFrames(FrameFragment(Map__indexOfLoop#condqp1(Heap, diz, hash, ignoreDeleted, cap)), FrameFragment(Map__indexOfLoop#condqp2(Heap, diz, hash, ignoreDeleted, cap))))), diz, hash, ignoreDeleted, cap)) ==> (((((((diz != null && Seq#Length(Heap[diz, Map__keys]) > 0) && Seq#Length(Heap[diz, Map__values]) > 0) && Seq#Length(Heap[diz, Map__keys]) == Seq#Length(Heap[diz, Map__values])) && (forall i_2_1: int, j_2_1: int ::
    { Seq#Index(Heap[diz, Map__keys], i_2_1), Seq#Index(Heap[diz, Map__keys], j_2_1) }
    0 <= i_2_1 && (i_2_1 < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_2_1 && (j_2_1 < Seq#Length(Heap[diz, Map__keys]) && i_2_1 != j_2_1))) ==> Seq#Index(Heap[diz, Map__keys], i_2_1) != Seq#Index(Heap[diz, Map__keys], j_2_1)
  )) && (forall i_3: int, j_3_1: int ::
    { Seq#Index(Heap[diz, Map__values], i_3), Seq#Index(Heap[diz, Map__values], j_3_1) }
    0 <= i_3 && (i_3 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_3_1 && (j_3_1 < Seq#Length(Heap[diz, Map__values]) && i_3 != j_3_1))) ==> Seq#Index(Heap[diz, Map__values], i_3) != Seq#Index(Heap[diz, Map__values], j_3_1)
  )) && (forall i1_1_1: int ::
    { Seq#Index(Heap[diz, Map__keys], i1_1_1) }
    i1_1_1 >= 0 && i1_1_1 < Seq#Length(Heap[diz, Map__keys]) ==> Heap[Seq#Index(Heap[diz, Map__keys], i1_1_1), Ref__Integer_value] == Map__EMPTY(Heap) || (Heap[Seq#Index(Heap[diz, Map__keys], i1_1_1), Ref__Integer_value] == Map__DELETED(Heap) || Heap[Seq#Index(Heap[diz, Map__keys], i1_1_1), Ref__Integer_value] >= 0)
  )) && (hash >= 0 && hash < Seq#Length(Heap[diz, Map__keys]))) && cap < Seq#Length(Heap[diz, Map__keys]) ==> Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) == Map__EMPTY(Heap) || (Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) >= 0 && Map__indexOfLoop'(Heap, diz, hash, ignoreDeleted, cap) < Seq#Length(Heap[diz, Map__keys]))
);

// Trigger function (controlling recursive postconditions)
function  Map__indexOfLoop#trigger(frame: FrameType, diz: Ref, hash: int, ignoreDeleted: bool, cap: int): bool;

// State-independent trigger function
function  Map__indexOfLoop#triggerStateless(diz: Ref, hash: int, ignoreDeleted: bool, cap: int): int;

// Check contract well-formedness and postcondition
procedure Map__indexOfLoop#definedness(diz: Ref, hash: int, ignoreDeleted: bool, cap: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var i_14: int;
  var j_5: int;
  var i2: int;
  var QPMask: MaskType;
  var i_4: int;
  var j_6: int;
  var i3_6: int;
  var i1_12: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_8_2: int;
  var j_8: int;
  var i_10_1: int;
  var j_10_2: int;
  var i1_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Map__keys:=Mask[diz, Map__keys] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Map__values:=Mask[diz, Map__values] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Map__keys| > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@31.12--31.31) [40417]"}
        HasDirectPerm(Mask, diz, Map__keys);
    assume Seq#Length(Heap[diz, Map__keys]) > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Map__values| > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@32.12--32.33) [40418]"}
        HasDirectPerm(Mask, diz, Map__values);
    assume Seq#Length(Heap[diz, Map__values]) > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Map__keys| == |diz.Map__values|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@33.12--33.48) [40419]"}
        HasDirectPerm(Mask, diz, Map__keys);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@33.12--33.48) [40420]"}
        HasDirectPerm(Mask, diz, Map__values);
    assume Seq#Length(Heap[diz, Map__keys]) == Seq#Length(Heap[diz, Map__values]);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Map__keys[i], diz.Map__keys[j] } 0 <= i && (i < |diz.Map__keys| && (0 <= j && (j < |diz.Map__keys| && i != j))) ==> diz.Map__keys[i] != diz.Map__keys[j])
      if (*) {
        if (0 <= i_14) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@34.12--34.150) [40421]"}
            HasDirectPerm(Mask, diz, Map__keys);
          if (i_14 < Seq#Length(Heap[diz, Map__keys])) {
            if (0 <= j_5) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@34.12--34.150) [40422]"}
                HasDirectPerm(Mask, diz, Map__keys);
            }
          }
        }
        if (0 <= i_14 && (i_14 < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_5 && (j_5 < Seq#Length(Heap[diz, Map__keys]) && i_14 != j_5)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@34.12--34.150) [40423]"}
            HasDirectPerm(Mask, diz, Map__keys);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i] into diz.Map__keys might be negative. (blom02.vpr@34.12--34.150) [40424]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i] into diz.Map__keys might exceed sequence length. (blom02.vpr@34.12--34.150) [40425]"}
            i_14 < Seq#Length(Heap[diz, Map__keys]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@34.12--34.150) [40426]"}
            HasDirectPerm(Mask, diz, Map__keys);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[j] into diz.Map__keys might be negative. (blom02.vpr@34.12--34.150) [40427]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[j] into diz.Map__keys might exceed sequence length. (blom02.vpr@34.12--34.150) [40428]"}
            j_5 < Seq#Length(Heap[diz, Map__keys]);
        }
        assume false;
      }
    assume (forall i_5: int, j_5_1: int ::
      { Seq#Index(Heap[diz, Map__keys], i_5), Seq#Index(Heap[diz, Map__keys], j_5_1) }
      0 <= i_5 && (i_5 < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_5_1 && (j_5_1 < Seq#Length(Heap[diz, Map__keys]) && i_5 != j_5_1))) ==> Seq#Index(Heap[diz, Map__keys], i_5) != Seq#Index(Heap[diz, Map__keys], j_5_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i2: Int :: { diz.Map__keys[i2] } i2 >= 0 && i2 < |diz.Map__keys| ==> acc(diz.Map__keys[i2].Ref__Integer_value, write))
      if (*) {
        if (i2 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@35.13--35.119) [40429]"}
            HasDirectPerm(Mask, diz, Map__keys);
        }
        if (i2 >= 0 && i2 < Seq#Length(Heap[diz, Map__keys])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@35.13--35.119) [40430]"}
            HasDirectPerm(Mask, diz, Map__keys);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i2] into diz.Map__keys might be negative. (blom02.vpr@35.13--35.119) [40431]"}
            i2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i2] into diz.Map__keys might exceed sequence length. (blom02.vpr@35.13--35.119) [40432]"}
            i2 < Seq#Length(Heap[diz, Map__keys]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Map__keys[i2].Ref__Integer_value might not be injective. (blom02.vpr@35.13--35.119) [40433]"}
      (forall i2_4: int, i2_4_1: int ::
      
      (((i2_4 != i2_4_1 && (i2_4 >= 0 && i2_4 < Seq#Length(Heap[diz, Map__keys]))) && (i2_4_1 >= 0 && i2_4_1 < Seq#Length(Heap[diz, Map__keys]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__keys], i2_4) != Seq#Index(Heap[diz, Map__keys], i2_4_1)
    );
    
    // -- Define Inverse Function
      assume (forall i2_4: int ::
        { Seq#Index(Heap[diz, Map__keys], i2_4) } { Seq#Index(Heap[diz, Map__keys], i2_4) }
        (i2_4 >= 0 && i2_4 < Seq#Length(Heap[diz, Map__keys])) && NoPerm < FullPerm ==> qpRange1(Seq#Index(Heap[diz, Map__keys], i2_4)) && invRecv1(Seq#Index(Heap[diz, Map__keys], i2_4)) == i2_4
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((invRecv1(o_4) >= 0 && invRecv1(o_4) < Seq#Length(Heap[diz, Map__keys])) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(Heap[diz, Map__keys], invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i2_4: int ::
        { Seq#Index(Heap[diz, Map__keys], i2_4) } { Seq#Index(Heap[diz, Map__keys], i2_4) }
        i2_4 >= 0 && i2_4 < Seq#Length(Heap[diz, Map__keys]) ==> Seq#Index(Heap[diz, Map__keys], i2_4) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((invRecv1(o_4) >= 0 && invRecv1(o_4) < Seq#Length(Heap[diz, Map__keys])) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__keys], invRecv1(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((invRecv1(o_4) >= 0 && invRecv1(o_4) < Seq#Length(Heap[diz, Map__keys])) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { diz.Map__values[i], diz.Map__values[j] } 0 <= i && (i < |diz.Map__values| && (0 <= j && (j < |diz.Map__values| && i != j))) ==> diz.Map__values[i] != diz.Map__values[j])
      if (*) {
        if (0 <= i_4) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@36.12--36.158) [40434]"}
            HasDirectPerm(Mask, diz, Map__values);
          if (i_4 < Seq#Length(Heap[diz, Map__values])) {
            if (0 <= j_6) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@36.12--36.158) [40435]"}
                HasDirectPerm(Mask, diz, Map__values);
            }
          }
        }
        if (0 <= i_4 && (i_4 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_6 && (j_6 < Seq#Length(Heap[diz, Map__values]) && i_4 != j_6)))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@36.12--36.158) [40436]"}
            HasDirectPerm(Mask, diz, Map__values);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[i] into diz.Map__values might be negative. (blom02.vpr@36.12--36.158) [40437]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[i] into diz.Map__values might exceed sequence length. (blom02.vpr@36.12--36.158) [40438]"}
            i_4 < Seq#Length(Heap[diz, Map__values]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@36.12--36.158) [40439]"}
            HasDirectPerm(Mask, diz, Map__values);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[j] into diz.Map__values might be negative. (blom02.vpr@36.12--36.158) [40440]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[j] into diz.Map__values might exceed sequence length. (blom02.vpr@36.12--36.158) [40441]"}
            j_6 < Seq#Length(Heap[diz, Map__values]);
        }
        assume false;
      }
    assume (forall i_7_1: int, j_7_1: int ::
      { Seq#Index(Heap[diz, Map__values], i_7_1), Seq#Index(Heap[diz, Map__values], j_7_1) }
      0 <= i_7_1 && (i_7_1 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_7_1 && (j_7_1 < Seq#Length(Heap[diz, Map__values]) && i_7_1 != j_7_1))) ==> Seq#Index(Heap[diz, Map__values], i_7_1) != Seq#Index(Heap[diz, Map__values], j_7_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i3: Int :: { diz.Map__values[i3] } i3 >= 0 && i3 < |diz.Map__values| ==> acc(diz.Map__values[i3].Ref__Integer_value, write))
      if (*) {
        if (i3_6 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@37.13--37.123) [40442]"}
            HasDirectPerm(Mask, diz, Map__values);
        }
        if (i3_6 >= 0 && i3_6 < Seq#Length(Heap[diz, Map__values])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__values (blom02.vpr@37.13--37.123) [40443]"}
            HasDirectPerm(Mask, diz, Map__values);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[i3] into diz.Map__values might be negative. (blom02.vpr@37.13--37.123) [40444]"}
            i3_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__values[i3] into diz.Map__values might exceed sequence length. (blom02.vpr@37.13--37.123) [40445]"}
            i3_6 < Seq#Length(Heap[diz, Map__values]);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource diz.Map__values[i3].Ref__Integer_value might not be injective. (blom02.vpr@37.13--37.123) [40446]"}
      (forall i3_4: int, i3_4_1: int ::
      
      (((i3_4 != i3_4_1 && (i3_4 >= 0 && i3_4 < Seq#Length(Heap[diz, Map__values]))) && (i3_4_1 >= 0 && i3_4_1 < Seq#Length(Heap[diz, Map__values]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__values], i3_4) != Seq#Index(Heap[diz, Map__values], i3_4_1)
    );
    
    // -- Define Inverse Function
      assume (forall i3_4: int ::
        { Seq#Index(Heap[diz, Map__values], i3_4) } { Seq#Index(Heap[diz, Map__values], i3_4) }
        (i3_4 >= 0 && i3_4 < Seq#Length(Heap[diz, Map__values])) && NoPerm < FullPerm ==> qpRange2(Seq#Index(Heap[diz, Map__values], i3_4)) && invRecv2(Seq#Index(Heap[diz, Map__values], i3_4)) == i3_4
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((invRecv2(o_4) >= 0 && invRecv2(o_4) < Seq#Length(Heap[diz, Map__values])) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(Heap[diz, Map__values], invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i3_4: int ::
        { Seq#Index(Heap[diz, Map__values], i3_4) } { Seq#Index(Heap[diz, Map__values], i3_4) }
        i3_4 >= 0 && i3_4 < Seq#Length(Heap[diz, Map__values]) ==> Seq#Index(Heap[diz, Map__values], i3_4) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((invRecv2(o_4) >= 0 && invRecv2(o_4) < Seq#Length(Heap[diz, Map__values])) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__values], invRecv2(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((invRecv2(o_4) >= 0 && invRecv2(o_4) < Seq#Length(Heap[diz, Map__values])) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int :: { diz.Map__keys[i1] } i1 >= 0 && i1 < |diz.Map__keys| ==> diz.Map__keys[i1].Ref__Integer_value == Map__EMPTY() || (diz.Map__keys[i1].Ref__Integer_value == Map__DELETED() || diz.Map__keys[i1].Ref__Integer_value >= 0))
      if (*) {
        if (i1_12 >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@39.13--39.232) [40447]"}
            HasDirectPerm(Mask, diz, Map__keys);
        }
        if (i1_12 >= 0 && i1_12 < Seq#Length(Heap[diz, Map__keys])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@39.13--39.232) [40448]"}
            HasDirectPerm(Mask, diz, Map__keys);
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might be negative. (blom02.vpr@39.13--39.232) [40449]"}
            i1_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might exceed sequence length. (blom02.vpr@39.13--39.232) [40450]"}
            i1_12 < Seq#Length(Heap[diz, Map__keys]);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys[i1].Ref__Integer_value (blom02.vpr@39.13--39.232) [40451]"}
            HasDirectPerm(Mask, Seq#Index(Heap[diz, Map__keys], i1_12), Ref__Integer_value);
          if (*) {
            // Stop execution
            assume false;
          }
          if (!(Heap[Seq#Index(Heap[diz, Map__keys], i1_12), Ref__Integer_value] == Map__EMPTY(Heap))) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@39.13--39.232) [40452]"}
              HasDirectPerm(Mask, diz, Map__keys);
            assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might be negative. (blom02.vpr@39.13--39.232) [40453]"}
              i1_12 >= 0;
            assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might exceed sequence length. (blom02.vpr@39.13--39.232) [40454]"}
              i1_12 < Seq#Length(Heap[diz, Map__keys]);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys[i1].Ref__Integer_value (blom02.vpr@39.13--39.232) [40455]"}
              HasDirectPerm(Mask, Seq#Index(Heap[diz, Map__keys], i1_12), Ref__Integer_value);
            if (*) {
              // Stop execution
              assume false;
            }
            if (!(Heap[Seq#Index(Heap[diz, Map__keys], i1_12), Ref__Integer_value] == Map__DELETED(Heap))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@39.13--39.232) [40456]"}
                HasDirectPerm(Mask, diz, Map__keys);
              assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might be negative. (blom02.vpr@39.13--39.232) [40457]"}
                i1_12 >= 0;
              assert {:msg "  Contract might not be well-formed. Index diz.Map__keys[i1] into diz.Map__keys might exceed sequence length. (blom02.vpr@39.13--39.232) [40458]"}
                i1_12 < Seq#Length(Heap[diz, Map__keys]);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys[i1].Ref__Integer_value (blom02.vpr@39.13--39.232) [40459]"}
                HasDirectPerm(Mask, Seq#Index(Heap[diz, Map__keys], i1_12), Ref__Integer_value);
            }
          }
        }
        assume false;
      }
    assume (forall i1_3: int ::
      { Seq#Index(Heap[diz, Map__keys], i1_3) }
      i1_3 >= 0 && i1_3 < Seq#Length(Heap[diz, Map__keys]) ==> Heap[Seq#Index(Heap[diz, Map__keys], i1_3), Ref__Integer_value] == Map__EMPTY(Heap) || (Heap[Seq#Index(Heap[diz, Map__keys], i1_3), Ref__Integer_value] == Map__DELETED(Heap) || Heap[Seq#Index(Heap[diz, Map__keys], i1_3), Ref__Integer_value] >= 0)
    );
    assume state(Heap, Mask);
    assume hash >= 0;
    
    // -- Check definedness of hash < |diz.Map__keys|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@40.12--40.51) [40460]"}
        HasDirectPerm(Mask, diz, Map__keys);
    assume hash < Seq#Length(Heap[diz, Map__keys]);
    assume state(Heap, Mask);
    
    // -- Check definedness of cap < |diz.Map__keys|
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@41.12--41.33) [40461]"}
        HasDirectPerm(Mask, diz, Map__keys);
    assume cap < Seq#Length(Heap[diz, Map__keys]);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (cap <= 0 ? Map__EMPTY() : Map__indexOfLoop(diz, (hash + 1) % |diz.Map__keys|, ignoreDeleted, cap - 1))
      if (cap <= 0) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@27.1--45.2) [40462]"}
          HasDirectPerm(Mask, diz, Map__keys);
        assert {:msg "  Function might not be well-formed. Divisor |diz.Map__keys| might be zero. (blom02.vpr@27.1--45.2) [40463]"}
          Seq#Length(Heap[diz, Map__keys]) != 0;
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion diz != null might not hold. (blom02.vpr@44.30--44.105) [40464]"}
            diz != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. There might be insufficient permission to access diz.Map__keys (blom02.vpr@44.30--44.105) [40465]"}
            NoPerm < perm ==> NoPerm < Mask[diz, Map__keys];
          perm := FullPerm;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. There might be insufficient permission to access diz.Map__values (blom02.vpr@44.30--44.105) [40466]"}
            NoPerm < perm ==> NoPerm < Mask[diz, Map__values];
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion |diz.Map__keys| > 0 might not hold. (blom02.vpr@44.30--44.105) [40467]"}
            Seq#Length(Heap[diz, Map__keys]) > 0;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion |diz.Map__values| > 0 might not hold. (blom02.vpr@44.30--44.105) [40468]"}
            Seq#Length(Heap[diz, Map__values]) > 0;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion |diz.Map__keys| == |diz.Map__values| might not hold. (blom02.vpr@44.30--44.105) [40469]"}
            Seq#Length(Heap[diz, Map__keys]) == Seq#Length(Heap[diz, Map__values]);
          if (*) {
            if (0 <= i_8_2 && (i_8_2 < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_8 && (j_8 < Seq#Length(Heap[diz, Map__keys]) && i_8_2 != j_8)))) {
              assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion diz.Map__keys[i] != diz.Map__keys[j] might not hold. (blom02.vpr@44.30--44.105) [40470]"}
                Seq#Index(Heap[diz, Map__keys], i_8_2) != Seq#Index(Heap[diz, Map__keys], j_8);
            }
            assume false;
          }
          assume (forall i_9_1_1: int, j_9_1_1: int ::
            { Seq#Index(Heap[diz, Map__keys], i_9_1_1), Seq#Index(Heap[diz, Map__keys], j_9_1_1) }
            0 <= i_9_1_1 && (i_9_1_1 < Seq#Length(Heap[diz, Map__keys]) && (0 <= j_9_1_1 && (j_9_1_1 < Seq#Length(Heap[diz, Map__keys]) && i_9_1_1 != j_9_1_1))) ==> Seq#Index(Heap[diz, Map__keys], i_9_1_1) != Seq#Index(Heap[diz, Map__keys], j_9_1_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver diz.Map__keys[i2] is injective
            assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Quantified resource diz.Map__keys[i2].Ref__Integer_value might not be injective. (blom02.vpr@44.30--44.105) [40471]"}
              (forall i2_5: int, i2_5_1: int ::
              { neverTriggered3(i2_5), neverTriggered3(i2_5_1) }
              (((i2_5 != i2_5_1 && (i2_5 >= 0 && i2_5 < Seq#Length(Heap[diz, Map__keys]))) && (i2_5_1 >= 0 && i2_5_1 < Seq#Length(Heap[diz, Map__keys]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__keys], i2_5) != Seq#Index(Heap[diz, Map__keys], i2_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function Map__indexOfLoop might not hold. There might be insufficient permission to access diz.Map__keys[i2].Ref__Integer_value (blom02.vpr@44.30--44.105) [40472]"}
              (forall i2_5: int ::
              { Seq#Index(Heap[diz, Map__keys], i2_5) } { Seq#Index(Heap[diz, Map__keys], i2_5) }
              i2_5 >= 0 && i2_5 < Seq#Length(Heap[diz, Map__keys]) ==> FullPerm > NoPerm ==> Mask[Seq#Index(Heap[diz, Map__keys], i2_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver diz.Map__keys[i2]
            assume (forall i2_5: int ::
              { Seq#Index(Heap[diz, Map__keys], i2_5) } { Seq#Index(Heap[diz, Map__keys], i2_5) }
              (i2_5 >= 0 && i2_5 < Seq#Length(Heap[diz, Map__keys])) && NoPerm < FullPerm ==> qpRange3(Seq#Index(Heap[diz, Map__keys], i2_5)) && invRecv3(Seq#Index(Heap[diz, Map__keys], i2_5)) == i2_5
            );
            assume (forall o_4: Ref ::
              { invRecv3(o_4) }
              (invRecv3(o_4) >= 0 && invRecv3(o_4) < Seq#Length(Heap[diz, Map__keys])) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(Heap[diz, Map__keys], invRecv3(o_4)) == o_4
            );
          if (*) {
            if (0 <= i_10_1 && (i_10_1 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_10_2 && (j_10_2 < Seq#Length(Heap[diz, Map__values]) && i_10_1 != j_10_2)))) {
              assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion diz.Map__values[i] != diz.Map__values[j] might not hold. (blom02.vpr@44.30--44.105) [40473]"}
                Seq#Index(Heap[diz, Map__values], i_10_1) != Seq#Index(Heap[diz, Map__values], j_10_2);
            }
            assume false;
          }
          assume (forall i_11_1_1: int, j_11_1: int ::
            { Seq#Index(Heap[diz, Map__values], i_11_1_1), Seq#Index(Heap[diz, Map__values], j_11_1) }
            0 <= i_11_1_1 && (i_11_1_1 < Seq#Length(Heap[diz, Map__values]) && (0 <= j_11_1 && (j_11_1 < Seq#Length(Heap[diz, Map__values]) && i_11_1_1 != j_11_1))) ==> Seq#Index(Heap[diz, Map__values], i_11_1_1) != Seq#Index(Heap[diz, Map__values], j_11_1)
          );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver diz.Map__values[i3] is injective
            assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Quantified resource diz.Map__values[i3].Ref__Integer_value might not be injective. (blom02.vpr@44.30--44.105) [40474]"}
              (forall i3_5: int, i3_5_1: int ::
              { neverTriggered4(i3_5), neverTriggered4(i3_5_1) }
              (((i3_5 != i3_5_1 && (i3_5 >= 0 && i3_5 < Seq#Length(Heap[diz, Map__values]))) && (i3_5_1 >= 0 && i3_5_1 < Seq#Length(Heap[diz, Map__values]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(Heap[diz, Map__values], i3_5) != Seq#Index(Heap[diz, Map__values], i3_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function Map__indexOfLoop might not hold. There might be insufficient permission to access diz.Map__values[i3].Ref__Integer_value (blom02.vpr@44.30--44.105) [40475]"}
              (forall i3_5: int ::
              { Seq#Index(Heap[diz, Map__values], i3_5) } { Seq#Index(Heap[diz, Map__values], i3_5) }
              i3_5 >= 0 && i3_5 < Seq#Length(Heap[diz, Map__values]) ==> FullPerm > NoPerm ==> Mask[Seq#Index(Heap[diz, Map__values], i3_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver diz.Map__values[i3]
            assume (forall i3_5: int ::
              { Seq#Index(Heap[diz, Map__values], i3_5) } { Seq#Index(Heap[diz, Map__values], i3_5) }
              (i3_5 >= 0 && i3_5 < Seq#Length(Heap[diz, Map__values])) && NoPerm < FullPerm ==> qpRange4(Seq#Index(Heap[diz, Map__values], i3_5)) && invRecv4(Seq#Index(Heap[diz, Map__values], i3_5)) == i3_5
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              (invRecv4(o_4) >= 0 && invRecv4(o_4) < Seq#Length(Heap[diz, Map__values])) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(Heap[diz, Map__values], invRecv4(o_4)) == o_4
            );
          if (*) {
            if (i1_4_1 >= 0 && i1_4_1 < Seq#Length(Heap[diz, Map__keys])) {
              assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion diz.Map__keys[i1].Ref__Integer_value == Map__EMPTY() || (diz.Map__keys[i1].Ref__Integer_value == Map__DELETED() || diz.Map__keys[i1].Ref__Integer_value >= 0) might not hold. (blom02.vpr@44.30--44.105) [40476]"}
                Heap[Seq#Index(Heap[diz, Map__keys], i1_4_1), Ref__Integer_value] == Map__EMPTY(Heap) || (Heap[Seq#Index(Heap[diz, Map__keys], i1_4_1), Ref__Integer_value] == Map__DELETED(Heap) || Heap[Seq#Index(Heap[diz, Map__keys], i1_4_1), Ref__Integer_value] >= 0);
            }
            assume false;
          }
          assume (forall i1_5_1: int ::
            { Seq#Index(Heap[diz, Map__keys], i1_5_1) }
            i1_5_1 >= 0 && i1_5_1 < Seq#Length(Heap[diz, Map__keys]) ==> Heap[Seq#Index(Heap[diz, Map__keys], i1_5_1), Ref__Integer_value] == Map__EMPTY(Heap) || (Heap[Seq#Index(Heap[diz, Map__keys], i1_5_1), Ref__Integer_value] == Map__DELETED(Heap) || Heap[Seq#Index(Heap[diz, Map__keys], i1_5_1), Ref__Integer_value] >= 0)
          );
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion (hash + 1) % |diz.Map__keys| >= 0 might not hold. (blom02.vpr@44.30--44.105) [40477]"}
            (hash + 1) mod Seq#Length(Heap[diz, Map__keys]) >= 0;
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion (hash + 1) % |diz.Map__keys| < |diz.Map__keys| might not hold. (blom02.vpr@44.30--44.105) [40478]"}
            (hash + 1) mod Seq#Length(Heap[diz, Map__keys]) < Seq#Length(Heap[diz, Map__keys]);
          assert {:msg "  Precondition of function Map__indexOfLoop might not hold. Assertion cap - 1 < |diz.Map__keys| might not hold. (blom02.vpr@44.30--44.105) [40479]"}
            cap - 1 < Seq#Length(Heap[diz, Map__keys]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Map__indexOfLoop#trigger(CombineFrames(FrameFragment(Heap[diz, Map__keys]), CombineFrames(FrameFragment(Heap[diz, Map__values]), CombineFrames(FrameFragment(Map__indexOfLoop#condqp1(Heap, diz, (hash + 1) mod Seq#Length(Heap[diz, Map__keys]), ignoreDeleted, cap - 1)), FrameFragment(Map__indexOfLoop#condqp2(Heap, diz, (hash + 1) mod Seq#Length(Heap[diz, Map__keys]), ignoreDeleted, cap - 1))))), diz, (hash + 1) mod Seq#Length(Heap[diz, Map__keys]), ignoreDeleted, cap - 1);
        }
      }
  
  // -- Translate function body
    Result := (if cap <= 0 then Map__EMPTY(Heap) else Map__indexOfLoop(Heap, diz, (hash + 1) mod Seq#Length(Heap[diz, Map__keys]), ignoreDeleted, cap - 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == Map__EMPTY() || result >= 0 && result < |diz.Map__keys|
      if (*) {
        // Stop execution
        assume false;
      }
      if (!(Result == Map__EMPTY(Heap))) {
        if (Result >= 0) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Map__keys (blom02.vpr@42.11--42.82) [40480]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Map__keys);
        }
      }
    assert {:msg "  Postcondition of Map__indexOfLoop might not hold. Assertion result == Map__EMPTY() || result >= 0 && result < |diz.Map__keys| might not hold. (blom02.vpr@42.11--42.82) [40481]"}
      Result == Map__EMPTY(Heap) || (Result >= 0 && Result < Seq#Length(Heap[diz, Map__keys]));
}

// ==================================================
// Translation of method Map__Map
// ==================================================

procedure Map__Map(capacity: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Map__keys, Map__values) -- blom02.vpr@51.3--51.37
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Map__keys:=Mask[diz, Map__keys] + FullPerm];
    Mask := Mask[diz, Map__values:=Mask[diz, Map__values] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- blom02.vpr@52.3--52.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- blom02.vpr@53.3--53.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (blom02.vpr@53.10--53.29) [40482]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- blom02.vpr@54.3--54.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Map__Map might not hold. Assertion sys__result != null might not hold. (blom02.vpr@48.11--48.30) [40483]"}
      sys__result != null;
}