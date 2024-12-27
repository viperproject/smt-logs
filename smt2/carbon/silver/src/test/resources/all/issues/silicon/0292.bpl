// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:43:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0292.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0292-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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

function  neverTriggered1(x: Ref): bool;
function  neverTriggered2(x_2_2: Ref): bool;
function  neverTriggered3(x: Ref): bool;
function  neverTriggered4(x_2_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(self_4_1: Ref): Ref;
function  invRecv2(self_1_1: Ref): Ref;
function  invRecv3(self_1_1: Ref): Ref;
function  invRecv4(self_2_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(self_4_1: Ref): bool;
function  qpRange2(self_1_1: Ref): bool;
function  qpRange3(self_1_1: Ref): bool;
function  qpRange4(self_2_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: is_int
// - height 1: SCIONPath_get_iof
// - height 0: OpaqueFieldList_contents
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

const unique SCIONPath__ofs: Field NormalField Ref;
axiom !IsPredicateField(SCIONPath__ofs);
axiom !IsWandField(SCIONPath__ofs);

// ==================================================
// Translation of function OpaqueFieldList_contents
// ==================================================

// Uninterpreted function definitions
function  OpaqueFieldList_contents(Heap: HeapType, self: Ref): Seq Ref;
function  OpaqueFieldList_contents'(Heap: HeapType, self: Ref): Seq Ref;
axiom (forall Heap: HeapType, self: Ref ::
  { OpaqueFieldList_contents(Heap, self) }
  OpaqueFieldList_contents(Heap, self) == OpaqueFieldList_contents'(Heap, self) && dummyFunction(OpaqueFieldList_contents#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { OpaqueFieldList_contents'(Heap, self) }
  dummyFunction(OpaqueFieldList_contents#triggerStateless(self))
);

// Framing axioms
function  OpaqueFieldList_contents#frame(frame: FrameType, self: Ref): Seq Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), OpaqueFieldList_contents'(Heap, self) }
  state(Heap, Mask) ==> OpaqueFieldList_contents'(Heap, self) == OpaqueFieldList_contents#frame(EmptyFrame, self)
);

// Trigger function (controlling recursive postconditions)
function  OpaqueFieldList_contents#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  OpaqueFieldList_contents#triggerStateless(self: Ref): Seq Ref;

// Check contract well-formedness and postcondition
procedure OpaqueFieldList_contents#definedness(self: Ref) returns (Result: (Seq Ref))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of function is_int
// ==================================================

// Uninterpreted function definitions
function  vis_int(Heap: HeapType, r_1: Ref): bool;
function  is_int'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { vis_int(Heap, r_1) }
  vis_int(Heap, r_1) == is_int'(Heap, r_1) && dummyFunction(is_int#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { is_int'(Heap, r_1) }
  dummyFunction(is_int#triggerStateless(r_1))
);

// Framing axioms
function  is_int#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), is_int'(Heap, r_1) }
  state(Heap, Mask) ==> is_int'(Heap, r_1) == is_int#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  is_int#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  is_int#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure is_int#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function SCIONPath_get_iof
// ==================================================

// Uninterpreted function definitions
function  SCIONPath_get_iof(Heap: HeapType, self: Ref): Ref;
function  SCIONPath_get_iof'(Heap: HeapType, self: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref ::
  { SCIONPath_get_iof(Heap, self) }
  SCIONPath_get_iof(Heap, self) == SCIONPath_get_iof'(Heap, self) && dummyFunction(SCIONPath_get_iof#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { SCIONPath_get_iof'(Heap, self) }
  dummyFunction(SCIONPath_get_iof#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), SCIONPath_get_iof(Heap, self) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> SCIONPath_get_iof(Heap, self) == (if !vis_int(Heap, null) then null else null)
);

// Framing axioms
function  SCIONPath_get_iof#frame(frame: FrameType, self: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), SCIONPath_get_iof'(Heap, self) }
  state(Heap, Mask) ==> SCIONPath_get_iof'(Heap, self) == SCIONPath_get_iof#frame(Heap[null, SCIONPath_State(self)], self)
);

// Trigger function (controlling recursive postconditions)
function  SCIONPath_get_iof#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  SCIONPath_get_iof#triggerStateless(self: Ref): Ref;

