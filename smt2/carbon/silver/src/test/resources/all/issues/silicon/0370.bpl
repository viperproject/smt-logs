// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:02:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0370.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0370-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
function  neverTriggered2(k_1_1: int): bool;
function  neverTriggered3(k_2_1: int): bool;
function  neverTriggered4(k_1_1: int): bool;
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
// - height 0: getVCTOption1
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
// Translation of domain VCTOption
// ==================================================

// The type for domain VCTOption
type VCTOptionDomainType T;

// Translation of domain function VCTNone
function  VCTNone<T>(): VCTOptionDomainType T;

// Translation of domain function getVCTOption
function  getVCTOption<T>(o_194: (VCTOptionDomainType T)): T;

// ==================================================
// Translation of all fields
// ==================================================

const unique Integer__item: Field NormalField int;
axiom !IsPredicateField(Integer__item);
axiom !IsWandField(Integer__item);

// ==================================================
// Translation of function getVCTOption1
// ==================================================

// Uninterpreted function definitions
function  getVCTOption1(Heap: HeapType, x: (VCTOptionDomainType (Seq Ref))): Seq Ref;
function  getVCTOption1'(Heap: HeapType, x: (VCTOptionDomainType (Seq Ref))): Seq Ref;
axiom (forall Heap: HeapType, x: (VCTOptionDomainType (Seq Ref)) ::
  { getVCTOption1(Heap, x) }
  getVCTOption1(Heap, x) == getVCTOption1'(Heap, x) && dummyFunction(getVCTOption1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: (VCTOptionDomainType (Seq Ref)) ::
  { getVCTOption1'(Heap, x) }
  dummyFunction(getVCTOption1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: (VCTOptionDomainType (Seq Ref)) ::
  { state(Heap, Mask), getVCTOption1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x != (VCTNone(): VCTOptionDomainType (Seq Ref)) ==> getVCTOption1(Heap, x) == (getVCTOption(x): Seq Ref)
);

// Framing axioms
function  getVCTOption1#frame(frame: FrameType, x: (VCTOptionDomainType (Seq Ref))): Seq Ref;
axiom (forall Heap: HeapType, Mask: MaskType, x: (VCTOptionDomainType (Seq Ref)) ::
  { state(Heap, Mask), getVCTOption1'(Heap, x) }
  state(Heap, Mask) ==> getVCTOption1'(Heap, x) == getVCTOption1#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  getVCTOption1#trigger(frame: FrameType, x: (VCTOptionDomainType (Seq Ref))): bool;

// State-independent trigger function
function  getVCTOption1#triggerStateless(x: (VCTOptionDomainType (Seq Ref))): Seq Ref;

// Check contract well-formedness and postcondition
procedure getVCTOption1#definedness(x: (VCTOptionDomainType (Seq Ref))) returns (Result: (Seq Ref))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume x != (VCTNone(): VCTOptionDomainType (Seq Ref));
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (getVCTOption(x): Seq Ref);
}

// ==================================================
// Translation of method barrier_check_2
// ==================================================

procedure barrier_check_2(diz: Ref, current_thread_id: int, output: (VCTOptionDomainType (Seq Ref))) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_5: int;
  var tid_24: int;
  var QPMask: MaskType;
  var tid_20: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_7: int;
  var wildcard: real where wildcard > 0.000000000;
  var tid_4: int;
  var j_7: int;
  var tid_6_1: int;
  var j_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume (VCTNone(): VCTOptionDomainType (Seq Ref)) != output;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { getVCTOption1(output)[i], getVCTOption1(output)[j] } i >= 0 && (i < |getVCTOption1(output)| && (j >= 0 && (j < |getVCTOption1(output)| && i != j))) ==> getVCTOption1(output)[i] != getVCTOption1(output)[j])
      if (*) {
        if (i_14 >= 0) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@20.50--20.71) [196588]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          if (i_14 < Seq#Length(getVCTOption1(Heap, output))) {
            if (j_5 >= 0) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@20.91--20.112) [196589]"}
                  output != (VCTNone(): VCTOptionDomainType (Seq Ref));
                // Stop execution
                assume false;
              }
            }
          }
        }
        if (i_14 >= 0 && (i_14 < Seq#Length(getVCTOption1(Heap, output)) && (j_5 >= 0 && (j_5 < Seq#Length(getVCTOption1(Heap, output)) && i_14 != j_5)))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@20.128--20.149) [196590]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[i] into getVCTOption1(output) might be negative. (0370.vpr@20.12--20.180) [196591]"}
            i_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[i] into getVCTOption1(output) might exceed sequence length. (0370.vpr@20.12--20.180) [196592]"}
            i_14 < Seq#Length(getVCTOption1(Heap, output));
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@20.156--20.177) [196593]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[j] into getVCTOption1(output) might be negative. (0370.vpr@20.12--20.180) [196594]"}
            j_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[j] into getVCTOption1(output) might exceed sequence length. (0370.vpr@20.12--20.180) [196595]"}
            j_5 < Seq#Length(getVCTOption1(Heap, output));
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(getVCTOption1#frame(EmptyFrame, output), i_1), Seq#Index(getVCTOption1#frame(EmptyFrame, output), j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(getVCTOption1(Heap, output)) && (j_1 >= 0 && (j_1 < Seq#Length(getVCTOption1(Heap, output)) && i_1 != j_1))) ==> Seq#Index(getVCTOption1(Heap, output), i_1) != Seq#Index(getVCTOption1(Heap, output), j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { getVCTOption1(output)[tid] } 0 <= tid && tid < |getVCTOption1(output)| ==> acc(getVCTOption1(output)[tid].Integer__item, write))
      if (*) {
        if (0 <= tid_24) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@21.51--21.72) [196596]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
        }
        if (0 <= tid_24 && tid_24 < Seq#Length(getVCTOption1(Heap, output))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@21.82--21.103) [196597]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[tid] into getVCTOption1(output) might be negative. (0370.vpr@21.13--21.130) [196598]"}
            tid_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[tid] into getVCTOption1(output) might exceed sequence length. (0370.vpr@21.13--21.130) [196599]"}
            tid_24 < Seq#Length(getVCTOption1(Heap, output));
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource getVCTOption1(output)[tid].Integer__item might not be injective. (0370.vpr@21.13--21.130) [196600]"}
      (forall tid_1: int, tid_1_1: int ::
      
      (((tid_1 != tid_1_1 && (0 <= tid_1 && tid_1 < Seq#Length(getVCTOption1(Heap, output)))) && (0 <= tid_1_1 && tid_1_1 < Seq#Length(getVCTOption1(Heap, output)))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(getVCTOption1(Heap, output), tid_1) != Seq#Index(getVCTOption1(Heap, output), tid_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall tid_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), tid_1) } { Seq#Index(getVCTOption1#frame(EmptyFrame, output), tid_1) }
        (0 <= tid_1 && tid_1 < Seq#Length(getVCTOption1(Heap, output))) && NoPerm < FullPerm ==> qpRange1(Seq#Index(getVCTOption1(Heap, output), tid_1)) && invRecv1(Seq#Index(getVCTOption1(Heap, output), tid_1)) == tid_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(getVCTOption1(Heap, output))) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(getVCTOption1(Heap, output), invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall tid_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), tid_1) } { Seq#Index(getVCTOption1#frame(EmptyFrame, output), tid_1) }
        0 <= tid_1 && tid_1 < Seq#Length(getVCTOption1(Heap, output)) ==> Seq#Index(getVCTOption1(Heap, output), tid_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(getVCTOption1(Heap, output))) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(getVCTOption1(Heap, output), invRecv1(o_4)) == o_4) && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < Seq#Length(getVCTOption1(Heap, output))) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall tid: Int :: { getVCTOption1(output)[tid] } 0 <= tid && tid < |getVCTOption1(output)| ==> getVCTOption1(output)[tid].Integer__item == tid)
      if (*) {
        if (0 <= tid_20) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@22.51--22.72) [196601]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
        }
        if (0 <= tid_20 && tid_20 < Seq#Length(getVCTOption1(Heap, output))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@22.78--22.99) [196602]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[tid] into getVCTOption1(output) might be negative. (0370.vpr@22.13--22.125) [196603]"}
            tid_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[tid] into getVCTOption1(output) might exceed sequence length. (0370.vpr@22.13--22.125) [196604]"}
            tid_20 < Seq#Length(getVCTOption1(Heap, output));
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access getVCTOption1(output)[tid].Integer__item (0370.vpr@22.13--22.125) [196605]"}
            HasDirectPerm(Mask, Seq#Index(getVCTOption1(Heap, output), tid_20), Integer__item);
        }
        assume false;
      }
    assume (forall tid_3: int ::
      { Seq#Index(getVCTOption1#frame(EmptyFrame, output), tid_3) }
      0 <= tid_3 && tid_3 < Seq#Length(getVCTOption1(Heap, output)) ==> Heap[Seq#Index(getVCTOption1(Heap, output), tid_3), Integer__item] == tid_3
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
    assume (VCTNone(): VCTOptionDomainType (Seq Ref)) != output;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { getVCTOption1(output)[k].Integer__item } 0 <= k && k < |getVCTOption1(output)| ==> acc(getVCTOption1(output)[k].Integer__item, wildcard))
      if (*) {
        if (0 <= k_7) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@24.85--24.106) [196606]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
        }
        if (0 <= k_7 && k_7 < Seq#Length(getVCTOption1(PostHeap, output))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@24.116--24.137) [196607]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[k] into getVCTOption1(output) might be negative. (0370.vpr@24.12--24.165) [196608]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[k] into getVCTOption1(output) might exceed sequence length. (0370.vpr@24.12--24.165) [196609]"}
            k_7 < Seq#Length(getVCTOption1(PostHeap, output));
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource getVCTOption1(output)[k].Integer__item might not be injective. (0370.vpr@24.12--24.165) [196610]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(PostHeap, output)))) && (0 <= k_1_2 && k_1_2 < Seq#Length(getVCTOption1(PostHeap, output)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(getVCTOption1(PostHeap, output), k_1_1) != Seq#Index(getVCTOption1(PostHeap, output), k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1) } { PostHeap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1), Integer__item] }
        0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(PostHeap, output)) ==> qpRange2(Seq#Index(getVCTOption1(PostHeap, output), k_1_1)) && invRecv2(Seq#Index(getVCTOption1(PostHeap, output), k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(getVCTOption1(PostHeap, output))) && qpRange2(o_4) ==> Seq#Index(getVCTOption1(PostHeap, output), invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1) } { PostHeap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1), Integer__item] }
        0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(PostHeap, output)) ==> Seq#Index(getVCTOption1(PostHeap, output), k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(getVCTOption1(PostHeap, output))) && qpRange2(o_4) ==> Seq#Index(getVCTOption1(PostHeap, output), invRecv2(o_4)) == o_4 && PostMask[o_4, Integer__item] < QPMask[o_4, Integer__item]) && (!((0 <= invRecv2(o_4) && invRecv2(o_4) < Seq#Length(getVCTOption1(PostHeap, output))) && qpRange2(o_4)) ==> QPMask[o_4, Integer__item] == PostMask[o_4, Integer__item])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall tid: Int, j: Int ::0 <= tid && (tid < |getVCTOption1(output)| && (0 <= j && j < |getVCTOption1(output)|)) ==> getVCTOption1(output)[j].Integer__item == tid)
      if (*) {
        if (0 <= tid_4) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@25.58--25.79) [196611]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          if (tid_4 < Seq#Length(getVCTOption1(PostHeap, output))) {
            if (0 <= j_7) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := PostMask;
                ExhaleWellDef0Heap := PostHeap;
                assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@25.100--25.121) [196612]"}
                  output != (VCTNone(): VCTOptionDomainType (Seq Ref));
                // Stop execution
                assume false;
              }
            }
          }
        }
        if (0 <= tid_4 && (tid_4 < Seq#Length(getVCTOption1(PostHeap, output)) && (0 <= j_7 && j_7 < Seq#Length(getVCTOption1(PostHeap, output))))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@25.128--25.149) [196613]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[j] into getVCTOption1(output) might be negative. (0370.vpr@25.12--25.173) [196614]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index getVCTOption1(output)[j] into getVCTOption1(output) might exceed sequence length. (0370.vpr@25.12--25.173) [196615]"}
            j_7 < Seq#Length(getVCTOption1(PostHeap, output));
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access getVCTOption1(output)[j].Integer__item (0370.vpr@25.12--25.173) [196616]"}
            HasDirectPerm(PostMask, Seq#Index(getVCTOption1(PostHeap, output), j_7), Integer__item);
        }
        assume false;
      }
    assume (forall tid_5: int, j_3_1: int ::
      
      0 <= tid_5 && (tid_5 < Seq#Length(getVCTOption1(PostHeap, output)) && (0 <= j_3_1 && j_3_1 < Seq#Length(getVCTOption1(PostHeap, output)))) ==> PostHeap[Seq#Index(getVCTOption1(PostHeap, output), j_3_1), Integer__item] == tid_5
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- 0370.vpr@27.3--27.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of barrier_check_2 might not hold. Assertion (VCTNone(): VCTOption[Seq[Ref]]) != output might not hold. (0370.vpr@23.11--23.30) [196617]"}
      (VCTNone(): VCTOptionDomainType (Seq Ref)) != output;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of barrier_check_2 might not hold. There might be insufficient permission to access getVCTOption1(output)[k].Integer__item (0370.vpr@24.12--24.165) [196618]"}
      (forall k_2_1: int ::
      
      0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output)) ==> Mask[Seq#Index(getVCTOption1(Heap, output), k_2_1), Integer__item] > NoPerm
    );
    assume (forall k_2_1: int ::
      
      0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output)) ==> wildcard < Mask[Seq#Index(getVCTOption1(Heap, output), k_2_1), Integer__item]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of barrier_check_2 might not hold. Fraction wildcard might be negative. (0370.vpr@24.12--24.165) [196619]"}
        (forall k_2_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1) } { Heap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1), Integer__item] }
        (0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output))) && dummyFunction(Heap[Seq#Index(getVCTOption1(Heap, output), k_2_1), Integer__item]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver getVCTOption1(output)[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource getVCTOption1(output)[k].Integer__item might not be injective. (0370.vpr@24.12--24.165) [196620]"}
        (forall k_2_1: int, k_2_2: int ::
        { neverTriggered3(k_2_1), neverTriggered3(k_2_2) }
        (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output)))) && (0 <= k_2_2 && k_2_2 < Seq#Length(getVCTOption1(Heap, output)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(getVCTOption1(Heap, output), k_2_1) != Seq#Index(getVCTOption1(Heap, output), k_2_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of barrier_check_2 might not hold. There might be insufficient permission to access getVCTOption1(output)[k].Integer__item (0370.vpr@24.12--24.165) [196621]"}
        (forall k_2_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1) } { Heap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1), Integer__item] }
        0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output)) ==> Mask[Seq#Index(getVCTOption1(Heap, output), k_2_1), Integer__item] > NoPerm
      );
    
    // -- assumptions for inverse of receiver getVCTOption1(output)[k]
      assume (forall k_2_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1) } { Heap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_2_1), Integer__item] }
        (0 <= k_2_1 && k_2_1 < Seq#Length(getVCTOption1(Heap, output))) && NoPerm < wildcard ==> qpRange3(Seq#Index(getVCTOption1(Heap, output), k_2_1)) && invRecv3(Seq#Index(getVCTOption1(Heap, output), k_2_1)) == k_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(getVCTOption1(Heap, output))) && (NoPerm < wildcard && qpRange3(o_4)) ==> Seq#Index(getVCTOption1(Heap, output), invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer__item
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(getVCTOption1(Heap, output))) && (NoPerm < wildcard && qpRange3(o_4)) ==> Seq#Index(getVCTOption1(Heap, output), invRecv3(o_4)) == o_4 && QPMask[o_4, Integer__item] == Mask[o_4, Integer__item] - wildcard) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < Seq#Length(getVCTOption1(Heap, output))) && (NoPerm < wildcard && qpRange3(o_4))) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= tid_6_1 && (tid_6_1 < Seq#Length(getVCTOption1(Heap, output)) && (0 <= j_4_1 && j_4_1 < Seq#Length(getVCTOption1(Heap, output))))) {
        assert {:msg "  Postcondition of barrier_check_2 might not hold. Assertion getVCTOption1(output)[j].Integer__item == tid might not hold. (0370.vpr@25.12--25.173) [196622]"}
          Heap[Seq#Index(getVCTOption1(Heap, output), j_4_1), Integer__item] == tid_6_1;
      }
      assume false;
    }
    assume (forall tid_7_1_1: int, j_5_1_1: int ::
      
      0 <= tid_7_1_1 && (tid_7_1_1 < Seq#Length(getVCTOption1(Heap, output)) && (0 <= j_5_1_1 && j_5_1_1 < Seq#Length(getVCTOption1(Heap, output)))) ==> Heap[Seq#Index(getVCTOption1(Heap, output), j_5_1_1), Integer__item] == tid_7_1_1
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method barrier_check_2_essence
// ==================================================

procedure barrier_check_2_essence(diz: Ref, current_thread_id: int, output: (VCTOptionDomainType (Seq Ref))) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_8: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_3: int;
  var k_15: int;
  var QPMask: MaskType;
  var wildcard: real;
  var tid_10: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var j_4: int;
  var tid_1: int;
  var j_3_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (VCTNone(): VCTOption[Seq[Ref]]) != output -- 0370.vpr@32.3--32.29
    assume (VCTNone(): VCTOptionDomainType (Seq Ref)) != output;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { getVCTOption1(output)[i], getVCTOption1(output)[j] }
  //     i >= 0 &&
  //     (i < |getVCTOption1(output)| &&
  //     (j >= 0 && (j < |getVCTOption1(output)| && i != j))) ==>
  //     getVCTOption1(output)[i] != getVCTOption1(output)[j]) -- 0370.vpr@34.3--34.178
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { getVCTOption1(output)[i], getVCTOption1(output)[j] } i >= 0 && (i < |getVCTOption1(output)| && (j >= 0 && (j < |getVCTOption1(output)| && i != j))) ==> getVCTOption1(output)[i] != getVCTOption1(output)[j])
      if (*) {
        if (i_8 >= 0) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@34.48--34.69) [196623]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          if (i_8 < Seq#Length(getVCTOption1(Heap, output))) {
            if (j_3 >= 0) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@34.89--34.110) [196624]"}
                  output != (VCTNone(): VCTOptionDomainType (Seq Ref));
                // Stop execution
                assume false;
              }
            }
          }
        }
        if (i_8 >= 0 && (i_8 < Seq#Length(getVCTOption1(Heap, output)) && (j_3 >= 0 && (j_3 < Seq#Length(getVCTOption1(Heap, output)) && i_8 != j_3)))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@34.126--34.147) [196625]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[i] into getVCTOption1(output) might be negative. (0370.vpr@34.10--34.178) [196626]"}
            i_8 >= 0;
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[i] into getVCTOption1(output) might exceed sequence length. (0370.vpr@34.10--34.178) [196627]"}
            i_8 < Seq#Length(getVCTOption1(Heap, output));
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@34.154--34.175) [196628]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[j] into getVCTOption1(output) might be negative. (0370.vpr@34.10--34.178) [196629]"}
            j_3 >= 0;
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[j] into getVCTOption1(output) might exceed sequence length. (0370.vpr@34.10--34.178) [196630]"}
            j_3 < Seq#Length(getVCTOption1(Heap, output));
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(getVCTOption1#frame(EmptyFrame, output), i_1), Seq#Index(getVCTOption1#frame(EmptyFrame, output), j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(getVCTOption1(Heap, output)) && (j_1 >= 0 && (j_1 < Seq#Length(getVCTOption1(Heap, output)) && i_1 != j_1))) ==> Seq#Index(getVCTOption1(Heap, output), i_1) != Seq#Index(getVCTOption1(Heap, output), j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall k: Int ::
  //     { getVCTOption1(output)[k].Integer__item }
  //     0 <= k && k < |getVCTOption1(output)| ==>
  //     acc(getVCTOption1(output)[k].Integer__item, wildcard)) -- 0370.vpr@36.3--39.62
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { getVCTOption1(output)[k].Integer__item } 0 <= k && k < |getVCTOption1(output)| ==> acc(getVCTOption1(output)[k].Integer__item, wildcard))
      if (*) {
        if (0 <= k_15) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@38.22--38.43) [196631]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
        }
        if (0 <= k_15 && k_15 < Seq#Length(getVCTOption1(Heap, output))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@39.13--39.34) [196632]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[k] into getVCTOption1(output) might be negative. (0370.vpr@37.5--39.62) [196633]"}
            k_15 >= 0;
          assert {:msg "  Inhale might fail. Index getVCTOption1(output)[k] into getVCTOption1(output) might exceed sequence length. (0370.vpr@37.5--39.62) [196634]"}
            k_15 < Seq#Length(getVCTOption1(Heap, output));
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource getVCTOption1(output)[k].Integer__item might not be injective. (0370.vpr@37.5--39.62) [196635]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(Heap, output)))) && (0 <= k_1_2 && k_1_2 < Seq#Length(getVCTOption1(Heap, output)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(getVCTOption1(Heap, output), k_1_1) != Seq#Index(getVCTOption1(Heap, output), k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1) } { Heap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1), Integer__item] }
        0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(Heap, output)) ==> qpRange4(Seq#Index(getVCTOption1(Heap, output), k_1_1)) && invRecv4(Seq#Index(getVCTOption1(Heap, output), k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(getVCTOption1(Heap, output))) && qpRange4(o_4) ==> Seq#Index(getVCTOption1(Heap, output), invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1) } { Heap[Seq#Index(getVCTOption1#frame(EmptyFrame, output), k_1_1), Integer__item] }
        0 <= k_1_1 && k_1_1 < Seq#Length(getVCTOption1(Heap, output)) ==> Seq#Index(getVCTOption1(Heap, output), k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer__item] }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(getVCTOption1(Heap, output))) && qpRange4(o_4) ==> Seq#Index(getVCTOption1(Heap, output), invRecv4(o_4)) == o_4 && Mask[o_4, Integer__item] < QPMask[o_4, Integer__item]) && (!((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(getVCTOption1(Heap, output))) && qpRange4(o_4)) ==> QPMask[o_4, Integer__item] == Mask[o_4, Integer__item])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer__item ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall tid: Int, j: Int ::0 <= tid &&
  //     (tid < |getVCTOption1(output)| &&
  //     (0 <= j && j < |getVCTOption1(output)|)) ==>
  //     getVCTOption1(output)[j].Integer__item == tid) -- 0370.vpr@41.3--46.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall tid: Int, j: Int ::0 <= tid && (tid < |getVCTOption1(output)| && (0 <= j && j < |getVCTOption1(output)|)) ==> getVCTOption1(output)[j].Integer__item == tid)
      if (*) {
        if (0 <= tid_10) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@44.27--44.48) [196636]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          if (tid_10 < Seq#Length(getVCTOption1(Heap, output))) {
            if (0 <= j_4) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@45.27--45.48) [196637]"}
                  output != (VCTNone(): VCTOptionDomainType (Seq Ref));
                // Stop execution
                assume false;
              }
            }
          }
        }
        if (0 <= tid_10 && (tid_10 < Seq#Length(getVCTOption1(Heap, output)) && (0 <= j_4 && j_4 < Seq#Length(getVCTOption1(Heap, output))))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function getVCTOption1 might not hold. Assertion output != (VCTNone(): VCTOption[Seq[Ref]]) might not hold. (0370.vpr@46.9--46.30) [196638]"}
              output != (VCTNone(): VCTOptionDomainType (Seq Ref));
            // Stop execution
            assume false;
          }
          assert {:msg "  Exhale might fail. Index getVCTOption1(output)[j] into getVCTOption1(output) might be negative. (0370.vpr@43.5--46.54) [196639]"}
            j_4 >= 0;
          assert {:msg "  Exhale might fail. Index getVCTOption1(output)[j] into getVCTOption1(output) might exceed sequence length. (0370.vpr@43.5--46.54) [196640]"}
            j_4 < Seq#Length(getVCTOption1(Heap, output));
          assert {:msg "  Exhale might fail. There might be insufficient permission to access getVCTOption1(output)[j].Integer__item (0370.vpr@43.5--46.54) [196641]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(getVCTOption1(Heap, output), j_4), Integer__item);
        }
        assume false;
      }
    if (*) {
      if (0 <= tid_1 && (tid_1 < Seq#Length(getVCTOption1(Heap, output)) && (0 <= j_3_1 && j_3_1 < Seq#Length(getVCTOption1(Heap, output))))) {
        assert {:msg "  Exhale might fail. Assertion getVCTOption1(output)[j].Integer__item == tid might not hold. (0370.vpr@43.5--46.54) [196642]"}
          Heap[Seq#Index(getVCTOption1(Heap, output), j_3_1), Integer__item] == tid_1;
      }
      assume false;
    }
    assume (forall tid_2_1: int, j_4_1_1: int ::
      
      0 <= tid_2_1 && (tid_2_1 < Seq#Length(getVCTOption1(Heap, output)) && (0 <= j_4_1_1 && j_4_1_1 < Seq#Length(getVCTOption1(Heap, output)))) ==> Heap[Seq#Index(getVCTOption1(Heap, output), j_4_1_1), Integer__item] == tid_2_1
    );
    assume state(Heap, Mask);
}