// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:42:20
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/arity/spexhale_arity.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/arity/spexhale_arity-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_15: Ref, f_23: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_15, f_23] }
  Heap[o_15, $allocated] ==> Heap[Heap[o_15, f_23], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_53: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_53] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_53) ==> Heap[o_41, f_53] == ExhaleHeap[o_41, f_53]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_15: Ref, f_54: (Field A B), v: B ::
  { Heap[o_15, f_54:=v] }
  succHeap(Heap, Heap[o_15, f_54:=v])
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

function  neverTriggered1(r_1_1: Ref): bool;
function  neverTriggered2(r_1_1: Ref): bool;
function  neverTriggered3(r_1_1: Ref): bool;
function  neverTriggered4(r_1_1: Ref): bool;
function  neverTriggered5(r_1_1: Ref): bool;
function  neverTriggered6(r_1_1: Ref): bool;
function  neverTriggered7(r_1_1: Ref): bool;
function  neverTriggered8(r_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1: Ref): Ref;
function  invRecv2(r_2_1: Ref): Ref;
function  invRecv3(r_2_1: Ref): Ref;
function  invRecv4(r_2_1: Ref): Ref;
function  invRecv5(r_2_1: Ref, i_1_1_1: int): Ref;
function  invRecv6(r_2_1: Ref, i_1_1_1: int): Ref;
function  invRecv7(r_2_1: Ref, i_1_1_1: int): Ref;
function  invRecv8(r_2_1: Ref, i_1_1_1: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1: Ref): bool;
function  qpRange2(r_2_1: Ref): bool;
function  qpRange3(r_2_1: Ref): bool;
function  qpRange4(r_2_1: Ref): bool;
function  qpRange5(r_2_1: Ref, i_1_1_1: int): bool;
function  qpRange6(r_2_1: Ref, i_1_1_1: int): bool;
function  qpRange7(r_2_1: Ref, i_1_1_1: int): bool;
function  qpRange8(r_2_1: Ref, i_1_1_1: int): bool;

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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(): Field PredicateType_p1 FrameType;
function  p1#sm(): Field PredicateType_p1 PMaskType;
axiom PredicateMaskField(p1()) == p1#sm();
axiom IsPredicateField(p1());
axiom getPredWandId(p1()) == 0;
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { p1#trigger(Heap, p1()) }
  p1#everUsed(p1())
);

procedure p1#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(r_1: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(r_1: Ref): Field PredicateType_p2 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p2(r_1)) }
  PredicateMaskField(p2(r_1)) == p2#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  IsPredicateField(p2(r_1))
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  getPredWandId(p2(r_1)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p2(r_1), p2(r2) }
  p2(r_1) == p2(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p2#sm(r_1), p2#sm(r2) }
  p2#sm(r_1) == p2#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p2#trigger(Heap, p2(r_1)) }
  p2#everUsed(p2(r_1))
);

procedure p2#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p3
// ==================================================

type PredicateType_p3;
function  p3_1(r_1: Ref): Field PredicateType_p3 FrameType;
function  p3#sm(r_1: Ref): Field PredicateType_p3 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p3_1(r_1)) }
  PredicateMaskField(p3_1(r_1)) == p3#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p3_1(r_1) }
  IsPredicateField(p3_1(r_1))
);
axiom (forall r_1: Ref ::
  { p3_1(r_1) }
  getPredWandId(p3_1(r_1)) == 2
);
function  p3#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p3#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p3_1(r_1), p3_1(r2) }
  p3_1(r_1) == p3_1(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p3#sm(r_1), p3#sm(r2) }
  p3#sm(r_1) == p3#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p3#trigger(Heap, p3_1(r_1)) }
  p3#everUsed(p3_1(r_1))
);

procedure p3#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p3
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (spexhale_arity.vpr@18.1--21.2) [204232]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p4
// ==================================================

