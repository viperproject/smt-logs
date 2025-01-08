// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:34:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/seq_pure.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sequences/seq_pure-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_43: Ref, f_15: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_43, f_15] }
  Heap[o_43, $allocated] ==> Heap[Heap[o_43, f_15], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_44: Ref, f_47: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_44, f_47] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_44, f_47) ==> Heap[o_44, f_47] == ExhaleHeap[o_44, f_47]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_47: (Field A B) ::
    { ExhaleHeap[o2_19, f_47] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_47] ==> Heap[o2_19, f_47] == ExhaleHeap[o2_19, f_47]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_47: (Field A B) ::
    { ExhaleHeap[o2_19, f_47] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_47] ==> Heap[o2_19, f_47] == ExhaleHeap[o2_19, f_47]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_44: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_44, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_44, $allocated] ==> ExhaleHeap[o_44, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_43: Ref, f_41: (Field A B), v: B ::
  { Heap[o_43, f_41:=v] }
  succHeap(Heap, Heap[o_43, f_41:=v])
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

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_5_1: int): bool;
function  neverTriggered3(j_8: int): bool;
function  neverTriggered4(j_1: int): bool;
function  neverTriggered5(j_5_1: int): bool;
function  neverTriggered6(j_8: int): bool;
function  neverTriggered7(j_1: int): bool;
function  neverTriggered8(j_5_1: int): bool;
function  neverTriggered9(j_8: int): bool;
function  neverTriggered10(j_1: int): bool;
function  neverTriggered11(j_5_1: int): bool;
function  neverTriggered12(j_8: int): bool;
function  neverTriggered13(j_1: int): bool;
function  neverTriggered14(j_3_1: int): bool;
function  neverTriggered15(j_5_1: int): bool;
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
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(S: (Seq Ref), a_2: int) returns ()
  modifies Heap, Mask;
{
  var j1_22: int;
  var j2_4: int;
  var j: int;
  var QPMask: MaskType;
  var j_6: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_2: int;
  var j_7: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_22) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_4) && j1_22 != j2_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seq_pure.vpr@9.12--9.136) [62360]"}
            j1_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seq_pure.vpr@9.12--9.136) [62361]"}
            j1_22 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seq_pure.vpr@9.12--9.136) [62362]"}
            j2_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seq_pure.vpr@9.12--9.136) [62363]"}
            j2_4 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@10.12--10.64) [62364]"}
            j >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@10.12--10.64) [62365]"}
            j < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@10.12--10.64) [62366]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange1(Seq#Index(S, j_1)) && invRecv1(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> Seq#Index(S, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv1(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> S[j].f > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_6)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@11.12--11.56) [62367]"}
            j_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@11.12--11.56) [62368]"}
            j_6 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@11.12--11.56) [62369]"}
            HasDirectPerm(Mask, Seq#Index(S, j_6), f_7);
        }
        assume false;
      }
    assume (forall j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Heap[Seq#Index(S, j_3_1), f_7] > 0
    );
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_2)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@12.11--12.63) [62370]"}
            j_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@12.11--12.63) [62371]"}
            j_2 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@12.11--12.63) [62372]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_5_1) != Seq#Index(S, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) && NoPerm < FullPerm ==> qpRange2(Seq#Index(S, j_5_1)) && invRecv2(Seq#Index(S, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Seq#Index(S, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) ==> Seq#Index(S, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv2(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> S[j].f > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@13.11--13.55) [62373]"}
            j_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@13.11--13.55) [62374]"}
            j_7 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@13.11--13.55) [62375]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_7), f_7);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7_1) } { Seq#Index(S, j_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7_1) ==> PostHeap[Seq#Index(S, j_7_1), f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: S[a].f := 2 -- seq_pure.vpr@15.3--15.14
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seq_pure.vpr@15.3--15.14) [62376]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seq_pure.vpr@15.3--15.14) [62377]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].f (seq_pure.vpr@15.3--15.14) [62378]"}
      FullPerm == Mask[Seq#Index(S, a_2), f_7];
    Heap := Heap[Seq#Index(S, a_2), f_7:=2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@12.11--12.63) [62379]"}
        (forall j_8: int, j_8_1: int ::
        { neverTriggered3(j_8), neverTriggered3(j_8_1) }
        (((j_8 != j_8_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_8) != Seq#Index(S, j_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access S[j].f (seq_pure.vpr@12.11--12.63) [62380]"}
        (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) ==> Mask[Seq#Index(S, j_8), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) && NoPerm < FullPerm ==> qpRange3(Seq#Index(S, j_8)) && invRecv3(Seq#Index(S, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> Seq#Index(S, invRecv3(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv3(o_4)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_9_1)) {
        assert {:msg "  Postcondition of test01 might not hold. Assertion S[j].f > 0 might not hold. (seq_pure.vpr@13.11--13.55) [62381]"}
          Heap[Seq#Index(S, j_9_1), f_7] > 0;
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_10_1) } { Seq#Index(S, j_10_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_10_1) ==> Heap[Seq#Index(S, j_10_1), f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(S: (Seq Ref), a_2: int) returns ()
  modifies Heap, Mask;
{
  var j1_23: int;
  var j2_5: int;
  var j_10: int;
  var QPMask: MaskType;
  var j_4: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_11: int;
  var j_25: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_18: int;
  var j_12_2: int;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_23) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_5) && j1_23 != j2_5)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seq_pure.vpr@21.12--21.102) [62382]"}
            j1_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seq_pure.vpr@21.12--21.102) [62383]"}
            j1_23 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seq_pure.vpr@21.12--21.102) [62384]"}
            j2_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seq_pure.vpr@21.12--21.102) [62385]"}
            j2_5 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_10)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@22.12--22.64) [62386]"}
            j_10 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@22.12--22.64) [62387]"}
            j_10 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@22.12--22.64) [62388]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange4(Seq#Index(S, j_1)) && invRecv4(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> Seq#Index(S, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> S[j].f > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_4)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@23.12--23.56) [62389]"}
            j_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@23.12--23.56) [62390]"}
            j_4 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@23.12--23.56) [62391]"}
            HasDirectPerm(Mask, Seq#Index(S, j_4), f_7);
        }
        assume false;
      }
    assume (forall j_3_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Heap[Seq#Index(S, j_3_1), f_7] > 0
    );
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_11)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@24.11--24.63) [62392]"}
            j_11 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@24.11--24.63) [62393]"}
            j_11 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@24.11--24.63) [62394]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_5_1) != Seq#Index(S, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) && NoPerm < FullPerm ==> qpRange5(Seq#Index(S, j_5_1)) && invRecv5(Seq#Index(S, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> Seq#Index(S, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) ==> Seq#Index(S, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv5(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv5(o_4)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> S[j].f > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_25)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@25.11--25.55) [62395]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@25.11--25.55) [62396]"}
            j_25 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@25.11--25.55) [62397]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_25), f_7);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_7_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7_1) } { Seq#Index(S, j_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_7_1) ==> PostHeap[Seq#Index(S, j_7_1), f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: S[a].f := -1 -- seq_pure.vpr@27.3--27.15
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seq_pure.vpr@27.3--27.15) [62398]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seq_pure.vpr@27.3--27.15) [62399]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].f (seq_pure.vpr@27.3--27.15) [62400]"}
      FullPerm == Mask[Seq#Index(S, a_2), f_7];
    Heap := Heap[Seq#Index(S, a_2), f_7:=-1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { (j in [0..|S|)) }
  //     { S[j] }
  //     (j in [0..|S|)) ==> S[j].f > 0) -- seq_pure.vpr@29.3--29.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> S[j].f > 0)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_18)) {
          assert {:msg "  Assert might fail. Index S[j] into S might be negative. (seq_pure.vpr@29.11--29.55) [62401]"}
            j_18 >= 0;
          assert {:msg "  Assert might fail. Index S[j] into S might exceed sequence length. (seq_pure.vpr@29.11--29.55) [62402]"}
            j_18 < Seq#Length(S);
          assert {:msg "  Assert might fail. There might be insufficient permission to access S[j].f (seq_pure.vpr@29.11--29.55) [62403]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(S, j_18), f_7);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_12_2)) {
        assert {:msg "  Assert might fail. Assertion S[j].f > 0 might not hold. (seq_pure.vpr@29.11--29.55) [62404]"}
          Heap[Seq#Index(S, j_12_2), f_7] > 0;
      }
      assume false;
    }
    assume (forall j_13_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_13_1) } { Seq#Index(S, j_13_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_13_1) ==> Heap[Seq#Index(S, j_13_1), f_7] > 0
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@24.11--24.63) [62405]"}
        (forall j_8: int, j_8_1: int ::
        { neverTriggered6(j_8), neverTriggered6(j_8_1) }
        (((j_8 != j_8_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_8) != Seq#Index(S, j_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access S[j].f (seq_pure.vpr@24.11--24.63) [62406]"}
        (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) ==> Mask[Seq#Index(S, j_8), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) && NoPerm < FullPerm ==> qpRange6(Seq#Index(S, j_8)) && invRecv6(Seq#Index(S, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(S, invRecv6(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> Seq#Index(S, invRecv6(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv6(o_4)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_9_1)) {
        assert {:msg "  Postcondition of test02 might not hold. Assertion S[j].f > 0 might not hold. (seq_pure.vpr@25.11--25.55) [62407]"}
          Heap[Seq#Index(S, j_9_1), f_7] > 0;
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_10_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_10_1) } { Seq#Index(S, j_10_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j_10_1) ==> Heap[Seq#Index(S, j_10_1), f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(S: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var j1_24: int;
  var j2_6: int;
  var j_12: int;
  var QPMask: MaskType;
  var j_13: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_14: int;
  var j_15: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_24) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_6) && j1_24 != j2_6)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seq_pure.vpr@33.12--33.102) [62408]"}
            j1_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seq_pure.vpr@33.12--33.102) [62409]"}
            j1_24 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seq_pure.vpr@33.12--33.102) [62410]"}
            j2_6 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seq_pure.vpr@33.12--33.102) [62411]"}
            j2_6 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_12)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@34.12--34.64) [62412]"}
            j_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@34.12--34.64) [62413]"}
            j_12 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@34.12--34.64) [62414]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange7(Seq#Index(S, j_1)) && invRecv7(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> Seq#Index(S, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv7(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv7(o_4)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { S[j] } (j in [0..|S| - 1)) ==> S[j].f <= S[j + 1].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_13)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@35.12--35.66) [62415]"}
            j_13 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@35.12--35.66) [62416]"}
            j_13 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@35.12--35.66) [62417]"}
            HasDirectPerm(Mask, Seq#Index(S, j_13), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might be negative. (seq_pure.vpr@35.12--35.66) [62418]"}
            j_13 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might exceed sequence length. (seq_pure.vpr@35.12--35.66) [62419]"}
            j_13 + 1 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j + 1].f (seq_pure.vpr@35.12--35.66) [62420]"}
            HasDirectPerm(Mask, Seq#Index(S, j_13 + 1), f_7);
        }
        assume false;
      }
    assume (forall j_3_1: int ::
      { Seq#Index(S, j_3_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_3_1) ==> Heap[Seq#Index(S, j_3_1), f_7] <= Heap[Seq#Index(S, j_3_1 + 1), f_7]
    );
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_14)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@36.11--36.63) [62421]"}
            j_14 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@36.11--36.63) [62422]"}
            j_14 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@36.11--36.63) [62423]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_5_1) != Seq#Index(S, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) && NoPerm < FullPerm ==> qpRange8(Seq#Index(S, j_5_1)) && invRecv8(Seq#Index(S, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> Seq#Index(S, invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) ==> Seq#Index(S, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv8(o_4)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { S[j] } (j in [0..|S| - 1)) ==> S[j].f <= S[j + 1].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_15)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@37.11--37.65) [62424]"}
            j_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@37.11--37.65) [62425]"}
            j_15 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@37.11--37.65) [62426]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_15), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might be negative. (seq_pure.vpr@37.11--37.65) [62427]"}
            j_15 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might exceed sequence length. (seq_pure.vpr@37.11--37.65) [62428]"}
            j_15 + 1 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j + 1].f (seq_pure.vpr@37.11--37.65) [62429]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_15 + 1), f_7);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#Index(S, j_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_7_1) ==> PostHeap[Seq#Index(S, j_7_1), f_7] <= PostHeap[Seq#Index(S, j_7_1 + 1), f_7]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@36.11--36.63) [62430]"}
        (forall j_8: int, j_8_1: int ::
        { neverTriggered9(j_8), neverTriggered9(j_8_1) }
        (((j_8 != j_8_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_8) != Seq#Index(S, j_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test03 might not hold. There might be insufficient permission to access S[j].f (seq_pure.vpr@36.11--36.63) [62431]"}
        (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) ==> Mask[Seq#Index(S, j_8), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) && NoPerm < FullPerm ==> qpRange9(Seq#Index(S, j_8)) && invRecv9(Seq#Index(S, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(S, invRecv9(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> Seq#Index(S, invRecv9(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv9(o_4)) && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_9_1)) {
        assert {:msg "  Postcondition of test03 might not hold. Assertion S[j].f <= S[j + 1].f might not hold. (seq_pure.vpr@37.11--37.65) [62432]"}
          Heap[Seq#Index(S, j_9_1), f_7] <= Heap[Seq#Index(S, j_9_1 + 1), f_7];
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#Index(S, j_10_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_10_1) ==> Heap[Seq#Index(S, j_10_1), f_7] <= Heap[Seq#Index(S, j_10_1 + 1), f_7]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(S: (Seq Ref), a_2: int) returns ()
  modifies Heap, Mask;
{
  var j1_15: int;
  var j2_3: int;
  var j_22: int;
  var QPMask: MaskType;
  var j_19: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var j_23: int;
  var j_17: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_12_2: int;
  var j_9_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_15) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_3) && j1_15 != j2_3)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seq_pure.vpr@42.12--42.117) [62433]"}
            j1_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seq_pure.vpr@42.12--42.117) [62434]"}
            j1_15 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seq_pure.vpr@42.12--42.117) [62435]"}
            j2_3 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seq_pure.vpr@42.12--42.117) [62436]"}
            j2_3 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_22)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@43.12--43.64) [62437]"}
            j_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@43.12--43.64) [62438]"}
            j_22 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@43.12--43.64) [62439]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange10(Seq#Index(S, j_1)) && invRecv10(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> Seq#Index(S, invRecv10(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv10(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv10(o_4)) && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { S[j] } (j in [0..|S| - 1)) ==> S[j].f <= S[j + 1].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_19)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@44.12--44.66) [62440]"}
            j_19 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@44.12--44.66) [62441]"}
            j_19 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@44.12--44.66) [62442]"}
            HasDirectPerm(Mask, Seq#Index(S, j_19), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might be negative. (seq_pure.vpr@44.12--44.66) [62443]"}
            j_19 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might exceed sequence length. (seq_pure.vpr@44.12--44.66) [62444]"}
            j_19 + 1 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j + 1].f (seq_pure.vpr@44.12--44.66) [62445]"}
            HasDirectPerm(Mask, Seq#Index(S, j_19 + 1), f_7);
        }
        assume false;
      }
    assume (forall j_3_1: int ::
      { Seq#Index(S, j_3_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_3_1) ==> Heap[Seq#Index(S, j_3_1), f_7] <= Heap[Seq#Index(S, j_3_1 + 1), f_7]
    );
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
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_23)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@45.11--45.63) [62446]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@45.11--45.63) [62447]"}
            j_23 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@45.11--45.63) [62448]"}
      (forall j_5_1: int, j_5_2: int ::
      
      (((j_5_1 != j_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_5_1) != Seq#Index(S, j_5_2)
    );
    
    // -- Define Inverse Function
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) && NoPerm < FullPerm ==> qpRange11(Seq#Index(S, j_5_1)) && invRecv11(Seq#Index(S, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> Seq#Index(S, invRecv11(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) ==> Seq#Index(S, j_5_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv11(o_4)) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv11(o_4)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall j: Int :: { S[j] } (j in [0..|S| - 1)) ==> S[j].f <= S[j + 1].f)
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_17)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@47.11--47.65) [62449]"}
            j_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@47.11--47.65) [62450]"}
            j_17 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j].f (seq_pure.vpr@47.11--47.65) [62451]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_17), f_7);
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might be negative. (seq_pure.vpr@47.11--47.65) [62452]"}
            j_17 + 1 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j + 1] into S might exceed sequence length. (seq_pure.vpr@47.11--47.65) [62453]"}
            j_17 + 1 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access S[j + 1].f (seq_pure.vpr@47.11--47.65) [62454]"}
            HasDirectPerm(PostMask, Seq#Index(S, j_17 + 1), f_7);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Seq#Index(S, j_7_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_7_1) ==> PostHeap[Seq#Index(S, j_7_1), f_7] <= PostHeap[Seq#Index(S, j_7_1 + 1), f_7]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: S[a].f := 5 -- seq_pure.vpr@49.3--49.14
    
    // -- Check definedness of S[a]
      assert {:msg "  Assignment might fail. Index S[a] into S might be negative. (seq_pure.vpr@49.3--49.14) [62455]"}
        a_2 >= 0;
      assert {:msg "  Assignment might fail. Index S[a] into S might exceed sequence length. (seq_pure.vpr@49.3--49.14) [62456]"}
        a_2 < Seq#Length(S);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access S[a].f (seq_pure.vpr@49.3--49.14) [62457]"}
      FullPerm == Mask[Seq#Index(S, a_2), f_7];
    Heap := Heap[Seq#Index(S, a_2), f_7:=5];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { (j in [0..|S|)) }
  //     (j in [0..|S| - 1)) ==> (j in [0..|S|))) -- seq_pure.vpr@50.3--50.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } (j in [0..|S| - 1)) ==> (j in [0..|S|)))
      if (*) {
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_12_2)) {
        assert {:msg "  Assert might fail. Assertion (j in [0..|S|)) might not hold. (seq_pure.vpr@50.10--50.59) [62458]"}
          Seq#Contains(Seq#Range(0, Seq#Length(S)), j_12_2);
      }
      assume false;
    }
    assume (forall j_13_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_13_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_13_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_13_1) ==> Seq#Contains(Seq#Range(0, Seq#Length(S)), j_13_1)
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@45.11--45.63) [62459]"}
        (forall j_8: int, j_8_1: int ::
        { neverTriggered12(j_8), neverTriggered12(j_8_1) }
        (((j_8 != j_8_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_8) != Seq#Index(S, j_8_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test04 might not hold. There might be insufficient permission to access S[j].f (seq_pure.vpr@45.11--45.63) [62460]"}
        (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) ==> Mask[Seq#Index(S, j_8), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_8: int ::
        { Seq#Index(S, j_8) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) } { Seq#Index(S, j_8) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_8) && NoPerm < FullPerm ==> qpRange12(Seq#Index(S, j_8)) && invRecv12(Seq#Index(S, j_8)) == j_8
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(S, invRecv12(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4)) ==> Seq#Index(S, invRecv12(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv12(o_4)) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_9_1)) {
        assert {:msg "  Postcondition of test04 might not hold. Assertion S[j].f <= S[j + 1].f might not hold. (seq_pure.vpr@47.11--47.65) [62461]"}
          Heap[Seq#Index(S, j_9_1), f_7] <= Heap[Seq#Index(S, j_9_1 + 1), f_7];
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Seq#Index(S, j_10_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S) - 1), j_10_1) ==> Heap[Seq#Index(S, j_10_1), f_7] <= Heap[Seq#Index(S, j_10_1 + 1), f_7]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(S: (Seq Ref), a_2: int) returns ()
  modifies Heap, Mask;
{
  var j1_4: int;
  var j2_7: int;
  var j_27: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j_24: int;
  var ExhaleHeap: HeapType;
  var j_28: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= a_2;
    assume a_2 < Seq#Length(S);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j1: Int, j2: Int :: { (j1 in [0..|S|)), (j2 in [0..|S|)) } { (j1 in [0..|S|)), S[j2] } { (j2 in [0..|S|)), S[j1] } { S[j1], S[j2] } (j1 in [0..|S|)) && ((j2 in [0..|S|)) && j1 != j2) ==> S[j1] != S[j2])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_4) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_7) && j1_4 != j2_7)) {
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might be negative. (seq_pure.vpr@55.12--55.102) [62462]"}
            j1_4 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j1] into S might exceed sequence length. (seq_pure.vpr@55.12--55.102) [62463]"}
            j1_4 < Seq#Length(S);
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might be negative. (seq_pure.vpr@55.12--55.102) [62464]"}
            j2_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j2] into S might exceed sequence length. (seq_pure.vpr@55.12--55.102) [62465]"}
            j2_7 < Seq#Length(S);
        }
        assume false;
      }
    assume (forall j1_1: int, j2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1), Seq#Index(S, j2_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1), Seq#Index(S, j1_1) } { Seq#Index(S, j1_1), Seq#Index(S, j2_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(S)), j1_1) && (Seq#Contains(Seq#Range(0, Seq#Length(S)), j2_1) && j1_1 != j2_1) ==> Seq#Index(S, j1_1) != Seq#Index(S, j2_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_27)) {
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might be negative. (seq_pure.vpr@56.12--56.64) [62466]"}
            j_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index S[j] into S might exceed sequence length. (seq_pure.vpr@56.12--56.64) [62467]"}
            j_27 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource S[j].f might not be injective. (seq_pure.vpr@56.12--56.64) [62468]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_1) != Seq#Index(S, j_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) && NoPerm < FullPerm ==> qpRange13(Seq#Index(S, j_1)) && invRecv13(Seq#Index(S, j_1)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> Seq#Index(S, invRecv13(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { Seq#Index(S, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) } { Seq#Index(S, j_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_1) ==> Seq#Index(S, j_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(S, invRecv13(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv13(o_4)) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale (forall j: Int ::
  //     { (j in [0..|S|)) }
  //     { S[j] }
  //     (j in [0..|S|)) ==> acc(S[j].f, write)) -- seq_pure.vpr@58.3--58.62
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_24)) {
          assert {:msg "  Exhale might fail. Index S[j] into S might be negative. (seq_pure.vpr@58.10--58.62) [62469]"}
            j_24 >= 0;
          assert {:msg "  Exhale might fail. Index S[j] into S might exceed sequence length. (seq_pure.vpr@58.10--58.62) [62470]"}
            j_24 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[j].f might not be injective. (seq_pure.vpr@58.10--58.62) [62472]"}
        (forall j_3_1: int, j_3_2: int ::
        { neverTriggered14(j_3_1), neverTriggered14(j_3_2) }
        (((j_3_1 != j_3_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_3_1) != Seq#Index(S, j_3_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[j].f (seq_pure.vpr@58.10--58.62) [62473]"}
        (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) ==> Mask[Seq#Index(S, j_3_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_3_1: int ::
        { Seq#Index(S, j_3_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) } { Seq#Index(S, j_3_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_3_1) && NoPerm < FullPerm ==> qpRange14(Seq#Index(S, j_3_1)) && invRecv14(Seq#Index(S, j_3_1)) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv14(o_4)) && (NoPerm < FullPerm && qpRange14(o_4)) ==> Seq#Index(S, invRecv14(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv14(o_4)) && (NoPerm < FullPerm && qpRange14(o_4)) ==> Seq#Index(S, invRecv14(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv14(o_4)) && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall j: Int ::
  //     { (j in [0..|S|)) }
  //     { S[j] }
  //     (j in [0..|S|)) ==> acc(S[j].f, write)) -- seq_pure.vpr@60.3--60.62
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { (j in [0..|S|)) } { S[j] } (j in [0..|S|)) ==> acc(S[j].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(S)), j_28)) {
          assert {:msg "  Exhale might fail. Index S[j] into S might be negative. (seq_pure.vpr@60.10--60.62) [62474]"}
            j_28 >= 0;
          assert {:msg "  Exhale might fail. Index S[j] into S might exceed sequence length. (seq_pure.vpr@60.10--60.62) [62475]"}
            j_28 < Seq#Length(S);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver S[j] is injective
      assert {:msg "  Exhale might fail. Quantified resource S[j].f might not be injective. (seq_pure.vpr@60.10--60.62) [62477]"}
        (forall j_5_1: int, j_5_2: int ::
        { neverTriggered15(j_5_1), neverTriggered15(j_5_2) }
        (((j_5_1 != j_5_2 && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1)) && Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(S, j_5_1) != Seq#Index(S, j_5_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access S[j].f (seq_pure.vpr@60.10--60.62) [62478]"}
        (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) ==> Mask[Seq#Index(S, j_5_1), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver S[j]
      assume (forall j_5_1: int ::
        { Seq#Index(S, j_5_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) } { Seq#Index(S, j_5_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), j_5_1) && NoPerm < FullPerm ==> qpRange15(Seq#Index(S, j_5_1)) && invRecv15(Seq#Index(S, j_5_1)) == j_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(S, invRecv15(o_4)) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(S, invRecv15(o_4)) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Seq#Contains(Seq#Range(0, Seq#Length(S)), invRecv15(o_4)) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}