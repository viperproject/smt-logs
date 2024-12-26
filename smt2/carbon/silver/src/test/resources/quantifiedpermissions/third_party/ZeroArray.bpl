// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:51:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/ZeroArray.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/ZeroArray-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(k_1_1: int): bool;
function  neverTriggered2(k_3: int): bool;
function  neverTriggered3(k_6: int): bool;
function  neverTriggered4(k_9: int): bool;
function  neverTriggered5(k_13: int): bool;
function  neverTriggered6(k_16_1: int): bool;
function  neverTriggered7(k_18_1: int): bool;
function  neverTriggered8(k_21_1: int): bool;
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

const unique Integer_value: Field NormalField int;
axiom !IsPredicateField(Integer_value);
axiom !IsWandField(Integer_value);

// ==================================================
// Translation of method zero_array
// ==================================================

procedure zero_array(this: Ref, ar: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var k1_1: int;
  var k2_1: int;
  var k_2: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var k_4: int;
  var k_7: int;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_10_2: int;
  var ExhaleHeap: HeapType;
  var k_10: int;
  var k_12: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var k_19_1: int;
  var k_7_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Length(ar) > 10;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k1: Int, k2: Int :: { (k1 in [0..|ar|)), (k2 in [0..|ar|)) } { (k1 in [0..|ar|)), ar[k2] } { (k2 in [0..|ar|)), ar[k1] } { ar[k1], ar[k2] } (k1 in [0..|ar|)) && ((k2 in [0..|ar|)) && k1 != k2) ==> ar[k1] != ar[k2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k2_1) && k1_1 != k2_1)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k1] into ar might be negative. (ZeroArray.vpr@10.12--10.106) [54487]"}
            k1_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k1] into ar might exceed sequence length. (ZeroArray.vpr@10.12--10.106) [54488]"}
            k1_1 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[k2] into ar might be negative. (ZeroArray.vpr@10.12--10.106) [54489]"}
            k2_1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k2] into ar might exceed sequence length. (ZeroArray.vpr@10.12--10.106) [54490]"}
            k2_1 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall k1_1_1: int, k2_1_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(ar)), k2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#Contains(Seq#Range(0, Seq#Length(ar)), k2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#Index(ar, k2_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k1_1_1), Seq#Index(ar, k2_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k2_1_1), Seq#Index(ar, k1_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k2_1_1), Seq#Index(ar, k1_1_1) } { Seq#Index(ar, k1_1_1), Seq#Index(ar, k2_1_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(ar)), k1_1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k2_1_1) && k1_1_1 != k2_1_1) ==> Seq#Index(ar, k1_1_1) != Seq#Index(ar, k2_1_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_2)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (ZeroArray.vpr@11.12--11.79) [54491]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (ZeroArray.vpr@11.12--11.79) [54492]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@11.12--11.79) [54493]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_1)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_1_1) != Seq#Index(ar, k_1_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Seq#Index(ar, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_1) } { Seq#Index(ar, k_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(ar, k_1_1)) && invRecv1(Seq#Index(ar, k_1_1)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Seq#Index(ar, k_1_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_1) } { Seq#Index(ar, k_1_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_1_1) ==> Seq#Index(ar, k_1_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv1(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_4)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (ZeroArray.vpr@12.11--12.78) [54494]"}
            k_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (ZeroArray.vpr@12.11--12.78) [54495]"}
            k_4 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@12.11--12.78) [54496]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_3) != Seq#Index(ar, k_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { Seq#Index(ar, k_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_3) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3) } { Seq#Index(ar, k_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3) && NoPerm < FullPerm ==> qpRange2(Seq#Index(ar, k_3)) && invRecv2(Seq#Index(ar, k_3)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(ar, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { Seq#Index(ar, k_3) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_3) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3) } { Seq#Index(ar, k_3) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_3) ==> Seq#Index(ar, k_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv2(o_4)) == o_4) && QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, Integer_value] == PostMask[o_4, Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < |ar| ==> ar[k].Integer_value == 0)
      if (*) {
        if (0 <= k_7 && k_7 < Seq#Length(ar)) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (ZeroArray.vpr@13.11--13.75) [54497]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (ZeroArray.vpr@13.11--13.75) [54498]"}
            k_7 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ar[k].Integer_value (ZeroArray.vpr@13.11--13.75) [54499]"}
            HasDirectPerm(PostMask, Seq#Index(ar, k_7), Integer_value);
        }
        assume false;
      }
    assume (forall k_5: int ::
      { Seq#Index(ar, k_5) }
      0 <= k_5 && k_5 < Seq#Length(ar) ==> PostHeap[Seq#Index(ar, k_5), Integer_value] == 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 1 -- ZeroArray.vpr@16.3--16.9
    i := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: ar[0].Integer_value := 0 -- ZeroArray.vpr@17.3--17.27
    
    // -- Check definedness of ar[0]
      assert {:msg "  Assignment might fail. Index ar[0] into ar might exceed sequence length. (ZeroArray.vpr@17.3--17.27) [54500]"}
        0 < Seq#Length(ar);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[0].Integer_value (ZeroArray.vpr@17.3--17.27) [54501]"}
      FullPerm == Mask[Seq#Index(ar, 0), Integer_value];
    Heap := Heap[Seq#Index(ar, 0), Integer_value:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < |ar|) -- ZeroArray.vpr@18.3--25.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= |ar| might not hold on entry. Assertion 0 <= i might not hold. (ZeroArray.vpr@19.15--19.34) [54502]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= |ar| might not hold on entry. Assertion i <= |ar| might not hold. (ZeroArray.vpr@19.15--19.34) [54503]"}
          i <= Seq#Length(ar);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver ar[k] is injective
          assert {:msg "  Loop invariant (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write)) might not hold on entry. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@20.15--20.82) [54504]"}
            (forall k_9: int, k_9_2: int ::
            { neverTriggered4(k_9), neverTriggered4(k_9_2) }
            (((k_9 != k_9_2 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_9) != Seq#Index(ar, k_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write)) might not hold on entry. There might be insufficient permission to access ar[k].Integer_value (ZeroArray.vpr@20.15--20.82) [54505]"}
            (forall k_9: int ::
            { Seq#Index(ar, k_9) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_9) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9) } { Seq#Index(ar, k_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9) ==> Mask[Seq#Index(ar, k_9), Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver ar[k]
          assume (forall k_9: int ::
            { Seq#Index(ar, k_9) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_9) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9) } { Seq#Index(ar, k_9) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_9) && NoPerm < FullPerm ==> qpRange4(Seq#Index(ar, k_9)) && invRecv4(Seq#Index(ar, k_9)) == k_9
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(ar, invRecv4(o_4)) == o_4
          );
        
        // -- assume permission updates for field Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> Seq#Index(ar, invRecv4(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv4(o_4)) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= k_10_2 && k_10_2 < i) {
            assert {:msg "  Loop invariant (forall k: Int :: { ar[k] } 0 <= k && k < i ==> ar[k].Integer_value == 0) might not hold on entry. Assertion ar[k].Integer_value == 0 might not hold. (ZeroArray.vpr@21.15--21.76) [54506]"}
              Heap[Seq#Index(ar, k_10_2), Integer_value] == 0;
          }
          assume false;
        }
        assume (forall k_11_1_1: int ::
          { Seq#Index(ar, k_11_1_1) }
          0 <= k_11_1_1 && k_11_1_1 < i ==> Heap[Seq#Index(ar, k_11_1_1), Integer_value] == 0
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i <= Seq#Length(ar);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write))
          if (*) {
            if (Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_10)) {
              assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (ZeroArray.vpr@20.15--20.82) [54507]"}
                k_10 >= 0;
              assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (ZeroArray.vpr@20.15--20.82) [54508]"}
                k_10 < Seq#Length(ar);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@20.15--20.82) [54509]"}
          (forall k_13: int, k_13_1: int ::
          
          (((k_13 != k_13_1 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_13) != Seq#Index(ar, k_13_1)
        );
        
        // -- Define Inverse Function
          assume (forall k_13: int ::
            { Seq#Index(ar, k_13) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_13) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13) } { Seq#Index(ar, k_13) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13) && NoPerm < FullPerm ==> qpRange5(Seq#Index(ar, k_13)) && invRecv5(Seq#Index(ar, k_13)) == k_13
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall k_13: int ::
            { Seq#Index(ar, k_13) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_13) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13) } { Seq#Index(ar, k_13) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_13) ==> Seq#Index(ar, k_13) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv5(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < i ==> ar[k].Integer_value == 0)
          if (*) {
            if (0 <= k_12 && k_12 < i) {
              assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (ZeroArray.vpr@21.15--21.76) [54510]"}
                k_12 >= 0;
              assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (ZeroArray.vpr@21.15--21.76) [54511]"}
                k_12 < Seq#Length(ar);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ar[k].Integer_value (ZeroArray.vpr@21.15--21.76) [54512]"}
                HasDirectPerm(Mask, Seq#Index(ar, k_12), Integer_value);
            }
            assume false;
          }
        assume (forall k_15_1: int ::
          { Seq#Index(ar, k_15_1) }
          0 <= k_15_1 && k_15_1 < i ==> Heap[Seq#Index(ar, k_15_1), Integer_value] == 0
        );
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
        assume 0 <= i;
        assume i <= Seq#Length(ar);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@20.15--20.82) [54513]"}
          (forall k_16_1: int, k_16_2: int ::
          
          (((k_16_1 != k_16_2 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_1)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_16_1) != Seq#Index(ar, k_16_2)
        );
        
        // -- Define Inverse Function
          assume (forall k_16_1: int ::
            { Seq#Index(ar, k_16_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_16_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_1) } { Seq#Index(ar, k_16_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_1) && NoPerm < FullPerm ==> qpRange6(Seq#Index(ar, k_16_1)) && invRecv6(Seq#Index(ar, k_16_1)) == k_16_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> Seq#Index(ar, invRecv6(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall k_16_1: int ::
            { Seq#Index(ar, k_16_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_16_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_1) } { Seq#Index(ar, k_16_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_16_1) ==> Seq#Index(ar, k_16_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, Integer_value] }
            ((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv6(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv6(o_4)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall k_17_2: int ::
          { Seq#Index(ar, k_17_2) }
          0 <= k_17_2 && k_17_2 < i ==> Heap[Seq#Index(ar, k_17_2), Integer_value] == 0
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < Seq#Length(ar);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: ar[i].Integer_value := 0 -- ZeroArray.vpr@23.5--23.29
            
            // -- Check definedness of ar[i]
              assert {:msg "  Assignment might fail. Index ar[i] into ar might be negative. (ZeroArray.vpr@23.5--23.29) [54514]"}
                i >= 0;
              assert {:msg "  Assignment might fail. Index ar[i] into ar might exceed sequence length. (ZeroArray.vpr@23.5--23.29) [54515]"}
                i < Seq#Length(ar);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access ar[i].Integer_value (ZeroArray.vpr@23.5--23.29) [54516]"}
              FullPerm == Mask[Seq#Index(ar, i), Integer_value];
            Heap := Heap[Seq#Index(ar, i), Integer_value:=0];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- ZeroArray.vpr@24.5--24.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= |ar| might not be preserved. Assertion 0 <= i might not hold. (ZeroArray.vpr@19.15--19.34) [54517]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= |ar| might not be preserved. Assertion i <= |ar| might not hold. (ZeroArray.vpr@19.15--19.34) [54518]"}
          i <= Seq#Length(ar);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver ar[k] is injective
          assert {:msg "  Loop invariant (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write)) might not be preserved. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@20.15--20.82) [54519]"}
            (forall k_18_1: int, k_18_2: int ::
            { neverTriggered7(k_18_1), neverTriggered7(k_18_2) }
            (((k_18_1 != k_18_2 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_1)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_18_1) != Seq#Index(ar, k_18_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall k: Int :: { (k in [0..|ar|)) } { ar[k] } (k in [0..|ar|)) ==> acc(ar[k].Integer_value, write)) might not be preserved. There might be insufficient permission to access ar[k].Integer_value (ZeroArray.vpr@20.15--20.82) [54520]"}
            (forall k_18_1: int ::
            { Seq#Index(ar, k_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_1) } { Seq#Index(ar, k_18_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_1) ==> Mask[Seq#Index(ar, k_18_1), Integer_value] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver ar[k]
          assume (forall k_18_1: int ::
            { Seq#Index(ar, k_18_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_18_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_1) } { Seq#Index(ar, k_18_1) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_18_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(ar, k_18_1)) && invRecv7(Seq#Index(ar, k_18_1)) == k_18_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
          );
        
        // -- assume permission updates for field Integer_value
          assume (forall o_4: Ref ::
            { QPMask[o_4, Integer_value] }
            (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> Seq#Index(ar, invRecv7(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (0 <= k_19_1 && k_19_1 < i) {
            assert {:msg "  Loop invariant (forall k: Int :: { ar[k] } 0 <= k && k < i ==> ar[k].Integer_value == 0) might not be preserved. Assertion ar[k].Integer_value == 0 might not hold. (ZeroArray.vpr@21.15--21.76) [54521]"}
              Heap[Seq#Index(ar, k_19_1), Integer_value] == 0;
          }
          assume false;
        }
        assume (forall k_20_1_1: int ::
          { Seq#Index(ar, k_20_1_1) }
          0 <= k_20_1_1 && k_20_1_1 < i ==> Heap[Seq#Index(ar, k_20_1_1), Integer_value] == 0
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < Seq#Length(ar));
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i <= Seq#Length(ar);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@20.15--20.82) [54522]"}
        (forall k_21_1: int, k_21_2: int ::
        
        (((k_21_1 != k_21_2 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_1)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_21_1) != Seq#Index(ar, k_21_2)
      );
      
      // -- Define Inverse Function
        assume (forall k_21_1: int ::
          { Seq#Index(ar, k_21_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_21_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_1) } { Seq#Index(ar, k_21_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(ar, k_21_1)) && invRecv8(Seq#Index(ar, k_21_1)) == k_21_1
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall k_21_1: int ::
          { Seq#Index(ar, k_21_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_21_1) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_1) } { Seq#Index(ar, k_21_1) }
          Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_21_1) ==> Seq#Index(ar, k_21_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Integer_value] }
          ((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(ar, invRecv8(o_4)) == o_4) && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall k_22_2: int ::
        { Seq#Index(ar, k_22_2) }
        0 <= k_22_2 && k_22_2 < i ==> Heap[Seq#Index(ar, k_22_2), Integer_value] == 0
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver ar[k] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Integer_value might not be injective. (ZeroArray.vpr@12.11--12.78) [54523]"}
        (forall k_6: int, k_6_1: int ::
        { neverTriggered3(k_6), neverTriggered3(k_6_1) }
        (((k_6 != k_6_1 && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6)) && Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(ar, k_6) != Seq#Index(ar, k_6_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of zero_array might not hold. There might be insufficient permission to access ar[k].Integer_value (ZeroArray.vpr@12.11--12.78) [54524]"}
        (forall k_6: int ::
        { Seq#Index(ar, k_6) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_6) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6) } { Seq#Index(ar, k_6) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6) ==> Mask[Seq#Index(ar, k_6), Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver ar[k]
      assume (forall k_6: int ::
        { Seq#Index(ar, k_6) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(ar)), k_6) } { Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6) } { Seq#Index(ar, k_6) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), k_6) && NoPerm < FullPerm ==> qpRange3(Seq#Index(ar, k_6)) && invRecv3(Seq#Index(ar, k_6)) == k_6
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Integer_value] }
        (Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(ar, invRecv3(o_4)) == o_4 && QPMask[o_4, Integer_value] == Mask[o_4, Integer_value] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(ar)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, Integer_value] == Mask[o_4, Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= k_7_1 && k_7_1 < Seq#Length(ar)) {
        assert {:msg "  Postcondition of zero_array might not hold. Assertion ar[k].Integer_value == 0 might not hold. (ZeroArray.vpr@13.11--13.75) [54525]"}
          Heap[Seq#Index(ar, k_7_1), Integer_value] == 0;
      }
      assume false;
    }
    assume (forall k_8_1_1: int ::
      { Seq#Index(ar, k_8_1_1) }
      0 <= k_8_1_1 && k_8_1_1 < Seq#Length(ar) ==> Heap[Seq#Index(ar, k_8_1_1), Integer_value] == 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}