type PredicateType_p4;
function  p4(r_1: Ref, i: int): Field PredicateType_p4 FrameType;
function  p4#sm(r_1: Ref, i: int): Field PredicateType_p4 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p4(r_1, i)) }
  PredicateMaskField(p4(r_1, i)) == p4#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p4(r_1, i) }
  IsPredicateField(p4(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p4(r_1, i) }
  getPredWandId(p4(r_1, i)) == 3
);
function  p4#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p4#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { p4(r_1, i), p4(r2, i2) }
  p4(r_1, i) == p4(r2, i2) ==> r_1 == r2 && i == i2
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { p4#sm(r_1, i), p4#sm(r2, i2) }
  p4#sm(r_1, i) == p4#sm(r2, i2) ==> r_1 == r2 && i == i2
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p4#trigger(Heap, p4(r_1, i)) }
  p4#everUsed(p4(r_1, i))
);

procedure p4#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p4
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p5
// ==================================================

type PredicateType_p5;
function  p5(r_1: Ref, i: int): Field PredicateType_p5 FrameType;
function  p5#sm(r_1: Ref, i: int): Field PredicateType_p5 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p5(r_1, i)) }
  PredicateMaskField(p5(r_1, i)) == p5#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p5(r_1, i) }
  IsPredicateField(p5(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p5(r_1, i) }
  getPredWandId(p5(r_1, i)) == 4
);
function  p5#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p5#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { p5(r_1, i), p5(r2, i2) }
  p5(r_1, i) == p5(r2, i2) ==> r_1 == r2 && i == i2
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { p5#sm(r_1, i), p5#sm(r2, i2) }
  p5#sm(r_1, i) == p5#sm(r2, i2) ==> r_1 == r2 && i == i2
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p5#trigger(Heap, p5(r_1, i)) }
  p5#everUsed(p5(r_1, i))
);

