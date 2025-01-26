// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0810.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0810-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_56: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_56, f_3] }
  Heap[o_56, $allocated] ==> Heap[Heap[o_56, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_51) ==> Heap[o_38, f_51] == ExhaleHeap[o_38, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26), ExhaleHeap[null, PredicateMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> Heap[null, PredicateMaskField(pm_f_26)] == ExhaleHeap[null, PredicateMaskField(pm_f_26)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, PredicateMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26), ExhaleHeap[null, WandMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> Heap[null, WandMaskField(pm_f_26)] == ExhaleHeap[null, WandMaskField(pm_f_26)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, WandMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_56: Ref, f_22: (Field A B), v: B ::
  { Heap[o_56, f_22:=v] }
  succHeap(Heap, Heap[o_56, f_22:=v])
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

function  neverTriggered1(iii_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 4: __prim__int___box__, int___unbox__
// - height 3: list___len__
// - height 2: int___lt__
// - height 1: list___getitem__
// - height 0: int___ge__
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
// Translation of domain PyType
// ==================================================

// The type for domain PyType
type PyTypeDomainType;

// Translation of domain function extends_
function  extends_(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function issubtype
function  issubtype(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function isnotsubtype
function  isnotsubtype(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function typeof
function  typeof(obj: Ref): PyTypeDomainType;

// Translation of domain function get_basic
function  get_basic(t_3: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_1
function  union_type_1(arg_1_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_2
function  union_type_2(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_3
function  union_type_3(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType, arg_3_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_4
function  union_type_4(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType, arg_3_12: PyTypeDomainType, arg_4_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain unique function object
const unique object: PyTypeDomainType;

// Translation of domain unique function list_basic
const unique list_basic: PyTypeDomainType;

// Translation of domain function list
function  list_1(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain unique function set_basic
const unique set_basic: PyTypeDomainType;

// Translation of domain function set
function  set(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function set_arg
function  set_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function dict_basic
const unique dict_basic: PyTypeDomainType;

// Translation of domain function dict
function  dict(arg0: PyTypeDomainType, arg1_1: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function dict_arg
function  dict_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function int
const unique vint: PyTypeDomainType;

// Translation of domain unique function float
const unique float: PyTypeDomainType;

// Translation of domain unique function bool
const unique vbool: PyTypeDomainType;

// Translation of domain unique function NoneType
const unique NoneType: PyTypeDomainType;

// Translation of domain unique function Exception
const unique Exception: PyTypeDomainType;

// Translation of domain unique function ConnectionRefusedError
const unique ConnectionRefusedError: PyTypeDomainType;

// Translation of domain unique function traceback
const unique traceback: PyTypeDomainType;

// Translation of domain unique function str
const unique str: PyTypeDomainType;

// Translation of domain unique function bytes
const unique bytes: PyTypeDomainType;

// Translation of domain unique function __prim__perm
const unique __prim__perm: PyTypeDomainType;

// Translation of domain unique function PSeq_basic
const unique PSeq_basic: PyTypeDomainType;

// Translation of domain function PSeq
function  PSeq(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PSeq_arg
function  PSeq_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function PSet_basic
const unique PSet_basic: PyTypeDomainType;

// Translation of domain function PSet
function  PSet(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PSet_arg
function  PSet_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function PMultiset_basic
const unique PMultiset_basic: PyTypeDomainType;

// Translation of domain function PMultiset
function  PMultiset(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PMultiset_arg
function  PMultiset_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function slice
const unique slice: PyTypeDomainType;

// Translation of domain unique function range_0
const unique range_0: PyTypeDomainType;

// Translation of domain unique function Iterator_basic
const unique Iterator_basic: PyTypeDomainType;

// Translation of domain function Iterator
function  Iterator(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function Iterator_arg
function  Iterator_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function Thread_0
const unique Thread_0: PyTypeDomainType;

// Translation of domain unique function LevelType
const unique LevelType: PyTypeDomainType;

// Translation of domain unique function type
const unique vtype: PyTypeDomainType;

// Translation of domain unique function Place
const unique Place: PyTypeDomainType;

// Translation of domain unique function __prim__Seq_type
const unique __prim__Seq_type: PyTypeDomainType;

// Translation of domain unique function Node
const unique Node_1: PyTypeDomainType;

// Translation of domain axiom issubtype_transitivity
axiom (forall sub_1: PyTypeDomainType, middle: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (issubtype(sub_1, middle): bool), (issubtype(middle, super_1): bool) }
  (issubtype(sub_1, middle): bool) && (issubtype(middle, super_1): bool) ==> (issubtype(sub_1, super_1): bool)
);

// Translation of domain axiom issubtype_reflexivity
axiom (forall type_: PyTypeDomainType ::
  { (issubtype(type_, type_): bool) }
  (issubtype(type_, type_): bool)
);

// Translation of domain axiom extends_implies_subtype
axiom (forall sub_1: PyTypeDomainType, sub2: PyTypeDomainType ::
  { (extends_(sub_1, sub2): bool) }
  (extends_(sub_1, sub2): bool) ==> (issubtype(sub_1, sub2): bool)
);

// Translation of domain axiom issubtype_exclusion
axiom (forall sub_1: PyTypeDomainType, sub2: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (extends_(sub_1, super_1): bool), (extends_(sub2, super_1): bool) }
  (extends_(sub_1, super_1): bool) && ((extends_(sub2, super_1): bool) && sub_1 != sub2) ==> (isnotsubtype(sub_1, sub2): bool) && (isnotsubtype(sub2, sub_1): bool)
);

// Translation of domain axiom issubtype_exclusion_propagation
axiom (forall sub_1: PyTypeDomainType, middle: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (issubtype(sub_1, middle): bool), (isnotsubtype(middle, super_1): bool) }
  (issubtype(sub_1, middle): bool) && (isnotsubtype(middle, super_1): bool) ==> !(issubtype(sub_1, super_1): bool)
);

// Translation of domain axiom subtype_list
axiom (forall var0: PyTypeDomainType ::
  { (list_1(var0): PyTypeDomainType) }
  (extends_((list_1(var0): PyTypeDomainType), object): bool) && (get_basic((list_1(var0): PyTypeDomainType)): PyTypeDomainType) == list_basic
);

// Translation of domain axiom subtype_int
axiom (extends_(vint, float): bool) && (get_basic(vint): PyTypeDomainType) == vint;

// Translation of domain axiom subtype_float
axiom (extends_(float, object): bool) && (get_basic(float): PyTypeDomainType) == float;

// Translation of domain axiom subtype_bool
axiom (extends_(vbool, vint): bool);

// ==================================================
// Translation of all fields
// ==================================================

const unique list_acc: Field NormalField (Seq Ref);
axiom !IsPredicateField(list_acc);
axiom !IsWandField(list_acc);
const unique Node_function_name: Field NormalField Ref;
axiom !IsPredicateField(Node_function_name);
axiom !IsWandField(Node_function_name);
const unique Node_children: Field NormalField Ref;
axiom !IsPredicateField(Node_children);
axiom !IsWandField(Node_children);

// ==================================================
// Translation of function __prim__int___box__
// ==================================================

// Uninterpreted function definitions
function  __prim__int___box__(Heap: HeapType, prim: int): Ref;
function  __prim__int___box__'(Heap: HeapType, prim: int): Ref;
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__(Heap, prim) }
  __prim__int___box__(Heap, prim) == __prim__int___box__'(Heap, prim) && dummyFunction(__prim__int___box__#triggerStateless(prim))
);
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__'(Heap, prim) }
  dummyFunction(__prim__int___box__#triggerStateless(prim))
);

// Framing axioms
function  __prim__int___box__#frame(frame: FrameType, prim: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) ==> __prim__int___box__'(Heap, prim) == __prim__int___box__#frame(EmptyFrame, prim)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || __prim__int___box__#trigger(EmptyFrame, prim)) ==> (typeof(__prim__int___box__'(Heap, prim)): PyTypeDomainType) == vint
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || __prim__int___box__#trigger(EmptyFrame, prim)) ==> int___unbox__'(Heap, __prim__int___box__'(Heap, prim)) == prim
);

// Trigger function (controlling recursive postconditions)
function  __prim__int___box__#trigger(frame: FrameType, prim: int): bool;

// State-independent trigger function
function  __prim__int___box__#triggerStateless(prim: int): Ref;

// Check contract well-formedness and postcondition
procedure __prim__int___box__#definedness(prim: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Checking definedness of postcondition (no body)
    assume (typeof(Result): PyTypeDomainType) == vint;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of int___unbox__(result) == prim
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(result), int()) might not hold. (0810.vpr@182.11--182.32) [80152]"}
          (issubtype((typeof(Result): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
    assume int___unbox__(Heap, Result) == prim;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function int___unbox__
// ==================================================

// Uninterpreted function definitions
function  int___unbox__(Heap: HeapType, box: Ref): int;
function  int___unbox__'(Heap: HeapType, box: Ref): int;
axiom (forall Heap: HeapType, box: Ref ::
  { int___unbox__(Heap, box) }
  int___unbox__(Heap, box) == int___unbox__'(Heap, box) && dummyFunction(int___unbox__#triggerStateless(box))
);
axiom (forall Heap: HeapType, box: Ref ::
  { int___unbox__'(Heap, box) }
  dummyFunction(int___unbox__#triggerStateless(box))
);

// Framing axioms
function  int___unbox__#frame(frame: FrameType, box: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, box: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box) }
  state(Heap, Mask) ==> int___unbox__'(Heap, box) == int___unbox__#frame(EmptyFrame, box)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, box: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || int___unbox__#trigger(EmptyFrame, box)) ==> (issubtype((typeof(box): PyTypeDomainType), vint): bool) ==> !(issubtype((typeof(box): PyTypeDomainType), vbool): bool) ==> __prim__int___box__'(Heap, int___unbox__'(Heap, box)) == box
);

// Trigger function (controlling recursive postconditions)
function  int___unbox__#trigger(frame: FrameType, box: Ref): bool;

// State-independent trigger function
function  int___unbox__#triggerStateless(box: Ref): int;

// Check contract well-formedness and postcondition
procedure int___unbox__#definedness(box: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[box, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume (issubtype((typeof(box): PyTypeDomainType), vint): bool);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    if (!(issubtype((typeof(box): PyTypeDomainType), vbool): bool)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of __prim__int___box__(result) == box
        if (*) {
          // Stop execution
          assume false;
        }
      assume __prim__int___box__(Heap, Result) == box;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function int___ge__
// ==================================================

// Uninterpreted function definitions
function  int___ge__(Heap: HeapType, self: int, other: int): bool;
function  int___ge__'(Heap: HeapType, self: int, other: int): bool;
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___ge__(Heap, self, other) }
  int___ge__(Heap, self, other) == int___ge__'(Heap, self, other) && dummyFunction(int___ge__#triggerStateless(self, other))
);
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___ge__'(Heap, self, other) }
  dummyFunction(int___ge__#triggerStateless(self, other))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___ge__(Heap, self, other) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> int___ge__(Heap, self, other) == (self >= other)
);

// Framing axioms
function  int___ge__#frame(frame: FrameType, self: int, other: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___ge__'(Heap, self, other) }
  state(Heap, Mask) ==> int___ge__'(Heap, self, other) == int___ge__#frame(EmptyFrame, self, other)
);

// Trigger function (controlling recursive postconditions)
function  int___ge__#trigger(frame: FrameType, self: int, other: int): bool;

// State-independent trigger function
function  int___ge__#triggerStateless(self: int, other: int): bool;

// Check contract well-formedness and postcondition
procedure int___ge__#definedness(self: int, other: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := self >= other;
}

// ==================================================
// Translation of function int___lt__
// ==================================================

// Uninterpreted function definitions
function  int___lt__(Heap: HeapType, self: int, other: int): bool;
function  int___lt__'(Heap: HeapType, self: int, other: int): bool;
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___lt__(Heap, self, other) }
  int___lt__(Heap, self, other) == int___lt__'(Heap, self, other) && dummyFunction(int___lt__#triggerStateless(self, other))
);
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___lt__'(Heap, self, other) }
  dummyFunction(int___lt__#triggerStateless(self, other))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___lt__(Heap, self, other) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> int___lt__(Heap, self, other) == (self < other)
);

// Framing axioms
function  int___lt__#frame(frame: FrameType, self: int, other: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___lt__'(Heap, self, other) }
  state(Heap, Mask) ==> int___lt__'(Heap, self, other) == int___lt__#frame(EmptyFrame, self, other)
);

// Trigger function (controlling recursive postconditions)
function  int___lt__#trigger(frame: FrameType, self: int, other: int): bool;

// State-independent trigger function
function  int___lt__#triggerStateless(self: int, other: int): bool;

// Check contract well-formedness and postcondition
procedure int___lt__#definedness(self: int, other: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := self < other;
}

// ==================================================
// Translation of function list___len__
// ==================================================

// Uninterpreted function definitions
function  list___len__(Heap: HeapType, self: Ref): int;
function  list___len__'(Heap: HeapType, self: Ref): int;
axiom (forall Heap: HeapType, self: Ref ::
  { list___len__(Heap, self) }
  list___len__(Heap, self) == list___len__'(Heap, self) && dummyFunction(list___len__#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { list___len__'(Heap, self) }
  dummyFunction(list___len__#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), list___len__(Heap, self) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> list___len__(Heap, self) == Seq#Length(Heap[self, list_acc])
);

// Framing axioms
function  list___len__#frame(frame: FrameType, self: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), list___len__'(Heap, self) }
  state(Heap, Mask) ==> list___len__'(Heap, self) == list___len__#frame(FrameFragment(Heap[self, list_acc]), self)
);

// Trigger function (controlling recursive postconditions)
function  list___len__#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  list___len__#triggerStateless(self: Ref): int;

// Check contract well-formedness and postcondition
procedure list___len__#definedness(self: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume self != null;
    Mask := Mask[self, list_acc:=Mask[self, list_acc] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of |self.list_acc|
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.list_acc (0810.vpr@203.1--208.2) [80153]"}
        HasDirectPerm(Mask, self, list_acc);
  
  // -- Translate function body
    Result := Seq#Length(Heap[self, list_acc]);
}

// ==================================================
// Translation of function list___getitem__
// ==================================================

// Uninterpreted function definitions
function  list___getitem__(Heap: HeapType, self: Ref, key_2: Ref): Ref;
function  list___getitem__'(Heap: HeapType, self: Ref, key_2: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { list___getitem__(Heap, self, key_2) }
  list___getitem__(Heap, self, key_2) == list___getitem__'(Heap, self, key_2) && dummyFunction(list___getitem__#triggerStateless(self, key_2))
);
axiom (forall Heap: HeapType, self: Ref, key_2: Ref ::
  { list___getitem__'(Heap, self, key_2) }
  dummyFunction(list___getitem__#triggerStateless(self, key_2))
);

// Framing axioms
function  list___getitem__#frame(frame: FrameType, self: Ref, key_2: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref, key_2: Ref ::
  { state(Heap, Mask), list___getitem__'(Heap, self, key_2) }
  state(Heap, Mask) ==> list___getitem__'(Heap, self, key_2) == list___getitem__#frame(CombineFrames(FrameFragment(Heap[self, list_acc]), CombineFrames(FrameFragment((if int___unbox__(Heap, key_2) < 0 then EmptyFrame else EmptyFrame)), FrameFragment((if int___unbox__(Heap, key_2) >= 0 then EmptyFrame else EmptyFrame)))), self, key_2)
);

// Trigger function (controlling recursive postconditions)
function  list___getitem__#trigger(frame: FrameType, self: Ref, key_2: Ref): bool;

// State-independent trigger function
function  list___getitem__#triggerStateless(self: Ref, key_2: Ref): Ref;

// Check contract well-formedness and postcondition
procedure list___getitem__#definedness(self: Ref, key_2: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ln_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume Heap[key_2, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume (issubtype((typeof(key_2): PyTypeDomainType), vint): bool);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume self != null;
    Mask := Mask[self, list_acc:=Mask[self, list_acc] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of list___len__(self)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function list___len__ might not hold. There might be insufficient permission to access self.list_acc (0810.vpr@214.8--214.26) [80154]"}
          NoPerm < perm ==> NoPerm < Mask[self, list_acc];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    ln_1 := list___len__(Heap, self);
    
    // -- Check definedness of int___unbox__(key) < 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(key), int()) might not hold. (0810.vpr@215.8--215.26) [80155]"}
          (issubtype((typeof(key_2): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
    if (int___unbox__(Heap, key_2) < 0) {
      assume state(Heap, Mask);
      
      // -- Check definedness of int___unbox__(key) >= -ln
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(key), int()) might not hold. (0810.vpr@215.35--215.53) [80156]"}
            (issubtype((typeof(key_2): PyTypeDomainType), vint): bool);
          // Stop execution
          assume false;
        }
      assume int___unbox__(Heap, key_2) >= -ln_1;
    }
    
    // -- Check definedness of int___unbox__(key) >= 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(key), int()) might not hold. (0810.vpr@216.8--216.26) [80157]"}
          (issubtype((typeof(key_2): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
    if (int___unbox__(Heap, key_2) >= 0) {
      assume state(Heap, Mask);
      
      // -- Check definedness of int___unbox__(key) < ln
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(key), int()) might not hold. (0810.vpr@216.36--216.54) [80158]"}
            (issubtype((typeof(key_2): PyTypeDomainType), vint): bool);
          // Stop execution
          assume false;
        }
      assume int___unbox__(Heap, key_2) < ln_1;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mcan_node_be_compressed
// ==================================================

procedure mcan_node_be_compressed(marked_execution_tree: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var iii: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ln_1: int;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[marked_execution_tree, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(marked_execution_tree.Node_children, write) &&
  //   issubtype(typeof(marked_execution_tree.Node_children), list(Node())) -- 0810.vpr@166.5--167.84
    perm := FullPerm;
    assume marked_execution_tree != null;
    Mask := Mask[marked_execution_tree, Node_children:=Mask[marked_execution_tree, Node_children] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of issubtype(typeof(marked_execution_tree.Node_children), list(Node()))
      assert {:msg "  Inhale might fail. There might be insufficient permission to access marked_execution_tree.Node_children (0810.vpr@166.12--167.84) [80160]"}
        HasDirectPerm(Mask, marked_execution_tree, Node_children);
    assume (issubtype((typeof(Heap[marked_execution_tree, Node_children]): PyTypeDomainType), (list_1(Node_1): PyTypeDomainType)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(marked_execution_tree.Node_children.list_acc, write) -- 0810.vpr@168.5--168.68
    
    // -- Check definedness of acc(marked_execution_tree.Node_children.list_acc, write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access marked_execution_tree.Node_children (0810.vpr@168.12--168.68) [80161]"}
        HasDirectPerm(Mask, marked_execution_tree, Node_children);
    perm := FullPerm;
    assume Heap[marked_execution_tree, Node_children] != null;
    Mask := Mask[Heap[marked_execution_tree, Node_children], list_acc:=Mask[Heap[marked_execution_tree, Node_children], list_acc] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall iii: Ref ::
  //     { typeof(iii) }
  //     { int___ge__(int___unbox__(iii), 0) }
  //     { int___lt__(int___unbox__(iii), list___len__(marked_execution_tree.Node_children)) }
  //     { list___getitem__(marked_execution_tree.Node_children, iii) }
  //     typeof(iii) == int() &&
  //     (int___ge__(int___unbox__(iii), 0) &&
  //     int___lt__(int___unbox__(iii), list___len__(marked_execution_tree.Node_children))) ==>
  //     acc(list___getitem__(marked_execution_tree.Node_children, iii).Node_function_name, write)) -- 0810.vpr@171.5--176.108
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall iii: Ref :: { typeof(iii) } { int___ge__(int___unbox__(iii), 0) } { int___lt__(int___unbox__(iii), list___len__(marked_execution_tree.Node_children)) } { list___getitem__(marked_execution_tree.Node_children, iii) } typeof(iii) == int() && (int___ge__(int___unbox__(iii), 0) && int___lt__(int___unbox__(iii), list___len__(marked_execution_tree.Node_children))) ==> acc(list___getitem__(marked_execution_tree.Node_children, iii).Node_function_name, write))
      if (*) {
        if ((typeof(iii): PyTypeDomainType) == vint) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(iii), int()) might not hold. (0810.vpr@174.30--174.48) [80163]"}
              (issubtype((typeof(iii): PyTypeDomainType), vint): bool);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
          if (int___ge__(Heap, int___unbox__(Heap, iii), 0)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(iii), int()) might not hold. (0810.vpr@175.29--175.47) [80164]"}
                (issubtype((typeof(iii): PyTypeDomainType), vint): bool);
              // Stop execution
              assume false;
            }
            assert {:msg "  Inhale might fail. There might be insufficient permission to access marked_execution_tree.Node_children (0810.vpr@171.13--176.107) [80165]"}
              HasDirectPerm(Mask, marked_execution_tree, Node_children);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function list___len__ might not hold. There might be insufficient permission to access marked_execution_tree.Node_children.list_acc (0810.vpr@175.49--175.98) [80166]"}
                NoPerm < perm ==> NoPerm < Mask[Heap[marked_execution_tree, Node_children], list_acc];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if ((typeof(iii): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, iii), 0) && int___lt__(Heap, int___unbox__(Heap, iii), list___len__(Heap, Heap[marked_execution_tree, Node_children])))) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access marked_execution_tree.Node_children (0810.vpr@171.13--176.107) [80167]"}
            HasDirectPerm(Mask, marked_execution_tree, Node_children);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function list___getitem__ might not hold. Assertion issubtype(typeof(iii), int()) might not hold. (0810.vpr@176.22--176.80) [80168]"}
              (issubtype((typeof(iii): PyTypeDomainType), vint): bool);
            perm := FullPerm;
            assert {:msg "  Precondition of function list___getitem__ might not hold. There might be insufficient permission to access marked_execution_tree.Node_children.list_acc (0810.vpr@176.22--176.80) [80169]"}
              NoPerm < perm ==> NoPerm < Mask[Heap[marked_execution_tree, Node_children], list_acc];
            assert {:msg "  Precondition of function list___getitem__ might not hold. Assertion (let ln == (list___len__(marked_execution_tree.Node_children)) in (int___unbox__(iii) < 0 ==> int___unbox__(iii) >= -ln) && (int___unbox__(iii) >= 0 ==> int___unbox__(iii) < ln)) might not hold. (0810.vpr@176.22--176.80) [80170]"}
              (int___unbox__(Heap, iii) < 0 ==> int___unbox__(Heap, iii) >= -list___len__(Heap, Heap[marked_execution_tree, Node_children])) && (int___unbox__(Heap, iii) >= 0 ==> int___unbox__(Heap, iii) < list___len__(Heap, Heap[marked_execution_tree, Node_children]));
            
            // -- Free assumptions (exhale module)
              ln_1 := list___len__(Heap, Heap[marked_execution_tree, Node_children]);
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
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource list___getitem__(marked_execution_tree.Node_children, iii).Node_function_name might not be injective. (0810.vpr@171.13--176.107) [80171]"}
      (forall iii_1: Ref, iii_1_1: Ref ::
      
      (((iii_1 != iii_1_1 && ((typeof(iii_1): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, iii_1), 0) && int___lt__(Heap, int___unbox__(Heap, iii_1), list___len__(Heap, Heap[marked_execution_tree, Node_children]))))) && ((typeof(iii_1_1): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, iii_1_1), 0) && int___lt__(Heap, int___unbox__(Heap, iii_1_1), list___len__(Heap, Heap[marked_execution_tree, Node_children]))))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> list___getitem__(Heap, Heap[marked_execution_tree, Node_children], iii_1) != list___getitem__(Heap, Heap[marked_execution_tree, Node_children], iii_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall iii_1: Ref ::
        { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { (typeof(iii_1): PyTypeDomainType) } { int___ge__#frame(EmptyFrame, int___unbox__#frame(EmptyFrame, iii_1), 0) } { int___lt__#frame(EmptyFrame, int___unbox__#frame(EmptyFrame, iii_1), list___len__#frame(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), Heap[marked_execution_tree, Node_children])) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) }
        ((typeof(iii_1): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, iii_1), 0) && int___lt__(Heap, int___unbox__(Heap, iii_1), list___len__(Heap, Heap[marked_execution_tree, Node_children])))) && NoPerm < FullPerm ==> qpRange1(list___getitem__(Heap, Heap[marked_execution_tree, Node_children], iii_1)) && invRecv1(list___getitem__(Heap, Heap[marked_execution_tree, Node_children], iii_1)) == iii_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (((typeof(invRecv1(o_9)): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, invRecv1(o_9)), 0) && int___lt__(Heap, int___unbox__(Heap, invRecv1(o_9)), list___len__(Heap, Heap[marked_execution_tree, Node_children])))) && NoPerm < FullPerm) && qpRange1(o_9) ==> list___getitem__(Heap, Heap[marked_execution_tree, Node_children], invRecv1(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall iii_1: Ref ::
        { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { (typeof(iii_1): PyTypeDomainType) } { int___ge__#frame(EmptyFrame, int___unbox__#frame(EmptyFrame, iii_1), 0) } { int___lt__#frame(EmptyFrame, int___unbox__#frame(EmptyFrame, iii_1), list___len__#frame(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), Heap[marked_execution_tree, Node_children])) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) } { list___getitem__#frame(CombineFrames(FrameFragment(Heap[Heap[marked_execution_tree, Node_children], list_acc]), CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame))), Heap[marked_execution_tree, Node_children], iii_1) }
        (typeof(iii_1): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, iii_1), 0) && int___lt__(Heap, int___unbox__(Heap, iii_1), list___len__(Heap, Heap[marked_execution_tree, Node_children]))) ==> list___getitem__(Heap, Heap[marked_execution_tree, Node_children], iii_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, Node_function_name] }
        ((((typeof(invRecv1(o_9)): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, invRecv1(o_9)), 0) && int___lt__(Heap, int___unbox__(Heap, invRecv1(o_9)), list___len__(Heap, Heap[marked_execution_tree, Node_children])))) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> list___getitem__(Heap, Heap[marked_execution_tree, Node_children], invRecv1(o_9)) == o_9) && QPMask[o_9, Node_function_name] == Mask[o_9, Node_function_name] + FullPerm) && (!((((typeof(invRecv1(o_9)): PyTypeDomainType) == vint && (int___ge__(Heap, int___unbox__(Heap, invRecv1(o_9)), 0) && int___lt__(Heap, int___unbox__(Heap, invRecv1(o_9)), list___len__(Heap, Heap[marked_execution_tree, Node_children])))) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, Node_function_name] == Mask[o_9, Node_function_name])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != Node_function_name ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}