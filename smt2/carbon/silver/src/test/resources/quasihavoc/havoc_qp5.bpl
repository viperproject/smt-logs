// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:51:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quasihavoc/havoc_qp5.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quasihavoc/havoc_qp5-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_1_1_1: Ref, y_1_1_1: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_1_1_1: Ref, y_1_1_1: Ref): bool;

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
// Translation of predicate Pair
// ==================================================

type PredicateType_Pair;
function  Pair(x: Ref, y: Ref): Field PredicateType_Pair FrameType;
function  Pair#sm(x: Ref, y: Ref): Field PredicateType_Pair PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(Pair(x, y)) }
  PredicateMaskField(Pair(x, y)) == Pair#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { Pair(x, y) }
  IsPredicateField(Pair(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { Pair(x, y) }
  getPredWandId(Pair(x, y)) == 0
);
function  Pair#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Pair#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { Pair(x, y), Pair(x2, y2) }
  Pair(x, y) == Pair(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { Pair#sm(x, y), Pair#sm(x2, y2) }
  Pair#sm(x, y) == Pair#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { Pair#trigger(Heap, Pair(x, y)) }
  Pair#everUsed(Pair(x, y))
);

procedure Pair#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Pair
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == y.f
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (havoc_qp5.vpr@3.1--5.2) [77594]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access y.f (havoc_qp5.vpr@3.1--5.2) [77595]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[x, f_7] == Heap[y, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(x: Ref, y: Ref, s_2: (Seq Ref), t_2: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var j_5: int;
  var i_2: int;
  var QPMask: MaskType;
  var i_4: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm_temp_quasihavoc_: Perm;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  var i_6: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_8_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Length(s_2) == Seq#Length(t_2);
    assume Seq#Length(s_2) >= 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { s[i], s[j] } 0 <= i && (i < j && j < |s|) ==> s[i] != s[j])
      if (*) {
        if (0 <= i_14 && (i_14 < j_5 && j_5 < Seq#Length(s_2))) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (havoc_qp5.vpr@10.14--10.82) [77596]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@10.14--10.82) [77597]"}
            i_14 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (havoc_qp5.vpr@10.14--10.82) [77598]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (havoc_qp5.vpr@10.14--10.82) [77599]"}
            j_5 < Seq#Length(s_2);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(s_2, i_1), Seq#Index(s_2, j_1) }
      0 <= i_1 && (i_1 < j_1 && j_1 < Seq#Length(s_2)) ==> Seq#Index(s_2, i_1) != Seq#Index(s_2, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { s[i] } { t[i] } 0 <= i && i < |s| ==> acc(Pair(s[i], t[i]), write))
      if (*) {
        if (0 <= i_2 && i_2 < Seq#Length(s_2)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (havoc_qp5.vpr@11.14--12.33) [77600]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@11.14--12.33) [77601]"}
            i_2 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might be negative. (havoc_qp5.vpr@11.14--12.33) [77602]"}
            i_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might exceed sequence length. (havoc_qp5.vpr@11.14--12.33) [77603]"}
            i_2 < Seq#Length(t_2);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Pair(s[i], t[i]), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource Pair(s[i], t[i]) might not be injective. (havoc_qp5.vpr@11.14--12.33) [77604]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered1(i_3), neverTriggered1(i_3_1) }
        (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(s_2))) && (0 <= i_3_1 && i_3_1 < Seq#Length(s_2))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_2, i_3) != Seq#Index(s_2, i_3_1) || Seq#Index(t_2, i_3) != Seq#Index(t_2, i_3_1)
      );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Heap[null, Pair(Seq#Index(s_2, i_3), Seq#Index(t_2, i_3))] } { Mask[null, Pair(Seq#Index(s_2, i_3), Seq#Index(t_2, i_3))] } { Seq#Index(s_2, i_3) } { Seq#Index(t_2, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(s_2)) && NoPerm < FullPerm ==> invRecv1(Seq#Index(s_2, i_3), Seq#Index(t_2, i_3)) == i_3 && qpRange1(Seq#Index(s_2, i_3), Seq#Index(t_2, i_3))
      );
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { invRecv1(x_1_1_1, y_1_1_1) }
        ((0 <= invRecv1(x_1_1_1, y_1_1_1) && invRecv1(x_1_1_1, y_1_1_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange1(x_1_1_1, y_1_1_1) ==> Seq#Index(s_2, invRecv1(x_1_1_1, y_1_1_1)) == x_1_1_1 && Seq#Index(t_2, invRecv1(x_1_1_1, y_1_1_1)) == y_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { QPMask[null, Pair(x_1_1_1, y_1_1_1)] }
        ((0 <= invRecv1(x_1_1_1, y_1_1_1) && invRecv1(x_1_1_1, y_1_1_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange1(x_1_1_1, y_1_1_1) ==> (NoPerm < FullPerm ==> Seq#Index(s_2, invRecv1(x_1_1_1, y_1_1_1)) == x_1_1_1 && Seq#Index(t_2, invRecv1(x_1_1_1, y_1_1_1)) == y_1_1_1) && QPMask[null, Pair(x_1_1_1, y_1_1_1)] == Mask[null, Pair(x_1_1_1, y_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { QPMask[null, Pair(x_1_1_1, y_1_1_1)] }
        !(((0 <= invRecv1(x_1_1_1, y_1_1_1) && invRecv1(x_1_1_1, y_1_1_1) < Seq#Length(s_2)) && NoPerm < FullPerm) && qpRange1(x_1_1_1, y_1_1_1)) ==> QPMask[null, Pair(x_1_1_1, y_1_1_1)] == Mask[null, Pair(x_1_1_1, y_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { s[i] } { t[i] } 0 <= i && i < |s| ==> (unfolding acc(Pair(s[i], t[i]), write) in s[i].f == i))
      if (*) {
        if (0 <= i_4 && i_4 < Seq#Length(s_2)) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume Pair#trigger(UnfoldingHeap, Pair(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4)));
          assume UnfoldingHeap[null, Pair(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4))] == CombineFrames(FrameFragment(UnfoldingHeap[Seq#Index(s_2, i_4), f_7]), FrameFragment(UnfoldingHeap[Seq#Index(t_2, i_4), f_7]));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Pair(s[i], t[i]) (havoc_qp5.vpr@13.14--14.58) [77605]"}
              perm <= UnfoldingMask[null, Pair(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4))];
          }
          UnfoldingMask := UnfoldingMask[null, Pair(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4)):=UnfoldingMask[null, Pair(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4))] - perm];
          perm := FullPerm;
          assume Seq#Index(s_2, i_4) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i_4), f_7:=UnfoldingMask[Seq#Index(s_2, i_4), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume Seq#Index(t_2, i_4) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(t_2, i_4), f_7:=UnfoldingMask[Seq#Index(t_2, i_4), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[Seq#Index(s_2, i_4), f_7] == UnfoldingHeap[Seq#Index(t_2, i_4), f_7];
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (havoc_qp5.vpr@13.14--14.58) [77606]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@13.14--14.58) [77607]"}
            i_4 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might be negative. (havoc_qp5.vpr@13.14--14.58) [77608]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index t[i] into t might exceed sequence length. (havoc_qp5.vpr@13.14--14.58) [77609]"}
            i_4 < Seq#Length(t_2);
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (havoc_qp5.vpr@13.14--14.58) [77610]"}
            i_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@13.14--14.58) [77611]"}
            i_4 < Seq#Length(s_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s[i].f (havoc_qp5.vpr@13.14--14.58) [77612]"}
            HasDirectPerm(UnfoldingMask, Seq#Index(s_2, i_4), f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Pair#sm(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4)):=Heap[null, Pair#sm(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4))][Seq#Index(s_2, i_4), f_7:=true]];
            Heap := Heap[null, Pair#sm(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4)):=Heap[null, Pair#sm(Seq#Index(s_2, i_4), Seq#Index(t_2, i_4))][Seq#Index(t_2, i_4), f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall i_6_1: int ::
      { Seq#Index(s_2, i_6_1) } { Seq#Index(t_2, i_6_1) }
      0 <= i_6_1 && i_6_1 < Seq#Length(s_2) ==> Heap[Seq#Index(s_2, i_6_1), f_7] == i_6_1
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x == s[0]
      assert {:msg "  Contract might not be well-formed. Index s[0] into s might exceed sequence length. (havoc_qp5.vpr@15.14--15.36) [77613]"}
        0 < Seq#Length(s_2);
    assume x == Seq#Index(s_2, 0);
    
    // -- Check definedness of y == t[0]
      assert {:msg "  Contract might not be well-formed. Index t[0] into t might exceed sequence length. (havoc_qp5.vpr@15.14--15.36) [77614]"}
        0 < Seq#Length(t_2);
    assume y == Seq#Index(t_2, 0);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: perm_temp_quasihavoc_ := perm(Pair(x, y)) -- <no position>
    perm_temp_quasihavoc_ := Mask[null, Pair(x, y)];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Pair(x, y), perm_temp_quasihavoc_) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := perm_temp_quasihavoc_;
    assert {:msg "  Exhale might fail. Fraction perm_temp_quasihavoc_ might be negative. (<no position>) [77615]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Pair(x, y) (<no position>) [77616]"}
        perm <= Mask[null, Pair(x, y)];
    }
    Mask := Mask[null, Pair(x, y):=Mask[null, Pair(x, y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(Pair(x, y), perm_temp_quasihavoc_) -- <no position>
    perm := perm_temp_quasihavoc_;
    assert {:msg "  Inhale might fail. Fraction perm_temp_quasihavoc_ might be negative. (<no position>) [77617]"}
      perm >= NoPerm;
    Mask := Mask[null, Pair(x, y):=Mask[null, Pair(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Pair(x, y), write) -- havoc_qp5.vpr@18.5--18.22
    assume Pair#trigger(Heap, Pair(x, y));
    assume Heap[null, Pair(x, y)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, f_7]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Pair(x, y) might fail. There might be insufficient permission to access Pair(x, y) (havoc_qp5.vpr@18.5--18.22) [77620]"}
        perm <= Mask[null, Pair(x, y)];
    }
    Mask := Mask[null, Pair(x, y):=Mask[null, Pair(x, y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Pair(x, y))) {
        havoc newVersion;
        Heap := Heap[null, Pair(x, y):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume Heap[x, f_7] == Heap[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { s[i] }
  //     { t[i] }
  //     1 <= i && i < |s| ==>
  //     (unfolding acc(Pair(s[i], t[i]), write) in s[i].f == i)) -- havoc_qp5.vpr@21.5--22.54
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { s[i] } { t[i] } 1 <= i && i < |s| ==> (unfolding acc(Pair(s[i], t[i]), write) in s[i].f == i))
      if (*) {
        if (1 <= i_6 && i_6 < Seq#Length(s_2)) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Pair#trigger(UnfoldingHeap, Pair(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6)));
          assume UnfoldingHeap[null, Pair(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6))] == CombineFrames(FrameFragment(UnfoldingHeap[Seq#Index(s_2, i_6), f_7]), FrameFragment(UnfoldingHeap[Seq#Index(t_2, i_6), f_7]));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Pair(s[i], t[i]) (havoc_qp5.vpr@21.12--22.54) [77623]"}
              perm <= UnfoldingMask[null, Pair(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6))];
          }
          UnfoldingMask := UnfoldingMask[null, Pair(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6)):=UnfoldingMask[null, Pair(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6))] - perm];
          perm := FullPerm;
          assume Seq#Index(s_2, i_6) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i_6), f_7:=UnfoldingMask[Seq#Index(s_2, i_6), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume Seq#Index(t_2, i_6) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(t_2, i_6), f_7:=UnfoldingMask[Seq#Index(t_2, i_6), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[Seq#Index(s_2, i_6), f_7] == UnfoldingHeap[Seq#Index(t_2, i_6), f_7];
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. Index s[i] into s might be negative. (havoc_qp5.vpr@21.12--22.54) [77624]"}
            i_6 >= 0;
          assert {:msg "  Assert might fail. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@21.12--22.54) [77625]"}
            i_6 < Seq#Length(s_2);
          assert {:msg "  Assert might fail. Index t[i] into t might be negative. (havoc_qp5.vpr@21.12--22.54) [77626]"}
            i_6 >= 0;
          assert {:msg "  Assert might fail. Index t[i] into t might exceed sequence length. (havoc_qp5.vpr@21.12--22.54) [77627]"}
            i_6 < Seq#Length(t_2);
          assert {:msg "  Assert might fail. Index s[i] into s might be negative. (havoc_qp5.vpr@21.12--22.54) [77628]"}
            i_6 >= 0;
          assert {:msg "  Assert might fail. Index s[i] into s might exceed sequence length. (havoc_qp5.vpr@21.12--22.54) [77629]"}
            i_6 < Seq#Length(s_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access s[i].f (havoc_qp5.vpr@21.12--22.54) [77630]"}
            HasDirectPerm(UnfoldingMask, Seq#Index(s_2, i_6), f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, Pair#sm(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6)):=Heap[null, Pair#sm(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6))][Seq#Index(s_2, i_6), f_7:=true]];
            Heap := Heap[null, Pair#sm(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6)):=Heap[null, Pair#sm(Seq#Index(s_2, i_6), Seq#Index(t_2, i_6))][Seq#Index(t_2, i_6), f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (1 <= i_8_2 && i_8_2 < Seq#Length(s_2)) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume Pair#trigger(UnfoldingHeap, Pair(Seq#Index(s_2, i_8_2), Seq#Index(t_2, i_8_2)));
          assume UnfoldingHeap[null, Pair(Seq#Index(s_2, i_8_2), Seq#Index(t_2, i_8_2))] == CombineFrames(FrameFragment(UnfoldingHeap[Seq#Index(s_2, i_8_2), f_7]), FrameFragment(UnfoldingHeap[Seq#Index(t_2, i_8_2), f_7]));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Pair(s[i], t[i]) (havoc_qp5.vpr@21.12--22.54) [77633]"}
              perm <= UnfoldingMask[null, Pair(Seq#Index(s_2, i_8_2), Seq#Index(t_2, i_8_2))];
          }
          UnfoldingMask := UnfoldingMask[null, Pair(Seq#Index(s_2, i_8_2), Seq#Index(t_2, i_8_2)):=UnfoldingMask[null, Pair(Seq#Index(s_2, i_8_2), Seq#Index(t_2, i_8_2))] - perm];
          perm := FullPerm;
          assume Seq#Index(s_2, i_8_2) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(s_2, i_8_2), f_7:=UnfoldingMask[Seq#Index(s_2, i_8_2), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume Seq#Index(t_2, i_8_2) != null;
          UnfoldingMask := UnfoldingMask[Seq#Index(t_2, i_8_2), f_7:=UnfoldingMask[Seq#Index(t_2, i_8_2), f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[Seq#Index(s_2, i_8_2), f_7] == UnfoldingHeap[Seq#Index(t_2, i_8_2), f_7];
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion s[i].f == i might not hold. (havoc_qp5.vpr@21.12--22.54) [77636]"}
          Heap[Seq#Index(s_2, i_8_2), f_7] == i_8_2;
      }
      assume false;
    }
    assume (forall i_9_1_1: int ::
      { Seq#Index(s_2, i_9_1_1) } { Seq#Index(t_2, i_9_1_1) }
      1 <= i_9_1_1 && i_9_1_1 < Seq#Length(s_2) ==> Heap[Seq#Index(s_2, i_9_1_1), f_7] == i_9_1_1
    );
    assume state(Heap, Mask);
}