procedure p5#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p5
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (spexhale_arity.vpr@28.1--31.2) [204233]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (spexhale_arity.vpr@35.10--35.48) [204234]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p2(r_1_1)] } { Mask[null, p2(r_1_1)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv1(r_1_1) == r_1_1 && qpRange1(r_1_1)
      );
      assume (forall r_2_1: Ref ::
        { invRecv1(r_2_1) }
        (Seq#Contains(xs, invRecv1(r_2_1)) && NoPerm < FullPerm) && qpRange1(r_2_1) ==> invRecv1(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        (Seq#Contains(xs, invRecv1(r_2_1)) && NoPerm < FullPerm) && qpRange1(r_2_1) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1) == r_2_1) && QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        !((Seq#Contains(xs, invRecv1(r_2_1)) && NoPerm < FullPerm) && qpRange1(r_2_1)) ==> QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Contains(xs, x);
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
    perm := FullPerm;
    PostMask := PostMask[null, p2(x):=PostMask[null, p2(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access p2(x) (spexhale_arity.vpr@37.9--37.19) [204235]"}
        perm <= Mask[null, p2(x)];
    }
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (spexhale_arity.vpr@41.10--41.48) [204236]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered2(r_1_1), neverTriggered2(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p2(r_1_1)] } { Mask[null, p2(r_1_1)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv2(r_1_1) == r_1_1 && qpRange2(r_1_1)
      );
      assume (forall r_2_1: Ref ::
        { invRecv2(r_2_1) }
        (Seq#Contains(xs, invRecv2(r_2_1)) && NoPerm < FullPerm) && qpRange2(r_2_1) ==> invRecv2(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        (Seq#Contains(xs, invRecv2(r_2_1)) && NoPerm < FullPerm) && qpRange2(r_2_1) ==> (NoPerm < FullPerm ==> invRecv2(r_2_1) == r_2_1) && QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        !((Seq#Contains(xs, invRecv2(r_2_1)) && NoPerm < FullPerm) && qpRange2(r_2_1)) ==> QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)]
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
    perm := FullPerm;
    PostMask := PostMask[null, p2(x):=PostMask[null, p2(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p2(x) (spexhale_arity.vpr@43.9--43.19) [204237]"}
        perm <= Mask[null, p2(x)];
    }
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(x: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p3(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p3(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p3(r) might not be injective. (spexhale_arity.vpr@48.10--48.48) [204238]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered3(r_1_1), neverTriggered3(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p3_1(r_1_1)] } { Mask[null, p3_1(r_1_1)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv3(r_1_1) == r_1_1 && qpRange3(r_1_1)
      );
      assume (forall r_2_1: Ref ::
        { invRecv3(r_2_1) }
        (Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1) ==> invRecv3(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, p3_1(r_2_1)] }
        (Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1) ==> (NoPerm < FullPerm ==> invRecv3(r_2_1) == r_2_1) && QPMask[null, p3_1(r_2_1)] == Mask[null, p3_1(r_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, p3_1(r_2_1)] }
        !((Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1)) ==> QPMask[null, p3_1(r_2_1)] == Mask[null, p3_1(r_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Contains(xs, x);
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
    perm := FullPerm;
    PostMask := PostMask[null, p3_1(x):=PostMask[null, p3_1(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p3(x) (spexhale_arity.vpr@50.9--50.19) [204239]"}
        perm <= Mask[null, p3_1(x)];
    }
    Mask := Mask[null, p3_1(x):=Mask[null, p3_1(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(x: Ref, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p3(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p3(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p3(r) might not be injective. (spexhale_arity.vpr@54.10--54.48) [204240]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered4(r_1_1), neverTriggered4(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p3_1(r_1_1)] } { Mask[null, p3_1(r_1_1)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv4(r_1_1) == r_1_1 && qpRange4(r_1_1)
      );
      assume (forall r_2_1: Ref ::
        { invRecv4(r_2_1) }
        (Seq#Contains(xs, invRecv4(r_2_1)) && NoPerm < FullPerm) && qpRange4(r_2_1) ==> invRecv4(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, p3_1(r_2_1)] }
        (Seq#Contains(xs, invRecv4(r_2_1)) && NoPerm < FullPerm) && qpRange4(r_2_1) ==> (NoPerm < FullPerm ==> invRecv4(r_2_1) == r_2_1) && QPMask[null, p3_1(r_2_1)] == Mask[null, p3_1(r_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, p3_1(r_2_1)] }
        !((Seq#Contains(xs, invRecv4(r_2_1)) && NoPerm < FullPerm) && qpRange4(r_2_1)) ==> QPMask[null, p3_1(r_2_1)] == Mask[null, p3_1(r_2_1)]
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
    perm := FullPerm;
    PostMask := PostMask[null, p3_1(x):=PostMask[null, p3_1(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m5 might not hold. There might be insufficient permission to access p3(x) (spexhale_arity.vpr@56.9--56.19) [204241]"}
        perm <= Mask[null, p3_1(x)];
    }
    Mask := Mask[null, p3_1(x):=Mask[null, p3_1(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m6
// ==================================================

procedure m6(x: Ref, i: int, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p4(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p4(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p4(r, i) might not be injective. (spexhale_arity.vpr@61.10--61.51) [204242]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered5(r_1_1), neverTriggered5(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p4(r_1_1, i)] } { Mask[null, p4(r_1_1, i)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv5(r_1_1, i) == r_1_1 && qpRange5(r_1_1, i)
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { invRecv5(r_2_1, i_1_1_1) }
        (Seq#Contains(xs, invRecv5(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1, i_1_1_1) ==> invRecv5(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p4(r_2_1, i_1_1_1)] }
        (Seq#Contains(xs, invRecv5(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv5(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1) && QPMask[null, p4(r_2_1, i_1_1_1)] == Mask[null, p4(r_2_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 3 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p4(r_2_1, i_1_1_1)] }
        !((Seq#Contains(xs, invRecv5(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange5(r_2_1, i_1_1_1)) ==> QPMask[null, p4(r_2_1, i_1_1_1)] == Mask[null, p4(r_2_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Contains(xs, x);
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
    perm := FullPerm;
    PostMask := PostMask[null, p4(x, i):=PostMask[null, p4(x, i)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access p4(x, i) (spexhale_arity.vpr@63.9--63.22) [204243]"}
        perm <= Mask[null, p4(x, i)];
    }
    Mask := Mask[null, p4(x, i):=Mask[null, p4(x, i)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(x: Ref, i: int, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p4(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p4(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p4(r, i) might not be injective. (spexhale_arity.vpr@67.10--67.51) [204244]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered6(r_1_1), neverTriggered6(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p4(r_1_1, i)] } { Mask[null, p4(r_1_1, i)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv6(r_1_1, i) == r_1_1 && qpRange6(r_1_1, i)
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { invRecv6(r_2_1, i_1_1_1) }
        (Seq#Contains(xs, invRecv6(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_2_1, i_1_1_1) ==> invRecv6(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p4(r_2_1, i_1_1_1)] }
        (Seq#Contains(xs, invRecv6(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_2_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv6(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1) && QPMask[null, p4(r_2_1, i_1_1_1)] == Mask[null, p4(r_2_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 3 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p4(r_2_1, i_1_1_1)] }
        !((Seq#Contains(xs, invRecv6(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange6(r_2_1, i_1_1_1)) ==> QPMask[null, p4(r_2_1, i_1_1_1)] == Mask[null, p4(r_2_1, i_1_1_1)]
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
    perm := FullPerm;
    PostMask := PostMask[null, p4(x, i):=PostMask[null, p4(x, i)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access p4(x, i) (spexhale_arity.vpr@69.9--69.22) [204245]"}
        perm <= Mask[null, p4(x, i)];
    }
    Mask := Mask[null, p4(x, i):=Mask[null, p4(x, i)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m8
// ==================================================

procedure m8(x: Ref, i: int, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p5(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p5(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p5(r, i) might not be injective. (spexhale_arity.vpr@74.10--74.51) [204246]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered7(r_1_1), neverTriggered7(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p5(r_1_1, i)] } { Mask[null, p5(r_1_1, i)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv7(r_1_1, i) == r_1_1 && qpRange7(r_1_1, i)
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { invRecv7(r_2_1, i_1_1_1) }
        (Seq#Contains(xs, invRecv7(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1, i_1_1_1) ==> invRecv7(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p5(r_2_1, i_1_1_1)] }
        (Seq#Contains(xs, invRecv7(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv7(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1) && QPMask[null, p5(r_2_1, i_1_1_1)] == Mask[null, p5(r_2_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 4 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p5(r_2_1, i_1_1_1)] }
        !((Seq#Contains(xs, invRecv7(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange7(r_2_1, i_1_1_1)) ==> QPMask[null, p5(r_2_1, i_1_1_1)] == Mask[null, p5(r_2_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Contains(xs, x);
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
    perm := FullPerm;
    PostMask := PostMask[null, p5(x, i):=PostMask[null, p5(x, i)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m8 might not hold. There might be insufficient permission to access p5(x, i) (spexhale_arity.vpr@76.9--76.22) [204247]"}
        perm <= Mask[null, p5(x, i)];
    }
    Mask := Mask[null, p5(x, i):=Mask[null, p5(x, i)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m9
// ==================================================

procedure m9(x: Ref, i: int, xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p5(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p5(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p5(r, i) might not be injective. (spexhale_arity.vpr@80.10--80.51) [204248]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered8(r_1_1), neverTriggered8(r_1_2) }
        (((r_1_1 != r_1_2 && Seq#Contains(xs, r_1_1)) && Seq#Contains(xs, r_1_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p5(r_1_1, i)] } { Mask[null, p5(r_1_1, i)] } { Seq#ContainsTrigger(xs, r_1_1) } { Seq#Contains(xs, r_1_1) }
        Seq#Contains(xs, r_1_1) && NoPerm < FullPerm ==> invRecv8(r_1_1, i) == r_1_1 && qpRange8(r_1_1, i)
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { invRecv8(r_2_1, i_1_1_1) }
        (Seq#Contains(xs, invRecv8(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange8(r_2_1, i_1_1_1) ==> invRecv8(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p5(r_2_1, i_1_1_1)] }
        (Seq#Contains(xs, invRecv8(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange8(r_2_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv8(r_2_1, i_1_1_1) == r_2_1 && i == i_1_1_1) && QPMask[null, p5(r_2_1, i_1_1_1)] == Mask[null, p5(r_2_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 4 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref, i_1_1_1: int ::
        { QPMask[null, p5(r_2_1, i_1_1_1)] }
        !((Seq#Contains(xs, invRecv8(r_2_1, i_1_1_1)) && NoPerm < FullPerm) && qpRange8(r_2_1, i_1_1_1)) ==> QPMask[null, p5(r_2_1, i_1_1_1)] == Mask[null, p5(r_2_1, i_1_1_1)]
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
    perm := FullPerm;
    PostMask := PostMask[null, p5(x, i):=PostMask[null, p5(x, i)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access p5(x, i) (spexhale_arity.vpr@82.9--82.22) [204249]"}
        perm <= Mask[null, p5(x, i)];
    }
    Mask := Mask[null, p5(x, i):=Mask[null, p5(x, i)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}