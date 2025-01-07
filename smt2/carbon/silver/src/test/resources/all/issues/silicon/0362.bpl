// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:31:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0362.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0362-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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

function  neverTriggered2(r_1_1: Ref, x_1: int): bool;
function  neverTriggered4(r_5: Ref, x_5: int): bool;
function  neverTriggered6(r_8: Ref, x_8_1: int): bool;
function  neverTriggered8(r_14: Ref, x_14_1: int): bool;
function  neverTriggered10(r_17: Ref, x_17_1: int): bool;
function  neverTriggered12(r_20: Ref, x_20_2: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1_1: Ref, x_2_1: int): Ref;
function  invRecv2(r_2_1_1: Ref, x_2_1: int): int;
function  invRecv3(r_6_1_1: Ref, x_6_1_1: int): Ref;
function  invRecv4(r_6_1_1: Ref, x_6_1_1: int): int;
function  invRecv5(r_9_1_1: Ref, x_9_1: int): Ref;
function  invRecv6(r_9_1_1: Ref, x_9_1: int): int;
function  invRecv7(r_15_1: Ref, x_15_1: int): Ref;
function  invRecv8(r_15_1: Ref, x_15_1: int): int;
function  invRecv9(r_18_1: Ref, x_18_1: int): Ref;
function  invRecv10(r_18_1: Ref, x_18_1: int): int;
function  invRecv11(r_21_1: Ref, x_21_1_1: int): Ref;
function  invRecv12(r_21_1: Ref, x_21_1_1: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange2(r_2_1_1: Ref, x_2_1: int): bool;
function  qpRange4(r_6_1_1: Ref, x_6_1_1: int): bool;
function  qpRange6(r_9_1_1: Ref, x_9_1: int): bool;
function  qpRange8(r_15_1: Ref, x_15_1: int): bool;
function  qpRange10(r_18_1: Ref, x_18_1: int): bool;
function  qpRange12(r_21_1: Ref, x_21_1_1: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: P_state
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
// Translation of function P_state
// ==================================================

// Uninterpreted function definitions
function  P_state(Heap: HeapType, r_1: Ref, x: int): int;
function  P_state'(Heap: HeapType, r_1: Ref, x: int): int;
axiom (forall Heap: HeapType, r_1: Ref, x: int ::
  { P_state(Heap, r_1, x) }
  P_state(Heap, r_1, x) == P_state'(Heap, r_1, x) && dummyFunction(P_state#triggerStateless(r_1, x))
);
axiom (forall Heap: HeapType, r_1: Ref, x: int ::
  { P_state'(Heap, r_1, x) }
  dummyFunction(P_state#triggerStateless(r_1, x))
);

// Framing axioms
function  P_state#frame(frame: FrameType, r_1: Ref, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, x: int ::
  { state(Heap, Mask), P_state'(Heap, r_1, x) }
  state(Heap, Mask) ==> P_state'(Heap, r_1, x) == P_state#frame(Heap[null, P(r_1, x)], r_1, x)
);

// Trigger function (controlling recursive postconditions)
function  P_state#trigger(frame: FrameType, r_1: Ref, x: int): bool;

// State-independent trigger function
function  P_state#triggerStateless(r_1: Ref, x: int): int;

// Check contract well-formedness and postcondition
procedure P_state#definedness(r_1: Ref, x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(r_1, x):=Mask[null, P(r_1, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(r_1: Ref, x: int): Field PredicateType_P FrameType;
function  P#sm(r_1: Ref, x: int): Field PredicateType_P PMaskType;
axiom (forall r_1: Ref, x: int ::
  { PredicateMaskField(P(r_1, x)) }
  PredicateMaskField(P(r_1, x)) == P#sm(r_1, x)
);
axiom (forall r_1: Ref, x: int ::
  { P(r_1, x) }
  IsPredicateField(P(r_1, x))
);
axiom (forall r_1: Ref, x: int ::
  { P(r_1, x) }
  getPredWandId(P(r_1, x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, x: int, r2: Ref, x2: int ::
  { P(r_1, x), P(r2, x2) }
  P(r_1, x) == P(r2, x2) ==> r_1 == r2 && x == x2
);
axiom (forall r_1: Ref, x: int, r2: Ref, x2: int ::
  { P#sm(r_1, x), P#sm(r2, x2) }
  P#sm(r_1, x) == P#sm(r2, x2) ==> r_1 == r2 && x == x2
);

axiom (forall Heap: HeapType, r_1: Ref, x: int ::
  { P#trigger(Heap, P(r_1, x)) }
  P#everUsed(P(r_1, x))
);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var pre_havoc_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var rs: (Seq Ref);
  var xs: (Seq int);
  var Labelpre_havocMask: MaskType;
  var Labelpre_havocHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var nondet: int;
  var r_38: Ref;
  var x_11: int;
  var perm: Perm;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    pre_havoc_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall r: Ref, x: Int ::
  //     { P(r, x) }
  //     (r in rs) && (x in xs) ==> acc(P(r, x), write)) -- 0362.vpr@10.3--10.80
    
    // -- Check definedness of (forall r: Ref, x: Int :: { P(r, x) } (r in rs) && (x in xs) ==> acc(P(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@10.10--10.80) [209524]"}
        (forall r_1_1: Ref, x_1: int, r_1_2: Ref, x_1_1: int ::
        { neverTriggered2(r_1_1, x_1), neverTriggered2(r_1_2, x_1_1) }
        ((((r_1_1 != r_1_2 && x_1 != x_1_1) && (Seq#Contains(rs, r_1_1) && Seq#Contains(xs, x_1))) && (Seq#Contains(rs, r_1_2) && Seq#Contains(xs, x_1_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref, x_1: int ::
        { Heap[null, P(r_1_1, x_1)] } { Mask[null, P(r_1_1, x_1)] } { Heap[null, P(r_1_1, x_1)] }
        (Seq#Contains(rs, r_1_1) && Seq#Contains(xs, x_1)) && NoPerm < FullPerm ==> (invRecv1(r_1_1, x_1) == r_1_1 && invRecv2(r_1_1, x_1) == x_1) && qpRange2(r_1_1, x_1)
      );
      assume (forall r_2_1_1: Ref, x_2_1: int ::
        { invRecv1(r_2_1_1, x_2_1), invRecv2(r_2_1_1, x_2_1) }
        ((Seq#Contains(rs, invRecv1(r_2_1_1, x_2_1)) && Seq#Contains(xs, invRecv2(r_2_1_1, x_2_1))) && NoPerm < FullPerm) && qpRange2(r_2_1_1, x_2_1) ==> invRecv1(r_2_1_1, x_2_1) == r_2_1_1 && invRecv2(r_2_1_1, x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref, x_2_1: int ::
        { QPMask[null, P(r_2_1_1, x_2_1)] }
        ((Seq#Contains(rs, invRecv1(r_2_1_1, x_2_1)) && Seq#Contains(xs, invRecv2(r_2_1_1, x_2_1))) && NoPerm < FullPerm) && qpRange2(r_2_1_1, x_2_1) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1_1, x_2_1) == r_2_1_1 && invRecv2(r_2_1_1, x_2_1) == x_2_1) && QPMask[null, P(r_2_1_1, x_2_1)] == Mask[null, P(r_2_1_1, x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref, x_2_1: int ::
        { QPMask[null, P(r_2_1_1, x_2_1)] }
        !(((Seq#Contains(rs, invRecv1(r_2_1_1, x_2_1)) && Seq#Contains(xs, invRecv2(r_2_1_1, x_2_1))) && NoPerm < FullPerm) && qpRange2(r_2_1_1, x_2_1)) ==> QPMask[null, P(r_2_1_1, x_2_1)] == Mask[null, P(r_2_1_1, x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label pre_havoc -- 0362.vpr@12.3--12.18
    pre_havoc:
    Labelpre_havocMask := Mask;
    Labelpre_havocHeap := Heap;
    pre_havoc_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall r: Ref, x: Int ::
  //     { P(r, x) }
  //     acc(P(r, x), old[pre_havoc](perm(P(r, x))))) -- 0362.vpr@14.3--14.88
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall r: Ref, x: Int :: { P(r, x) } acc(P(r, x), old[pre_havoc](perm(P(r, x)))))
      if (*) {
        assert {:msg "  Exhale might fail. Did not reach labelled state pre_havoc required to evaluate old[pre_havoc](perm(P(r, x))). (0362.vpr@14.10--14.88) [209525]"}
          pre_havoc_lblGuard;
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction old[pre_havoc](perm(P(r, x))) might be negative. (0362.vpr@14.10--14.88) [209526]"}
        (forall r_6_1_1: Ref, x_6_1_1: int ::
        { invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1) }
        qpRange4(r_6_1_1, x_6_1_1) ==> Labelpre_havocMask[null, P(invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1))] >= NoPerm
      );
    
    // -- check if receiver acc(P(r, x), old[pre_havoc](perm(P(r, x)))) is injective
      assert {:msg "  Exhale might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@14.10--14.88) [209527]"}
        (forall r_5: Ref, x_5: int, r_5_1: Ref, x_5_1: int ::
        { neverTriggered4(r_5, x_5), neverTriggered4(r_5_1, x_5_1) }
        ((r_5 != r_5_1 && x_5 != x_5_1) && NoPerm < Labelpre_havocMask[null, P(r_5, x_5)]) && NoPerm < Labelpre_havocMask[null, P(r_5_1, x_5_1)] ==> r_5 != r_5_1 || x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(r, x) (0362.vpr@14.10--14.88) [209528]"}
        (forall r_5: Ref, x_5: int ::
        { Heap[null, P(r_5, x_5)] } { Mask[null, P(r_5, x_5)] } { Heap[null, P(r_5, x_5)] }
        Mask[null, P(r_5, x_5)] >= Labelpre_havocMask[null, P(r_5, x_5)]
      );
    
    // -- assumptions for inverse of receiver acc(P(r, x), old[pre_havoc](perm(P(r, x))))
      assume (forall r_5: Ref, x_5: int ::
        { Heap[null, P(r_5, x_5)] } { Mask[null, P(r_5, x_5)] } { Heap[null, P(r_5, x_5)] }
        NoPerm < Labelpre_havocMask[null, P(r_5, x_5)] ==> (invRecv3(r_5, x_5) == r_5 && invRecv4(r_5, x_5) == x_5) && qpRange4(r_5, x_5)
      );
      assume (forall r_6_1_1: Ref, x_6_1_1: int ::
        { invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1) }
        NoPerm < Labelpre_havocMask[null, P(invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1))] && qpRange4(r_6_1_1, x_6_1_1) ==> invRecv3(r_6_1_1, x_6_1_1) == r_6_1_1 && invRecv4(r_6_1_1, x_6_1_1) == x_6_1_1
      );
    
    // -- assume permission updates
      assume (forall r_6_1_1: Ref, x_6_1_1: int ::
        { QPMask[null, P(r_6_1_1, x_6_1_1)] }
        NoPerm < Labelpre_havocMask[null, P(invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1))] && qpRange4(r_6_1_1, x_6_1_1) ==> (invRecv3(r_6_1_1, x_6_1_1) == r_6_1_1 && invRecv4(r_6_1_1, x_6_1_1) == x_6_1_1) && QPMask[null, P(r_6_1_1, x_6_1_1)] == Mask[null, P(r_6_1_1, x_6_1_1)] - Labelpre_havocMask[null, P(invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1))]
      );
      assume (forall r_6_1_1: Ref, x_6_1_1: int ::
        { QPMask[null, P(r_6_1_1, x_6_1_1)] }
        !(NoPerm < Labelpre_havocMask[null, P(invRecv3(r_6_1_1, x_6_1_1), invRecv4(r_6_1_1, x_6_1_1))] && qpRange4(r_6_1_1, x_6_1_1)) ==> QPMask[null, P(r_6_1_1, x_6_1_1)] == Mask[null, P(r_6_1_1, x_6_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref, x: Int ::
  //     { P(r, x) }
  //     acc(P(r, x), old[pre_havoc](perm(P(r, x))))) -- 0362.vpr@15.3--15.88
    
    // -- Check definedness of (forall r: Ref, x: Int :: { P(r, x) } acc(P(r, x), old[pre_havoc](perm(P(r, x)))))
      if (*) {
        assert {:msg "  Inhale might fail. Did not reach labelled state pre_havoc required to evaluate old[pre_havoc](perm(P(r, x))). (0362.vpr@15.10--15.88) [209529]"}
          pre_havoc_lblGuard;
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(r, x), old[pre_havoc](perm(P(r, x)))) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@15.10--15.88) [209530]"}
        (forall r_8: Ref, x_8_1: int, r_8_1: Ref, x_8_2: int ::
        { neverTriggered6(r_8, x_8_1), neverTriggered6(r_8_1, x_8_2) }
        ((r_8 != r_8_1 && x_8_1 != x_8_2) && NoPerm < Labelpre_havocMask[null, P(r_8, x_8_1)]) && NoPerm < Labelpre_havocMask[null, P(r_8_1, x_8_2)] ==> r_8 != r_8_1 || x_8_1 != x_8_2
      );
    
    // -- Define Inverse Function
      assume (forall r_8: Ref, x_8_1: int ::
        { Heap[null, P(r_8, x_8_1)] } { Mask[null, P(r_8, x_8_1)] } { Heap[null, P(r_8, x_8_1)] }
        NoPerm < Labelpre_havocMask[null, P(r_8, x_8_1)] ==> (invRecv5(r_8, x_8_1) == r_8 && invRecv6(r_8, x_8_1) == x_8_1) && qpRange6(r_8, x_8_1)
      );
      assume (forall r_9_1_1: Ref, x_9_1: int ::
        { invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1) }
        NoPerm < Labelpre_havocMask[null, P(invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1))] && qpRange6(r_9_1_1, x_9_1) ==> invRecv5(r_9_1_1, x_9_1) == r_9_1_1 && invRecv6(r_9_1_1, x_9_1) == x_9_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction old[pre_havoc](perm(P(r, x))) might be negative. (0362.vpr@15.10--15.88) [209531]"}
      (forall r_8: Ref, x_8_1: int ::
      { Heap[null, P(r_8, x_8_1)] } { Mask[null, P(r_8, x_8_1)] } { Heap[null, P(r_8, x_8_1)] }
      Labelpre_havocMask[null, P(r_8, x_8_1)] >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall r_9_1_1: Ref, x_9_1: int ::
        { QPMask[null, P(r_9_1_1, x_9_1)] }
        NoPerm < Labelpre_havocMask[null, P(invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1))] && qpRange6(r_9_1_1, x_9_1) ==> (NoPerm < Labelpre_havocMask[null, P(invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1))] ==> invRecv5(r_9_1_1, x_9_1) == r_9_1_1 && invRecv6(r_9_1_1, x_9_1) == x_9_1) && QPMask[null, P(r_9_1_1, x_9_1)] == Mask[null, P(r_9_1_1, x_9_1)] + Labelpre_havocMask[null, P(invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1))]
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_9_1_1: Ref, x_9_1: int ::
        { QPMask[null, P(r_9_1_1, x_9_1)] }
        !(NoPerm < Labelpre_havocMask[null, P(invRecv5(r_9_1_1, x_9_1), invRecv6(r_9_1_1, x_9_1))] && qpRange6(r_9_1_1, x_9_1)) ==> QPMask[null, P(r_9_1_1, x_9_1)] == Mask[null, P(r_9_1_1, x_9_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (nondet == 0) -- 0362.vpr@19.3--35.4
    if (nondet == 0) {
      
      // -- Translating statement: inhale (forall r: Ref, x: Int ::
  //     { P_state(r, x) }
  //     none < old[pre_havoc](perm(P(r, x))) ==> P_state(r, x) != 0) -- 0362.vpr@20.5--22.27
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref, x: Int :: { P_state(r, x) } none < old[pre_havoc](perm(P(r, x))) ==> P_state(r, x) != 0)
          if (*) {
            assert {:msg "  Inhale might fail. Did not reach labelled state pre_havoc required to evaluate old[pre_havoc](perm(P(r, x))). (0362.vpr@20.12--22.27) [209532]"}
              pre_havoc_lblGuard;
            if (NoPerm < Labelpre_havocMask[null, P(r_38, x_11)]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function P_state might not hold. There might be insufficient permission to access P(r, x) (0362.vpr@22.9--22.22) [209533]"}
                  NoPerm < perm ==> NoPerm < Mask[null, P(r_38, x_11)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall r_12_1: Ref, x_12_2: int ::
          { P_state#frame(Heap[null, P(r_12_1, x_12_2)], r_12_1, x_12_2) }
          NoPerm < Labelpre_havocMask[null, P(r_12_1, x_12_2)] ==> P_state(Heap, r_12_1, x_12_2) != 0
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (nondet == 1) -- 0362.vpr@23.5--35.4
        if (nondet == 1) {
          
          // -- Translating statement: assert (forall r: Ref, x: Int ::none < old[pre_havoc](perm(P(r, x))) ==>
  //     acc(P(r, x), write)) -- 0362.vpr@24.5--26.21
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Mask := AssertMask;
            ExhaleWellDef0Heap := AssertHeap;
            
            // -- Check definedness of (forall r: Ref, x: Int ::none < old[pre_havoc](perm(P(r, x))) ==> acc(P(r, x), write))
              if (*) {
                assert {:msg "  Assert might fail. Did not reach labelled state pre_havoc required to evaluate old[pre_havoc](perm(P(r, x))). (0362.vpr@24.12--26.21) [209534]"}
                  pre_havoc_lblGuard;
                assume false;
              }
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver acc(P(r, x), write) is injective
              assert {:msg "  Assert might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@24.12--26.21) [209536]"}
                (forall r_14: Ref, x_14_1: int, r_14_1: Ref, x_14_2: int ::
                { neverTriggered8(r_14, x_14_1), neverTriggered8(r_14_1, x_14_2) }
                ((((r_14 != r_14_1 && x_14_1 != x_14_2) && NoPerm < Labelpre_havocMask[null, P(r_14, x_14_1)]) && NoPerm < Labelpre_havocMask[null, P(r_14_1, x_14_2)]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_14 != r_14_1 || x_14_1 != x_14_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Assert might fail. There might be insufficient permission to access P(r, x) (0362.vpr@24.12--26.21) [209537]"}
                (forall r_14: Ref, x_14_1: int ::
                { AssertHeap[null, P(r_14, x_14_1)] } { AssertMask[null, P(r_14, x_14_1)] }
                NoPerm < Labelpre_havocMask[null, P(r_14, x_14_1)] ==> AssertMask[null, P(r_14, x_14_1)] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver acc(P(r, x), write)
              assume (forall r_14: Ref, x_14_1: int ::
                { AssertHeap[null, P(r_14, x_14_1)] } { AssertMask[null, P(r_14, x_14_1)] }
                NoPerm < Labelpre_havocMask[null, P(r_14, x_14_1)] && NoPerm < FullPerm ==> (invRecv7(r_14, x_14_1) == r_14 && invRecv8(r_14, x_14_1) == x_14_1) && qpRange8(r_14, x_14_1)
              );
              assume (forall r_15_1: Ref, x_15_1: int ::
                { invRecv7(r_15_1, x_15_1), invRecv8(r_15_1, x_15_1) }
                (NoPerm < Labelpre_havocMask[null, P(invRecv7(r_15_1, x_15_1), invRecv8(r_15_1, x_15_1))] && NoPerm < FullPerm) && qpRange8(r_15_1, x_15_1) ==> invRecv7(r_15_1, x_15_1) == r_15_1 && invRecv8(r_15_1, x_15_1) == x_15_1
              );
            
            // -- assume permission updates
              assume (forall r_15_1: Ref, x_15_1: int ::
                { QPMask[null, P(r_15_1, x_15_1)] }
                (NoPerm < Labelpre_havocMask[null, P(invRecv7(r_15_1, x_15_1), invRecv8(r_15_1, x_15_1))] && NoPerm < FullPerm) && qpRange8(r_15_1, x_15_1) ==> (invRecv7(r_15_1, x_15_1) == r_15_1 && invRecv8(r_15_1, x_15_1) == x_15_1) && QPMask[null, P(r_15_1, x_15_1)] == AssertMask[null, P(r_15_1, x_15_1)] - FullPerm
              );
              assume (forall r_15_1: Ref, x_15_1: int ::
                { QPMask[null, P(r_15_1, x_15_1)] }
                !((NoPerm < Labelpre_havocMask[null, P(invRecv7(r_15_1, x_15_1), invRecv8(r_15_1, x_15_1))] && NoPerm < FullPerm) && qpRange8(r_15_1, x_15_1)) ==> QPMask[null, P(r_15_1, x_15_1)] == AssertMask[null, P(r_15_1, x_15_1)]
              );
            
            // -- assume permission updates for independent locations 
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
                (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
              );
            AssertMask := QPMask;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (nondet == 2) -- 0362.vpr@27.5--35.4
            if (nondet == 2) {
              
              // -- Translating statement: assert (forall r: Ref, x: Int ::none < perm(P(r, x)) ==>
  //     acc(P(r, x), write)) -- 0362.vpr@28.5--30.21
                AssertHeap := Heap;
                AssertMask := Mask;
                ExhaleWellDef0Mask := AssertMask;
                ExhaleWellDef0Heap := AssertHeap;
                
                // -- Check definedness of (forall r: Ref, x: Int ::none < perm(P(r, x)) ==> acc(P(r, x), write))
                  if (*) {
                    assume false;
                  }
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver acc(P(r, x), write) is injective
                  assert {:msg "  Assert might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@28.12--30.21) [209539]"}
                    (forall r_17: Ref, x_17_1: int, r_17_1: Ref, x_17_2: int ::
                    { neverTriggered10(r_17, x_17_1), neverTriggered10(r_17_1, x_17_2) }
                    ((((r_17 != r_17_1 && x_17_1 != x_17_2) && NoPerm < AssertMask[null, P(r_17, x_17_1)]) && NoPerm < AssertMask[null, P(r_17_1, x_17_2)]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_17 != r_17_1 || x_17_1 != x_17_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Assert might fail. There might be insufficient permission to access P(r, x) (0362.vpr@28.12--30.21) [209540]"}
                    (forall r_17: Ref, x_17_1: int ::
                    { AssertHeap[null, P(r_17, x_17_1)] } { AssertMask[null, P(r_17, x_17_1)] }
                    NoPerm < AssertMask[null, P(r_17, x_17_1)] ==> AssertMask[null, P(r_17, x_17_1)] >= FullPerm
                  );
                
                // -- assumptions for inverse of receiver acc(P(r, x), write)
                  assume (forall r_17: Ref, x_17_1: int ::
                    { AssertHeap[null, P(r_17, x_17_1)] } { AssertMask[null, P(r_17, x_17_1)] }
                    NoPerm < AssertMask[null, P(r_17, x_17_1)] && NoPerm < FullPerm ==> (invRecv9(r_17, x_17_1) == r_17 && invRecv10(r_17, x_17_1) == x_17_1) && qpRange10(r_17, x_17_1)
                  );
                  assume (forall r_18_1: Ref, x_18_1: int ::
                    { invRecv9(r_18_1, x_18_1), invRecv10(r_18_1, x_18_1) }
                    (NoPerm < AssertMask[null, P(invRecv9(r_18_1, x_18_1), invRecv10(r_18_1, x_18_1))] && NoPerm < FullPerm) && qpRange10(r_18_1, x_18_1) ==> invRecv9(r_18_1, x_18_1) == r_18_1 && invRecv10(r_18_1, x_18_1) == x_18_1
                  );
                
                // -- assume permission updates
                  assume (forall r_18_1: Ref, x_18_1: int ::
                    { QPMask[null, P(r_18_1, x_18_1)] }
                    (NoPerm < AssertMask[null, P(invRecv9(r_18_1, x_18_1), invRecv10(r_18_1, x_18_1))] && NoPerm < FullPerm) && qpRange10(r_18_1, x_18_1) ==> (invRecv9(r_18_1, x_18_1) == r_18_1 && invRecv10(r_18_1, x_18_1) == x_18_1) && QPMask[null, P(r_18_1, x_18_1)] == AssertMask[null, P(r_18_1, x_18_1)] - FullPerm
                  );
                  assume (forall r_18_1: Ref, x_18_1: int ::
                    { QPMask[null, P(r_18_1, x_18_1)] }
                    !((NoPerm < AssertMask[null, P(invRecv9(r_18_1, x_18_1), invRecv10(r_18_1, x_18_1))] && NoPerm < FullPerm) && qpRange10(r_18_1, x_18_1)) ==> QPMask[null, P(r_18_1, x_18_1)] == AssertMask[null, P(r_18_1, x_18_1)]
                  );
                
                // -- assume permission updates for independent locations 
                  assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                    { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
                    (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
                  );
                AssertMask := QPMask;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: assert (forall r: Ref, x: Int ::
  //     { (r in rs), (x in xs) }
  //     (r in rs) && (x in xs) ==> acc(P(r, x), write)) -- 0362.vpr@32.5--34.21
                AssertHeap := Heap;
                AssertMask := Mask;
                ExhaleWellDef0Mask := AssertMask;
                ExhaleWellDef0Heap := AssertHeap;
                
                // -- Check definedness of (forall r: Ref, x: Int :: { (r in rs), (x in xs) } (r in rs) && (x in xs) ==> acc(P(r, x), write))
                  if (*) {
                    assume false;
                  }
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver acc(P(r, x), write) is injective
                  assert {:msg "  Assert might fail. Quantified resource P(r, x) might not be injective. (0362.vpr@32.12--34.21) [209542]"}
                    (forall r_20: Ref, x_20_2: int, r_20_1: Ref, x_20_3: int ::
                    { neverTriggered12(r_20, x_20_2), neverTriggered12(r_20_1, x_20_3) }
                    ((((r_20 != r_20_1 && x_20_2 != x_20_3) && (Seq#Contains(rs, r_20) && Seq#Contains(xs, x_20_2))) && (Seq#Contains(rs, r_20_1) && Seq#Contains(xs, x_20_3))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_20 != r_20_1 || x_20_2 != x_20_3
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Assert might fail. There might be insufficient permission to access P(r, x) (0362.vpr@32.12--34.21) [209543]"}
                    (forall r_20: Ref, x_20_2: int ::
                    { AssertHeap[null, P(r_20, x_20_2)] } { AssertMask[null, P(r_20, x_20_2)] } { Seq#ContainsTrigger(rs, r_20), Seq#ContainsTrigger(xs, x_20_2) } { Seq#ContainsTrigger(rs, r_20), Seq#Contains(xs, x_20_2) } { Seq#Contains(rs, r_20), Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(rs, r_20), Seq#Contains(xs, x_20_2) }
                    Seq#Contains(rs, r_20) && Seq#Contains(xs, x_20_2) ==> AssertMask[null, P(r_20, x_20_2)] >= FullPerm
                  );
                
                // -- assumptions for inverse of receiver acc(P(r, x), write)
                  assume (forall r_20: Ref, x_20_2: int ::
                    { AssertHeap[null, P(r_20, x_20_2)] } { AssertMask[null, P(r_20, x_20_2)] } { Seq#ContainsTrigger(rs, r_20), Seq#ContainsTrigger(xs, x_20_2) } { Seq#ContainsTrigger(rs, r_20), Seq#Contains(xs, x_20_2) } { Seq#Contains(rs, r_20), Seq#ContainsTrigger(xs, x_20_2) } { Seq#Contains(rs, r_20), Seq#Contains(xs, x_20_2) }
                    (Seq#Contains(rs, r_20) && Seq#Contains(xs, x_20_2)) && NoPerm < FullPerm ==> (invRecv11(r_20, x_20_2) == r_20 && invRecv12(r_20, x_20_2) == x_20_2) && qpRange12(r_20, x_20_2)
                  );
                  assume (forall r_21_1: Ref, x_21_1_1: int ::
                    { invRecv11(r_21_1, x_21_1_1), invRecv12(r_21_1, x_21_1_1) }
                    ((Seq#Contains(rs, invRecv11(r_21_1, x_21_1_1)) && Seq#Contains(xs, invRecv12(r_21_1, x_21_1_1))) && NoPerm < FullPerm) && qpRange12(r_21_1, x_21_1_1) ==> invRecv11(r_21_1, x_21_1_1) == r_21_1 && invRecv12(r_21_1, x_21_1_1) == x_21_1_1
                  );
                
                // -- assume permission updates
                  assume (forall r_21_1: Ref, x_21_1_1: int ::
                    { QPMask[null, P(r_21_1, x_21_1_1)] }
                    ((Seq#Contains(rs, invRecv11(r_21_1, x_21_1_1)) && Seq#Contains(xs, invRecv12(r_21_1, x_21_1_1))) && NoPerm < FullPerm) && qpRange12(r_21_1, x_21_1_1) ==> (invRecv11(r_21_1, x_21_1_1) == r_21_1 && invRecv12(r_21_1, x_21_1_1) == x_21_1_1) && QPMask[null, P(r_21_1, x_21_1_1)] == AssertMask[null, P(r_21_1, x_21_1_1)] - FullPerm
                  );
                  assume (forall r_21_1: Ref, x_21_1_1: int ::
                    { QPMask[null, P(r_21_1, x_21_1_1)] }
                    !(((Seq#Contains(rs, invRecv11(r_21_1, x_21_1_1)) && Seq#Contains(xs, invRecv12(r_21_1, x_21_1_1))) && NoPerm < FullPerm) && qpRange12(r_21_1, x_21_1_1)) ==> QPMask[null, P(r_21_1, x_21_1_1)] == AssertMask[null, P(r_21_1, x_21_1_1)]
                  );
                
                // -- assume permission updates for independent locations 
                  assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                    { AssertMask[o_4, f_5] } { QPMask[o_4, f_5] }
                    (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
                  );
                AssertMask := QPMask;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}