// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:24:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0271.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0271-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_13: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_13] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_13], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_14: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_14] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_14) ==> Heap[o_8, f_14] == ExhaleHeap[o_8, f_14]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2), ExhaleHeap[null, PredicateMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> Heap[null, PredicateMaskField(pm_f_2)] == ExhaleHeap[null, PredicateMaskField(pm_f_2)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_2, f_14] }
    Heap[null, PredicateMaskField(pm_f_2)][o2_2, f_14] ==> Heap[o2_2, f_14] == ExhaleHeap[o2_2, f_14]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2), ExhaleHeap[null, WandMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> Heap[null, WandMaskField(pm_f_2)] == ExhaleHeap[null, WandMaskField(pm_f_2)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_2, f_14] }
    Heap[null, WandMaskField(pm_f_2)][o2_2, f_14] ==> Heap[o2_2, f_14] == ExhaleHeap[o2_2, f_14]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_15: (Field A B), v: B ::
  { Heap[o_7, f_15:=v] }
  succHeap(Heap, Heap[o_7, f_15:=v])
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

function  neverTriggered1(i_8_1: int): bool;
function  neverTriggered2(i_4_1: int): bool;
function  neverTriggered3(i_3_2: int): bool;
function  neverTriggered4(i_7_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(self: Ref): int;
function  invRecv2(this: Ref, i_5_1_1: int): int;
function  invRecv3(self: Ref): int;
function  invRecv4(self_1_2: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(self: Ref): bool;
function  qpRange2(this: Ref, i_5_1_1: int): bool;
function  qpRange3(self: Ref): bool;
function  qpRange4(self_1_2: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: listLength
// - height 1: someFun
// - height 0: foo
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

const unique elem: Field NormalField int;
axiom !IsPredicateField(elem);
axiom !IsWandField(elem);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique elem2: Field NormalField int;
axiom !IsPredicateField(elem2);
axiom !IsWandField(elem2);
const unique next2: Field NormalField Ref;
axiom !IsPredicateField(next2);
axiom !IsWandField(next2);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, s_1: (Seq Ref)): bool;
function  foo'(Heap: HeapType, s_1: (Seq Ref)): bool;
axiom (forall Heap: HeapType, s_1: (Seq Ref) ::
  { foo_1(Heap, s_1) }
  foo_1(Heap, s_1) == foo'(Heap, s_1) && dummyFunction(foo#triggerStateless(s_1))
);
axiom (forall Heap: HeapType, s_1: (Seq Ref) ::
  { foo'(Heap, s_1) }
  dummyFunction(foo#triggerStateless(s_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Seq Ref) ::
  { state(Heap, Mask), foo_1(Heap, s_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (forall i: int, j: int ::
    { Seq#Index(s_1, i), Seq#Index(s_1, j) }
    i >= 0 && (i < Seq#Length(s_1) && (j >= 0 && (j < Seq#Length(s_1) && i != j))) ==> Seq#Index(s_1, i) != Seq#Index(s_1, j)
  ) ==> foo_1(Heap, s_1)
);

// Framing axioms
function  foo#frame(frame: FrameType, s_1: (Seq Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Seq Ref) ::
  { state(Heap, Mask), foo'(Heap, s_1) }
  state(Heap, Mask) ==> foo'(Heap, s_1) == foo#frame(FrameFragment(foo#condqp1(Heap, s_1)), s_1)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { s[i] } 0 <= i && i < |s| ==> acc(P(s[i]), write)) in function foo
// ==================================================

function  foo#condqp1(Heap: HeapType, s_1_1_1: (Seq Ref)): int;
function  sk_foo#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, s_1: (Seq Ref) ::
  { foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) && sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) < Seq#Length(s_1)) && NoPerm < FullPerm <==> (0 <= sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) && sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) < Seq#Length(s_1)) && NoPerm < FullPerm) && ((0 <= sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) && sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1)) < Seq#Length(s_1)) && NoPerm < FullPerm ==> Heap2Heap[null, P(Seq#Index(s_1, sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1))))] == Heap1Heap[null, P(Seq#Index(s_1, sk_foo#condqp1(foo#condqp1(Heap2Heap, s_1), foo#condqp1(Heap1Heap, s_1))))]) ==> foo#condqp1(Heap2Heap, s_1) == foo#condqp1(Heap1Heap, s_1)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, s_1: (Seq Ref)): bool;

// State-independent trigger function
function  foo#triggerStateless(s_1: (Seq Ref)): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(s_1: (Seq Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var i_18: int;
  var j_14: int;
  var i_3: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int, j: Int :: { s[i], s[j] } i >= 0 && (i < |s| && (j >= 0 && (j < |s| && i != j))) ==> s[i] != s[j])
      if (*) {
        if (i_18 >= 0 && (i_18 < Seq#Length(s_1) && (j_14 >= 0 && (j_14 < Seq#Length(s_1) && i_18 != j_14)))) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0271.vpr@4.11--4.99) [84922]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0271.vpr@4.11--4.99) [84923]"}
            i_18 < Seq#Length(s_1);
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might be negative. (0271.vpr@4.11--4.99) [84924]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[j] into s might exceed sequence length. (0271.vpr@4.11--4.99) [84925]"}
            j_14 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i_6_2: int, j_3: int ::
      { Seq#Index(s_1, i_6_2), Seq#Index(s_1, j_3) }
      i_6_2 >= 0 && (i_6_2 < Seq#Length(s_1) && (j_3 >= 0 && (j_3 < Seq#Length(s_1) && i_6_2 != j_3))) ==> Seq#Index(s_1, i_6_2) != Seq#Index(s_1, j_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { s[i] } 0 <= i && i < |s| ==> acc(P(s[i]), write))
      if (*) {
        if (0 <= i_3 && i_3 < Seq#Length(s_1)) {
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might be negative. (0271.vpr@5.14--5.69) [84926]"}
            i_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index s[i] into s might exceed sequence length. (0271.vpr@5.14--5.69) [84927]"}
            i_3 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(s[i]), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(s[i]) might not be injective. (0271.vpr@5.14--5.69) [84928]"}
        (forall i_8_1: int, i_8_2: int ::
        { neverTriggered1(i_8_1), neverTriggered1(i_8_2) }
        (((i_8_1 != i_8_2 && (0 <= i_8_1 && i_8_1 < Seq#Length(s_1))) && (0 <= i_8_2 && i_8_2 < Seq#Length(s_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_8_1) != Seq#Index(s_1, i_8_2)
      );
    
    // -- Define Inverse Function
      assume (forall i_8_1: int ::
        { Heap[null, P(Seq#Index(s_1, i_8_1))] } { Mask[null, P(Seq#Index(s_1, i_8_1))] } { Seq#Index(s_1, i_8_1) }
        (0 <= i_8_1 && i_8_1 < Seq#Length(s_1)) && NoPerm < FullPerm ==> invRecv1(Seq#Index(s_1, i_8_1)) == i_8_1 && qpRange1(Seq#Index(s_1, i_8_1))
      );
      assume (forall self: Ref ::
        { invRecv1(self) }
        ((0 <= invRecv1(self) && invRecv1(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange1(self) ==> Seq#Index(s_1, invRecv1(self)) == self
      );
    
    // -- Define updated permissions
      assume (forall self: Ref ::
        { QPMask[null, P(self)] }
        ((0 <= invRecv1(self) && invRecv1(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange1(self) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv1(self)) == self) && QPMask[null, P(self)] == Mask[null, P(self)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall self: Ref ::
        { QPMask[null, P(self)] }
        !(((0 <= invRecv1(self) && invRecv1(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange1(self)) ==> QPMask[null, P(self)] == Mask[null, P(self)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function someFun
// ==================================================

// Uninterpreted function definitions
function  someFun(Heap: HeapType, l_1: Ref): int;
function  someFun'(Heap: HeapType, l_1: Ref): int;
axiom (forall Heap: HeapType, l_1: Ref ::
  { someFun(Heap, l_1) }
  someFun(Heap, l_1) == someFun'(Heap, l_1) && dummyFunction(someFun#triggerStateless(l_1))
);
axiom (forall Heap: HeapType, l_1: Ref ::
  { someFun'(Heap, l_1) }
  dummyFunction(someFun#triggerStateless(l_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), someFun(Heap, l_1) } { state(Heap, Mask), someFun#triggerStateless(l_1), list#trigger(Heap, list(l_1)), otherList#trigger(Heap, otherList(l_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> someFun(Heap, l_1) == 1 + Heap[l_1, elem]
);

// Framing axioms
function  someFun#frame(frame: FrameType, l_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), someFun'(Heap, l_1) }
  state(Heap, Mask) ==> someFun'(Heap, l_1) == someFun#frame(CombineFrames(Heap[null, list(l_1)], CombineFrames(FrameFragment(Heap[l_1, elem]), CombineFrames(FrameFragment(someFun#condqp2(Heap, l_1)), Heap[null, otherList(l_1)]))), l_1)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int ::acc(someList(l, i), write)) in function someFun
// ==================================================

function  someFun#condqp2(Heap: HeapType, l_1_1: Ref): int;
function  sk_someFun#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, l_1: Ref ::
  { someFun#condqp2(Heap2Heap, l_1), someFun#condqp2(Heap1Heap, l_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (NoPerm < FullPerm <==> NoPerm < FullPerm) && (NoPerm < FullPerm ==> Heap2Heap[null, someList(l_1, sk_someFun#condqp2(someFun#condqp2(Heap2Heap, l_1), someFun#condqp2(Heap1Heap, l_1)))] == Heap1Heap[null, someList(l_1, sk_someFun#condqp2(someFun#condqp2(Heap2Heap, l_1), someFun#condqp2(Heap1Heap, l_1)))]) ==> someFun#condqp2(Heap2Heap, l_1) == someFun#condqp2(Heap1Heap, l_1)
);

// Trigger function (controlling recursive postconditions)
function  someFun#trigger(frame: FrameType, l_1: Ref): bool;

// State-independent trigger function
function  someFun#triggerStateless(l_1: Ref): int;

// Check contract well-formedness and postcondition
procedure someFun#definedness(l_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(l_1):=Mask[null, list(l_1)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l_1 != null;
    Mask := Mask[l_1, elem:=Mask[l_1, elem] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::acc(someList(l, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(someList(l, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource someList(l, i) might not be injective. (0271.vpr@31.12--31.83) [84929]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered2(i_4_1), neverTriggered2(i_4_2) }
        (i_4_1 != i_4_2 && NoPerm < FullPerm) && NoPerm < FullPerm ==> l_1 != l_1 || i_4_1 != i_4_2
      );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { Heap[null, someList(l_1, i_4_1)] } { Mask[null, someList(l_1, i_4_1)] }
        NoPerm < FullPerm ==> invRecv2(l_1, i_4_1) == i_4_1 && qpRange2(l_1, i_4_1)
      );
      assume (forall this: Ref, i_5_1_1: int ::
        { invRecv2(this, i_5_1_1) }
        NoPerm < FullPerm && qpRange2(this, i_5_1_1) ==> l_1 == this && invRecv2(this, i_5_1_1) == i_5_1_1
      );
    
    // -- Define updated permissions
      assume (forall this: Ref, i_5_1_1: int ::
        { QPMask[null, someList(this, i_5_1_1)] }
        NoPerm < FullPerm && qpRange2(this, i_5_1_1) ==> (NoPerm < FullPerm ==> l_1 == this && invRecv2(this, i_5_1_1) == i_5_1_1) && QPMask[null, someList(this, i_5_1_1)] == Mask[null, someList(this, i_5_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall this: Ref, i_5_1_1: int ::
        { QPMask[null, someList(this, i_5_1_1)] }
        !(NoPerm < FullPerm && qpRange2(this, i_5_1_1)) ==> QPMask[null, someList(this, i_5_1_1)] == Mask[null, someList(this, i_5_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, otherList(l_1):=Mask[null, otherList(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + l.elem
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.elem (0271.vpr@30.1--34.2) [84930]"}
        HasDirectPerm(Mask, l_1, elem);
  
  // -- Translate function body
    Result := 1 + Heap[l_1, elem];
}

// ==================================================
// Translation of function listLength
// ==================================================

// Uninterpreted function definitions
function  listLength(Heap: HeapType, l1_1: Ref, l2: Ref, k: int): int;
function  listLength'(Heap: HeapType, l1_1: Ref, l2: Ref, k: int): int;
axiom (forall Heap: HeapType, l1_1: Ref, l2: Ref, k: int ::
  { listLength(Heap, l1_1, l2, k) }
  listLength(Heap, l1_1, l2, k) == listLength'(Heap, l1_1, l2, k) && dummyFunction(listLength#triggerStateless(l1_1, l2, k))
);
axiom (forall Heap: HeapType, l1_1: Ref, l2: Ref, k: int ::
  { listLength'(Heap, l1_1, l2, k) }
  dummyFunction(listLength#triggerStateless(l1_1, l2, k))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l1_1: Ref, l2: Ref, k: int ::
  { state(Heap, Mask), listLength(Heap, l1_1, l2, k) } { state(Heap, Mask), listLength#triggerStateless(l1_1, l2, k), list2#trigger(Heap, list2(l2)), list#trigger(Heap, list(l1_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> listLength(Heap, l1_1, l2, k) == (if Heap[l1_1, next] == null then 1 else 1 + listLength'(Heap, Heap[l1_1, next], l2, k)) + listLength'(Heap, l1_1, l2, k - 1) + (if Heap[l2, next2] == null then 1 else 1 + listLength'(Heap, l1_1, Heap[l2, next2], k))
);

// Framing axioms
function  listLength#frame(frame: FrameType, l1_1: Ref, l2: Ref, k: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, l1_1: Ref, l2: Ref, k: int ::
  { state(Heap, Mask), listLength'(Heap, l1_1, l2, k) } { state(Heap, Mask), listLength#triggerStateless(l1_1, l2, k), list2#trigger(Heap, list2(l2)), list#trigger(Heap, list(l1_1)) }
  state(Heap, Mask) ==> listLength'(Heap, l1_1, l2, k) == listLength#frame(CombineFrames(Heap[null, list(l1_1)], Heap[null, list2(l2)]), l1_1, l2, k)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l1_1: Ref, l2: Ref, k: int ::
  { state(Heap, Mask), listLength'(Heap, l1_1, l2, k) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || listLength#trigger(CombineFrames(Heap[null, list(l1_1)], Heap[null, list2(l2)]), l1_1, l2, k)) ==> listLength'(Heap, l1_1, l2, k) > 0
);

// Trigger function (controlling recursive postconditions)
function  listLength#trigger(frame: FrameType, l1_1: Ref, l2: Ref, k: int): bool;

// State-independent trigger function
function  listLength#triggerStateless(l1_1: Ref, l2: Ref, k: int): int;

// Check contract well-formedness and postcondition
procedure listLength#definedness(l1_1: Ref, l2: Ref, k: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  var i_1: int;
  var i_3_2: int;
  var i_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l1_1, $allocated];
    assume Heap[l2, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(l1_1):=Mask[null, list(l1_1)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, list2(l2):=Mask[null, list2(l2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(l1), write) in (l1.next == null ? 1 : 1 + listLength(l1.next, l2, k))) + (let i == (k) in (unfolding acc(someList(l1, i), write) in listLength(l1, l2, k - 1))) + (unfolding acc(list2(l2), write) in (l2.next2 == null ? 1 : 1 + listLength(l1, l2.next2, k)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(l1_1));
      assume UnfoldingHeap[null, list(l1_1)] == CombineFrames(FrameFragment(UnfoldingHeap[l1_1, elem]), CombineFrames(FrameFragment(UnfoldingHeap[l1_1, next]), FrameFragment((if UnfoldingHeap[l1_1, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(l1) (0271.vpr@50.1--57.2) [84931]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(l1_1)];
      perm := FullPerm;
      assume l1_1 != null;
      UnfoldingMask := UnfoldingMask[l1_1, elem:=UnfoldingMask[l1_1, elem] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume l1_1 != null;
      UnfoldingMask := UnfoldingMask[l1_1, next:=UnfoldingMask[l1_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[l1_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[l1_1, next]):=UnfoldingMask[null, list(UnfoldingHeap[l1_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(l1_1), UnfoldingHeap[null, list(l1_1)], list(UnfoldingHeap[l1_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l1.next (0271.vpr@50.1--57.2) [84932]"}
        HasDirectPerm(UnfoldingMask, l1_1, next);
      if (UnfoldingHeap[l1_1, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l1.next (0271.vpr@50.1--57.2) [84933]"}
          HasDirectPerm(UnfoldingMask, l1_1, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list(l1.next) (0271.vpr@54.51--54.77) [84934]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[l1_1, next])];
          perm := FullPerm;
          assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list2(l2) (0271.vpr@54.51--54.77) [84935]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l2)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume listLength#trigger(CombineFrames(UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next])], UnfoldingHeap[null, list2(l2)]), UnfoldingHeap[l1_1, next], l2, k);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, elem:=true]];
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, next:=true]];
        if (Heap[l1_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
            { newPMask[o_64, f_73] }
            Heap[null, list#sm(l1_1)][o_64, f_73] || Heap[null, list#sm(Heap[l1_1, next])][o_64, f_73] ==> newPMask[o_64, f_73]
          );
          Heap := Heap[null, list#sm(l1_1):=newPMask];
        }
        assume state(Heap, Mask);
      i_1 := k;
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume someList#trigger(UnfoldingHeap, someList(l1_1, i_1));
      assume UnfoldingHeap[null, someList(l1_1, i_1)] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access someList(l1, i) (0271.vpr@50.1--57.2) [84936]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, someList(l1_1, i_1)];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list(l1) (0271.vpr@55.49--55.72) [84937]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(l1_1)];
        perm := FullPerm;
        assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list2(l2) (0271.vpr@55.49--55.72) [84938]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume listLength#trigger(CombineFrames(UnfoldingHeap[null, list(l1_1)], UnfoldingHeap[null, list2(l2)]), l1_1, l2, k - 1);
      }
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, elem:=true]];
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, next:=true]];
        if (Heap[l1_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_75: Ref, f_84: (Field A B) ::
            { newPMask[o_75, f_84] }
            Heap[null, list#sm(l1_1)][o_75, f_84] || Heap[null, list#sm(Heap[l1_1, next])][o_75, f_84] ==> newPMask[o_75, f_84]
          );
          Heap := Heap[null, list#sm(l1_1):=newPMask];
        }
        assume state(Heap, Mask);
        i_3_2 := k;
        assume state(Heap, Mask);
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list2#trigger(UnfoldingHeap, list2(l2));
      assume UnfoldingHeap[null, list2(l2)] == CombineFrames(FrameFragment(UnfoldingHeap[l2, elem2]), CombineFrames(FrameFragment(UnfoldingHeap[l2, next2]), FrameFragment((if UnfoldingHeap[l2, next2] != null then UnfoldingHeap[null, list2(UnfoldingHeap[l2, next2])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list2(l2) (0271.vpr@50.1--57.2) [84939]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l2)];
      perm := FullPerm;
      assume l2 != null;
      UnfoldingMask := UnfoldingMask[l2, elem2:=UnfoldingMask[l2, elem2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume l2 != null;
      UnfoldingMask := UnfoldingMask[l2, next2:=UnfoldingMask[l2, next2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[l2, next2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list2(UnfoldingHeap[l2, next2]):=UnfoldingMask[null, list2(UnfoldingHeap[l2, next2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list2(l2), UnfoldingHeap[null, list2(l2)], list2(UnfoldingHeap[l2, next2]), UnfoldingHeap[null, list2(UnfoldingHeap[l2, next2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l2.next2 (0271.vpr@50.1--57.2) [84940]"}
        HasDirectPerm(UnfoldingMask, l2, next2);
      if (UnfoldingHeap[l2, next2] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l2.next2 (0271.vpr@50.1--57.2) [84941]"}
          HasDirectPerm(UnfoldingMask, l2, next2);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list(l1) (0271.vpr@56.53--56.80) [84942]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(l1_1)];
          perm := FullPerm;
          assert {:msg "  Precondition of function listLength might not hold. There might be insufficient permission to access list2(l2.next2) (0271.vpr@56.53--56.80) [84943]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(UnfoldingHeap[l2, next2])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume listLength#trigger(CombineFrames(UnfoldingHeap[null, list(l1_1)], UnfoldingHeap[null, list2(UnfoldingHeap[l2, next2])]), l1_1, UnfoldingHeap[l2, next2], k);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list2#sm(l2):=Heap[null, list2#sm(l2)][l2, elem2:=true]];
        Heap := Heap[null, list2#sm(l2):=Heap[null, list2#sm(l2)][l2, next2:=true]];
        if (Heap[l2, next2] != null) {
          havoc newPMask;
          assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
            { newPMask[o_65, f_74] }
            Heap[null, list2#sm(l2)][o_65, f_74] || Heap[null, list2#sm(Heap[l2, next2])][o_65, f_74] ==> newPMask[o_65, f_74]
          );
          Heap := Heap[null, list2#sm(l2):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, elem:=true]];
        Heap := Heap[null, list#sm(l1_1):=Heap[null, list#sm(l1_1)][l1_1, next:=true]];
        if (Heap[l1_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_74: Ref, f_83: (Field A B) ::
            { newPMask[o_74, f_83] }
            Heap[null, list#sm(l1_1)][o_74, f_83] || Heap[null, list#sm(Heap[l1_1, next])][o_74, f_83] ==> newPMask[o_74, f_83]
          );
          Heap := Heap[null, list#sm(l1_1):=newPMask];
        }
        assume state(Heap, Mask);
        i_4_1 := k;
        assume state(Heap, Mask);
        Heap := Heap[null, list2#sm(l2):=Heap[null, list2#sm(l2)][l2, elem2:=true]];
        Heap := Heap[null, list2#sm(l2):=Heap[null, list2#sm(l2)][l2, next2:=true]];
        if (Heap[l2, next2] != null) {
          havoc newPMask;
          assume (forall <A, B> o_56: Ref, f: (Field A B) ::
            { newPMask[o_56, f] }
            Heap[null, list2#sm(l2)][o_56, f] || Heap[null, list2#sm(Heap[l2, next2])][o_56, f] ==> newPMask[o_56, f]
          );
          Heap := Heap[null, list2#sm(l2):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[l1_1, next] == null then 1 else 1 + listLength(Heap, Heap[l1_1, next], l2, k)) + listLength(Heap, l1_1, l2, k - 1) + (if Heap[l2, next2] == null then 1 else 1 + listLength(Heap, l1_1, Heap[l2, next2], k));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of listLength might not hold. Assertion result > 0 might not hold. (0271.vpr@52.12--52.22) [84944]"}
      Result > 0;
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(self: Ref): Field PredicateType_P FrameType;
function  P#sm(self: Ref): Field PredicateType_P PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(P(self)) }
  PredicateMaskField(P(self)) == P#sm(self)
);
axiom (forall self: Ref ::
  { P(self) }
  IsPredicateField(P(self))
);
axiom (forall self: Ref ::
  { P(self) }
  getPredWandId(P(self)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { P(self), P(self2) }
  P(self) == P(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { P#sm(self), P#sm(self2) }
  P#sm(self) == P#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { P#trigger(Heap, P(self)) }
  P#everUsed(P(self))
);

// ==================================================
// Translation of predicate someList
// ==================================================

type PredicateType_someList;
function  someList(this: Ref, i: int): Field PredicateType_someList FrameType;
function  someList#sm(this: Ref, i: int): Field PredicateType_someList PMaskType;
axiom (forall this: Ref, i: int ::
  { PredicateMaskField(someList(this, i)) }
  PredicateMaskField(someList(this, i)) == someList#sm(this, i)
);
axiom (forall this: Ref, i: int ::
  { someList(this, i) }
  IsPredicateField(someList(this, i))
);
axiom (forall this: Ref, i: int ::
  { someList(this, i) }
  getPredWandId(someList(this, i)) == 1
);
function  someList#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  someList#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { someList(this, i), someList(this2, i2) }
  someList(this, i) == someList(this2, i2) ==> this == this2 && i == i2
);
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { someList#sm(this, i), someList#sm(this2, i2) }
  someList#sm(this, i) == someList#sm(this2, i2) ==> this == this2 && i == i2
);

axiom (forall Heap: HeapType, this: Ref, i: int ::
  { someList#trigger(Heap, someList(this, i)) }
  someList#everUsed(someList(this, i))
);

procedure someList#definedness(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of someList
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate otherList
// ==================================================

type PredicateType_otherList;
function  otherList(this: Ref): Field PredicateType_otherList FrameType;
function  otherList#sm(this: Ref): Field PredicateType_otherList PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(otherList(this)) }
  PredicateMaskField(otherList(this)) == otherList#sm(this)
);
axiom (forall this: Ref ::
  { otherList(this) }
  IsPredicateField(otherList(this))
);
axiom (forall this: Ref ::
  { otherList(this) }
  getPredWandId(otherList(this)) == 2
);
function  otherList#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  otherList#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { otherList(this), otherList(this2) }
  otherList(this) == otherList(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { otherList#sm(this), otherList#sm(this2) }
  otherList#sm(this) == otherList#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { otherList#trigger(Heap, otherList(this)) }
  otherList#everUsed(otherList(this))
);

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(this: Ref): Field PredicateType_list FrameType;
function  list#sm(this: Ref): Field PredicateType_list PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(list(this)) }
  PredicateMaskField(list(this)) == list#sm(this)
);
axiom (forall this: Ref ::
  { list(this) }
  IsPredicateField(list(this))
);
axiom (forall this: Ref ::
  { list(this) }
  getPredWandId(list(this)) == 3
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { list(this), list(this2) }
  list(this) == list(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { list#sm(this), list#sm(this2) }
  list#sm(this) == list#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { list#trigger(Heap, list(this)) }
  list#everUsed(list(this))
);

procedure list#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elem:=Mask[this, elem] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0271.vpr@36.1--39.2) [84945]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0271.vpr@36.1--39.2) [84946]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[this, next]):=Mask[null, list(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate list2
// ==================================================

type PredicateType_list2;
function  list2(this: Ref): Field PredicateType_list2 FrameType;
function  list2#sm(this: Ref): Field PredicateType_list2 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(list2(this)) }
  PredicateMaskField(list2(this)) == list2#sm(this)
);
axiom (forall this: Ref ::
  { list2(this) }
  IsPredicateField(list2(this))
);
axiom (forall this: Ref ::
  { list2(this) }
  getPredWandId(list2(this)) == 4
);
function  list2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { list2(this), list2(this2) }
  list2(this) == list2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { list2#sm(this), list2#sm(this2) }
  list2#sm(this) == list2#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { list2#trigger(Heap, list2(this)) }
  list2#everUsed(list2(this))
);

procedure list2#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elem2:=Mask[this, elem2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next2:=Mask[this, next2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next2 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next2 (0271.vpr@41.1--44.2) [84947]"}
        HasDirectPerm(Mask, this, next2);
    if (Heap[this, next2] != null) {
      
      // -- Check definedness of acc(list2(this.next2), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next2 (0271.vpr@41.1--44.2) [84948]"}
          HasDirectPerm(Mask, this, next2);
      perm := FullPerm;
      Mask := Mask[null, list2(Heap[this, next2]):=Mask[null, list2(Heap[this, next2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method clientFoo
// ==================================================

procedure clientFoo(s_1: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_11: int;
  var j_9: int;
  var i_12: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_5_1: int;
  var j_2_2: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { s[i], s[j] }
  //     i >= 0 && (i < |s| && (j >= 0 && (j < |s| && i != j))) ==> s[i] != s[j]) -- 0271.vpr@11.2--11.97
    
    // -- Check definedness of (forall i: Int, j: Int :: { s[i], s[j] } i >= 0 && (i < |s| && (j >= 0 && (j < |s| && i != j))) ==> s[i] != s[j])
      if (*) {
        if (i_11 >= 0 && (i_11 < Seq#Length(s_1) && (j_9 >= 0 && (j_9 < Seq#Length(s_1) && i_11 != j_9)))) {
          assert {:msg "  Inhale might fail. Index s[i] into s might be negative. (0271.vpr@11.9--11.97) [84949]"}
            i_11 >= 0;
          assert {:msg "  Inhale might fail. Index s[i] into s might exceed sequence length. (0271.vpr@11.9--11.97) [84950]"}
            i_11 < Seq#Length(s_1);
          assert {:msg "  Inhale might fail. Index s[j] into s might be negative. (0271.vpr@11.9--11.97) [84951]"}
            j_9 >= 0;
          assert {:msg "  Inhale might fail. Index s[j] into s might exceed sequence length. (0271.vpr@11.9--11.97) [84952]"}
            j_9 < Seq#Length(s_1);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(s_1, i_1), Seq#Index(s_1, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(s_1) && (j_1 >= 0 && (j_1 < Seq#Length(s_1) && i_1 != j_1))) ==> Seq#Index(s_1, i_1) != Seq#Index(s_1, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { s[i] }
  //     0 <= i && i < |s| ==> acc(P(s[i]), write)) -- 0271.vpr@12.5--12.67
    
    // -- Check definedness of (forall i: Int :: { s[i] } 0 <= i && i < |s| ==> acc(P(s[i]), write))
      if (*) {
        if (0 <= i_12 && i_12 < Seq#Length(s_1)) {
          assert {:msg "  Inhale might fail. Index s[i] into s might be negative. (0271.vpr@12.12--12.67) [84953]"}
            i_12 >= 0;
          assert {:msg "  Inhale might fail. Index s[i] into s might exceed sequence length. (0271.vpr@12.12--12.67) [84954]"}
            i_12 < Seq#Length(s_1);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(s[i]), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(s[i]) might not be injective. (0271.vpr@12.12--12.67) [84955]"}
        (forall i_3_2: int, i_3_3: int ::
        { neverTriggered3(i_3_2), neverTriggered3(i_3_3) }
        (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < Seq#Length(s_1))) && (0 <= i_3_3 && i_3_3 < Seq#Length(s_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_3_2) != Seq#Index(s_1, i_3_3)
      );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { Heap[null, P(Seq#Index(s_1, i_3_2))] } { Mask[null, P(Seq#Index(s_1, i_3_2))] } { Seq#Index(s_1, i_3_2) }
        (0 <= i_3_2 && i_3_2 < Seq#Length(s_1)) && NoPerm < FullPerm ==> invRecv3(Seq#Index(s_1, i_3_2)) == i_3_2 && qpRange3(Seq#Index(s_1, i_3_2))
      );
      assume (forall self: Ref ::
        { invRecv3(self) }
        ((0 <= invRecv3(self) && invRecv3(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange3(self) ==> Seq#Index(s_1, invRecv3(self)) == self
      );
    
    // -- Define updated permissions
      assume (forall self: Ref ::
        { QPMask[null, P(self)] }
        ((0 <= invRecv3(self) && invRecv3(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange3(self) ==> (NoPerm < FullPerm ==> Seq#Index(s_1, invRecv3(self)) == self) && QPMask[null, P(self)] == Mask[null, P(self)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall self: Ref ::
        { QPMask[null, P(self)] }
        !(((0 <= invRecv3(self) && invRecv3(self) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange3(self)) ==> QPMask[null, P(self)] == Mask[null, P(self)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo(s) -- 0271.vpr@13.5--13.18
    assume state(Heap, Mask);
    
    // -- Check definedness of foo(s)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (i_5_1 >= 0 && (i_5_1 < Seq#Length(s_1) && (j_2_2 >= 0 && (j_2_2 < Seq#Length(s_1) && i_5_1 != j_2_2)))) {
            assert {:msg "  Precondition of function foo might not hold. Assertion s[i] != s[j] might not hold. (0271.vpr@13.12--13.18) [84956]"}
              Seq#Index(s_1, i_5_1) != Seq#Index(s_1, j_2_2);
          }
          assume false;
        }
        assume (forall i_6_1: int, j_3_1_1: int ::
          { Seq#Index(s_1, i_6_1), Seq#Index(s_1, j_3_1_1) }
          i_6_1 >= 0 && (i_6_1 < Seq#Length(s_1) && (j_3_1_1 >= 0 && (j_3_1_1 < Seq#Length(s_1) && i_6_1 != j_3_1_1))) ==> Seq#Index(s_1, i_6_1) != Seq#Index(s_1, j_3_1_1)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(P(s[i]), write) is injective
          assert {:msg "  Precondition of function foo might not hold. Quantified resource P(s[i]) might not be injective. (0271.vpr@13.12--13.18) [84957]"}
            (forall i_7_1: int, i_7_2: int ::
            { neverTriggered4(i_7_1), neverTriggered4(i_7_2) }
            (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < Seq#Length(s_1))) && (0 <= i_7_2 && i_7_2 < Seq#Length(s_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(s_1, i_7_1) != Seq#Index(s_1, i_7_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access P(s[i]) (0271.vpr@13.12--13.18) [84958]"}
            (forall i_7_1: int ::
            { Heap[null, P(Seq#Index(s_1, i_7_1))] } { Mask[null, P(Seq#Index(s_1, i_7_1))] } { Seq#Index(s_1, i_7_1) }
            0 <= i_7_1 && i_7_1 < Seq#Length(s_1) ==> FullPerm > NoPerm ==> Mask[null, P(Seq#Index(s_1, i_7_1))] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(s[i]), write)
          assume (forall i_7_1: int ::
            { Heap[null, P(Seq#Index(s_1, i_7_1))] } { Mask[null, P(Seq#Index(s_1, i_7_1))] } { Seq#Index(s_1, i_7_1) }
            (0 <= i_7_1 && i_7_1 < Seq#Length(s_1)) && NoPerm < FullPerm ==> invRecv4(Seq#Index(s_1, i_7_1)) == i_7_1 && qpRange4(Seq#Index(s_1, i_7_1))
          );
          assume (forall self_1_2: Ref ::
            { invRecv4(self_1_2) }
            ((0 <= invRecv4(self_1_2) && invRecv4(self_1_2) < Seq#Length(s_1)) && NoPerm < FullPerm) && qpRange4(self_1_2) ==> Seq#Index(s_1, invRecv4(self_1_2)) == self_1_2
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_1(Heap, s_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}