// Check contract well-formedness and postcondition
procedure SCIONPath_get_iof#definedness(self: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, SCIONPath_State(self):=Mask[null, SCIONPath_State(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (!is_int(null) ? null : (unfolding acc(SCIONPath_State(self), wildcard) in null))
      if (*) {
        // Stop execution
        assume false;
      }
      if (!vis_int(Heap, null)) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume SCIONPath_State#trigger(UnfoldingHeap, SCIONPath_State(self));
        assume UnfoldingHeap[null, SCIONPath_State(self)] == CombineFrames(FrameFragment(UnfoldingHeap[self, SCIONPath__ofs]), UnfoldingHeap[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])]);
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access SCIONPath_State(self) (0292.vpr@12.1--16.2) [217735]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, SCIONPath_State(self)];
        havoc wildcard;
        perm := wildcard;
        assume self != null;
        UnfoldingMask := UnfoldingMask[self, SCIONPath__ofs:=UnfoldingMask[self, SCIONPath__ofs] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]):=UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SCIONPath_State(self), UnfoldingHeap[null, SCIONPath_State(self)], OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]), UnfoldingHeap[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume OpaqueFieldList_State#trigger(Unfolding1Heap, OpaqueFieldList_State(Unfolding1Heap[self, SCIONPath__ofs]));
          assume Unfolding1Heap[null, OpaqueFieldList_State(Unfolding1Heap[self, SCIONPath__ofs])] == FrameFragment(OpaqueFieldList_State#condqp1(Unfolding1Heap, Unfolding1Heap[self, SCIONPath__ofs]));
          ExhaleWellDef0Mask := Unfolding1Mask;
          ExhaleWellDef0Heap := Unfolding1Heap;
          perm := FullPerm;
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc QPMask;
          
          // -- check if receiver acc(OpaqueField_State(x), write * (write * wildcard)) is injective
            
          
          // -- Define Inverse Function
            assume (forall x: Ref ::
              { Unfolding1Heap[null, OpaqueField_State(x)] } { Unfolding1Mask[null, OpaqueField_State(x)] } { Seq#ContainsTrigger(OpaqueFieldList_contents#frame(EmptyFrame, Unfolding1Heap[self, SCIONPath__ofs]), x) } { Seq#Contains(OpaqueFieldList_contents#frame(EmptyFrame, Unfolding1Heap[self, SCIONPath__ofs]), x) }
              Seq#Contains(OpaqueFieldList_contents(Unfolding1Heap, Unfolding1Heap[self, SCIONPath__ofs]), x) && NoPerm < FullPerm * (FullPerm * FullPerm) ==> invRecv1(x) == x && qpRange1(x)
            );
            assume (forall self_4_1: Ref ::
              { invRecv1(self_4_1) }
              (Seq#Contains(OpaqueFieldList_contents(Unfolding1Heap, Unfolding1Heap[self, SCIONPath__ofs]), invRecv1(self_4_1)) && NoPerm < FullPerm * (FullPerm * FullPerm)) && qpRange1(self_4_1) ==> invRecv1(self_4_1) == self_4_1
            );
          
          // -- Define updated permissions
            assume (forall self_4_1: Ref ::
              { QPMask[null, OpaqueField_State(self_4_1)] }
              (Seq#Contains(OpaqueFieldList_contents(Unfolding1Heap, Unfolding1Heap[self, SCIONPath__ofs]), invRecv1(self_4_1)) && NoPerm < FullPerm * (FullPerm * FullPerm)) && qpRange1(self_4_1) ==> (NoPerm < FullPerm * (FullPerm * FullPerm) ==> invRecv1(self_4_1) == self_4_1) && QPMask[null, OpaqueField_State(self_4_1)] == Unfolding1Mask[null, OpaqueField_State(self_4_1)] + FullPerm * (FullPerm * FullPerm)
            );
          
          // -- Define independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Unfolding1Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Unfolding1Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
            assume (forall self_4_1: Ref ::
              { QPMask[null, OpaqueField_State(self_4_1)] }
              !((Seq#Contains(OpaqueFieldList_contents(Unfolding1Heap, Unfolding1Heap[self, SCIONPath__ofs]), invRecv1(self_4_1)) && NoPerm < FullPerm * (FullPerm * FullPerm)) && qpRange1(self_4_1)) ==> QPMask[null, OpaqueField_State(self_4_1)] == Unfolding1Mask[null, OpaqueField_State(self_4_1)]
            );
          Unfolding1Mask := QPMask;
          assume state(Unfolding1Heap, Unfolding1Mask);
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, SCIONPath_State#sm(self):=Heap[null, SCIONPath_State#sm(self)][self, SCIONPath__ofs:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, SCIONPath_State#sm(self)][o_15, f_20] || Heap[null, OpaqueFieldList_State#sm(Heap[self, SCIONPath__ofs])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, SCIONPath_State#sm(self):=newPMask];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if !vis_int(Heap, null) then null else null);
}

// ==================================================
// Translation of predicate OpaqueField_State
// ==================================================

type PredicateType_OpaqueField_State;
function  OpaqueField_State(self: Ref): Field PredicateType_OpaqueField_State FrameType;
function  OpaqueField_State#sm(self: Ref): Field PredicateType_OpaqueField_State PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(OpaqueField_State(self)) }
  PredicateMaskField(OpaqueField_State(self)) == OpaqueField_State#sm(self)
);
axiom (forall self: Ref ::
  { OpaqueField_State(self) }
  IsPredicateField(OpaqueField_State(self))
);
axiom (forall self: Ref ::
  { OpaqueField_State(self) }
  getPredWandId(OpaqueField_State(self)) == 0
);
function  OpaqueField_State#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  OpaqueField_State#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { OpaqueField_State(self), OpaqueField_State(self2) }
  OpaqueField_State(self) == OpaqueField_State(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { OpaqueField_State#sm(self), OpaqueField_State#sm(self2) }
  OpaqueField_State#sm(self) == OpaqueField_State#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { OpaqueField_State#trigger(Heap, OpaqueField_State(self)) }
  OpaqueField_State#everUsed(OpaqueField_State(self))
);

procedure OpaqueField_State#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of OpaqueField_State
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate OpaqueFieldList_State
// ==================================================

type PredicateType_OpaqueFieldList_State;
function  OpaqueFieldList_State(self: Ref): Field PredicateType_OpaqueFieldList_State FrameType;
function  OpaqueFieldList_State#sm(self: Ref): Field PredicateType_OpaqueFieldList_State PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(OpaqueFieldList_State(self)) }
  PredicateMaskField(OpaqueFieldList_State(self)) == OpaqueFieldList_State#sm(self)
);
axiom (forall self: Ref ::
  { OpaqueFieldList_State(self) }
  IsPredicateField(OpaqueFieldList_State(self))
);
axiom (forall self: Ref ::
  { OpaqueFieldList_State(self) }
  getPredWandId(OpaqueFieldList_State(self)) == 1
);
function  OpaqueFieldList_State#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  OpaqueFieldList_State#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { OpaqueFieldList_State(self), OpaqueFieldList_State(self2) }
  OpaqueFieldList_State(self) == OpaqueFieldList_State(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { OpaqueFieldList_State#sm(self), OpaqueFieldList_State#sm(self2) }
  OpaqueFieldList_State#sm(self) == OpaqueFieldList_State#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { OpaqueFieldList_State#trigger(Heap, OpaqueFieldList_State(self)) }
  OpaqueFieldList_State#everUsed(OpaqueFieldList_State(self))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in OpaqueFieldList_contents(self)) } (x in OpaqueFieldList_contents(self)) ==> acc(OpaqueField_State(x), write)) in predicate OpaqueFieldList_State
// ==================================================

function  OpaqueFieldList_State#condqp1(Heap: HeapType, self_3_1: Ref): int;
function  sk_OpaqueFieldList_State#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, self: Ref ::
  { OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Seq#Contains(OpaqueFieldList_contents(Heap2Heap, self), sk_OpaqueFieldList_State#condqp1(OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self))) && NoPerm < FullPerm <==> Seq#Contains(OpaqueFieldList_contents(Heap1Heap, self), sk_OpaqueFieldList_State#condqp1(OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self))) && NoPerm < FullPerm) && (Seq#Contains(OpaqueFieldList_contents(Heap2Heap, self), sk_OpaqueFieldList_State#condqp1(OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self))) && NoPerm < FullPerm ==> Heap2Heap[null, OpaqueField_State(sk_OpaqueFieldList_State#condqp1(OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self)))] == Heap1Heap[null, OpaqueField_State(sk_OpaqueFieldList_State#condqp1(OpaqueFieldList_State#condqp1(Heap2Heap, self), OpaqueFieldList_State#condqp1(Heap1Heap, self)))]) ==> OpaqueFieldList_State#condqp1(Heap2Heap, self) == OpaqueFieldList_State#condqp1(Heap1Heap, self)
);

procedure OpaqueFieldList_State#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of OpaqueFieldList_State
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in OpaqueFieldList_contents(self)) } (x in OpaqueFieldList_contents(self)) ==> acc(OpaqueField_State(x), write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(OpaqueField_State(x), write) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource OpaqueField_State(x) might not be injective. (0292.vpr@20.1--24.2) [217736]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered2(x_2_2), neverTriggered2(x_2_3) }
        (((x_2_2 != x_2_3 && Seq#Contains(OpaqueFieldList_contents(Heap, self), x_2_2)) && Seq#Contains(OpaqueFieldList_contents(Heap, self), x_2_3)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
      );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[null, OpaqueField_State(x_2_2)] } { Mask[null, OpaqueField_State(x_2_2)] } { Seq#ContainsTrigger(OpaqueFieldList_contents#frame(EmptyFrame, self), x_2_2) } { Seq#Contains(OpaqueFieldList_contents#frame(EmptyFrame, self), x_2_2) }
        Seq#Contains(OpaqueFieldList_contents(Heap, self), x_2_2) && NoPerm < FullPerm ==> invRecv2(x_2_2) == x_2_2 && qpRange2(x_2_2)
      );
      assume (forall self_1_1: Ref ::
        { invRecv2(self_1_1) }
        (Seq#Contains(OpaqueFieldList_contents(Heap, self), invRecv2(self_1_1)) && NoPerm < FullPerm) && qpRange2(self_1_1) ==> invRecv2(self_1_1) == self_1_1
      );
    
    // -- Define updated permissions
      assume (forall self_1_1: Ref ::
        { QPMask[null, OpaqueField_State(self_1_1)] }
        (Seq#Contains(OpaqueFieldList_contents(Heap, self), invRecv2(self_1_1)) && NoPerm < FullPerm) && qpRange2(self_1_1) ==> (NoPerm < FullPerm ==> invRecv2(self_1_1) == self_1_1) && QPMask[null, OpaqueField_State(self_1_1)] == Mask[null, OpaqueField_State(self_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall self_1_1: Ref ::
        { QPMask[null, OpaqueField_State(self_1_1)] }
        !((Seq#Contains(OpaqueFieldList_contents(Heap, self), invRecv2(self_1_1)) && NoPerm < FullPerm) && qpRange2(self_1_1)) ==> QPMask[null, OpaqueField_State(self_1_1)] == Mask[null, OpaqueField_State(self_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate SCIONPath_State
// ==================================================

type PredicateType_SCIONPath_State;
function  SCIONPath_State(self: Ref): Field PredicateType_SCIONPath_State FrameType;
function  SCIONPath_State#sm(self: Ref): Field PredicateType_SCIONPath_State PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(SCIONPath_State(self)) }
  PredicateMaskField(SCIONPath_State(self)) == SCIONPath_State#sm(self)
);
axiom (forall self: Ref ::
  { SCIONPath_State(self) }
  IsPredicateField(SCIONPath_State(self))
);
axiom (forall self: Ref ::
  { SCIONPath_State(self) }
  getPredWandId(SCIONPath_State(self)) == 2
);
function  SCIONPath_State#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SCIONPath_State#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { SCIONPath_State(self), SCIONPath_State(self2) }
  SCIONPath_State(self) == SCIONPath_State(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { SCIONPath_State#sm(self), SCIONPath_State#sm(self2) }
  SCIONPath_State#sm(self) == SCIONPath_State#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { SCIONPath_State#trigger(Heap, SCIONPath_State(self)) }
  SCIONPath_State#everUsed(SCIONPath_State(self))
);

procedure SCIONPath_State#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of SCIONPath_State
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, SCIONPath__ofs:=Mask[self, SCIONPath__ofs] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(OpaqueFieldList_State(self.SCIONPath__ofs), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.SCIONPath__ofs (0292.vpr@26.1--30.2) [217737]"}
        HasDirectPerm(Mask, self, SCIONPath__ofs);
    perm := FullPerm;
    Mask := Mask[null, OpaqueFieldList_State(Heap[self, SCIONPath__ofs]):=Mask[null, OpaqueFieldList_State(Heap[self, SCIONPath__ofs])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(OpaqueFieldList_State(self.SCIONPath__ofs), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume OpaqueFieldList_State#trigger(UnfoldingHeap, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]));
      assume UnfoldingHeap[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])] == FrameFragment(OpaqueFieldList_State#condqp1(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access OpaqueFieldList_State(self.SCIONPath__ofs) (0292.vpr@26.1--30.2) [217738]"}
          perm <= UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])];
      }
      UnfoldingMask := UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]):=UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      
      // -- check if receiver acc(OpaqueField_State(x), write) is injective
        assert {:msg "  Predicate might not be well-formed. Quantified resource OpaqueField_State(x) might not be injective. (0292.vpr@26.1--30.2) [217739]"}
          (forall x: Ref, x_9: Ref ::
          { neverTriggered3(x), neverTriggered3(x_9) }
          (((x != x_9 && Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), x)) && Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), x_9)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
        );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { UnfoldingHeap[null, OpaqueField_State(x)] } { UnfoldingMask[null, OpaqueField_State(x)] } { Seq#ContainsTrigger(OpaqueFieldList_contents#frame(EmptyFrame, UnfoldingHeap[self, SCIONPath__ofs]), x) } { Seq#Contains(OpaqueFieldList_contents#frame(EmptyFrame, UnfoldingHeap[self, SCIONPath__ofs]), x) }
          Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), x) && NoPerm < FullPerm ==> invRecv3(x) == x && qpRange3(x)
        );
        assume (forall self_1_1: Ref ::
          { invRecv3(self_1_1) }
          (Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv3(self_1_1)) && NoPerm < FullPerm) && qpRange3(self_1_1) ==> invRecv3(self_1_1) == self_1_1
        );
      
      // -- Define updated permissions
        assume (forall self_1_1: Ref ::
          { QPMask[null, OpaqueField_State(self_1_1)] }
          (Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv3(self_1_1)) && NoPerm < FullPerm) && qpRange3(self_1_1) ==> (NoPerm < FullPerm ==> invRecv3(self_1_1) == self_1_1) && QPMask[null, OpaqueField_State(self_1_1)] == UnfoldingMask[null, OpaqueField_State(self_1_1)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall self_1_1: Ref ::
          { QPMask[null, OpaqueField_State(self_1_1)] }
          !((Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv3(self_1_1)) && NoPerm < FullPerm) && qpRange3(self_1_1)) ==> QPMask[null, OpaqueField_State(self_1_1)] == UnfoldingMask[null, OpaqueField_State(self_1_1)]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.SCIONPath__ofs (0292.vpr@26.1--30.2) [217740]"}
        HasDirectPerm(UnfoldingMask, self, SCIONPath__ofs);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume OpaqueFieldList_State#trigger(UnfoldingHeap, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]));
      assume UnfoldingHeap[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])] == FrameFragment(OpaqueFieldList_State#condqp1(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs]):=UnfoldingMask[null, OpaqueFieldList_State(UnfoldingHeap[self, SCIONPath__ofs])] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      
      // -- check if receiver acc(OpaqueField_State(x), write) is injective
        
      
      // -- Define Inverse Function
        assume (forall x_2_2: Ref ::
          { UnfoldingHeap[null, OpaqueField_State(x_2_2)] } { UnfoldingMask[null, OpaqueField_State(x_2_2)] } { Seq#ContainsTrigger(OpaqueFieldList_contents#frame(EmptyFrame, UnfoldingHeap[self, SCIONPath__ofs]), x_2_2) } { Seq#Contains(OpaqueFieldList_contents#frame(EmptyFrame, UnfoldingHeap[self, SCIONPath__ofs]), x_2_2) }
          Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), x_2_2) && NoPerm < FullPerm ==> invRecv4(x_2_2) == x_2_2 && qpRange4(x_2_2)
        );
        assume (forall self_2_1: Ref ::
          { invRecv4(self_2_1) }
          (Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv4(self_2_1)) && NoPerm < FullPerm) && qpRange4(self_2_1) ==> invRecv4(self_2_1) == self_2_1
        );
      
      // -- Define updated permissions
        assume (forall self_2_1: Ref ::
          { QPMask[null, OpaqueField_State(self_2_1)] }
          (Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv4(self_2_1)) && NoPerm < FullPerm) && qpRange4(self_2_1) ==> (NoPerm < FullPerm ==> invRecv4(self_2_1) == self_2_1) && QPMask[null, OpaqueField_State(self_2_1)] == UnfoldingMask[null, OpaqueField_State(self_2_1)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall self_2_1: Ref ::
          { QPMask[null, OpaqueField_State(self_2_1)] }
          !((Seq#Contains(OpaqueFieldList_contents(UnfoldingHeap, UnfoldingHeap[self, SCIONPath__ofs]), invRecv4(self_2_1)) && NoPerm < FullPerm) && qpRange4(self_2_1)) ==> QPMask[null, OpaqueField_State(self_2_1)] == UnfoldingMask[null, OpaqueField_State(self_2_1)]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
}