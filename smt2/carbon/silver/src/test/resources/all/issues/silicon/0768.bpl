// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:45:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0768.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0768-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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

function  neverTriggered1(i_9_1: int): bool;
function  neverTriggered2(i_13_1: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i_3: int): bool;
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
// - height 4: ptr_add
// - height 3: ptr_deref
// - height 2: id
// - height 1: inp_to_seq_2
// - height 0: leafCount
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
// Translation of domain block
// ==================================================

// The type for domain block
type blockDomainType;

// Translation of domain function block_length
function  block_length(b_102: blockDomainType): int;

// Translation of domain function loc
function  loc(b_102: blockDomainType, i_79: int): Ref;

// Translation of domain function loc_inv_1
function  loc_inv_1(r_3: Ref): blockDomainType;

// Translation of domain function loc_inv_2
function  loc_inv_2(r_3: Ref): int;

// Translation of anonymous domain axiom
axiom (forall b_24: blockDomainType ::
  { (block_length(b_24): int) }
  (block_length(b_24): int) >= 0
);

// Translation of anonymous domain axiom
axiom (forall b_24: blockDomainType, i: int ::
  { (loc(b_24, i): Ref) }
  (loc_inv_1((loc(b_24, i): Ref)): blockDomainType) == b_24 && (loc_inv_2((loc(b_24, i): Ref)): int) == i
);

// ==================================================
// Translation of domain pointer
// ==================================================

// The type for domain pointer
type pointerDomainType;

// Translation of domain function pointer_of
function  pointer_of(b_102: blockDomainType, offset_1: int): pointerDomainType;

// Translation of domain function pointer_block
function  pointer_block(p_16: pointerDomainType): blockDomainType;

// Translation of domain function pointer_offset
function  pointer_offset(p_16: pointerDomainType): int;

