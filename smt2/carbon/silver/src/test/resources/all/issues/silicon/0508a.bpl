// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:34:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0508a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0508a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_55: Ref, f_54: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_55, f_54] }
  Heap[o_55, $allocated] ==> Heap[Heap[o_55, f_54], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_15) ==> Heap[o_43, f_15] == ExhaleHeap[o_43, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29), ExhaleHeap[null, PredicateMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> Heap[null, PredicateMaskField(pm_f_29)] == ExhaleHeap[null, PredicateMaskField(pm_f_29)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_29, f_15] }
    Heap[null, PredicateMaskField(pm_f_29)][o2_29, f_15] ==> Heap[o2_29, f_15] == ExhaleHeap[o2_29, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29), ExhaleHeap[null, WandMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> Heap[null, WandMaskField(pm_f_29)] == ExhaleHeap[null, WandMaskField(pm_f_29)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_29, f_15] }
    Heap[null, WandMaskField(pm_f_29)][o2_29, f_15] ==> Heap[o2_29, f_15] == ExhaleHeap[o2_29, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_55: Ref, f_26: (Field A B), v: B ::
  { Heap[o_55, f_26:=v] }
  succHeap(Heap, Heap[o_55, f_26:=v])
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
function  neverTriggered2(r_3_2: Ref): bool;
function  neverTriggered3(s_1: Ref): bool;
function  neverTriggered4(r_1_1: Ref): bool;
function  neverTriggered5(r_3_2: Ref): bool;
function  neverTriggered6(s_1: Ref): bool;
function  neverTriggered7(r_1_1: Ref): bool;
function  neverTriggered8(r_3_2: Ref): bool;
function  neverTriggered9(s_1: Ref): bool;
function  neverTriggered10(r_1_1: Ref): bool;
function  neverTriggered11(r_3_2: Ref): bool;
function  neverTriggered12(s_1: Ref): bool;
function  neverTriggered13(i_3: int): bool;
function  neverTriggered14(i_7_1: int): bool;
function  neverTriggered15(j_5_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
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
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;

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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of domain identity_function
// ==================================================

// The type for domain identity_function
type identity_functionDomainType T;

// Translation of domain function id
function  id_1<T>(v_4: T): T;

// Translation of anonymous domain axiom
axiom (forall <T> v_2: T ::
  { (id_1(v_2): T) }
  (id_1(v_2): T) == v_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique bool_prop: Field NormalField bool;
axiom !IsPredicateField(bool_prop);
axiom !IsWandField(bool_prop);
const unique item_1: Field NormalField Ref;
axiom !IsPredicateField(item_1);
axiom !IsWandField(item_1);

// ==================================================
// Translation of method test03a
// ==================================================

procedure test03a(trees: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s1_1: Ref;
  var s2_1: Ref;
  var r_28: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s_14: Ref;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in trees) } (r in trees) ==> acc(r.item, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.item might not be injective. (0508a.vpr@15.13--15.74) [219528]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && trees[r_1_1]) && trees[r_1_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[r_1_1, item_1] } { QPMask[r_1_1, item_1] } { trees[r_1_1] }
        trees[r_1_1] && NoPerm < 1 / 2 ==> qpRange1(r_1_1) && invRecv1(r_1_1) == r_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (trees[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@15.13--15.74) [219529]"}
      (forall r_1_1: Ref ::
      { Heap[r_1_1, item_1] } { QPMask[r_1_1, item_1] } { trees[r_1_1] }
      trees[r_1_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { Heap[r_1_1, item_1] } { QPMask[r_1_1, item_1] } { trees[r_1_1] }
        trees[r_1_1] && 1 / 2 > NoPerm ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        ((trees[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, item_1] == Mask[o_4, item_1] + 1 / 2) && (!((trees[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in trees), (s2 in trees) } (s1 in trees) && ((s2 in trees) && s1 != s2) ==> s1.item != s2.item)
      if (*) {
        if (trees[s1_1] && (trees[s2_1] && s1_1 != s2_1)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s1.item (0508a.vpr@16.13--16.103) [219530]"}
            HasDirectPerm(Mask, s1_1, item_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s2.item (0508a.vpr@16.13--16.103) [219531]"}
            HasDirectPerm(Mask, s2_1, item_1);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { trees[s1_1_1], trees[s2_1_1] }
      trees[s1_1_1] && (trees[s2_1_1] && s1_1_1 != s2_1_1) ==> Heap[s1_1_1, item_1] != Heap[s2_1_1, item_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in trees) } (r in trees) ==> acc(r.item.bool_prop, 1 / 2))
      if (*) {
        if (trees[r_28]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.item (0508a.vpr@17.13--17.84) [219532]"}
            HasDirectPerm(Mask, r_28, item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.item.bool_prop might not be injective. (0508a.vpr@17.13--17.84) [219533]"}
      (forall r_3_2: Ref, r_3_3: Ref ::
      
      (((r_3_2 != r_3_3 && trees[r_3_2]) && trees[r_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[r_3_2, item_1] != Heap[r_3_3, item_1]
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: Ref ::
        { Heap[r_3_2, item_1] } { trees[r_3_2] }
        trees[r_3_2] && NoPerm < 1 / 2 ==> qpRange2(Heap[r_3_2, item_1]) && invRecv2(Heap[r_3_2, item_1]) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (trees[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> Heap[invRecv2(o_4), item_1] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@17.13--17.84) [219534]"}
      (forall r_3_2: Ref ::
      { Heap[r_3_2, item_1] } { trees[r_3_2] }
      trees[r_3_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3_2: Ref ::
        { Heap[r_3_2, item_1] } { trees[r_3_2] }
        trees[r_3_2] && 1 / 2 > NoPerm ==> Heap[r_3_2, item_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((trees[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> Heap[invRecv2(o_4), item_1] == o_4) && QPMask[o_4, bool_prop] == Mask[o_4, bool_prop] + 1 / 2) && (!((trees[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall s: Ref ::
  //     { (s in trees) }
  //     (s in trees) ==> acc(s.item.bool_prop, wildcard)) -- 0508a.vpr@19.3--19.86
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (s in trees) } (s in trees) ==> acc(s.item.bool_prop, wildcard))
      if (*) {
        if (trees[s_14]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access s.item (0508a.vpr@19.10--19.86) [219535]"}
            HasDirectPerm(ExhaleWellDef0Mask, s_14, item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access s.item.bool_prop (0508a.vpr@19.10--19.86) [219536]"}
      (forall s_1: Ref ::
      
      trees[s_1] ==> AssertMask[AssertHeap[s_1, item_1], bool_prop] > NoPerm
    );
    assume (forall s_1: Ref ::
      
      trees[s_1] ==> wildcard < AssertMask[AssertHeap[s_1, item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508a.vpr@19.10--19.86) [219537]"}
        (forall s_1: Ref ::
        { AssertHeap[s_1, item_1] } { trees[s_1] }
        trees[s_1] && dummyFunction(AssertHeap[AssertHeap[s_1, item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver s.item is injective
      assert {:msg "  Assert might fail. Quantified resource s.item.bool_prop might not be injective. (0508a.vpr@19.10--19.86) [219538]"}
        (forall s_1: Ref, s_1_1: Ref ::
        { neverTriggered3(s_1), neverTriggered3(s_1_1) }
        (((s_1 != s_1_1 && trees[s_1]) && trees[s_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[s_1, item_1] != AssertHeap[s_1_1, item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access s.item.bool_prop (0508a.vpr@19.10--19.86) [219539]"}
        (forall s_1: Ref ::
        { AssertHeap[s_1, item_1] } { trees[s_1] }
        trees[s_1] ==> AssertMask[AssertHeap[s_1, item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver s.item
      assume (forall s_1: Ref ::
        { AssertHeap[s_1, item_1] } { trees[s_1] }
        trees[s_1] && NoPerm < wildcard ==> qpRange3(AssertHeap[s_1, item_1]) && invRecv3(AssertHeap[s_1, item_1]) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        trees[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4)) ==> AssertHeap[invRecv3(o_4), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        (trees[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4)) ==> AssertHeap[invRecv3(o_4), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!(trees[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03b
// ==================================================

procedure test03b(trees: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var r_41: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s_18: Ref;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (id(r): Ref) } (r in trees) ==> acc((id(r): Ref).item, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item might not be injective. (0508a.vpr@23.13--23.73) [219540]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && trees[r_1_1]) && trees[r_1_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (id_1(r_1_1): Ref) != (id_1(r_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
        trees[r_1_1] && NoPerm < 1 / 2 ==> qpRange4((id_1(r_1_1): Ref)) && invRecv4((id_1(r_1_1): Ref)) == r_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (trees[invRecv4(o_4)] && NoPerm < 1 / 2) && qpRange4(o_4) ==> (id_1(invRecv4(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@23.13--23.73) [219541]"}
      (forall r_1_1: Ref ::
      { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
      trees[r_1_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
        trees[r_1_1] && 1 / 2 > NoPerm ==> (id_1(r_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        ((trees[invRecv4(o_4)] && NoPerm < 1 / 2) && qpRange4(o_4) ==> (NoPerm < 1 / 2 ==> (id_1(invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, item_1] == Mask[o_4, item_1] + 1 / 2) && (!((trees[invRecv4(o_4)] && NoPerm < 1 / 2) && qpRange4(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (id(r): Ref) } (r in trees) ==> acc((id(r): Ref).item.bool_prop, none))
      if (*) {
        if (trees[r_41]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(r): Ref).item (0508a.vpr@24.13--24.84) [219542]"}
            HasDirectPerm(Mask, (id_1(r_41): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item.bool_prop might not be injective. (0508a.vpr@24.13--24.84) [219543]"}
      (forall r_3_2: Ref, r_3_3: Ref ::
      
      (((r_3_2 != r_3_3 && trees[r_3_2]) && trees[r_3_3]) && NoPerm < NoPerm) && NoPerm < NoPerm ==> Heap[(id_1(r_3_2): Ref), item_1] != Heap[(id_1(r_3_3): Ref), item_1]
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: Ref ::
        { Heap[(id_1(r_3_2): Ref), item_1] } { (id_1(r_3_2): Ref) }
        trees[r_3_2] && NoPerm < NoPerm ==> qpRange5(Heap[(id_1(r_3_2): Ref), item_1]) && invRecv5(Heap[(id_1(r_3_2): Ref), item_1]) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (trees[invRecv5(o_4)] && NoPerm < NoPerm) && qpRange5(o_4) ==> Heap[(id_1(invRecv5(o_4)): Ref), item_1] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction none might be negative. (0508a.vpr@24.13--24.84) [219544]"}
      (forall r_3_2: Ref ::
      { Heap[(id_1(r_3_2): Ref), item_1] } { (id_1(r_3_2): Ref) }
      trees[r_3_2] ==> NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((trees[invRecv5(o_4)] && NoPerm < NoPerm) && qpRange5(o_4) ==> (NoPerm < NoPerm ==> Heap[(id_1(invRecv5(o_4)): Ref), item_1] == o_4) && QPMask[o_4, bool_prop] == Mask[o_4, bool_prop] + NoPerm) && (!((trees[invRecv5(o_4)] && NoPerm < NoPerm) && qpRange5(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall s: Ref ::
  //     { (id(s): Ref) }
  //     (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard)) -- 0508a.vpr@30.3--30.85
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (id(s): Ref) } (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard))
      if (*) {
        if (trees[s_18]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item (0508a.vpr@30.10--30.85) [219545]"}
            HasDirectPerm(ExhaleWellDef0Mask, (id_1(s_18): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@30.10--30.85) [219546]"}
      (forall s_1: Ref ::
      
      trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
    );
    assume (forall s_1: Ref ::
      
      trees[s_1] ==> wildcard < AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508a.vpr@30.10--30.85) [219547]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] && dummyFunction(AssertHeap[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver (id(s): Ref).item is injective
      assert {:msg "  Assert might fail. Quantified resource (id(s): Ref).item.bool_prop might not be injective. (0508a.vpr@30.10--30.85) [219548]"}
        (forall s_1: Ref, s_1_1: Ref ::
        { neverTriggered6(s_1), neverTriggered6(s_1_1) }
        (((s_1 != s_1_1 && trees[s_1]) && trees[s_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[(id_1(s_1): Ref), item_1] != AssertHeap[(id_1(s_1_1): Ref), item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@30.10--30.85) [219549]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver (id(s): Ref).item
      assume (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] && NoPerm < wildcard ==> qpRange6(AssertHeap[(id_1(s_1): Ref), item_1]) && invRecv6(AssertHeap[(id_1(s_1): Ref), item_1]) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        trees[invRecv6(o_4)] && (NoPerm < wildcard && qpRange6(o_4)) ==> AssertHeap[(id_1(invRecv6(o_4)): Ref), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        (trees[invRecv6(o_4)] && (NoPerm < wildcard && qpRange6(o_4)) ==> AssertHeap[(id_1(invRecv6(o_4)): Ref), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!(trees[invRecv6(o_4)] && (NoPerm < wildcard && qpRange6(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03c
// ==================================================

procedure test03c(trees: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s1_9: Ref;
  var s2_9: Ref;
  var r_13: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s_12: Ref;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (id(r): Ref) } (r in trees) ==> acc((id(r): Ref).item, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item might not be injective. (0508a.vpr@34.14--34.74) [219550]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && trees[r_1_1]) && trees[r_1_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (id_1(r_1_1): Ref) != (id_1(r_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
        trees[r_1_1] && NoPerm < 1 / 2 ==> qpRange7((id_1(r_1_1): Ref)) && invRecv7((id_1(r_1_1): Ref)) == r_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (trees[invRecv7(o_4)] && NoPerm < 1 / 2) && qpRange7(o_4) ==> (id_1(invRecv7(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@34.14--34.74) [219551]"}
      (forall r_1_1: Ref ::
      { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
      trees[r_1_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { (id_1(r_1_1): Ref) }
        trees[r_1_1] && 1 / 2 > NoPerm ==> (id_1(r_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        ((trees[invRecv7(o_4)] && NoPerm < 1 / 2) && qpRange7(o_4) ==> (NoPerm < 1 / 2 ==> (id_1(invRecv7(o_4)): Ref) == o_4) && QPMask[o_4, item_1] == Mask[o_4, item_1] + 1 / 2) && (!((trees[invRecv7(o_4)] && NoPerm < 1 / 2) && qpRange7(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in trees), (s2 in trees) } { (s1 in trees), (id(s2): Ref) } { (s2 in trees), (id(s1): Ref) } { (id(s1): Ref), (id(s2): Ref) } { (id(s2): Ref), (id(s1): Ref) } (s1 in trees) && ((s2 in trees) && (id(s1): Ref) != (id(s2): Ref)) ==> (id(s1): Ref).item != (id(s2): Ref).item)
      if (*) {
        if (trees[s1_9] && (trees[s2_9] && (id_1(s1_9): Ref) != (id_1(s2_9): Ref))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(s1): Ref).item (0508a.vpr@35.14--35.120) [219552]"}
            HasDirectPerm(Mask, (id_1(s1_9): Ref), item_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(s2): Ref).item (0508a.vpr@35.14--35.120) [219553]"}
            HasDirectPerm(Mask, (id_1(s2_9): Ref), item_1);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { trees[s1_1_1], trees[s2_1_1] } { trees[s1_1_1], (id_1(s2_1_1): Ref) } { trees[s2_1_1], (id_1(s1_1_1): Ref) } { (id_1(s1_1_1): Ref), (id_1(s2_1_1): Ref) } { (id_1(s2_1_1): Ref), (id_1(s1_1_1): Ref) }
      trees[s1_1_1] && (trees[s2_1_1] && (id_1(s1_1_1): Ref) != (id_1(s2_1_1): Ref)) ==> Heap[(id_1(s1_1_1): Ref), item_1] != Heap[(id_1(s2_1_1): Ref), item_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (id(r): Ref) } (r in trees) ==> acc((id(r): Ref).item.bool_prop, 1 / 2))
      if (*) {
        if (trees[r_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(r): Ref).item (0508a.vpr@36.14--36.84) [219554]"}
            HasDirectPerm(Mask, (id_1(r_13): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item.bool_prop might not be injective. (0508a.vpr@36.14--36.84) [219555]"}
      (forall r_3_2: Ref, r_3_3: Ref ::
      
      (((r_3_2 != r_3_3 && trees[r_3_2]) && trees[r_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[(id_1(r_3_2): Ref), item_1] != Heap[(id_1(r_3_3): Ref), item_1]
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: Ref ::
        { Heap[(id_1(r_3_2): Ref), item_1] } { (id_1(r_3_2): Ref) }
        trees[r_3_2] && NoPerm < 1 / 2 ==> qpRange8(Heap[(id_1(r_3_2): Ref), item_1]) && invRecv8(Heap[(id_1(r_3_2): Ref), item_1]) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (trees[invRecv8(o_4)] && NoPerm < 1 / 2) && qpRange8(o_4) ==> Heap[(id_1(invRecv8(o_4)): Ref), item_1] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@36.14--36.84) [219556]"}
      (forall r_3_2: Ref ::
      { Heap[(id_1(r_3_2): Ref), item_1] } { (id_1(r_3_2): Ref) }
      trees[r_3_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3_2: Ref ::
        { Heap[(id_1(r_3_2): Ref), item_1] } { (id_1(r_3_2): Ref) }
        trees[r_3_2] && 1 / 2 > NoPerm ==> Heap[(id_1(r_3_2): Ref), item_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((trees[invRecv8(o_4)] && NoPerm < 1 / 2) && qpRange8(o_4) ==> (NoPerm < 1 / 2 ==> Heap[(id_1(invRecv8(o_4)): Ref), item_1] == o_4) && QPMask[o_4, bool_prop] == Mask[o_4, bool_prop] + 1 / 2) && (!((trees[invRecv8(o_4)] && NoPerm < 1 / 2) && qpRange8(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall s: Ref ::
  //     { (id(s): Ref) }
  //     (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard)) -- 0508a.vpr@38.4--38.86
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (id(s): Ref) } (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard))
      if (*) {
        if (trees[s_12]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item (0508a.vpr@38.11--38.86) [219557]"}
            HasDirectPerm(ExhaleWellDef0Mask, (id_1(s_12): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@38.11--38.86) [219558]"}
      (forall s_1: Ref ::
      
      trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
    );
    assume (forall s_1: Ref ::
      
      trees[s_1] ==> wildcard < AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508a.vpr@38.11--38.86) [219559]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] && dummyFunction(AssertHeap[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver (id(s): Ref).item is injective
      assert {:msg "  Assert might fail. Quantified resource (id(s): Ref).item.bool_prop might not be injective. (0508a.vpr@38.11--38.86) [219560]"}
        (forall s_1: Ref, s_1_1: Ref ::
        { neverTriggered9(s_1), neverTriggered9(s_1_1) }
        (((s_1 != s_1_1 && trees[s_1]) && trees[s_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[(id_1(s_1): Ref), item_1] != AssertHeap[(id_1(s_1_1): Ref), item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@38.11--38.86) [219561]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver (id(s): Ref).item
      assume (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { (id_1(s_1): Ref) }
        trees[s_1] && NoPerm < wildcard ==> qpRange9(AssertHeap[(id_1(s_1): Ref), item_1]) && invRecv9(AssertHeap[(id_1(s_1): Ref), item_1]) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        trees[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4)) ==> AssertHeap[(id_1(invRecv9(o_4)): Ref), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        (trees[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4)) ==> AssertHeap[(id_1(invRecv9(o_4)): Ref), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!(trees[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(trees: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s1_10: Ref;
  var s2_10: Ref;
  var r_46: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s_15: Ref;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in trees) } (r in trees) ==> acc((id(r): Ref).item, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item might not be injective. (0508a.vpr@44.13--44.78) [219562]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && trees[r_1_1]) && trees[r_1_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (id_1(r_1_1): Ref) != (id_1(r_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { trees[r_1_1] }
        trees[r_1_1] && NoPerm < 1 / 2 ==> qpRange10((id_1(r_1_1): Ref)) && invRecv10((id_1(r_1_1): Ref)) == r_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (trees[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4) ==> (id_1(invRecv10(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@44.13--44.78) [219563]"}
      (forall r_1_1: Ref ::
      { (id_1(r_1_1): Ref) } { trees[r_1_1] }
      trees[r_1_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { (id_1(r_1_1): Ref) } { trees[r_1_1] }
        trees[r_1_1] && 1 / 2 > NoPerm ==> (id_1(r_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        ((trees[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> (id_1(invRecv10(o_4)): Ref) == o_4) && QPMask[o_4, item_1] == Mask[o_4, item_1] + 1 / 2) && (!((trees[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in trees), (s2 in trees) } { (s1 in trees), (id(s2): Ref) } { (s2 in trees), (id(s1): Ref) } { (id(s1): Ref), (id(s2): Ref) } { (id(s2): Ref), (id(s1): Ref) } (s1 in trees) && ((s2 in trees) && (id(s1): Ref) != (id(s2): Ref)) ==> (id(s1): Ref).item != (id(s2): Ref).item)
      if (*) {
        if (trees[s1_10] && (trees[s2_10] && (id_1(s1_10): Ref) != (id_1(s2_10): Ref))) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(s1): Ref).item (0508a.vpr@45.13--45.119) [219564]"}
            HasDirectPerm(Mask, (id_1(s1_10): Ref), item_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(s2): Ref).item (0508a.vpr@45.13--45.119) [219565]"}
            HasDirectPerm(Mask, (id_1(s2_10): Ref), item_1);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { trees[s1_1_1], trees[s2_1_1] } { trees[s1_1_1], (id_1(s2_1_1): Ref) } { trees[s2_1_1], (id_1(s1_1_1): Ref) } { (id_1(s1_1_1): Ref), (id_1(s2_1_1): Ref) } { (id_1(s2_1_1): Ref), (id_1(s1_1_1): Ref) }
      trees[s1_1_1] && (trees[s2_1_1] && (id_1(s1_1_1): Ref) != (id_1(s2_1_1): Ref)) ==> Heap[(id_1(s1_1_1): Ref), item_1] != Heap[(id_1(s2_1_1): Ref), item_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in trees) } (r in trees) ==> acc((id(r): Ref).item.bool_prop, 1 / 2))
      if (*) {
        if (trees[r_46]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access (id(r): Ref).item (0508a.vpr@46.13--46.88) [219566]"}
            HasDirectPerm(Mask, (id_1(r_46): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (id(r): Ref).item.bool_prop might not be injective. (0508a.vpr@46.13--46.88) [219567]"}
      (forall r_3_2: Ref, r_3_3: Ref ::
      
      (((r_3_2 != r_3_3 && trees[r_3_2]) && trees[r_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[(id_1(r_3_2): Ref), item_1] != Heap[(id_1(r_3_3): Ref), item_1]
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: Ref ::
        { Heap[(id_1(r_3_2): Ref), item_1] } { trees[r_3_2] }
        trees[r_3_2] && NoPerm < 1 / 2 ==> qpRange11(Heap[(id_1(r_3_2): Ref), item_1]) && invRecv11(Heap[(id_1(r_3_2): Ref), item_1]) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (trees[invRecv11(o_4)] && NoPerm < 1 / 2) && qpRange11(o_4) ==> Heap[(id_1(invRecv11(o_4)): Ref), item_1] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@46.13--46.88) [219568]"}
      (forall r_3_2: Ref ::
      { Heap[(id_1(r_3_2): Ref), item_1] } { trees[r_3_2] }
      trees[r_3_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3_2: Ref ::
        { Heap[(id_1(r_3_2): Ref), item_1] } { trees[r_3_2] }
        trees[r_3_2] && 1 / 2 > NoPerm ==> Heap[(id_1(r_3_2): Ref), item_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((trees[invRecv11(o_4)] && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> Heap[(id_1(invRecv11(o_4)): Ref), item_1] == o_4) && QPMask[o_4, bool_prop] == Mask[o_4, bool_prop] + 1 / 2) && (!((trees[invRecv11(o_4)] && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall s: Ref ::
  //     { (s in trees) }
  //     (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard)) -- 0508a.vpr@48.3--48.90
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (s in trees) } (s in trees) ==> acc((id(s): Ref).item.bool_prop, wildcard))
      if (*) {
        if (trees[s_15]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item (0508a.vpr@48.10--48.90) [219569]"}
            HasDirectPerm(ExhaleWellDef0Mask, (id_1(s_15): Ref), item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@48.10--48.90) [219570]"}
      (forall s_1: Ref ::
      
      trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
    );
    assume (forall s_1: Ref ::
      
      trees[s_1] ==> wildcard < AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508a.vpr@48.10--48.90) [219571]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { trees[s_1] }
        trees[s_1] && dummyFunction(AssertHeap[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver (id(s): Ref).item is injective
      assert {:msg "  Assert might fail. Quantified resource (id(s): Ref).item.bool_prop might not be injective. (0508a.vpr@48.10--48.90) [219572]"}
        (forall s_1: Ref, s_1_1: Ref ::
        { neverTriggered12(s_1), neverTriggered12(s_1_1) }
        (((s_1 != s_1_1 && trees[s_1]) && trees[s_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[(id_1(s_1): Ref), item_1] != AssertHeap[(id_1(s_1_1): Ref), item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access (id(s): Ref).item.bool_prop (0508a.vpr@48.10--48.90) [219573]"}
        (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { trees[s_1] }
        trees[s_1] ==> AssertMask[AssertHeap[(id_1(s_1): Ref), item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver (id(s): Ref).item
      assume (forall s_1: Ref ::
        { AssertHeap[(id_1(s_1): Ref), item_1] } { trees[s_1] }
        trees[s_1] && NoPerm < wildcard ==> qpRange12(AssertHeap[(id_1(s_1): Ref), item_1]) && invRecv12(AssertHeap[(id_1(s_1): Ref), item_1]) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        trees[invRecv12(o_4)] && (NoPerm < wildcard && qpRange12(o_4)) ==> AssertHeap[(id_1(invRecv12(o_4)): Ref), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        (trees[invRecv12(o_4)] && (NoPerm < wildcard && qpRange12(o_4)) ==> AssertHeap[(id_1(invRecv12(o_4)): Ref), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!(trees[invRecv12(o_4)] && (NoPerm < wildcard && qpRange12(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(trees: (Seq Ref), g_1: int) returns ()
  modifies Heap, Mask;
{
  var i_24: int;
  var j_15: int;
  var i_29: int;
  var QPMask: MaskType;
  var i_30: int;
  var j_22: int;
  var i_31: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_23: int;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 < g_1;
    assume Seq#Length(trees) == g_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { trees[i], trees[j] } i >= 0 && (i < g && (j >= 0 && (j < g && i != j))) ==> trees[i] != trees[j])
      if (*) {
        if (i_24 >= 0 && (i_24 < g_1 && (j_15 >= 0 && (j_15 < g_1 && i_24 != j_15)))) {
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might be negative. (0508a.vpr@55.13--55.107) [219574]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might exceed sequence length. (0508a.vpr@55.13--55.107) [219575]"}
            i_24 < Seq#Length(trees);
          assert {:msg "  Contract might not be well-formed. Index trees[j] into trees might be negative. (0508a.vpr@55.13--55.107) [219576]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[j] into trees might exceed sequence length. (0508a.vpr@55.13--55.107) [219577]"}
            j_15 < Seq#Length(trees);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(trees, i_1), Seq#Index(trees, j_1) }
      i_1 >= 0 && (i_1 < g_1 && (j_1 >= 0 && (j_1 < g_1 && i_1 != j_1))) ==> Seq#Index(trees, i_1) != Seq#Index(trees, j_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { trees[i] } 0 <= i && i < g ==> acc(trees[i].item, 1 / 2))
      if (*) {
        if (0 <= i_29 && i_29 < g_1) {
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might be negative. (0508a.vpr@56.13--56.84) [219578]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might exceed sequence length. (0508a.vpr@56.13--56.84) [219579]"}
            i_29 < Seq#Length(trees);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource trees[i].item might not be injective. (0508a.vpr@56.13--56.84) [219580]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < g_1)) && (0 <= i_3_1 && i_3_1 < g_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(trees, i_3) != Seq#Index(trees, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(trees, i_3) } { Seq#Index(trees, i_3) }
        (0 <= i_3 && i_3 < g_1) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(trees, i_3)) && invRecv13(Seq#Index(trees, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < g_1) && NoPerm < 1 / 2) && qpRange13(o_4) ==> Seq#Index(trees, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@56.13--56.84) [219581]"}
      (forall i_3: int ::
      { Seq#Index(trees, i_3) } { Seq#Index(trees, i_3) }
      0 <= i_3 && i_3 < g_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(trees, i_3) } { Seq#Index(trees, i_3) }
        (0 <= i_3 && i_3 < g_1) && 1 / 2 > NoPerm ==> Seq#Index(trees, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, item_1] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < g_1) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(trees, invRecv13(o_4)) == o_4) && QPMask[o_4, item_1] == Mask[o_4, item_1] + 1 / 2) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < g_1) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, item_1] == Mask[o_4, item_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != item_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { trees[i], trees[j] } i >= 0 && (i < g && (j >= 0 && (j < g && i != j))) ==> trees[i].item != trees[j].item)
      if (*) {
        if (i_30 >= 0 && (i_30 < g_1 && (j_22 >= 0 && (j_22 < g_1 && i_30 != j_22)))) {
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might be negative. (0508a.vpr@57.13--57.117) [219582]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might exceed sequence length. (0508a.vpr@57.13--57.117) [219583]"}
            i_30 < Seq#Length(trees);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access trees[i].item (0508a.vpr@57.13--57.117) [219584]"}
            HasDirectPerm(Mask, Seq#Index(trees, i_30), item_1);
          assert {:msg "  Contract might not be well-formed. Index trees[j] into trees might be negative. (0508a.vpr@57.13--57.117) [219585]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[j] into trees might exceed sequence length. (0508a.vpr@57.13--57.117) [219586]"}
            j_22 < Seq#Length(trees);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access trees[j].item (0508a.vpr@57.13--57.117) [219587]"}
            HasDirectPerm(Mask, Seq#Index(trees, j_22), item_1);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(trees, i_5), Seq#Index(trees, j_3_1) }
      i_5 >= 0 && (i_5 < g_1 && (j_3_1 >= 0 && (j_3_1 < g_1 && i_5 != j_3_1))) ==> Heap[Seq#Index(trees, i_5), item_1] != Heap[Seq#Index(trees, j_3_1), item_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { trees[i] } 0 <= i && i < g ==> acc(trees[i].item.bool_prop, 1 / 2))
      if (*) {
        if (0 <= i_31 && i_31 < g_1) {
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might be negative. (0508a.vpr@58.13--58.94) [219588]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index trees[i] into trees might exceed sequence length. (0508a.vpr@58.13--58.94) [219589]"}
            i_31 < Seq#Length(trees);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access trees[i].item (0508a.vpr@58.13--58.94) [219590]"}
            HasDirectPerm(Mask, Seq#Index(trees, i_31), item_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource trees[i].item.bool_prop might not be injective. (0508a.vpr@58.13--58.94) [219591]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < g_1)) && (0 <= i_7_2 && i_7_2 < g_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[Seq#Index(trees, i_7_1), item_1] != Heap[Seq#Index(trees, i_7_2), item_1]
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Heap[Seq#Index(trees, i_7_1), item_1] } { Seq#Index(trees, i_7_1) }
        (0 <= i_7_1 && i_7_1 < g_1) && NoPerm < 1 / 2 ==> qpRange14(Heap[Seq#Index(trees, i_7_1), item_1]) && invRecv14(Heap[Seq#Index(trees, i_7_1), item_1]) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < g_1) && NoPerm < 1 / 2) && qpRange14(o_4) ==> Heap[Seq#Index(trees, invRecv14(o_4)), item_1] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0508a.vpr@58.13--58.94) [219592]"}
      (forall i_7_1: int ::
      { Heap[Seq#Index(trees, i_7_1), item_1] } { Seq#Index(trees, i_7_1) }
      0 <= i_7_1 && i_7_1 < g_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Heap[Seq#Index(trees, i_7_1), item_1] } { Seq#Index(trees, i_7_1) }
        (0 <= i_7_1 && i_7_1 < g_1) && 1 / 2 > NoPerm ==> Heap[Seq#Index(trees, i_7_1), item_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < g_1) && NoPerm < 1 / 2) && qpRange14(o_4) ==> (NoPerm < 1 / 2 ==> Heap[Seq#Index(trees, invRecv14(o_4)), item_1] == o_4) && QPMask[o_4, bool_prop] == Mask[o_4, bool_prop] + 1 / 2) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < g_1) && NoPerm < 1 / 2) && qpRange14(o_4)) ==> QPMask[o_4, bool_prop] == Mask[o_4, bool_prop])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { trees[j] }
  //     0 <= j && j < g ==> acc(trees[j].item.bool_prop, wildcard)) -- 0508a.vpr@60.3--60.96
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall j: Int :: { trees[j] } 0 <= j && j < g ==> acc(trees[j].item.bool_prop, wildcard))
      if (*) {
        if (0 <= j_23 && j_23 < g_1) {
          assert {:msg "  Assert might fail. Index trees[j] into trees might be negative. (0508a.vpr@60.10--60.96) [219593]"}
            j_23 >= 0;
          assert {:msg "  Assert might fail. Index trees[j] into trees might exceed sequence length. (0508a.vpr@60.10--60.96) [219594]"}
            j_23 < Seq#Length(trees);
          assert {:msg "  Assert might fail. There might be insufficient permission to access trees[j].item (0508a.vpr@60.10--60.96) [219595]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(trees, j_23), item_1);
        }
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Assert might fail. There might be insufficient permission to access trees[j].item.bool_prop (0508a.vpr@60.10--60.96) [219596]"}
      (forall j_5_1: int ::
      
      0 <= j_5_1 && j_5_1 < g_1 ==> AssertMask[AssertHeap[Seq#Index(trees, j_5_1), item_1], bool_prop] > NoPerm
    );
    assume (forall j_5_1: int ::
      
      0 <= j_5_1 && j_5_1 < g_1 ==> wildcard < AssertMask[AssertHeap[Seq#Index(trees, j_5_1), item_1], bool_prop]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Assert might fail. Fraction wildcard might be negative. (0508a.vpr@60.10--60.96) [219597]"}
        (forall j_5_1: int ::
        { AssertHeap[Seq#Index(trees, j_5_1), item_1] } { Seq#Index(trees, j_5_1) }
        (0 <= j_5_1 && j_5_1 < g_1) && dummyFunction(AssertHeap[AssertHeap[Seq#Index(trees, j_5_1), item_1], bool_prop]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver trees[j].item is injective
      assert {:msg "  Assert might fail. Quantified resource trees[j].item.bool_prop might not be injective. (0508a.vpr@60.10--60.96) [219598]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered15(j_5_1), neverTriggered15(j_5_2) }
        (((j_5_1 != j_5_2 && (0 <= j_5_1 && j_5_1 < g_1)) && (0 <= j_5_2 && j_5_2 < g_1)) && NoPerm < wildcard) && NoPerm < wildcard ==> AssertHeap[Seq#Index(trees, j_5_1), item_1] != AssertHeap[Seq#Index(trees, j_5_2), item_1]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access trees[j].item.bool_prop (0508a.vpr@60.10--60.96) [219599]"}
        (forall j_5_1: int ::
        { AssertHeap[Seq#Index(trees, j_5_1), item_1] } { Seq#Index(trees, j_5_1) }
        0 <= j_5_1 && j_5_1 < g_1 ==> AssertMask[AssertHeap[Seq#Index(trees, j_5_1), item_1], bool_prop] > NoPerm
      );
    
    // -- assumptions for inverse of receiver trees[j].item
      assume (forall j_5_1: int ::
        { AssertHeap[Seq#Index(trees, j_5_1), item_1] } { Seq#Index(trees, j_5_1) }
        (0 <= j_5_1 && j_5_1 < g_1) && NoPerm < wildcard ==> qpRange15(AssertHeap[Seq#Index(trees, j_5_1), item_1]) && invRecv15(AssertHeap[Seq#Index(trees, j_5_1), item_1]) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (0 <= invRecv15(o_4) && invRecv15(o_4) < g_1) && (NoPerm < wildcard && qpRange15(o_4)) ==> AssertHeap[Seq#Index(trees, invRecv15(o_4)), item_1] == o_4
      );
    
    // -- assume permission updates for field bool_prop
      assume (forall o_4: Ref ::
        { QPMask[o_4, bool_prop] }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < g_1) && (NoPerm < wildcard && qpRange15(o_4)) ==> AssertHeap[Seq#Index(trees, invRecv15(o_4)), item_1] == o_4 && QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop] - wildcard) && (!((0 <= invRecv15(o_4) && invRecv15(o_4) < g_1) && (NoPerm < wildcard && qpRange15(o_4))) ==> QPMask[o_4, bool_prop] == AssertMask[o_4, bool_prop])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != bool_prop ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}