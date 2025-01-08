// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:05:03
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0560b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0560b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: height
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
// Translation of domain Tree
// ==================================================

// The type for domain Tree
type TreeDomainType;

// Translation of domain function Leaf
function  Leaf(): TreeDomainType;

// Translation of domain function Node
function  Node_1(v_4: int, lft: TreeDomainType, rgt: TreeDomainType): TreeDomainType;

// Translation of domain function isLeaf
function  isLeaf(t_9: TreeDomainType): bool;

// Translation of domain function isNode
function  isNode(t_9: TreeDomainType): bool;

// Translation of domain function getVal
function  getVal(t_9: TreeDomainType): int;

// Translation of domain function getLeft
function  getLeft(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function getRight
function  getRight(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function type
function  vtype(t_9: TreeDomainType): int;

// Translation of domain unique function type_Leaf
const unique type_Leaf: int;

// Translation of domain unique function type_Node
const unique type_Node: int;

// Translation of domain axiom type_is_leaf
axiom (forall t_2: TreeDomainType ::
  { (isLeaf(t_2): bool) } { (vtype(t_2): int) }
  (isLeaf(t_2): bool) == ((vtype(t_2): int) == type_Leaf)
);

// Translation of domain axiom construct_over_destruct_Leaf
axiom (forall t_2: TreeDomainType ::
  { (isLeaf(t_2): bool) }
  (isLeaf(t_2): bool) ==> t_2 == (Leaf(): TreeDomainType)
);

// Translation of domain axiom type_is_node
axiom (forall t_2: TreeDomainType ::
  { (isNode(t_2): bool) } { (vtype(t_2): int) }
  (isNode(t_2): bool) == ((vtype(t_2): int) == type_Node)
);

// Translation of domain axiom construct_over_destruct_Node
axiom (forall t_2: TreeDomainType ::
  { (isNode(t_2): bool) } { (Node_1((getVal(t_2): int), (getLeft(t_2): TreeDomainType), (getRight(t_2): TreeDomainType)): TreeDomainType) }
  (isNode(t_2): bool) ==> t_2 == (Node_1((getVal(t_2): int), (getLeft(t_2): TreeDomainType), (getRight(t_2): TreeDomainType)): TreeDomainType)
);

// Translation of domain axiom destruct_over_construct
axiom (forall v_2: int, lft_1: TreeDomainType, rgt_1: TreeDomainType ::
  { (getVal((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): int) } { (getLeft((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): TreeDomainType) } { (getRight((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): TreeDomainType) }
  (getVal((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): int) == v_2 && ((getLeft((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): TreeDomainType) == lft_1 && (getRight((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): TreeDomainType) == rgt_1)
);

// Translation of domain axiom type_of_Leaf
axiom (vtype((Leaf(): TreeDomainType)): int) == type_Leaf;

// Translation of domain axiom type_of_Node
axiom (forall v_2: int, lft_1: TreeDomainType, rgt_1: TreeDomainType ::
  { (vtype((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): int) }
  (vtype((Node_1(v_2, lft_1, rgt_1): TreeDomainType)): int) == type_Node
);

// Translation of domain axiom all_types
axiom (forall t_2: TreeDomainType ::
  { (vtype(t_2): int) }
  ((vtype(t_2): int) == type_Leaf && t_2 == (Leaf(): TreeDomainType)) || ((vtype(t_2): int) == type_Node && (exists v_2: int, lft_1: TreeDomainType, rgt_1: TreeDomainType ::
    { (Node_1(v_2, lft_1, rgt_1): TreeDomainType) }
    t_2 == (Node_1(v_2, lft_1, rgt_1): TreeDomainType)
  ))
);

// ==================================================
// Translation of function height
// ==================================================

// Uninterpreted function definitions
function  height_1(Heap: HeapType, t_2: TreeDomainType): int;
function  height'(Heap: HeapType, t_2: TreeDomainType): int;
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { height_1(Heap, t_2) }
  height_1(Heap, t_2) == height'(Heap, t_2) && dummyFunction(height#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { height'(Heap, t_2) }
  dummyFunction(height#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), height_1(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> height_1(Heap, t_2) == (if (isLeaf(t_2): bool) then 0 else (if height'(Heap, (getLeft(t_2): TreeDomainType)) > height'(Heap, (getRight(t_2): TreeDomainType)) then height'(Heap, (getLeft(t_2): TreeDomainType)) + 1 else height'(Heap, (getRight(t_2): TreeDomainType)) + 1))
);

// Framing axioms
function  height#frame(frame: FrameType, t_2: TreeDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), height'(Heap, t_2) }
  state(Heap, Mask) ==> height'(Heap, t_2) == height#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  height#trigger(frame: FrameType, t_2: TreeDomainType): bool;

// State-independent trigger function
function  height#triggerStateless(t_2: TreeDomainType): int;

// Check contract well-formedness and postcondition
procedure height#definedness(t_2: TreeDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (isLeaf(t) ? 0 : (height(getLeft(t)) > height(getRight(t)) ? height(getLeft(t)) + 1 : height(getRight(t)) + 1))
      if ((isLeaf(t_2): bool)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume height#trigger(EmptyFrame, (getLeft(t_2): TreeDomainType));
        }
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume height#trigger(EmptyFrame, (getRight(t_2): TreeDomainType));
        }
        if (height_1(Heap, (getLeft(t_2): TreeDomainType)) > height_1(Heap, (getRight(t_2): TreeDomainType))) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume height#trigger(EmptyFrame, (getLeft(t_2): TreeDomainType));
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume height#trigger(EmptyFrame, (getRight(t_2): TreeDomainType));
          }
        }
      }
  
  // -- Translate function body
    Result := (if (isLeaf(t_2): bool) then 0 else (if height_1(Heap, (getLeft(t_2): TreeDomainType)) > height_1(Heap, (getRight(t_2): TreeDomainType)) then height_1(Heap, (getLeft(t_2): TreeDomainType)) + 1 else height_1(Heap, (getRight(t_2): TreeDomainType)) + 1));
}

// ==================================================
// Translation of method computeTreeHeight
// ==================================================

procedure computeTreeHeight(t_2: TreeDomainType) returns (res: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var current: (Seq TreeDomainType);
  var next_1: (Seq TreeDomainType);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i: int;
  var k: int;
  var j_9: int;
  var i_6: int;
  var k_1: int;
  var j_6: int;
  var k_2: int;
  var node: TreeDomainType;
  var i_5: int;
  var k_14: int;
  var j_6_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
    
    // -- Check definedness of res == height(t)
      if (*) {
        // Stop execution
        assume false;
      }
    assume res == height_1(PostHeap, t_2);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (isLeaf(t)) -- 0560b.vpr@79.3--120.4
    if ((isLeaf(t_2): bool)) {
      
      // -- Translating statement: res := 0 -- 0560b.vpr@80.5--80.13
        res := 0;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: current := Seq(t) -- 0560b.vpr@84.5--84.22
        current := Seq#Singleton(t_2);
        assume state(Heap, Mask);
      
      // -- Translating statement: next := Seq[Tree]() -- 0560b.vpr@85.5--85.24
        next_1 := (Seq#Empty(): Seq TreeDomainType);
        assume state(Heap, Mask);
      
      // -- Translating statement: res := 0 -- 0560b.vpr@86.5--86.13
        res := 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (|current| > 0) -- 0560b.vpr@88.5--119.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (Seq#Length(current) == 0) {
              assert {:msg "  Loop invariant |current| == 0 ==> res == height(t) might not hold on entry. Assertion res == height(t) might not hold. (0560b.vpr@91.17--91.52) [203067]"}
                res == height_1(Heap, t_2);
            }
        
        // -- Havoc loop written variables (except locals)
          havoc current, next_1, res;
        
        // -- Check definedness of invariant
          if (*) {
            if (Seq#Length(current) == 0) {
              assume state(Heap, Mask);
              
              // -- Check definedness of res == height(t)
                if (*) {
                  // Stop execution
                  assume false;
                }
              assume res == height_1(Heap, t_2);
            }
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
            if (Seq#Length(current) == 0) {
              assume state(Heap, Mask);
              assume res == height_1(Heap, t_2);
            }
            assume state(Heap, Mask);
            // Check and assume guard
            assume Seq#Length(current) > 0;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: res := res + 1 -- 0560b.vpr@93.7--93.21
                res := res + 1;
                assume state(Heap, Mask);
              
              // -- Translating statement: next := Seq[Tree]() -- 0560b.vpr@94.7--94.26
                next_1 := (Seq#Empty(): Seq TreeDomainType);
                assume state(Heap, Mask);
              
              // -- Translating statement: while (|current| > 0) -- 0560b.vpr@96.7--116.8
                
                // -- Before loop head
                  
                  // -- Exhale loop invariant before loop
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    if (*) {
                      assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion i >= 0 might not hold. (0560b.vpr@100.19--106.60) [203068]"}
                        i >= 0;
                      assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion i < |current| might not hold. (0560b.vpr@100.19--106.60) [203069]"}
                        i < Seq#Length(current);
                      if (*) {
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion k >= 0 might not hold. (0560b.vpr@100.19--106.60) [203070]"}
                          k >= 0;
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion k < |current| might not hold. (0560b.vpr@100.19--106.60) [203071]"}
                          k < Seq#Length(current);
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion height(current[i]) > height(current[k]) might not hold. (0560b.vpr@100.19--106.60) [203072]"}
                          height_1(Heap, Seq#Index(current, i)) > height_1(Heap, Seq#Index(current, k));
                        assume false;
                      }
                      assume (forall k_1_1_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_1_1_1)) }
                        k_1_1_1 >= 0 && (k_1_1_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i)) > height_1(Heap, Seq#Index(current, k_1_1_1)))
                      );
                      if (*) {
                        if (j_9 >= 0 && (j_9 < Seq#Length(next_1) && (forall k_2_1: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_2_1)) }
                          k_2_1 >= 0 && (k_2_1 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_9)) > height_1(Heap, Seq#Index(next_1, k_2_1)))
                        ))) {
                          assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not hold on entry. Assertion height(next[j]) == height(current[i]) - 1 might not hold. (0560b.vpr@100.19--106.60) [203073]"}
                            height_1(Heap, Seq#Index(next_1, j_9)) == height_1(Heap, Seq#Index(current, i)) - 1;
                        }
                        assume false;
                      }
                      assume (forall j_1_1_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_1_1_1)) }
                        j_1_1_1 >= 0 && (j_1_1_1 < Seq#Length(next_1) && (forall k_3: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_3)) }
                          k_3 >= 0 && (k_3 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_1_1_1)) > height_1(Heap, Seq#Index(next_1, k_3)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_1_1_1)) == height_1(Heap, Seq#Index(current, i)) - 1
                      );
                      assume false;
                    }
                    assume (forall i_1_1_1: int ::
                      { height#frame(EmptyFrame, Seq#Index(current, i_1_1_1)) }
                      i_1_1_1 >= 0 && (i_1_1_1 < Seq#Length(current) && ((forall k_4_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_4_1)) }
                        k_4_1 >= 0 && (k_4_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_1_1_1)) > height_1(Heap, Seq#Index(current, k_4_1)))
                      ) && (forall j_2_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_2_1)) }
                        j_2_1 >= 0 && (j_2_1 < Seq#Length(next_1) && (forall k_5: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_5)) }
                          k_5 >= 0 && (k_5 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_2_1)) > height_1(Heap, Seq#Index(next_1, k_5)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_2_1)) == height_1(Heap, Seq#Index(current, i_1_1_1)) - 1
                      )))
                    );
                
                // -- Havoc loop written variables (except locals)
                  havoc next_1, current;
                
                // -- Check definedness of invariant
                  if (*) {
                    assume state(Heap, Mask);
                    
                    // -- Check definedness of (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1))))
                      if (*) {
                        if (i_6 >= 0) {
                          if (i_6 < Seq#Length(current)) {
                            if (*) {
                              if (k_1 >= 0) {
                                if (k_1 < Seq#Length(current)) {
                                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might be negative. (0560b.vpr@100.19--106.60) [203074]"}
                                    i_6 >= 0;
                                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might exceed sequence length. (0560b.vpr@100.19--106.60) [203075]"}
                                    i_6 < Seq#Length(current);
                                  if (*) {
                                    // Stop execution
                                    assume false;
                                  }
                                  assert {:msg "  Contract might not be well-formed. Index current[k] into current might be negative. (0560b.vpr@100.19--106.60) [203076]"}
                                    k_1 >= 0;
                                  assert {:msg "  Contract might not be well-formed. Index current[k] into current might exceed sequence length. (0560b.vpr@100.19--106.60) [203077]"}
                                    k_1 < Seq#Length(current);
                                  if (*) {
                                    // Stop execution
                                    assume false;
                                  }
                                }
                              }
                              assume false;
                            }
                            if ((forall k_7_1: int ::
                              { height#frame(EmptyFrame, Seq#Index(current, k_7_1)) }
                              k_7_1 >= 0 && (k_7_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_6)) > height_1(Heap, Seq#Index(current, k_7_1)))
                            )) {
                              if (*) {
                                if (j_6 >= 0) {
                                  if (j_6 < Seq#Length(next_1)) {
                                    if (*) {
                                      if (k_2 >= 0) {
                                        if (k_2 < Seq#Length(next_1)) {
                                          assert {:msg "  Contract might not be well-formed. Index next[j] into next might be negative. (0560b.vpr@100.19--106.60) [203078]"}
                                            j_6 >= 0;
                                          assert {:msg "  Contract might not be well-formed. Index next[j] into next might exceed sequence length. (0560b.vpr@100.19--106.60) [203079]"}
                                            j_6 < Seq#Length(next_1);
                                          if (*) {
                                            // Stop execution
                                            assume false;
                                          }
                                          assert {:msg "  Contract might not be well-formed. Index next[k] into next might be negative. (0560b.vpr@100.19--106.60) [203080]"}
                                            k_2 >= 0;
                                          assert {:msg "  Contract might not be well-formed. Index next[k] into next might exceed sequence length. (0560b.vpr@100.19--106.60) [203081]"}
                                            k_2 < Seq#Length(next_1);
                                          if (*) {
                                            // Stop execution
                                            assume false;
                                          }
                                        }
                                      }
                                      assume false;
                                    }
                                  }
                                }
                                if (j_6 >= 0 && (j_6 < Seq#Length(next_1) && (forall k_9: int ::
                                  { height#frame(EmptyFrame, Seq#Index(next_1, k_9)) }
                                  k_9 >= 0 && (k_9 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_6)) > height_1(Heap, Seq#Index(next_1, k_9)))
                                ))) {
                                  assert {:msg "  Contract might not be well-formed. Index next[j] into next might be negative. (0560b.vpr@100.19--106.60) [203082]"}
                                    j_6 >= 0;
                                  assert {:msg "  Contract might not be well-formed. Index next[j] into next might exceed sequence length. (0560b.vpr@100.19--106.60) [203083]"}
                                    j_6 < Seq#Length(next_1);
                                  if (*) {
                                    // Stop execution
                                    assume false;
                                  }
                                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might be negative. (0560b.vpr@100.19--106.60) [203084]"}
                                    i_6 >= 0;
                                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might exceed sequence length. (0560b.vpr@100.19--106.60) [203085]"}
                                    i_6 < Seq#Length(current);
                                  if (*) {
                                    // Stop execution
                                    assume false;
                                  }
                                }
                                assume false;
                              }
                            }
                          }
                        }
                        assume false;
                      }
                    assume (forall i_3: int ::
                      { height#frame(EmptyFrame, Seq#Index(current, i_3)) }
                      i_3 >= 0 && (i_3 < Seq#Length(current) && ((forall k_10_2: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_10_2)) }
                        k_10_2 >= 0 && (k_10_2 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_3)) > height_1(Heap, Seq#Index(current, k_10_2)))
                      ) && (forall j_4_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_4_1)) }
                        j_4_1 >= 0 && (j_4_1 < Seq#Length(next_1) && (forall k_11: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_11)) }
                          k_11 >= 0 && (k_11 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_4_1)) > height_1(Heap, Seq#Index(next_1, k_11)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_4_1)) == height_1(Heap, Seq#Index(current, i_3)) - 1
                      )))
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
                    assume state(Heap, Mask);
                    assume (forall i_4_1: int ::
                      { height#frame(EmptyFrame, Seq#Index(current, i_4_1)) }
                      i_4_1 >= 0 && (i_4_1 < Seq#Length(current) && ((forall k_12_2: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_12_2)) }
                        k_12_2 >= 0 && (k_12_2 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_4_1)) > height_1(Heap, Seq#Index(current, k_12_2)))
                      ) && (forall j_5_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_5_1)) }
                        j_5_1 >= 0 && (j_5_1 < Seq#Length(next_1) && (forall k_13: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_13)) }
                          k_13 >= 0 && (k_13 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_5_1)) > height_1(Heap, Seq#Index(next_1, k_13)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_5_1)) == height_1(Heap, Seq#Index(current, i_4_1)) - 1
                      )))
                    );
                    assume state(Heap, Mask);
                    // Check and assume guard
                    assume Seq#Length(current) > 0;
                    assume state(Heap, Mask);
                    
                    // -- Translate loop body
                      
                      // -- Translating statement: node := current[0] -- 0560b.vpr@108.9--108.38
                        
                        // -- Check definedness of current[0]
                          assert {:msg "  Assignment might fail. Index current[0] into current might exceed sequence length. (0560b.vpr@108.9--108.38) [203086]"}
                            0 < Seq#Length(current);
                        node := Seq#Index(current, 0);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: current := current[1..] -- 0560b.vpr@128.3--128.20
                        current := Seq#Drop(current, 1);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: if (isNode(getLeft(node))) -- 0560b.vpr@110.9--112.10
                        if ((isNode((getLeft(node): TreeDomainType)): bool)) {
                          
                          // -- Translating statement: next := Seq(getLeft(node)) ++ next -- 0560b.vpr@124.3--124.25
                            next_1 := Seq#Append(Seq#Singleton((getLeft(node): TreeDomainType)), next_1);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: if (isNode(getRight(node))) -- 0560b.vpr@113.9--115.10
                        if ((isNode((getRight(node): TreeDomainType)): bool)) {
                          
                          // -- Translating statement: next := Seq(getRight(node)) ++ next -- 0560b.vpr@124.3--124.25
                            next_1 := Seq#Append(Seq#Singleton((getRight(node): TreeDomainType)), next_1);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                    // Exhale invariant
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    if (*) {
                      assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion i >= 0 might not hold. (0560b.vpr@100.19--106.60) [203087]"}
                        i_5 >= 0;
                      assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion i < |current| might not hold. (0560b.vpr@100.19--106.60) [203088]"}
                        i_5 < Seq#Length(current);
                      if (*) {
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion k >= 0 might not hold. (0560b.vpr@100.19--106.60) [203089]"}
                          k_14 >= 0;
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion k < |current| might not hold. (0560b.vpr@100.19--106.60) [203090]"}
                          k_14 < Seq#Length(current);
                        assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion height(current[i]) > height(current[k]) might not hold. (0560b.vpr@100.19--106.60) [203091]"}
                          height_1(Heap, Seq#Index(current, i_5)) > height_1(Heap, Seq#Index(current, k_14));
                        assume false;
                      }
                      assume (forall k_15_1_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_15_1_1)) }
                        k_15_1_1 >= 0 && (k_15_1_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_5)) > height_1(Heap, Seq#Index(current, k_15_1_1)))
                      );
                      if (*) {
                        if (j_6_1 >= 0 && (j_6_1 < Seq#Length(next_1) && (forall k_16_1: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_16_1)) }
                          k_16_1 >= 0 && (k_16_1 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_6_1)) > height_1(Heap, Seq#Index(next_1, k_16_1)))
                        ))) {
                          assert {:msg "  Loop invariant (forall i: Int :: { height(current[i]) } i >= 0 && (i < |current| && ((forall k: Int :: { height(current[k]) } k >= 0 && (k < |current| && height(current[i]) > height(current[k]))) && (forall j: Int :: { height(next[j]) } j >= 0 && (j < |next| && (forall k: Int :: { height(next[k]) } k >= 0 && (k < |next| && height(next[j]) > height(next[k])))) ==> height(next[j]) == height(current[i]) - 1)))) might not be preserved. Assertion height(next[j]) == height(current[i]) - 1 might not hold. (0560b.vpr@100.19--106.60) [203092]"}
                            height_1(Heap, Seq#Index(next_1, j_6_1)) == height_1(Heap, Seq#Index(current, i_5)) - 1;
                        }
                        assume false;
                      }
                      assume (forall j_7_1_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_7_1_1)) }
                        j_7_1_1 >= 0 && (j_7_1_1 < Seq#Length(next_1) && (forall k_17_2: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_17_2)) }
                          k_17_2 >= 0 && (k_17_2 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_7_1_1)) > height_1(Heap, Seq#Index(next_1, k_17_2)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_7_1_1)) == height_1(Heap, Seq#Index(current, i_5)) - 1
                      );
                      assume false;
                    }
                    assume (forall i_6_1_1: int ::
                      { height#frame(EmptyFrame, Seq#Index(current, i_6_1_1)) }
                      i_6_1_1 >= 0 && (i_6_1_1 < Seq#Length(current) && ((forall k_18_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(current, k_18_1)) }
                        k_18_1 >= 0 && (k_18_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_6_1_1)) > height_1(Heap, Seq#Index(current, k_18_1)))
                      ) && (forall j_8: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, j_8)) }
                        j_8 >= 0 && (j_8 < Seq#Length(next_1) && (forall k_19_1: int ::
                          { height#frame(EmptyFrame, Seq#Index(next_1, k_19_1)) }
                          k_19_1 >= 0 && (k_19_1 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_8)) > height_1(Heap, Seq#Index(next_1, k_19_1)))
                        )) ==> height_1(Heap, Seq#Index(next_1, j_8)) == height_1(Heap, Seq#Index(current, i_6_1_1)) - 1
                      )))
                    );
                    // Terminate execution
                    assume false;
                  }
                
                // -- Inhale loop invariant after loop, and assume guard
                  assume !(Seq#Length(current) > 0);
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                  assume (forall i_7_1: int ::
                    { height#frame(EmptyFrame, Seq#Index(current, i_7_1)) }
                    i_7_1 >= 0 && (i_7_1 < Seq#Length(current) && ((forall k_20_1: int ::
                      { height#frame(EmptyFrame, Seq#Index(current, k_20_1)) }
                      k_20_1 >= 0 && (k_20_1 < Seq#Length(current) && height_1(Heap, Seq#Index(current, i_7_1)) > height_1(Heap, Seq#Index(current, k_20_1)))
                    ) && (forall j_9_1: int ::
                      { height#frame(EmptyFrame, Seq#Index(next_1, j_9_1)) }
                      j_9_1 >= 0 && (j_9_1 < Seq#Length(next_1) && (forall k_21_1: int ::
                        { height#frame(EmptyFrame, Seq#Index(next_1, k_21_1)) }
                        k_21_1 >= 0 && (k_21_1 < Seq#Length(next_1) && height_1(Heap, Seq#Index(next_1, j_9_1)) > height_1(Heap, Seq#Index(next_1, k_21_1)))
                      )) ==> height_1(Heap, Seq#Index(next_1, j_9_1)) == height_1(Heap, Seq#Index(current, i_7_1)) - 1
                    )))
                  );
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: current := next -- 0560b.vpr@117.7--117.22
                current := next_1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (Seq#Length(current) == 0) {
              assert {:msg "  Loop invariant |current| == 0 ==> res == height(t) might not be preserved. Assertion res == height(t) might not hold. (0560b.vpr@91.17--91.52) [203093]"}
                res == height_1(Heap, t_2);
            }
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Seq#Length(current) > 0);
          assume state(Heap, Mask);
          if (Seq#Length(current) == 0) {
            assume state(Heap, Mask);
            assume res == height_1(Heap, t_2);
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of computeTreeHeight might not hold. Assertion res == height(t) might not hold. (0560b.vpr@77.11--77.27) [203094]"}
      res == height_1(Heap, t_2);
}