// Translation of anonymous domain axiom
axiom (forall p_1: pointerDomainType ::
  { (pointer_offset(p_1): int) } { (block_length((pointer_block(p_1): blockDomainType)): int) }
  (pointer_offset(p_1): int) >= 0 && (pointer_offset(p_1): int) < (block_length((pointer_block(p_1): blockDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall b_24: blockDomainType, offset: int ::
  { (pointer_block((pointer_of(b_24, offset): pointerDomainType)): blockDomainType), (pointer_offset((pointer_of(b_24, offset): pointerDomainType)): int) }
  (pointer_block((pointer_of(b_24, offset): pointerDomainType)): blockDomainType) == b_24 && (pointer_offset((pointer_of(b_24, offset): pointerDomainType)): int) == offset
);

// ==================================================
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
);

// ==================================================
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of domain tree
// ==================================================

// The type for domain tree
type treeDomainType;

// Translation of domain function leaf
function  leaf(value_2: int): treeDomainType;

// Translation of domain function node
function  node_1(left_2: treeDomainType, right_2: treeDomainType): treeDomainType;

// Translation of domain function get_tree_value
function  get_tree_value(t_9: treeDomainType): int;

// Translation of domain function get_tree_left
function  get_tree_left(t_9: treeDomainType): treeDomainType;

// Translation of domain function get_tree_right
function  get_tree_right(t_9: treeDomainType): treeDomainType;

// Translation of domain function tree_tag
function  tree_tag(t_9: treeDomainType): int;

// Translation of anonymous domain axiom
axiom (forall value_1: int ::
  { (leaf(value_1): treeDomainType) }
  value_1 == (get_tree_value((leaf(value_1): treeDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall left_1: treeDomainType, right: treeDomainType ::
  { (node_1(left_1, right): treeDomainType) }
  left_1 == (get_tree_left((node_1(left_1, right): treeDomainType)): treeDomainType)
);

// Translation of anonymous domain axiom
axiom (forall left_1: treeDomainType, right: treeDomainType ::
  { (node_1(left_1, right): treeDomainType) }
  right == (get_tree_right((node_1(left_1, right): treeDomainType)): treeDomainType)
);

// Translation of anonymous domain axiom
axiom (forall value_1: int ::
  { (leaf(value_1): treeDomainType) }
  (tree_tag((leaf(value_1): treeDomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall left_1: treeDomainType, right: treeDomainType ::
  { (node_1(left_1, right): treeDomainType) }
  (tree_tag((node_1(left_1, right): treeDomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall t_2: treeDomainType ::
  { (tree_tag(t_2): int) } { (get_tree_left(t_2): treeDomainType) } { (get_tree_right(t_2): treeDomainType) }
  t_2 == (leaf((get_tree_value(t_2): int)): treeDomainType) || t_2 == (node_1((get_tree_left(t_2): treeDomainType), (get_tree_right(t_2): treeDomainType)): treeDomainType)
);

// ==================================================
// Translation of domain treeWellFoundedOrder
// ==================================================

// The type for domain treeWellFoundedOrder
type treeWellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall right_0: treeDomainType, left_1: treeDomainType ::
  { (node_1(left_1, right_0): treeDomainType) }
  (decreasing(right_0, (node_1(left_1, right_0): treeDomainType)): bool)
) && (forall left_0: treeDomainType, right: treeDomainType ::
  { (node_1(left_0, right): treeDomainType) }
  (decreasing(left_0, (node_1(left_0, right): treeDomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: treeDomainType, v2: treeDomainType, v3: treeDomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: treeDomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique ref_2: Field NormalField Ref;
axiom !IsPredicateField(ref_2);
axiom !IsWandField(ref_2);
const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);

// ==================================================
// Translation of function ptr_deref
// ==================================================

// Uninterpreted function definitions
function  ptr_deref(Heap: HeapType, p_1: pointerDomainType): Ref;
function  ptr_deref'(Heap: HeapType, p_1: pointerDomainType): Ref;
axiom (forall Heap: HeapType, p_1: pointerDomainType ::
  { ptr_deref(Heap, p_1) }
  ptr_deref(Heap, p_1) == ptr_deref'(Heap, p_1) && dummyFunction(ptr_deref#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: pointerDomainType ::
  { ptr_deref'(Heap, p_1) }
  dummyFunction(ptr_deref#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: pointerDomainType ::
  { state(Heap, Mask), ptr_deref(Heap, p_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ptr_deref(Heap, p_1) == (loc((pointer_block(p_1): blockDomainType), (pointer_offset(p_1): int)): Ref)
);

// Framing axioms
function  ptr_deref#frame(frame: FrameType, p_1: pointerDomainType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: pointerDomainType ::
  { state(Heap, Mask), ptr_deref'(Heap, p_1) }
  state(Heap, Mask) ==> ptr_deref'(Heap, p_1) == ptr_deref#frame(EmptyFrame, p_1)
);

// Trigger function (controlling recursive postconditions)
function  ptr_deref#trigger(frame: FrameType, p_1: pointerDomainType): bool;

// State-independent trigger function
function  ptr_deref#triggerStateless(p_1: pointerDomainType): Ref;

// Check contract well-formedness and postcondition
procedure ptr_deref#definedness(p_1: pointerDomainType) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Translate function body
    Result := (loc((pointer_block(p_1): blockDomainType), (pointer_offset(p_1): int)): Ref);
}

// ==================================================
// Translation of function ptr_add
// ==================================================

// Uninterpreted function definitions
function  ptr_add(Heap: HeapType, p_1: pointerDomainType, offset: int): pointerDomainType;
function  ptr_add'(Heap: HeapType, p_1: pointerDomainType, offset: int): pointerDomainType;
axiom (forall Heap: HeapType, p_1: pointerDomainType, offset: int ::
  { ptr_add(Heap, p_1, offset) }
  ptr_add(Heap, p_1, offset) == ptr_add'(Heap, p_1, offset) && dummyFunction(ptr_add#triggerStateless(p_1, offset))
);
axiom (forall Heap: HeapType, p_1: pointerDomainType, offset: int ::
  { ptr_add'(Heap, p_1, offset) }
  dummyFunction(ptr_add#triggerStateless(p_1, offset))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: pointerDomainType, offset: int ::
  { state(Heap, Mask), ptr_add(Heap, p_1, offset) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> 0 <= (pointer_offset(p_1): int) + offset && (pointer_offset(p_1): int) + offset < (block_length((pointer_block(p_1): blockDomainType)): int) ==> ptr_add(Heap, p_1, offset) == (pointer_of((pointer_block(p_1): blockDomainType), (pointer_offset(p_1): int) + offset): pointerDomainType)
);

// Framing axioms
function  ptr_add#frame(frame: FrameType, p_1: pointerDomainType, offset: int): pointerDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: pointerDomainType, offset: int ::
  { state(Heap, Mask), ptr_add'(Heap, p_1, offset) }
  state(Heap, Mask) ==> ptr_add'(Heap, p_1, offset) == ptr_add#frame(EmptyFrame, p_1, offset)
);

// Trigger function (controlling recursive postconditions)
function  ptr_add#trigger(frame: FrameType, p_1: pointerDomainType, offset: int): bool;

// State-independent trigger function
function  ptr_add#triggerStateless(p_1: pointerDomainType, offset: int): pointerDomainType;

// Check contract well-formedness and postcondition
procedure ptr_add#definedness(p_1: pointerDomainType, offset: int) returns (Result: pointerDomainType)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= (pointer_offset(p_1): int) + offset;
    assume state(Heap, Mask);
    assume (pointer_offset(p_1): int) + offset < (block_length((pointer_block(p_1): blockDomainType)): int);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (pointer_of((pointer_block(p_1): blockDomainType), (pointer_offset(p_1): int) + offset): pointerDomainType);
}

// ==================================================
// Translation of function inp_to_seq_2
// ==================================================

// Uninterpreted function definitions
function  inp_to_seq_2(Heap: HeapType, inp: pointerDomainType, n: int): Seq int;
function  inp_to_seq_2'(Heap: HeapType, inp: pointerDomainType, n: int): Seq int;
axiom (forall Heap: HeapType, inp: pointerDomainType, n: int ::
  { inp_to_seq_2(Heap, inp, n) }
  inp_to_seq_2(Heap, inp, n) == inp_to_seq_2'(Heap, inp, n) && dummyFunction(inp_to_seq_2#triggerStateless(inp, n))
);
axiom (forall Heap: HeapType, inp: pointerDomainType, n: int ::
  { inp_to_seq_2'(Heap, inp, n) }
  dummyFunction(inp_to_seq_2#triggerStateless(inp, n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, inp: pointerDomainType, n: int ::
  { state(Heap, Mask), inp_to_seq_2(Heap, inp, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> n <= (block_length((pointer_block(inp): blockDomainType)): int) - (pointer_offset(inp): int) && (forall i_1: int, j_9: int ::
    { ptr_add#frame(EmptyFrame, inp, i_1), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_9)) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)), ptr_add#frame(EmptyFrame, inp, j_9) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_9)) }
    0 <= i_1 && (i_1 < n && (0 <= j_9 && j_9 < n)) ==> i_1 != j_9 ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_1)), ref_2] != Heap[ptr_deref(Heap, ptr_add(Heap, inp, j_9)), ref_2]
  ) ==> inp_to_seq_2(Heap, inp, n) == (Seq#Empty(): Seq int)
);

// Framing axioms
function  inp_to_seq_2#frame(frame: FrameType, inp: pointerDomainType, n: int): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, inp: pointerDomainType, n: int ::
  { state(Heap, Mask), inp_to_seq_2'(Heap, inp, n) }
  state(Heap, Mask) ==> inp_to_seq_2'(Heap, inp, n) == inp_to_seq_2#frame(CombineFrames(FrameFragment(inp_to_seq_2#condqp1(Heap, inp, n)), FrameFragment(inp_to_seq_2#condqp2(Heap, inp, n))), inp, n)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10)) in function inp_to_seq_2
// ==================================================

function  inp_to_seq_2#condqp1(Heap: HeapType, inp_1_1: pointerDomainType, n_1_1_1: int): int;
function  sk_inp_to_seq_2#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, inp: pointerDomainType, n: int ::
  { inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10 <==> (0 <= sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10) && ((0 <= sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10 ==> Heap2Heap[ptr_deref(Heap2Heap, ptr_add(Heap2Heap, inp, sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)))), ref_2] == Heap1Heap[ptr_deref(Heap1Heap, ptr_add(Heap1Heap, inp, sk_inp_to_seq_2#condqp1(inp_to_seq_2#condqp1(Heap2Heap, inp, n), inp_to_seq_2#condqp1(Heap1Heap, inp, n)))), ref_2]) ==> inp_to_seq_2#condqp1(Heap2Heap, inp, n) == inp_to_seq_2#condqp1(Heap1Heap, inp, n)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref.x } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref.x, 1 * write / 10)) in function inp_to_seq_2
// ==================================================

function  inp_to_seq_2#condqp2(Heap: HeapType, inp_1_1: pointerDomainType, n_1_1_1: int): int;
function  sk_inp_to_seq_2#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, inp: pointerDomainType, n: int ::
  { inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10 <==> (0 <= sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10) && ((0 <= sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) && sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)) < n) && NoPerm < real(1) * FullPerm / 10 ==> Heap2Heap[Heap2Heap[ptr_deref(Heap2Heap, ptr_add(Heap2Heap, inp, sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)))), ref_2], x_36] == Heap1Heap[Heap1Heap[ptr_deref(Heap1Heap, ptr_add(Heap1Heap, inp, sk_inp_to_seq_2#condqp2(inp_to_seq_2#condqp2(Heap2Heap, inp, n), inp_to_seq_2#condqp2(Heap1Heap, inp, n)))), ref_2], x_36]) ==> inp_to_seq_2#condqp2(Heap2Heap, inp, n) == inp_to_seq_2#condqp2(Heap1Heap, inp, n)
);

// Trigger function (controlling recursive postconditions)
function  inp_to_seq_2#trigger(frame: FrameType, inp: pointerDomainType, n: int): bool;

// State-independent trigger function
function  inp_to_seq_2#triggerStateless(inp: pointerDomainType, n: int): Seq int;

// Check contract well-formedness and postcondition
procedure inp_to_seq_2#definedness(inp: pointerDomainType, n: int) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var i_14: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var i_2: int;
  var j: int;
  var i_4: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume n <= (block_length((pointer_block(inp): blockDomainType)): int) - (pointer_offset(inp): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10))
      if (*) {
        if (0 <= i_14 && i_14 < n) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@70.21--70.36) [202021]"}
              0 <= (pointer_offset(inp): int) + i_14;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@70.21--70.36) [202022]"}
              (pointer_offset(inp): int) + i_14 < (block_length((pointer_block(inp): blockDomainType)): int);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ptr_deref(ptr_add(inp, i)).ref might not be injective. (0768.vpr@67.13--72.10) [202023]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < n)) && (0 <= i_9_2 && i_9_2 < n)) && NoPerm < real(1) * FullPerm / 10) && NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, i_9_1)) != ptr_deref(Heap, ptr_add(Heap, inp, i_9_2))
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)), ref_2] }
        (0 <= i_9_1 && i_9_1 < n) && NoPerm < real(1) * FullPerm / 10 ==> qpRange1(ptr_deref(Heap, ptr_add(Heap, inp, i_9_1))) && invRecv1(ptr_deref(Heap, ptr_add(Heap, inp, i_9_1))) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange1(o_4) ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv1(o_4))) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 * write / 10 might be negative. (0768.vpr@67.13--72.10) [202024]"}
      (forall i_9_1: int ::
      { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)), ref_2] }
      0 <= i_9_1 && i_9_1 < n ==> real(1) * FullPerm / 10 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_9_1)), ref_2] }
        (0 <= i_9_1 && i_9_1 < n) && real(1) * FullPerm / 10 > NoPerm ==> ptr_deref(Heap, ptr_add(Heap, inp, i_9_1)) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, ref_2] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange1(o_4) ==> (NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv1(o_4))) == o_4) && QPMask[o_4, ref_2] == Mask[o_4, ref_2] + real(1) * FullPerm / 10) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange1(o_4)) ==> QPMask[o_4, ref_2] == Mask[o_4, ref_2])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != ref_2 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { ptr_add(inp, i), ptr_deref(ptr_add(inp, j)) } { ptr_deref(ptr_add(inp, i)), ptr_add(inp, j) } { ptr_deref(ptr_add(inp, i)), ptr_deref(ptr_add(inp, j)) } 0 <= i && (i < n && (0 <= j && j < n)) ==> i != j ==> ptr_deref(ptr_add(inp, i)).ref != ptr_deref(ptr_add(inp, j)).ref)
      if (*) {
        if (0 <= i_2 && (i_2 < n && (0 <= j && j < n))) {
          if (i_2 != j) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@78.17--78.34) [202025]"}
                0 <= (pointer_offset(inp): int) + i_2;
              assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@78.17--78.34) [202026]"}
                (pointer_offset(inp): int) + i_2 < (block_length((pointer_block(inp): blockDomainType)): int);
              // Stop execution
              assume false;
            }
            if (*) {
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr_deref(ptr_add(inp, i)).ref (0768.vpr@73.13--79.39) [202027]"}
              HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, i_2)), ref_2);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + j might not hold. (0768.vpr@79.17--79.34) [202028]"}
                0 <= (pointer_offset(inp): int) + j;
              assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + j < block_length(pointer_block(inp)) might not hold. (0768.vpr@79.17--79.34) [202029]"}
                (pointer_offset(inp): int) + j < (block_length((pointer_block(inp): blockDomainType)): int);
              // Stop execution
              assume false;
            }
            if (*) {
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr_deref(ptr_add(inp, j)).ref (0768.vpr@73.13--79.39) [202030]"}
              HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, j)), ref_2);
          }
        }
        assume false;
      }
    assume (forall i_11_1: int, j_3_1: int ::
      { ptr_add#frame(EmptyFrame, inp, i_11_1), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_3_1)) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_11_1)), ptr_add#frame(EmptyFrame, inp, j_3_1) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_11_1)), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_3_1)) }
      0 <= i_11_1 && (i_11_1 < n && (0 <= j_3_1 && j_3_1 < n)) ==> i_11_1 != j_3_1 ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_11_1)), ref_2] != Heap[ptr_deref(Heap, ptr_add(Heap, inp, j_3_1)), ref_2]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref.x } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref.x, 1 * write / 10))
      if (*) {
        if (0 <= i_4 && i_4 < n) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@83.21--83.36) [202031]"}
              0 <= (pointer_offset(inp): int) + i_4;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@83.21--83.36) [202032]"}
              (pointer_offset(inp): int) + i_4 < (block_length((pointer_block(inp): blockDomainType)): int);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr_deref(ptr_add(inp, i)).ref (0768.vpr@80.13--85.10) [202033]"}
            HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, i_4)), ref_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ptr_deref(ptr_add(inp, i)).ref.x might not be injective. (0768.vpr@80.13--85.10) [202034]"}
      (forall i_13_1: int, i_13_2: int ::
      
      (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < n)) && (0 <= i_13_2 && i_13_2 < n)) && NoPerm < real(1) * FullPerm / 10) && NoPerm < real(1) * FullPerm / 10 ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_13_1)), ref_2] != Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_13_2)), ref_2]
    );
    
    // -- Define Inverse Function
      assume (forall i_13_1: int ::
        { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2] } { Heap[Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2], x_36] }
        (0 <= i_13_1 && i_13_1 < n) && NoPerm < real(1) * FullPerm / 10 ==> qpRange2(Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_13_1)), ref_2]) && invRecv2(Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_13_1)), ref_2]) == i_13_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange2(o_4) ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, invRecv2(o_4))), ref_2] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 * write / 10 might be negative. (0768.vpr@80.13--85.10) [202035]"}
      (forall i_13_1: int ::
      { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2] } { Heap[Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2], x_36] }
      0 <= i_13_1 && i_13_1 < n ==> real(1) * FullPerm / 10 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_13_1: int ::
        { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2] } { Heap[Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_13_1)), ref_2], x_36] }
        (0 <= i_13_1 && i_13_1 < n) && real(1) * FullPerm / 10 > NoPerm ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_13_1)), ref_2] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, x_36] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange2(o_4) ==> (NoPerm < real(1) * FullPerm / 10 ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, invRecv2(o_4))), ref_2] == o_4) && QPMask[o_4, x_36] == Mask[o_4, x_36] + real(1) * FullPerm / 10) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange2(o_4)) ==> QPMask[o_4, x_36] == Mask[o_4, x_36])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != x_36 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (Seq#Empty(): Seq int);
}

