// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:22:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/QuantifiedPermissions/allCases.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/QuantifiedPermissions/allCases-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_12: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_12] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_12], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_44: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_44] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_44) ==> Heap[o_38, f_44] == ExhaleHeap[o_38, f_44]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_8: (Field A B), v: B ::
  { Heap[o_8, f_8:=v] }
  succHeap(Heap, Heap[o_8, f_8:=v])
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_7: Ref): bool;
function  neverTriggered3(x_9_2: Ref): bool;
function  neverTriggered4(x_11_1: Ref): bool;
function  neverTriggered5(x_17_1: Ref): bool;
function  neverTriggered6(x_19_1: Ref): bool;
function  neverTriggered7(x_21_1: Ref): bool;
function  neverTriggered8(x_26_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_2_1: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(x_12_1: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(r_1: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(r_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_2_1: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(x_12_1: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(r_1: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(r_1_1: Ref): bool;

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
const unique vals_1: Field NormalField (Seq int);
axiom !IsPredicateField(vals_1);
axiom !IsWandField(vals_1);

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(x: Ref): Field PredicateType_pred FrameType;
function  pred#sm(x: Ref): Field PredicateType_pred PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(pred_3(x)) }
  PredicateMaskField(pred_3(x)) == pred#sm(x)
);
axiom (forall x: Ref ::
  { pred_3(x) }
  IsPredicateField(pred_3(x))
);
axiom (forall x: Ref ::
  { pred_3(x) }
  getPredWandId(pred_3(x)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { pred_3(x), pred_3(x2) }
  pred_3(x) == pred_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { pred#sm(x), pred#sm(x2) }
  pred#sm(x) == pred#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { pred#trigger(Heap, pred_3(x)) }
  pred#everUsed(pred_3(x))
);

procedure pred#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(r_1: Ref): Field PredicateType_p FrameType;
function  p#sm(r_1: Ref): Field PredicateType_p PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p_14(r_1)) }
  PredicateMaskField(p_14(r_1)) == p#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p_14(r_1) }
  IsPredicateField(p_14(r_1))
);
axiom (forall r_1: Ref ::
  { p_14(r_1) }
  getPredWandId(p_14(r_1)) == 1
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p_14(r_1), p_14(r2) }
  p_14(r_1) == p_14(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p#sm(r_1), p#sm(r2) }
  p#sm(r_1) == p#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p#trigger(Heap, p_14(r_1)) }
  p#everUsed(p_14(r_1))
);

procedure p#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
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
// Translation of method main
// ==================================================

procedure main(xs: (Seq Ref), ys: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var x_10: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var x_4: Ref;
  var x_32: Ref;
  var x_14_1: Ref;
  var x_13: Ref;
  var x_23_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- allCases.vpr@16.3--16.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write)) &&
  //   (forall x: Ref ::
  //     { (x in xs) }
  //     (x in xs) ==> (unfolding acc(pred(x), write) in true)) -- allCases.vpr@17.3--17.81
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Assert might fail. Quantified resource pred(x) might not be injective. (allCases.vpr@17.10--17.81) [92553]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access pred(x) (allCases.vpr@17.10--17.81) [92554]"}
        (forall x_1: Ref ::
        { AssertHeap[null, pred_3(x_1)] } { AssertMask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> AssertMask[null, pred_3(x_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_1: Ref ::
        { AssertHeap[null, pred_3(x_1)] } { AssertMask[null, pred_3(x_1)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv1(x_1) == x_1 && qpRange1(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv1(x_2_1) }
        (Seq#Contains(xs, invRecv1(x_2_1)) && NoPerm < FullPerm) && qpRange1(x_2_1) ==> invRecv1(x_2_1) == x_2_1
      );
    
    // -- assume permission updates
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        (Seq#Contains(xs, invRecv1(x_2_1)) && NoPerm < FullPerm) && qpRange1(x_2_1) ==> invRecv1(x_2_1) == x_2_1 && QPMask[null, pred_3(x_2_1)] == AssertMask[null, pred_3(x_2_1)] - FullPerm
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, pred_3(x_2_1)] }
        !((Seq#Contains(xs, invRecv1(x_2_1)) && NoPerm < FullPerm) && qpRange1(x_2_1)) ==> QPMask[null, pred_3(x_2_1)] == AssertMask[null, pred_3(x_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
      if (*) {
        if (Seq#Contains(xs, x_10)) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_10));
          assume UnfoldingHeap[null, pred_3(x_10)] == FrameFragment(UnfoldingHeap[x_10, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access pred(x) (allCases.vpr@17.10--17.81) [92555]"}
              perm <= UnfoldingMask[null, pred_3(x_10)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_10):=UnfoldingMask[null, pred_3(x_10)] - perm];
          perm := FullPerm;
          assume x_10 != null;
          UnfoldingMask := UnfoldingMask[x_10, f_7:=UnfoldingMask[x_10, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            AssertHeap := AssertHeap[null, pred#sm(x_10):=AssertHeap[null, pred#sm(x_10)][x_10, f_7:=true]];
            assume state(AssertHeap, AssertMask);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(xs, x_4)) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x_4));
          assume UnfoldingHeap[null, pred_3(x_4)] == FrameFragment(UnfoldingHeap[x_4, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access pred(x) (allCases.vpr@17.10--17.81) [92558]"}
              perm <= UnfoldingMask[null, pred_3(x_4)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x_4):=UnfoldingMask[null, pred_3(x_4)] - perm];
          perm := FullPerm;
          assume x_4 != null;
          UnfoldingMask := UnfoldingMask[x_4, f_7:=UnfoldingMask[x_4, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume false;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) &&
  //   (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write)) &&
  //   (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write)) &&
  //   (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0) -- allCases.vpr@18.3--18.86
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (allCases.vpr@18.10--18.86) [92562]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered2(x_7), neverTriggered2(x_7_1) }
        (((x_7 != x_7_1 && Seq#Contains(xs, x_7)) && Seq#Contains(xs, x_7_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (allCases.vpr@18.10--18.86) [92563]"}
        (forall x_7: Ref ::
        { AssertHeap[x_7, f_7] } { QPMask[x_7, f_7] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) ==> AssertMask[x_7, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_7: Ref ::
        { AssertHeap[x_7, f_7] } { QPMask[x_7, f_7] } { Seq#ContainsTrigger(xs, x_7) } { Seq#Contains(xs, x_7) }
        Seq#Contains(xs, x_7) && NoPerm < FullPerm ==> qpRange2(x_7) && invRecv2(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        Seq#Contains(xs, invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv2(o_4)) && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.g might not be injective. (allCases.vpr@18.10--18.86) [92565]"}
        (forall x_9_2: Ref, x_9_3: Ref ::
        { neverTriggered3(x_9_2), neverTriggered3(x_9_3) }
        (((x_9_2 != x_9_3 && Seq#Contains(xs, x_9_2)) && Seq#Contains(xs, x_9_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_9_2 != x_9_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (allCases.vpr@18.10--18.86) [92566]"}
        (forall x_9_2: Ref ::
        { AssertHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) ==> AssertMask[x_9_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_9_2: Ref ::
        { AssertHeap[x_9_2, g] } { QPMask[x_9_2, g] } { Seq#ContainsTrigger(xs, x_9_2) } { Seq#Contains(xs, x_9_2) }
        Seq#Contains(xs, x_9_2) && NoPerm < FullPerm ==> qpRange3(x_9_2) && invRecv3(x_9_2) == x_9_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, g] == AssertMask[o_4, g] - FullPerm) && (!(Seq#Contains(xs, invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, g] == AssertMask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(pred(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(x), write) is injective
      assert {:msg "  Assert might fail. Quantified resource pred(x) might not be injective. (allCases.vpr@18.10--18.86) [92568]"}
        (forall x_11_1: Ref, x_11_2: Ref ::
        { neverTriggered4(x_11_1), neverTriggered4(x_11_2) }
        (((x_11_1 != x_11_2 && Seq#Contains(xs, x_11_1)) && Seq#Contains(xs, x_11_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_11_1 != x_11_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access pred(x) (allCases.vpr@18.10--18.86) [92569]"}
        (forall x_11_1: Ref ::
        { AssertHeap[null, pred_3(x_11_1)] } { AssertMask[null, pred_3(x_11_1)] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) ==> AssertMask[null, pred_3(x_11_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(x), write)
      assume (forall x_11_1: Ref ::
        { AssertHeap[null, pred_3(x_11_1)] } { AssertMask[null, pred_3(x_11_1)] } { Seq#ContainsTrigger(xs, x_11_1) } { Seq#Contains(xs, x_11_1) }
        Seq#Contains(xs, x_11_1) && NoPerm < FullPerm ==> invRecv4(x_11_1) == x_11_1 && qpRange4(x_11_1)
      );
      assume (forall x_12_1: Ref ::
        { invRecv4(x_12_1) }
        (Seq#Contains(xs, invRecv4(x_12_1)) && NoPerm < FullPerm) && qpRange4(x_12_1) ==> invRecv4(x_12_1) == x_12_1
      );
    
    // -- assume permission updates
      assume (forall x_12_1: Ref ::
        { QPMask[null, pred_3(x_12_1)] }
        (Seq#Contains(xs, invRecv4(x_12_1)) && NoPerm < FullPerm) && qpRange4(x_12_1) ==> invRecv4(x_12_1) == x_12_1 && QPMask[null, pred_3(x_12_1)] == AssertMask[null, pred_3(x_12_1)] - FullPerm
      );
      assume (forall x_12_1: Ref ::
        { QPMask[null, pred_3(x_12_1)] }
        !((Seq#Contains(xs, invRecv4(x_12_1)) && NoPerm < FullPerm) && qpRange4(x_12_1)) ==> QPMask[null, pred_3(x_12_1)] == AssertMask[null, pred_3(x_12_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
      if (*) {
        if (Seq#Contains(xs, x_32)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (allCases.vpr@18.10--18.86) [92570]"}
            HasDirectPerm(ExhaleWellDef0Mask, x_32, f_7);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(xs, x_14_1)) {
        assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (allCases.vpr@18.10--18.86) [92571]"}
          AssertHeap[x_14_1, f_7] > 0;
      }
      assume false;
    }
    assume (forall x_15_1: Ref ::
      { Seq#ContainsTrigger(xs, x_15_1) } { Seq#Contains(xs, x_15_1) }
      Seq#Contains(xs, x_15_1) ==> AssertHeap[x_15_1, f_7] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref ::
  //     { (x in xs) }
  //     true && (x in xs) ==> acc(x.f, write)) &&
  //   (forall x: Ref :: { (x in ys) } true && (x in ys) ==> acc(p(x), write)) -- allCases.vpr@19.3--19.88
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } true && (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (allCases.vpr@19.10--19.88) [92573]"}
        (forall x_17_1: Ref, x_17_2: Ref ::
        { neverTriggered5(x_17_1), neverTriggered5(x_17_2) }
        (((x_17_1 != x_17_2 && Seq#Contains(xs, x_17_1)) && Seq#Contains(xs, x_17_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_17_1 != x_17_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (allCases.vpr@19.10--19.88) [92574]"}
        (forall x_17_1: Ref ::
        { AssertHeap[x_17_1, f_7] } { QPMask[x_17_1, f_7] } { Seq#ContainsTrigger(xs, x_17_1) } { Seq#Contains(xs, x_17_1) }
        Seq#Contains(xs, x_17_1) ==> AssertMask[x_17_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_17_1: Ref ::
        { AssertHeap[x_17_1, f_7] } { QPMask[x_17_1, f_7] } { Seq#ContainsTrigger(xs, x_17_1) } { Seq#Contains(xs, x_17_1) }
        Seq#Contains(xs, x_17_1) && NoPerm < FullPerm ==> qpRange5(x_17_1) && invRecv5(x_17_1) == x_17_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv5(o_4)) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in ys) } true && (x in ys) ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Assert might fail. Quantified resource p(x) might not be injective. (allCases.vpr@19.10--19.88) [92576]"}
        (forall x_19_1: Ref, x_19_2: Ref ::
        { neverTriggered6(x_19_1), neverTriggered6(x_19_2) }
        (((x_19_1 != x_19_2 && Seq#Contains(ys, x_19_1)) && Seq#Contains(ys, x_19_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_19_1 != x_19_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access p(x) (allCases.vpr@19.10--19.88) [92577]"}
        (forall x_19_1: Ref ::
        { AssertHeap[null, p_14(x_19_1)] } { AssertMask[null, p_14(x_19_1)] } { Seq#ContainsTrigger(ys, x_19_1) } { Seq#Contains(ys, x_19_1) }
        Seq#Contains(ys, x_19_1) ==> AssertMask[null, p_14(x_19_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(x), write)
      assume (forall x_19_1: Ref ::
        { AssertHeap[null, p_14(x_19_1)] } { AssertMask[null, p_14(x_19_1)] } { Seq#ContainsTrigger(ys, x_19_1) } { Seq#Contains(ys, x_19_1) }
        Seq#Contains(ys, x_19_1) && NoPerm < FullPerm ==> invRecv6(x_19_1) == x_19_1 && qpRange6(x_19_1)
      );
      assume (forall r_1: Ref ::
        { invRecv6(r_1) }
        (Seq#Contains(ys, invRecv6(r_1)) && NoPerm < FullPerm) && qpRange6(r_1) ==> invRecv6(r_1) == r_1
      );
    
    // -- assume permission updates
      assume (forall r_1: Ref ::
        { QPMask[null, p_14(r_1)] }
        (Seq#Contains(ys, invRecv6(r_1)) && NoPerm < FullPerm) && qpRange6(r_1) ==> invRecv6(r_1) == r_1 && QPMask[null, p_14(r_1)] == AssertMask[null, p_14(r_1)] - FullPerm
      );
      assume (forall r_1: Ref ::
        { QPMask[null, p_14(r_1)] }
        !((Seq#Contains(ys, invRecv6(r_1)) && NoPerm < FullPerm) && qpRange6(r_1)) ==> QPMask[null, p_14(r_1)] == AssertMask[null, p_14(r_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref ::
  //     { (x in xs) }
  //     true && (x in xs) ==> acc(x.f, write)) &&
  //   (forall x: Ref :: { (x in xs) } true && (x in xs) ==> x.f == 5) &&
  //   (forall x: Ref :: { (x in ys) } true && (x in ys) ==> acc(p(x), write)) -- allCases.vpr@20.3--20.100
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } true && (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (allCases.vpr@20.10--20.100) [92579]"}
        (forall x_21_1: Ref, x_21_2: Ref ::
        { neverTriggered7(x_21_1), neverTriggered7(x_21_2) }
        (((x_21_1 != x_21_2 && Seq#Contains(xs, x_21_1)) && Seq#Contains(xs, x_21_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_21_1 != x_21_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (allCases.vpr@20.10--20.100) [92580]"}
        (forall x_21_1: Ref ::
        { AssertHeap[x_21_1, f_7] } { QPMask[x_21_1, f_7] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) ==> AssertMask[x_21_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_21_1: Ref ::
        { AssertHeap[x_21_1, f_7] } { QPMask[x_21_1, f_7] } { Seq#ContainsTrigger(xs, x_21_1) } { Seq#Contains(xs, x_21_1) }
        Seq#Contains(xs, x_21_1) && NoPerm < FullPerm ==> qpRange7(x_21_1) && invRecv7(x_21_1) == x_21_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Seq#Contains(xs, invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(xs, invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!(Seq#Contains(xs, invRecv7(o_4)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } true && (x in xs) ==> x.f == 5)
      if (*) {
        if (Seq#Contains(xs, x_13)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (allCases.vpr@20.10--20.100) [92581]"}
            HasDirectPerm(ExhaleWellDef0Mask, x_13, f_7);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(xs, x_23_1)) {
        assert {:msg "  Assert might fail. Assertion x.f == 5 might not hold. (allCases.vpr@20.10--20.100) [92582]"}
          AssertHeap[x_23_1, f_7] == 5;
      }
      assume false;
    }
    assume (forall x_24_1: Ref ::
      { Seq#ContainsTrigger(xs, x_24_1) } { Seq#Contains(xs, x_24_1) }
      Seq#Contains(xs, x_24_1) ==> AssertHeap[x_24_1, f_7] == 5
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in ys) } true && (x in ys) ==> acc(p(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(x), write) is injective
      assert {:msg "  Assert might fail. Quantified resource p(x) might not be injective. (allCases.vpr@20.10--20.100) [92584]"}
        (forall x_26_1: Ref, x_26_2: Ref ::
        { neverTriggered8(x_26_1), neverTriggered8(x_26_2) }
        (((x_26_1 != x_26_2 && Seq#Contains(ys, x_26_1)) && Seq#Contains(ys, x_26_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_26_1 != x_26_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access p(x) (allCases.vpr@20.10--20.100) [92585]"}
        (forall x_26_1: Ref ::
        { AssertHeap[null, p_14(x_26_1)] } { AssertMask[null, p_14(x_26_1)] } { Seq#ContainsTrigger(ys, x_26_1) } { Seq#Contains(ys, x_26_1) }
        Seq#Contains(ys, x_26_1) ==> AssertMask[null, p_14(x_26_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(x), write)
      assume (forall x_26_1: Ref ::
        { AssertHeap[null, p_14(x_26_1)] } { AssertMask[null, p_14(x_26_1)] } { Seq#ContainsTrigger(ys, x_26_1) } { Seq#Contains(ys, x_26_1) }
        Seq#Contains(ys, x_26_1) && NoPerm < FullPerm ==> invRecv8(x_26_1) == x_26_1 && qpRange8(x_26_1)
      );
      assume (forall r_1_1: Ref ::
        { invRecv8(r_1_1) }
        (Seq#Contains(ys, invRecv8(r_1_1)) && NoPerm < FullPerm) && qpRange8(r_1_1) ==> invRecv8(r_1_1) == r_1_1
      );
    
    // -- assume permission updates
      assume (forall r_1_1: Ref ::
        { QPMask[null, p_14(r_1_1)] }
        (Seq#Contains(ys, invRecv8(r_1_1)) && NoPerm < FullPerm) && qpRange8(r_1_1) ==> invRecv8(r_1_1) == r_1_1 && QPMask[null, p_14(r_1_1)] == AssertMask[null, p_14(r_1_1)] - FullPerm
      );
      assume (forall r_1_1: Ref ::
        { QPMask[null, p_14(r_1_1)] }
        !((Seq#Contains(ys, invRecv8(r_1_1)) && NoPerm < FullPerm) && qpRange8(r_1_1)) ==> QPMask[null, p_14(r_1_1)] == AssertMask[null, p_14(r_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}