// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:24:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0282.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0282-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_46: Ref, f_37: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_46, f_37] }
  Heap[o_46, $allocated] ==> Heap[Heap[o_46, f_37], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref, f_54: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, f_54] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_55, f_54) ==> Heap[o_55, f_54] == ExhaleHeap[o_55, f_54]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48), ExhaleHeap[null, PredicateMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> Heap[null, PredicateMaskField(pm_f_48)] == ExhaleHeap[null, PredicateMaskField(pm_f_48)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, PredicateMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48), ExhaleHeap[null, WandMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> Heap[null, WandMaskField(pm_f_48)] == ExhaleHeap[null, WandMaskField(pm_f_48)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, WandMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_55, $allocated] ==> ExhaleHeap[o_55, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_46: Ref, f_25: (Field A B), v: B ::
  { Heap[o_46, f_25:=v] }
  succHeap(Heap, Heap[o_46, f_25:=v])
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
function  neverTriggered2(y_1: Ref): bool;
function  neverTriggered3(y_3_2: Ref): bool;
function  neverTriggered4(i_3: int): bool;
function  neverTriggered5(i_7_1: int): bool;
function  neverTriggered6(i_3: int): bool;
function  neverTriggered7(i_8_2: int): bool;
function  neverTriggered8(i_3: int): bool;
function  neverTriggered9(i_3: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_1: Ref): Ref;
function  invRecv2(r_1_1: Ref): Ref;
function  invRecv3(r_2_1: Ref): Ref;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
function  invRecv9(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_1: Ref): bool;
function  qpRange2(r_1_1: Ref): bool;
function  qpRange3(r_2_1: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 3: at2
// - height 2: fun2
// - height 1: at1
// - height 0: fun
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
// Translation of domain Dummy
// ==================================================

// The type for domain Dummy
type DummyDomainType;

// Translation of domain function D
function  D(r1_6: Ref, r2_6: Ref): bool;

// Translation of domain axiom def_D
axiom (forall r1: Ref, r2: Ref ::
  { (D(r1, r2): bool) }
  (D(r1, r2): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, r_1: Ref, i: int): Ref;
function  fun'(Heap: HeapType, r_1: Ref, i: int): Ref;
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { fun(Heap, r_1, i) }
  fun(Heap, r_1, i) == fun'(Heap, r_1, i) && dummyFunction(fun#triggerStateless(r_1, i))
);
axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { fun'(Heap, r_1, i) }
  dummyFunction(fun#triggerStateless(r_1, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), fun(Heap, r_1, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun(Heap, r_1, i) == r_1
);

// Framing axioms
function  fun#frame(frame: FrameType, r_1: Ref, i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int ::
  { state(Heap, Mask), fun'(Heap, r_1, i) }
  state(Heap, Mask) ==> fun'(Heap, r_1, i) == fun#frame(EmptyFrame, r_1, i)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, r_1: Ref, i: int): bool;

// State-independent trigger function
function  fun#triggerStateless(r_1: Ref, i: int): Ref;

// Check contract well-formedness and postcondition
procedure fun#definedness(r_1: Ref, i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := r_1;
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, r_1: Ref): Ref;
function  fun2'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { fun2(Heap, r_1) }
  fun2(Heap, r_1) == fun2'(Heap, r_1) && dummyFunction(fun2#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { fun2'(Heap, r_1) }
  dummyFunction(fun2#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), fun2(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun2(Heap, r_1) == r_1
);

// Framing axioms
function  fun2#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), fun2'(Heap, r_1) }
  state(Heap, Mask) ==> fun2'(Heap, r_1) == fun2#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure fun2#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := r_1;
}

// ==================================================
// Translation of function at1
// ==================================================

// Uninterpreted function definitions
function  at1(Heap: HeapType, xs: (Seq Ref), i: int): Ref;
function  at1'(Heap: HeapType, xs: (Seq Ref), i: int): Ref;
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { at1(Heap, xs, i) }
  at1(Heap, xs, i) == at1'(Heap, xs, i) && dummyFunction(at1#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Seq Ref), i: int ::
  { at1'(Heap, xs, i) }
  dummyFunction(at1#triggerStateless(xs, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), at1(Heap, xs, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 0 <= i && i < Seq#Length(xs) ==> at1(Heap, xs, i) == Seq#Index(xs, i)
);

// Framing axioms
function  at1#frame(frame: FrameType, xs: (Seq Ref), i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq Ref), i: int ::
  { state(Heap, Mask), at1'(Heap, xs, i) }
  state(Heap, Mask) ==> at1'(Heap, xs, i) == at1#frame(EmptyFrame, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  at1#trigger(frame: FrameType, xs: (Seq Ref), i: int): bool;

// State-independent trigger function
function  at1#triggerStateless(xs: (Seq Ref), i: int): Ref;

// Check contract well-formedness and postcondition
procedure at1#definedness(xs: (Seq Ref), i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[i]
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (0282.vpr@19.1--21.10) [197330]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (0282.vpr@19.1--21.10) [197331]"}
        i < Seq#Length(xs);
  
  // -- Translate function body
    Result := Seq#Index(xs, i);
}

// ==================================================
// Translation of function at2
// ==================================================

// Uninterpreted function definitions
function  at2(Heap: HeapType, i: int, xs: (Seq Ref)): Ref;
function  at2'(Heap: HeapType, i: int, xs: (Seq Ref)): Ref;
axiom (forall Heap: HeapType, i: int, xs: (Seq Ref) ::
  { at2(Heap, i, xs) }
  at2(Heap, i, xs) == at2'(Heap, i, xs) && dummyFunction(at2#triggerStateless(i, xs))
);
axiom (forall Heap: HeapType, i: int, xs: (Seq Ref) ::
  { at2'(Heap, i, xs) }
  dummyFunction(at2#triggerStateless(i, xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, xs: (Seq Ref) ::
  { state(Heap, Mask), at2(Heap, i, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> 0 <= i && i < Seq#Length(xs) ==> at2(Heap, i, xs) == Seq#Index(xs, i)
);

// Framing axioms
function  at2#frame(frame: FrameType, i: int, xs: (Seq Ref)): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, xs: (Seq Ref) ::
  { state(Heap, Mask), at2'(Heap, i, xs) }
  state(Heap, Mask) ==> at2'(Heap, i, xs) == at2#frame(EmptyFrame, i, xs)
);

// Trigger function (controlling recursive postconditions)
function  at2#trigger(frame: FrameType, i: int, xs: (Seq Ref)): bool;

// State-independent trigger function
function  at2#triggerStateless(i: int, xs: (Seq Ref)): Ref;

// Check contract well-formedness and postcondition
procedure at2#definedness(i: int, xs: (Seq Ref)) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < Seq#Length(xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of xs[i]
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might be negative. (0282.vpr@23.1--25.10) [197332]"}
        i >= 0;
      assert {:msg "  Function might not be well-formed. Index xs[i] into xs might exceed sequence length. (0282.vpr@23.1--25.10) [197333]"}
        i < Seq#Length(xs);
  
  // -- Translate function body
    Result := Seq#Index(xs, i);
}

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(r_1: Ref): Field PredicateType_pred FrameType;
function  pred#sm(r_1: Ref): Field PredicateType_pred PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(pred_3(r_1)) }
  PredicateMaskField(pred_3(r_1)) == pred#sm(r_1)
);
axiom (forall r_1: Ref ::
  { pred_3(r_1) }
  IsPredicateField(pred_3(r_1))
);
axiom (forall r_1: Ref ::
  { pred_3(r_1) }
  getPredWandId(pred_3(r_1)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { pred_3(r_1), pred_3(r2) }
  pred_3(r_1) == pred_3(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { pred#sm(r_1), pred#sm(r2) }
  pred#sm(r_1) == pred#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { pred#trigger(Heap, pred_3(r_1)) }
  pred#everUsed(pred_3(r_1))
);

// ==================================================
// Translation of method t4b
// ==================================================

procedure t4b(xs: (Seq Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var x_33: Ref;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y_4: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { fun2(x) } (x in xs) ==> acc(pred(fun(x, i)), write))
      if (*) {
        if (Seq#Contains(xs, x_33)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun(x, i)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun(x, i)) might not be injective. (0282.vpr@11.12--11.66) [197334]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun(Heap, x_1, i) != fun(Heap, x_1_1, i)
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { Mask[null, pred_3(fun#frame(EmptyFrame, x_1, i))] } { fun2#frame(EmptyFrame, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv1(fun(Heap, x_1, i)) == x_1 && qpRange1(fun(Heap, x_1, i))
      );
      assume (forall r_1: Ref ::
        { invRecv1(r_1) }
        (Seq#Contains(xs, invRecv1(r_1)) && NoPerm < FullPerm) && qpRange1(r_1) ==> fun(Heap, invRecv1(r_1), i) == r_1
      );
    
    // -- Define updated permissions
      assume (forall r_1: Ref ::
        { QPMask[null, pred_3(r_1)] }
        (Seq#Contains(xs, invRecv1(r_1)) && NoPerm < FullPerm) && qpRange1(r_1) ==> (NoPerm < FullPerm ==> fun(Heap, invRecv1(r_1), i) == r_1) && QPMask[null, pred_3(r_1)] == Mask[null, pred_3(r_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1: Ref ::
        { QPMask[null, pred_3(r_1)] }
        !((Seq#Contains(xs, invRecv1(r_1)) && NoPerm < FullPerm) && qpRange1(r_1)) ==> QPMask[null, pred_3(r_1)] == Mask[null, pred_3(r_1)]
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall y: Ref :: { fun(y, i) } (y in xs) ==> acc(pred(fun2(y)), write))
      if (*) {
        if (Seq#Contains(xs, y_4)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(pred(fun2(y)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(y)) might not be injective. (0282.vpr@12.12--12.66) [197335]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered2(y_1), neverTriggered2(y_1_1) }
        (((y_1 != y_1_1 && Seq#Contains(xs, y_1)) && Seq#Contains(xs, y_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(PostHeap, y_1) != fun2(PostHeap, y_1_1)
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { PostHeap[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { PostMask[null, pred_3(fun2#frame(EmptyFrame, y_1))] } { fun#frame(EmptyFrame, y_1, i) }
        Seq#Contains(xs, y_1) && NoPerm < FullPerm ==> invRecv2(fun2(PostHeap, y_1)) == y_1 && qpRange2(fun2(PostHeap, y_1))
      );
      assume (forall r_1_1: Ref ::
        { invRecv2(r_1_1) }
        (Seq#Contains(xs, invRecv2(r_1_1)) && NoPerm < FullPerm) && qpRange2(r_1_1) ==> fun2(PostHeap, invRecv2(r_1_1)) == r_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1)] }
        (Seq#Contains(xs, invRecv2(r_1_1)) && NoPerm < FullPerm) && qpRange2(r_1_1) ==> (NoPerm < FullPerm ==> fun2(PostHeap, invRecv2(r_1_1)) == r_1_1) && QPMask[null, pred_3(r_1_1)] == PostMask[null, pred_3(r_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_1_1: Ref ::
        { QPMask[null, pred_3(r_1_1)] }
        !((Seq#Contains(xs, invRecv2(r_1_1)) && NoPerm < FullPerm) && qpRange2(r_1_1)) ==> QPMask[null, pred_3(r_1_1)] == PostMask[null, pred_3(r_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(pred(fun2(y)), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource pred(fun2(y)) might not be injective. (0282.vpr@12.12--12.66) [197336]"}
        (forall y_3_2: Ref, y_3_3: Ref ::
        { neverTriggered3(y_3_2), neverTriggered3(y_3_3) }
        (((y_3_2 != y_3_3 && Seq#Contains(xs, y_3_2)) && Seq#Contains(xs, y_3_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> fun2(Heap, y_3_2) != fun2(Heap, y_3_3)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t4b might not hold. There might be insufficient permission to access pred(fun2(y)) (0282.vpr@12.12--12.66) [197337]"}
        (forall y_3_2: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { fun#frame(EmptyFrame, y_3_2, i) }
        Seq#Contains(xs, y_3_2) ==> Mask[null, pred_3(fun2(Heap, y_3_2))] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(pred(fun2(y)), write)
      assume (forall y_3_2: Ref ::
        { Heap[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { Mask[null, pred_3(fun2#frame(EmptyFrame, y_3_2))] } { fun#frame(EmptyFrame, y_3_2, i) }
        Seq#Contains(xs, y_3_2) && NoPerm < FullPerm ==> invRecv3(fun2(Heap, y_3_2)) == y_3_2 && qpRange3(fun2(Heap, y_3_2))
      );
      assume (forall r_2_1: Ref ::
        { invRecv3(r_2_1) }
        (Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1) ==> fun2(Heap, invRecv3(r_2_1)) == r_2_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1: Ref ::
        { QPMask[null, pred_3(r_2_1)] }
        (Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1) ==> fun2(Heap, invRecv3(r_2_1)) == r_2_1 && QPMask[null, pred_3(r_2_1)] == Mask[null, pred_3(r_2_1)] - FullPerm
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, pred_3(r_2_1)] }
        !((Seq#Contains(xs, invRecv3(r_2_1)) && NoPerm < FullPerm) && qpRange3(r_2_1)) ==> QPMask[null, pred_3(r_2_1)] == Mask[null, pred_3(r_2_1)]
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
}

// ==================================================
// Translation of method test02a
// ==================================================

procedure test02a(xs: (Seq Ref), k: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_4: int;
  var j_6: int;
  var i_6: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var i_7: int;
  var j_7: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var i_8: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0282.vpr@28.3--28.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_4 >= 0 && (i_4 < Seq#Length(xs) && (j_6 >= 0 && (j_6 < Seq#Length(xs) && i_4 != j_6)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0282.vpr@28.10--28.102) [197338]"}
            i_4 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0282.vpr@28.10--28.102) [197339]"}
            i_4 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0282.vpr@28.10--28.102) [197340]"}
            j_6 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0282.vpr@28.10--28.102) [197341]"}
            j_6 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { at1(xs, i) }
  //     0 <= i && i < |xs| ==> acc(at1(xs, i).f, write)) -- 0282.vpr@29.3--29.80
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { at1(xs, i) } 0 <= i && i < |xs| ==> acc(at1(xs, i).f, write))
      if (*) {
        if (0 <= i_6 && i_6 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= i might not hold. (0282.vpr@29.67--29.77) [197342]"}
              0 <= i_6;
            assert {:msg "  Precondition of function at1 might not hold. Assertion i < |xs| might not hold. (0282.vpr@29.67--29.77) [197343]"}
              i_6 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource at1(xs, i).f might not be injective. (0282.vpr@29.10--29.80) [197344]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at1(Heap, xs, i_3) != at1(Heap, xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at1#frame(EmptyFrame, xs, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange4(at1(Heap, xs, i_3)) && invRecv4(at1(Heap, xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4) ==> at1(Heap, xs, invRecv4(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at1#frame(EmptyFrame, xs, i_3) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> at1(Heap, xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> at1(Heap, xs, invRecv4(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     0 <= i && (i < j && j < |xs|) ==> xs[i] != xs[j]) -- 0282.vpr@32.3--32.81
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } 0 <= i && (i < j && j < |xs|) ==> xs[i] != xs[j])
      if (*) {
        if (0 <= i_7 && (i_7 < j_7 && j_7 < Seq#Length(xs))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0282.vpr@32.10--32.81) [197345]"}
            i_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0282.vpr@32.10--32.81) [197346]"}
            i_7 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0282.vpr@32.10--32.81) [197347]"}
            j_7 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0282.vpr@32.10--32.81) [197348]"}
            j_7 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Seq#Index(xs, i_5), Seq#Index(xs, j_3_1) }
      0 <= i_5 && (i_5 < j_3_1 && j_3_1 < Seq#Length(xs)) ==> Seq#Index(xs, i_5) != Seq#Index(xs, j_3_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { at2(i, xs) }
  //     0 <= i && i < |xs| ==> acc(at2(i, xs).f, write)) -- 0282.vpr@35.3--35.80
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall i: Int :: { at2(i, xs) } 0 <= i && i < |xs| ==> acc(at2(i, xs).f, write))
      if (*) {
        if (0 <= i_8 && i_8 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function at2 might not hold. Assertion 0 <= i might not hold. (0282.vpr@35.67--35.77) [197349]"}
              0 <= i_8;
            assert {:msg "  Precondition of function at2 might not hold. Assertion i < |xs| might not hold. (0282.vpr@35.67--35.77) [197350]"}
              i_8 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver at2(i, xs) is injective
      assert {:msg "  Assert might fail. Quantified resource at2(i, xs).f might not be injective. (0282.vpr@35.10--35.80) [197352]"}
        (forall i_7_1: int, i_7_2: int ::
        { neverTriggered5(i_7_1), neverTriggered5(i_7_2) }
        (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < Seq#Length(xs))) && (0 <= i_7_2 && i_7_2 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at2(AssertHeap, i_7_1, xs) != at2(AssertHeap, i_7_2, xs)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access at2(i, xs).f (0282.vpr@35.10--35.80) [197353]"}
        (forall i_7_1: int ::
        { at2#frame(EmptyFrame, i_7_1, xs) } { at2#frame(EmptyFrame, i_7_1, xs) }
        0 <= i_7_1 && i_7_1 < Seq#Length(xs) ==> AssertMask[at2(AssertHeap, i_7_1, xs), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver at2(i, xs)
      assume (forall i_7_1: int ::
        { at2#frame(EmptyFrame, i_7_1, xs) } { at2#frame(EmptyFrame, i_7_1, xs) }
        (0 <= i_7_1 && i_7_1 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange5(at2(AssertHeap, i_7_1, xs)) && invRecv5(at2(AssertHeap, i_7_1, xs)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> at2(AssertHeap, invRecv5(o_4), xs) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> at2(AssertHeap, invRecv5(o_4), xs) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!((0 <= invRecv5(o_4) && invRecv5(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02b
// ==================================================

procedure test02b(xs: (Seq Ref), k: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_9: int;
  var j_10: int;
  var i_10: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var i_11: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var i_5: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var i_12: int;
  
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
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0282.vpr@44.3--44.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_9 >= 0 && (i_9 < Seq#Length(xs) && (j_10 >= 0 && (j_10 < Seq#Length(xs) && i_9 != j_10)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0282.vpr@44.10--44.102) [197354]"}
            i_9 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0282.vpr@44.10--44.102) [197355]"}
            i_9 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0282.vpr@44.10--44.102) [197356]"}
            j_10 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0282.vpr@44.10--44.102) [197357]"}
            j_10 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { at1(xs, i) }
  //     0 <= i && i < |xs| ==> acc(at1(xs, i).f, write)) -- 0282.vpr@45.3--45.80
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { at1(xs, i) } 0 <= i && i < |xs| ==> acc(at1(xs, i).f, write))
      if (*) {
        if (0 <= i_10 && i_10 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= i might not hold. (0282.vpr@45.67--45.77) [197358]"}
              0 <= i_10;
            assert {:msg "  Precondition of function at1 might not hold. Assertion i < |xs| might not hold. (0282.vpr@45.67--45.77) [197359]"}
              i_10 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource at1(xs, i).f might not be injective. (0282.vpr@45.10--45.80) [197360]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at1(Heap, xs, i_3) != at1(Heap, xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at1#frame(EmptyFrame, xs, i_3) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange6(at1(Heap, xs, i_3)) && invRecv6(at1(Heap, xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange6(o_4) ==> at1(Heap, xs, invRecv6(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at1#frame(EmptyFrame, xs, i_3) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> at1(Heap, xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> at1(Heap, xs, invRecv6(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { at1(xs, i) }
  //     { at2(i, xs) }
  //     0 <= i && i < |xs| ==> at1(xs, i) == at2(i, xs)) -- 0282.vpr@48.3--48.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { at1(xs, i) } { at2(i, xs) } 0 <= i && i < |xs| ==> at1(xs, i) == at2(i, xs))
      if (*) {
        if (0 <= i_11 && i_11 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= i might not hold. (0282.vpr@48.50--48.60) [197361]"}
              0 <= i_11;
            assert {:msg "  Precondition of function at1 might not hold. Assertion i < |xs| might not hold. (0282.vpr@48.50--48.60) [197362]"}
              i_11 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function at2 might not hold. Assertion 0 <= i might not hold. (0282.vpr@48.64--48.74) [197363]"}
              0 <= i_11;
            assert {:msg "  Precondition of function at2 might not hold. Assertion i < |xs| might not hold. (0282.vpr@48.64--48.74) [197364]"}
              i_11 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_5 && i_5 < Seq#Length(xs)) {
        assert {:msg "  Assert might fail. Assertion at1(xs, i) == at2(i, xs) might not hold. (0282.vpr@48.10--48.74) [197365]"}
          at1(Heap, xs, i_5) == at2(Heap, i_5, xs);
      }
      assume false;
    }
    assume (forall i_6_1_1: int ::
      { at1#frame(EmptyFrame, xs, i_6_1_1) } { at2#frame(EmptyFrame, i_6_1_1, xs) }
      0 <= i_6_1_1 && i_6_1_1 < Seq#Length(xs) ==> at1(Heap, xs, i_6_1_1) == at2(Heap, i_6_1_1, xs)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { at2(i, xs) }
  //     0 <= i && i < |xs| ==> acc(at2(i, xs).f, write)) -- 0282.vpr@50.3--50.80
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall i: Int :: { at2(i, xs) } 0 <= i && i < |xs| ==> acc(at2(i, xs).f, write))
      if (*) {
        if (0 <= i_12 && i_12 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function at2 might not hold. Assertion 0 <= i might not hold. (0282.vpr@50.67--50.77) [197366]"}
              0 <= i_12;
            assert {:msg "  Precondition of function at2 might not hold. Assertion i < |xs| might not hold. (0282.vpr@50.67--50.77) [197367]"}
              i_12 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver at2(i, xs) is injective
      assert {:msg "  Assert might fail. Quantified resource at2(i, xs).f might not be injective. (0282.vpr@50.10--50.80) [197369]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered7(i_8_2), neverTriggered7(i_8_3) }
        (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < Seq#Length(xs))) && (0 <= i_8_3 && i_8_3 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at2(AssertHeap, i_8_2, xs) != at2(AssertHeap, i_8_3, xs)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access at2(i, xs).f (0282.vpr@50.10--50.80) [197370]"}
        (forall i_8_2: int ::
        { at2#frame(EmptyFrame, i_8_2, xs) } { at2#frame(EmptyFrame, i_8_2, xs) }
        0 <= i_8_2 && i_8_2 < Seq#Length(xs) ==> AssertMask[at2(AssertHeap, i_8_2, xs), f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver at2(i, xs)
      assume (forall i_8_2: int ::
        { at2#frame(EmptyFrame, i_8_2, xs) } { at2#frame(EmptyFrame, i_8_2, xs) }
        (0 <= i_8_2 && i_8_2 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange7(at2(AssertHeap, i_8_2, xs)) && invRecv7(at2(AssertHeap, i_8_2, xs)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (0 <= invRecv7(o_4) && invRecv7(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> at2(AssertHeap, invRecv7(o_4), xs) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> at2(AssertHeap, invRecv7(o_4), xs) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!((0 <= invRecv7(o_4) && invRecv7(o_4) < Seq#Length(xs)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03a
// ==================================================

procedure test03a(xs: (Seq Ref), k: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_16: int;
  var j_18: int;
  var i_18: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= k && k < |xs| -- 0282.vpr@54.3--54.28
    assume 0 <= k;
    assume k < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0282.vpr@55.3--55.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_16 >= 0 && (i_16 < Seq#Length(xs) && (j_18 >= 0 && (j_18 < Seq#Length(xs) && i_16 != j_18)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0282.vpr@55.10--55.102) [197371]"}
            i_16 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0282.vpr@55.10--55.102) [197372]"}
            i_16 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0282.vpr@55.10--55.102) [197373]"}
            j_18 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0282.vpr@55.10--55.102) [197374]"}
            j_18 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { at2(i, xs) }
  //     0 <= i && i < |xs| ==> acc(at1(xs, i).f, write)) -- 0282.vpr@56.3--56.80
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { at2(i, xs) } 0 <= i && i < |xs| ==> acc(at1(xs, i).f, write))
      if (*) {
        if (0 <= i_18 && i_18 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= i might not hold. (0282.vpr@56.67--56.77) [197375]"}
              0 <= i_18;
            assert {:msg "  Precondition of function at1 might not hold. Assertion i < |xs| might not hold. (0282.vpr@56.67--56.77) [197376]"}
              i_18 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource at1(xs, i).f might not be injective. (0282.vpr@56.10--56.80) [197377]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at1(Heap, xs, i_3) != at1(Heap, xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at2#frame(EmptyFrame, i_3, xs) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange8(at1(Heap, xs, i_3)) && invRecv8(at1(Heap, xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4) ==> at1(Heap, xs, invRecv8(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at2#frame(EmptyFrame, i_3, xs) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> at1(Heap, xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> at1(Heap, xs, invRecv8(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert at1(xs, k) != null -- 0282.vpr@59.3--59.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of at1(xs, k) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= k might not hold. (0282.vpr@59.10--59.20) [197378]"}
          0 <= k;
        assert {:msg "  Precondition of function at1 might not hold. Assertion k < |xs| might not hold. (0282.vpr@59.10--59.20) [197379]"}
          k < Seq#Length(xs);
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion at1(xs, k) != null might not hold. (0282.vpr@59.10--59.28) [197380]"}
      at1(Heap, xs, k) != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03b
// ==================================================

procedure test03b(xs: (Seq Ref), k: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_13: int;
  var j_12: int;
  var i_20: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 <= k && k < |xs| -- 0282.vpr@63.3--63.28
    assume 0 <= k;
    assume k < Seq#Length(xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { xs[i], xs[j] }
  //     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
  //     xs[i] != xs[j]) -- 0282.vpr@64.3--64.102
    
    // -- Check definedness of (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
      if (*) {
        if (i_13 >= 0 && (i_13 < Seq#Length(xs) && (j_12 >= 0 && (j_12 < Seq#Length(xs) && i_13 != j_12)))) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (0282.vpr@64.10--64.102) [197381]"}
            i_13 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (0282.vpr@64.10--64.102) [197382]"}
            i_13 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (0282.vpr@64.10--64.102) [197383]"}
            j_12 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (0282.vpr@64.10--64.102) [197384]"}
            j_12 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      i_1 >= 0 && (i_1 < Seq#Length(xs) && (j_1 >= 0 && (j_1 < Seq#Length(xs) && i_1 != j_1))) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { at2(i, xs) }
  //     0 <= i && i < |xs| ==> acc(at1(xs, i).f, write)) -- 0282.vpr@65.3--65.80
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { at2(i, xs) } 0 <= i && i < |xs| ==> acc(at1(xs, i).f, write))
      if (*) {
        if (0 <= i_20 && i_20 < Seq#Length(xs)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function at1 might not hold. Assertion 0 <= i might not hold. (0282.vpr@65.67--65.77) [197385]"}
              0 <= i_20;
            assert {:msg "  Precondition of function at1 might not hold. Assertion i < |xs| might not hold. (0282.vpr@65.67--65.77) [197386]"}
              i_20 < Seq#Length(xs);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource at1(xs, i).f might not be injective. (0282.vpr@65.10--65.80) [197387]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < Seq#Length(xs))) && (0 <= i_3_1 && i_3_1 < Seq#Length(xs))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> at1(Heap, xs, i_3) != at1(Heap, xs, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at2#frame(EmptyFrame, i_3, xs) }
        (0 <= i_3 && i_3 < Seq#Length(xs)) && NoPerm < FullPerm ==> qpRange9(at1(Heap, xs, i_3)) && invRecv9(at1(Heap, xs, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4) ==> at1(Heap, xs, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { at1#frame(EmptyFrame, xs, i_3) } { at2#frame(EmptyFrame, i_3, xs) }
        0 <= i_3 && i_3 < Seq#Length(xs) ==> at1(Heap, xs, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> at1(Heap, xs, invRecv9(o_4)) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < Seq#Length(xs)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert at2(k, xs) != null -- 0282.vpr@66.3--66.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of at2(k, xs) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function at2 might not hold. Assertion 0 <= k might not hold. (0282.vpr@66.10--66.20) [197388]"}
          0 <= k;
        assert {:msg "  Precondition of function at2 might not hold. Assertion k < |xs| might not hold. (0282.vpr@66.10--66.20) [197389]"}
          k < Seq#Length(xs);
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion at2(k, xs) != null might not hold. (0282.vpr@66.10--66.28) [197390]"}
      at2(Heap, k, xs) != null;
    assume state(Heap, Mask);
}