// ==================================================
// Translation of function leafCount
// ==================================================

// Uninterpreted function definitions
function  leafCount(Heap: HeapType, t_2: treeDomainType): int;
function  leafCount'(Heap: HeapType, t_2: treeDomainType): int;
axiom (forall Heap: HeapType, t_2: treeDomainType ::
  { leafCount(Heap, t_2) }
  leafCount(Heap, t_2) == leafCount'(Heap, t_2) && dummyFunction(leafCount#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: treeDomainType ::
  { leafCount'(Heap, t_2) }
  dummyFunction(leafCount#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: treeDomainType ::
  { state(Heap, Mask), leafCount(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> leafCount(Heap, t_2) == id(Heap, (if (tree_tag(t_2): int) == 0 && (tree_tag(t_2): int) == 0 then 1 else leafCount'(Heap, (get_tree_left(t_2): treeDomainType)) + leafCount'(Heap, (get_tree_right(t_2): treeDomainType))))
);

// Framing axioms
function  leafCount#frame(frame: FrameType, t_2: treeDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: treeDomainType ::
  { state(Heap, Mask), leafCount'(Heap, t_2) }
  state(Heap, Mask) ==> leafCount'(Heap, t_2) == leafCount#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  leafCount#trigger(frame: FrameType, t_2: treeDomainType): bool;

// State-independent trigger function
function  leafCount#triggerStateless(t_2: treeDomainType): int;

// Check contract well-formedness and postcondition
procedure leafCount#definedness(t_2: treeDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of id((tree_tag(t) == 0 && tree_tag(t) == 0 ? 1 : leafCount(get_tree_left(t)) + leafCount(get_tree_right(t))))
      if ((tree_tag(t_2): int) == 0 && (tree_tag(t_2): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume leafCount#trigger(EmptyFrame, (get_tree_left(t_2): treeDomainType));
        }
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume leafCount#trigger(EmptyFrame, (get_tree_right(t_2): treeDomainType));
        }
      }
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := id(Heap, (if (tree_tag(t_2): int) == 0 && (tree_tag(t_2): int) == 0 then 1 else leafCount(Heap, (get_tree_left(t_2): treeDomainType)) + leafCount(Heap, (get_tree_right(t_2): treeDomainType))));
}

// ==================================================
// Translation of function id
// ==================================================

// Uninterpreted function definitions
function  id(Heap: HeapType, i: int): int;
function  id'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { id(Heap, i) }
  id(Heap, i) == id'(Heap, i) && dummyFunction(id#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { id'(Heap, i) }
  dummyFunction(id#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), id(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> id(Heap, i) == i
);

// Framing axioms
function  id#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), id'(Heap, i) }
  state(Heap, Mask) ==> id'(Heap, i) == id#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  id#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  id#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure id#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := i;
}

// ==================================================
// Translation of method ptr_add_pres_termination_proof
// ==================================================

procedure ptr_add_pres_termination_proof(p_1: pointerDomainType, offset: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b1) -- 0768.vpr@53.12--53.43
    if (b1) {
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale 0 <= pointer_offset(p) + offset -- <no position>
        assume 0 <= (pointer_offset(p_1): int) + offset;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method inp_to_seq_2_pres_termination_proof
// ==================================================

procedure inp_to_seq_2_pres_termination_proof(inp: pointerDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b8: bool;
  var b4: bool;
  var b2: bool;
  var b3: bool;
  var i1: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var i_6: int;
  var QPMask: MaskType;
  var b5: bool;
  var i2_1: int;
  var b6: bool;
  var b7: bool;
  var j1_33: int;
  var i_7: int;
  var i_8: int;
  var j_3: int;
  var b9: bool;
  var i3_7: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b8) -- 0768.vpr@64.12--66.24
    if (b8) {
      
      // -- Translating statement: if (b4) -- 0768.vpr@64.12--66.24
        if (b4) {
          
          // -- Translating statement: if (b2) -- 0768.vpr@64.12--66.24
            if (b2) {
              
              // -- Translating statement: inhale false -- <no position>
                assume false;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: inhale n <= block_length(pointer_block(inp)) - pointer_offset(inp) -- <no position>
                assume n <= (block_length((pointer_block(inp): blockDomainType)): int) - (pointer_offset(inp): int);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: if (b3) -- 0768.vpr@69.7--69.22
            if (b3) {
              
              // -- Translating statement: inhale false -- <no position>
                assume false;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: inhale 0 <= i1 -- <no position>
                assume 0 <= i1;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: if (0 <= i1 && i1 < n) -- <no position>
            if (0 <= i1 && i1 < n) {
              
              // -- Translating statement: inhale acc(ptr_deref(ptr_add(inp, i1)).ref, 1 * write / 10) -- 0768.vpr@70.7--72.10
                assume state(Heap, Mask);
                
                // -- Check definedness of acc(ptr_deref(ptr_add(inp, i1)).ref, 1 * write / 10)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i1 might not hold. (0768.vpr@70.21--70.36) [202036]"}
                      0 <= (pointer_offset(inp): int) + i1;
                    assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i1 < block_length(pointer_block(inp)) might not hold. (0768.vpr@70.21--70.36) [202037]"}
                      (pointer_offset(inp): int) + i1 < (block_length((pointer_block(inp): blockDomainType)): int);
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                perm := real(1) * FullPerm / 10;
                assert {:msg "  Inhale might fail. Fraction 1 * write / 10 might be negative. (0768.vpr@70.7--72.10) [202038]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> ptr_deref(Heap, ptr_add(Heap, inp, i1)) != null;
                Mask := Mask[ptr_deref(Heap, ptr_add(Heap, inp, i1)), ref_2:=Mask[ptr_deref(Heap, ptr_add(Heap, inp, i1)), ref_2] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale n <= block_length(pointer_block(inp)) - pointer_offset(inp) &&
  //   (forall i: Int ::
  //     { ptr_deref(ptr_add(inp, i)).ref }
  //     0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10)) -- <no position>
            assume n <= (block_length((pointer_block(inp): blockDomainType)): int) - (pointer_offset(inp): int);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10))
              if (*) {
                if (0 <= i_6 && i_6 < n) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@70.21--70.36) [202039]"}
                      0 <= (pointer_offset(inp): int) + i_6;
                    assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@70.21--70.36) [202040]"}
                      (pointer_offset(inp): int) + i_6 < (block_length((pointer_block(inp): blockDomainType)): int);
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                }
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Inhale might fail. Quantified resource ptr_deref(ptr_add(inp, i)).ref might not be injective. (0768.vpr@64.12--66.24) [202041]"}
              (forall i_1: int, i_1_1: int ::
              
              (((i_1 != i_1_1 && (0 <= i_1 && i_1 < n)) && (0 <= i_1_1 && i_1_1 < n)) && NoPerm < real(1) * FullPerm / 10) && NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, i_1)) != ptr_deref(Heap, ptr_add(Heap, inp, i_1_1))
            );
            
            // -- Define Inverse Function
              assume (forall i_1: int ::
                { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)), ref_2] }
                (0 <= i_1 && i_1 < n) && NoPerm < real(1) * FullPerm / 10 ==> qpRange3(ptr_deref(Heap, ptr_add(Heap, inp, i_1))) && invRecv3(ptr_deref(Heap, ptr_add(Heap, inp, i_1))) == i_1
              );
              assume (forall o_4: Ref ::
                { invRecv3(o_4) }
                ((0 <= invRecv3(o_4) && invRecv3(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange3(o_4) ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv3(o_4))) == o_4
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Inhale might fail. Fraction 1 * write / 10 might be negative. (0768.vpr@64.12--66.24) [202042]"}
              (forall i_1: int ::
              { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)), ref_2] }
              0 <= i_1 && i_1 < n ==> real(1) * FullPerm / 10 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall i_1: int ::
                { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_1)), ref_2] }
                (0 <= i_1 && i_1 < n) && real(1) * FullPerm / 10 > NoPerm ==> ptr_deref(Heap, ptr_add(Heap, inp, i_1)) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, ref_2] }
                (((0 <= invRecv3(o_4) && invRecv3(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange3(o_4) ==> (NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv3(o_4))) == o_4) && QPMask[o_4, ref_2] == Mask[o_4, ref_2] + real(1) * FullPerm / 10) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange3(o_4)) ==> QPMask[o_4, ref_2] == Mask[o_4, ref_2])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != ref_2 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: if (b5) -- 0768.vpr@73.37--76.12
        if (b5) {
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 <= i2 -- <no position>
            assume 0 <= i2_1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: if (b6) -- 0768.vpr@74.7--76.12
        if (b6) {
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale i2 < n -- <no position>
            assume i2_1 < n;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: if (b7) -- 0768.vpr@75.7--76.12
        if (b7) {
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale 0 <= j1 -- <no position>
            assume 0 <= j1_33;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale n <= block_length(pointer_block(inp)) - pointer_offset(inp) &&
  //   (forall i: Int ::
  //     { ptr_deref(ptr_add(inp, i)).ref }
  //     0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10)) &&
  //   (forall i: Int, j: Int ::
  //     { ptr_add(inp, i), ptr_deref(ptr_add(inp, j)) }
  //     { ptr_deref(ptr_add(inp, i)), ptr_add(inp, j) }
  //     { ptr_deref(ptr_add(inp, i)), ptr_deref(ptr_add(inp, j)) }
  //     0 <= i && (i < n && (0 <= j && j < n)) && i != j ==>
  //     ptr_deref(ptr_add(inp, i)).ref != ptr_deref(ptr_add(inp, j)).ref) -- <no position>
        assume n <= (block_length((pointer_block(inp): blockDomainType)): int) - (pointer_offset(inp): int);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { ptr_deref(ptr_add(inp, i)).ref } 0 <= i && i < n ==> acc(ptr_deref(ptr_add(inp, i)).ref, 1 * write / 10))
          if (*) {
            if (0 <= i_7 && i_7 < n) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@70.21--70.36) [202043]"}
                  0 <= (pointer_offset(inp): int) + i_7;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@70.21--70.36) [202044]"}
                  (pointer_offset(inp): int) + i_7 < (block_length((pointer_block(inp): blockDomainType)): int);
                // Stop execution
                assume false;
              }
              if (*) {
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource ptr_deref(ptr_add(inp, i)).ref might not be injective. (0768.vpr@64.12--66.24) [202045]"}
          (forall i_3: int, i_3_1: int ::
          
          (((i_3 != i_3_1 && (0 <= i_3 && i_3 < n)) && (0 <= i_3_1 && i_3_1 < n)) && NoPerm < real(1) * FullPerm / 10) && NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, i_3)) != ptr_deref(Heap, ptr_add(Heap, inp, i_3_1))
        );
        
        // -- Define Inverse Function
          assume (forall i_3: int ::
            { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)), ref_2] }
            (0 <= i_3 && i_3 < n) && NoPerm < real(1) * FullPerm / 10 ==> qpRange4(ptr_deref(Heap, ptr_add(Heap, inp, i_3))) && invRecv4(ptr_deref(Heap, ptr_add(Heap, inp, i_3))) == i_3
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            ((0 <= invRecv4(o_4) && invRecv4(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange4(o_4) ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv4(o_4))) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Inhale might fail. Fraction 1 * write / 10 might be negative. (0768.vpr@64.12--66.24) [202046]"}
          (forall i_3: int ::
          { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)), ref_2] }
          0 <= i_3 && i_3 < n ==> real(1) * FullPerm / 10 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_3: int ::
            { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)) } { Heap[ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_3)), ref_2] }
            (0 <= i_3 && i_3 < n) && real(1) * FullPerm / 10 > NoPerm ==> ptr_deref(Heap, ptr_add(Heap, inp, i_3)) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, ref_2] }
            (((0 <= invRecv4(o_4) && invRecv4(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange4(o_4) ==> (NoPerm < real(1) * FullPerm / 10 ==> ptr_deref(Heap, ptr_add(Heap, inp, invRecv4(o_4))) == o_4) && QPMask[o_4, ref_2] == Mask[o_4, ref_2] + real(1) * FullPerm / 10) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < n) && NoPerm < real(1) * FullPerm / 10) && qpRange4(o_4)) ==> QPMask[o_4, ref_2] == Mask[o_4, ref_2])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != ref_2 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int, j: Int :: { ptr_add(inp, i), ptr_deref(ptr_add(inp, j)) } { ptr_deref(ptr_add(inp, i)), ptr_add(inp, j) } { ptr_deref(ptr_add(inp, i)), ptr_deref(ptr_add(inp, j)) } 0 <= i && (i < n && (0 <= j && j < n)) && i != j ==> ptr_deref(ptr_add(inp, i)).ref != ptr_deref(ptr_add(inp, j)).ref)
          if (*) {
            if ((0 <= i_8 && (i_8 < n && (0 <= j_3 && j_3 < n))) && i_8 != j_3) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i might not hold. (0768.vpr@78.17--78.34) [202047]"}
                  0 <= (pointer_offset(inp): int) + i_8;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i < block_length(pointer_block(inp)) might not hold. (0768.vpr@78.17--78.34) [202048]"}
                  (pointer_offset(inp): int) + i_8 < (block_length((pointer_block(inp): blockDomainType)): int);
                // Stop execution
                assume false;
              }
              if (*) {
                // Stop execution
                assume false;
              }
              assert {:msg "  Inhale might fail. There might be insufficient permission to access ptr_deref(ptr_add(inp, i)).ref (0768.vpr@64.12--66.24) [202049]"}
                HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, i_8)), ref_2);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + j might not hold. (0768.vpr@79.17--79.34) [202050]"}
                  0 <= (pointer_offset(inp): int) + j_3;
                assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + j < block_length(pointer_block(inp)) might not hold. (0768.vpr@79.17--79.34) [202051]"}
                  (pointer_offset(inp): int) + j_3 < (block_length((pointer_block(inp): blockDomainType)): int);
                // Stop execution
                assume false;
              }
              if (*) {
                // Stop execution
                assume false;
              }
              assert {:msg "  Inhale might fail. There might be insufficient permission to access ptr_deref(ptr_add(inp, j)).ref (0768.vpr@64.12--66.24) [202052]"}
                HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, j_3)), ref_2);
            }
            assume false;
          }
        assume (forall i_5: int, j_1: int ::
          { ptr_add#frame(EmptyFrame, inp, i_5), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_1)) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_5)), ptr_add#frame(EmptyFrame, inp, j_1) } { ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, i_5)), ptr_deref#frame(EmptyFrame, ptr_add#frame(EmptyFrame, inp, j_1)) }
          (0 <= i_5 && (i_5 < n && (0 <= j_1 && j_1 < n))) && i_5 != j_1 ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i_5)), ref_2] != Heap[ptr_deref(Heap, ptr_add(Heap, inp, j_1)), ref_2]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b9) -- 0768.vpr@82.7--82.22
    if (b9) {
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale 0 <= i3 -- <no position>
        assume 0 <= i3_7;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (0 <= i3 && i3 < n) -- <no position>
    if (0 <= i3_7 && i3_7 < n) {
      
      // -- Translating statement: inhale acc(ptr_deref(ptr_add(inp, i3)).ref.x, 1 * write / 10) -- 0768.vpr@83.7--85.10
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(ptr_deref(ptr_add(inp, i3)).ref.x, 1 * write / 10)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion 0 <= pointer_offset(inp) + i3 might not hold. (0768.vpr@83.21--83.36) [202053]"}
              0 <= (pointer_offset(inp): int) + i3_7;
            assert {:msg "  Precondition of function ptr_add might not hold. Assertion pointer_offset(inp) + i3 < block_length(pointer_block(inp)) might not hold. (0768.vpr@83.21--83.36) [202054]"}
              (pointer_offset(inp): int) + i3_7 < (block_length((pointer_block(inp): blockDomainType)): int);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Inhale might fail. There might be insufficient permission to access ptr_deref(ptr_add(inp, i3)).ref (0768.vpr@83.7--85.10) [202055]"}
            HasDirectPerm(Mask, ptr_deref(Heap, ptr_add(Heap, inp, i3_7)), ref_2);
        perm := real(1) * FullPerm / 10;
        assert {:msg "  Inhale might fail. Fraction 1 * write / 10 might be negative. (0768.vpr@83.7--85.10) [202056]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> Heap[ptr_deref(Heap, ptr_add(Heap, inp, i3_7)), ref_2] != null;
        Mask := Mask[Heap[ptr_deref(Heap, ptr_add(Heap, inp, i3_7)), ref_2], x_36:=Mask[Heap[ptr_deref(Heap, ptr_add(Heap, inp, i3_7)), ref_2], x_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method leafCount_termination_proof
// ==================================================

procedure leafCount_termination_proof(t_2: treeDomainType) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (tree_tag(t) == 0 && tree_tag(t) == 0) -- <no position>
    if ((tree_tag(t_2): int) == 0 && (tree_tag(t_2): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(1, old(1)): Bool) && (bounded(old(1)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion (decreasing(1, old(1)): Bool) might not hold. (<no position>) [202057]"}
          (decreasing(1, 1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(1)): Bool) might not hold. (<no position>) [202058]"}
          (bounded(1): bool);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (decreasing(1, old(1)): Bool) && (bounded(old(1)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion (decreasing(1, old(1)): Bool) might not hold. (<no position>) [202059]"}
          (decreasing(1, 1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(1)): Bool) might not hold. (<no position>) [202060]"}
          (bounded(1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}