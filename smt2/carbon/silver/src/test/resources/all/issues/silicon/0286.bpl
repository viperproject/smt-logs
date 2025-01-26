// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0286.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0286-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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
// - height 1: elems
// - height 0: lsegelems
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function elems
// ==================================================

// Uninterpreted function definitions
function  elems(Heap: HeapType, start_1: Ref): Seq int;
function  elems'(Heap: HeapType, start_1: Ref): Seq int;
axiom (forall Heap: HeapType, start_1: Ref ::
  { elems(Heap, start_1) }
  elems(Heap, start_1) == elems'(Heap, start_1) && dummyFunction(elems#triggerStateless(start_1))
);
axiom (forall Heap: HeapType, start_1: Ref ::
  { elems'(Heap, start_1) }
  dummyFunction(elems#triggerStateless(start_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref ::
  { state(Heap, Mask), elems(Heap, start_1) } { state(Heap, Mask), elems#triggerStateless(start_1), list#trigger(Heap, list(start_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> elems(Heap, start_1) == (if Heap[start_1, next] == null then Seq#Singleton(Heap[start_1, val]) else Seq#Append(Seq#Singleton(Heap[start_1, val]), elems'(Heap, Heap[start_1, next])))
);

// Framing axioms
function  elems#frame(frame: FrameType, start_1: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref ::
  { state(Heap, Mask), elems'(Heap, start_1) } { state(Heap, Mask), elems#triggerStateless(start_1), list#trigger(Heap, list(start_1)) }
  state(Heap, Mask) ==> elems'(Heap, start_1) == elems#frame(Heap[null, list(start_1)], start_1)
);

// Trigger function (controlling recursive postconditions)
function  elems#trigger(frame: FrameType, start_1: Ref): bool;

// State-independent trigger function
function  elems#triggerStateless(start_1: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure elems#definedness(start_1: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[start_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(start_1):=Mask[null, list(start_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(start), write) in (start.next == null ? Seq(start.val) : Seq(start.val) ++ elems(start.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(start_1));
      assume UnfoldingHeap[null, list(start_1)] == CombineFrames(FrameFragment(UnfoldingHeap[start_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[start_1, next]), FrameFragment((if UnfoldingHeap[start_1, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[start_1, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(start) (0286.vpr@13.1--22.2) [70890]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(start_1)];
      perm := FullPerm;
      assume start_1 != null;
      UnfoldingMask := UnfoldingMask[start_1, val:=UnfoldingMask[start_1, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume start_1 != null;
      UnfoldingMask := UnfoldingMask[start_1, next:=UnfoldingMask[start_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[start_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[start_1, next]):=UnfoldingMask[null, list(UnfoldingHeap[start_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(start_1), UnfoldingHeap[null, list(start_1)], list(UnfoldingHeap[start_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[start_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@13.1--22.2) [70891]"}
        HasDirectPerm(UnfoldingMask, start_1, next);
      if (UnfoldingHeap[start_1, next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@13.1--22.2) [70892]"}
          HasDirectPerm(UnfoldingMask, start_1, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@13.1--22.2) [70893]"}
          HasDirectPerm(UnfoldingMask, start_1, val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@13.1--22.2) [70894]"}
          HasDirectPerm(UnfoldingMask, start_1, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(start.next) (0286.vpr@19.25--19.42) [70895]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[start_1, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume elems#trigger(UnfoldingHeap[null, list(UnfoldingHeap[start_1, next])], UnfoldingHeap[start_1, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(start_1):=Heap[null, list#sm(start_1)][start_1, val:=true]];
        Heap := Heap[null, list#sm(start_1):=Heap[null, list#sm(start_1)][start_1, next:=true]];
        if (Heap[start_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, list#sm(start_1)][o_5, f_11] || Heap[null, list#sm(Heap[start_1, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, list#sm(start_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start_1, next] == null then Seq#Singleton(Heap[start_1, val]) else Seq#Append(Seq#Singleton(Heap[start_1, val]), elems(Heap, Heap[start_1, next])));
}

// ==================================================
// Translation of function lsegelems
// ==================================================

// Uninterpreted function definitions
function  lsegelems(Heap: HeapType, start_1: Ref, end_1: Ref): Seq int;
function  lsegelems'(Heap: HeapType, start_1: Ref, end_1: Ref): Seq int;
axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref ::
  { lsegelems(Heap, start_1, end_1) }
  lsegelems(Heap, start_1, end_1) == lsegelems'(Heap, start_1, end_1) && dummyFunction(lsegelems#triggerStateless(start_1, end_1))
);
axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref ::
  { lsegelems'(Heap, start_1, end_1) }
  dummyFunction(lsegelems#triggerStateless(start_1, end_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref, end_1: Ref ::
  { state(Heap, Mask), lsegelems(Heap, start_1, end_1) } { state(Heap, Mask), lsegelems#triggerStateless(start_1, end_1), lseg#trigger(Heap, lseg(start_1, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> lsegelems(Heap, start_1, end_1) == (if Heap[start_1, next] == end_1 then Seq#Singleton(Heap[start_1, val]) else Seq#Append(Seq#Singleton(Heap[start_1, val]), lsegelems'(Heap, Heap[start_1, next], end_1)))
);

// Framing axioms
function  lsegelems#frame(frame: FrameType, start_1: Ref, end_1: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, start_1: Ref, end_1: Ref ::
  { state(Heap, Mask), lsegelems'(Heap, start_1, end_1) } { state(Heap, Mask), lsegelems#triggerStateless(start_1, end_1), lseg#trigger(Heap, lseg(start_1, end_1)) }
  state(Heap, Mask) ==> lsegelems'(Heap, start_1, end_1) == lsegelems#frame(Heap[null, lseg(start_1, end_1)], start_1, end_1)
);

// Trigger function (controlling recursive postconditions)
function  lsegelems#trigger(frame: FrameType, start_1: Ref, end_1: Ref): bool;

// State-independent trigger function
function  lsegelems#triggerStateless(start_1: Ref, end_1: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure lsegelems#definedness(start_1: Ref, end_1: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[start_1, $allocated];
    assume Heap[end_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(start_1, end_1):=Mask[null, lseg(start_1, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(start, end), write) in (start.next == end ? Seq(start.val) : Seq(start.val) ++ lsegelems(start.next, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(start_1, end_1));
      assume UnfoldingHeap[null, lseg(start_1, end_1)] == CombineFrames(FrameFragment(UnfoldingHeap[start_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[start_1, next]), FrameFragment((if UnfoldingHeap[start_1, next] != end_1 then UnfoldingHeap[null, lseg(UnfoldingHeap[start_1, next], end_1)] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(start, end) (0286.vpr@30.1--39.2) [70896]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(start_1, end_1)];
      perm := FullPerm;
      assume start_1 != null;
      UnfoldingMask := UnfoldingMask[start_1, val:=UnfoldingMask[start_1, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume start_1 != null;
      UnfoldingMask := UnfoldingMask[start_1, next:=UnfoldingMask[start_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[start_1, next] != end_1) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[start_1, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[start_1, next], end_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(start_1, end_1), UnfoldingHeap[null, lseg(start_1, end_1)], lseg(UnfoldingHeap[start_1, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[start_1, next], end_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@30.1--39.2) [70897]"}
        HasDirectPerm(UnfoldingMask, start_1, next);
      if (UnfoldingHeap[start_1, next] == end_1) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@30.1--39.2) [70898]"}
          HasDirectPerm(UnfoldingMask, start_1, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@30.1--39.2) [70899]"}
          HasDirectPerm(UnfoldingMask, start_1, val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@30.1--39.2) [70900]"}
          HasDirectPerm(UnfoldingMask, start_1, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(start.next, end) (0286.vpr@36.25--36.50) [70901]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[start_1, next], end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume lsegelems#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[start_1, next], end_1)], UnfoldingHeap[start_1, next], end_1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(start_1, end_1):=Heap[null, lseg#sm(start_1, end_1)][start_1, val:=true]];
        Heap := Heap[null, lseg#sm(start_1, end_1):=Heap[null, lseg#sm(start_1, end_1)][start_1, next:=true]];
        if (Heap[start_1, next] != end_1) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, lseg#sm(start_1, end_1)][o_6, f_12] || Heap[null, lseg#sm(Heap[start_1, next], end_1)][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, lseg#sm(start_1, end_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start_1, next] == end_1 then Seq#Singleton(Heap[start_1, val]) else Seq#Append(Seq#Singleton(Heap[start_1, val]), lsegelems(Heap, Heap[start_1, next], end_1)));
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(start_1: Ref): Field PredicateType_list FrameType;
function  list#sm(start_1: Ref): Field PredicateType_list PMaskType;
axiom (forall start_1: Ref ::
  { PredicateMaskField(list(start_1)) }
  PredicateMaskField(list(start_1)) == list#sm(start_1)
);
axiom (forall start_1: Ref ::
  { list(start_1) }
  IsPredicateField(list(start_1))
);
axiom (forall start_1: Ref ::
  { list(start_1) }
  getPredWandId(list(start_1)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start_1: Ref, start2: Ref ::
  { list(start_1), list(start2) }
  list(start_1) == list(start2) ==> start_1 == start2
);
axiom (forall start_1: Ref, start2: Ref ::
  { list#sm(start_1), list#sm(start2) }
  list#sm(start_1) == list#sm(start2) ==> start_1 == start2
);

axiom (forall Heap: HeapType, start_1: Ref ::
  { list#trigger(Heap, list(start_1)) }
  list#everUsed(list(start_1))
);

procedure list#definedness(start_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start_1, $allocated];
    perm := FullPerm;
    assume start_1 != null;
    Mask := Mask[start_1, val:=Mask[start_1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume start_1 != null;
    Mask := Mask[start_1, next:=Mask[start_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of start.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@7.1--11.2) [70902]"}
        HasDirectPerm(Mask, start_1, next);
    if (Heap[start_1, next] != null) {
      
      // -- Check definedness of acc(list(start.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@7.1--11.2) [70903]"}
          HasDirectPerm(Mask, start_1, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[start_1, next]):=Mask[null, list(Heap[start_1, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(start_1: Ref, end_1: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(start_1: Ref, end_1: Ref): Field PredicateType_lseg PMaskType;
axiom (forall start_1: Ref, end_1: Ref ::
  { PredicateMaskField(lseg(start_1, end_1)) }
  PredicateMaskField(lseg(start_1, end_1)) == lseg#sm(start_1, end_1)
);
axiom (forall start_1: Ref, end_1: Ref ::
  { lseg(start_1, end_1) }
  IsPredicateField(lseg(start_1, end_1))
);
axiom (forall start_1: Ref, end_1: Ref ::
  { lseg(start_1, end_1) }
  getPredWandId(lseg(start_1, end_1)) == 1
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start_1: Ref, end_1: Ref, start2: Ref, end2: Ref ::
  { lseg(start_1, end_1), lseg(start2, end2) }
  lseg(start_1, end_1) == lseg(start2, end2) ==> start_1 == start2 && end_1 == end2
);
axiom (forall start_1: Ref, end_1: Ref, start2: Ref, end2: Ref ::
  { lseg#sm(start_1, end_1), lseg#sm(start2, end2) }
  lseg#sm(start_1, end_1) == lseg#sm(start2, end2) ==> start_1 == start2 && end_1 == end2
);

axiom (forall Heap: HeapType, start_1: Ref, end_1: Ref ::
  { lseg#trigger(Heap, lseg(start_1, end_1)) }
  lseg#everUsed(lseg(start_1, end_1))
);

procedure lseg#definedness(start_1: Ref, end_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start_1, $allocated];
      assume Heap[end_1, $allocated];
    perm := FullPerm;
    assume start_1 != null;
    Mask := Mask[start_1, val:=Mask[start_1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume start_1 != null;
    Mask := Mask[start_1, next:=Mask[start_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of start.next != end
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@24.1--28.2) [70904]"}
        HasDirectPerm(Mask, start_1, next);
    if (Heap[start_1, next] != end_1) {
      
      // -- Check definedness of acc(lseg(start.next, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@24.1--28.2) [70905]"}
          HasDirectPerm(Mask, start_1, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[start_1, next], end_1):=Mask[null, lseg(Heap[start_1, next], end_1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method addAtEnd
// ==================================================

procedure addAtEnd(l1_1: Ref, l2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var end_1: Ref;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l1_1, $allocated];
    assume Heap[l2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(l1_1, l2):=Mask[null, lseg(l1_1, l2)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l2 != null;
    Mask := Mask[l2, val:=Mask[l2, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l2 != null;
    Mask := Mask[l2, next:=Mask[l2, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(list(l2.next), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@43.10--43.69) [70906]"}
        HasDirectPerm(Mask, l2, next);
    perm := FullPerm;
    Mask := Mask[null, list(Heap[l2, next]):=Mask[null, list(Heap[l2, next])] + perm];
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
    
    // -- Check definedness of acc(lseg(l1, old(l2.next)), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [70907]"}
        HasDirectPerm(oldMask, l2, next);
    perm := FullPerm;
    PostMask := PostMask[null, lseg(l1_1, oldHeap[l2, next]):=PostMask[null, lseg(l1_1, oldHeap[l2, next])] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(list(old(l2.next)), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [70908]"}
        HasDirectPerm(oldMask, l2, next);
    perm := FullPerm;
    PostMask := PostMask[null, list(oldHeap[l2, next]):=PostMask[null, list(oldHeap[l2, next])] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(old(l2.next)) == old(elems(l2.next))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [70909]"}
        HasDirectPerm(oldMask, l2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(old(l2.next)) (0286.vpr@44.56--44.75) [70910]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(oldHeap[l2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [70911]"}
        HasDirectPerm(oldMask, l2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(l2.next) (0286.vpr@44.81--44.95) [70912]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(oldHeap[l2, next])];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems(PostHeap, oldHeap[l2, next]), elems(oldHeap, oldHeap[l2, next]));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [70913]"}
        HasDirectPerm(oldMask, l2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@44.100--44.126) [70914]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(l1_1, oldHeap[l2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@44.134--44.150) [70915]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(l1_1, l2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.val (0286.vpr@44.9--44.171) [70916]"}
        HasDirectPerm(oldMask, l2, val);
    assume Seq#Equal(lsegelems(PostHeap, l1_1, oldHeap[l2, next]), Seq#Append(lsegelems(oldHeap, l1_1, l2), Seq#Singleton(oldHeap[l2, val])));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[end_1, $allocated];
  
  // -- Translating statement: unfold acc(lseg(l1, l2), write) -- 0286.vpr@46.1--46.20
    assume lseg#trigger(Heap, lseg(l1_1, l2));
    assume Heap[null, lseg(l1_1, l2)] == CombineFrames(FrameFragment(Heap[l1_1, val]), CombineFrames(FrameFragment(Heap[l1_1, next]), FrameFragment((if Heap[l1_1, next] != l2 then Heap[null, lseg(Heap[l1_1, next], l2)] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(l1, l2) might fail. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@46.1--46.20) [70919]"}
        perm <= Mask[null, lseg(l1_1, l2)];
    }
    Mask := Mask[null, lseg(l1_1, l2):=Mask[null, lseg(l1_1, l2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(l1_1, l2))) {
        havoc newVersion;
        Heap := Heap[null, lseg(l1_1, l2):=newVersion];
      }
    perm := FullPerm;
    assume l1_1 != null;
    Mask := Mask[l1_1, val:=Mask[l1_1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l1_1 != null;
    Mask := Mask[l1_1, next:=Mask[l1_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[l1_1, next] != l2) {
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[l1_1, next], l2):=Mask[null, lseg(Heap[l1_1, next], l2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(l1_1, l2), Heap[null, lseg(l1_1, l2)], lseg(Heap[l1_1, next], l2), Heap[null, lseg(Heap[l1_1, next], l2)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: end := l2.next -- 0286.vpr@48.1--48.24
    
    // -- Check definedness of l2.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access l2.next (0286.vpr@48.1--48.24) [70923]"}
        HasDirectPerm(Mask, l2, next);
    end_1 := Heap[l2, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(end), write) -- 0286.vpr@49.1--49.17
    assume list#trigger(Heap, list(end_1));
    assume Heap[null, list(end_1)] == CombineFrames(FrameFragment(Heap[end_1, val]), CombineFrames(FrameFragment(Heap[end_1, next]), FrameFragment((if Heap[end_1, next] != null then Heap[null, list(Heap[end_1, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(end) might fail. There might be insufficient permission to access list(end) (0286.vpr@49.1--49.17) [70926]"}
        perm <= Mask[null, list(end_1)];
    }
    Mask := Mask[null, list(end_1):=Mask[null, list(end_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(end_1))) {
        havoc newVersion;
        Heap := Heap[null, list(end_1):=newVersion];
      }
    perm := FullPerm;
    assume end_1 != null;
    Mask := Mask[end_1, val:=Mask[end_1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume end_1 != null;
    Mask := Mask[end_1, next:=Mask[end_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[end_1, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[end_1, next]):=Mask[null, list(Heap[end_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(end_1), Heap[null, list(end_1)], list(Heap[end_1, next]), Heap[null, list(Heap[end_1, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale l1.next == l2 -- 0286.vpr@52.9--52.22
    
    // -- Check definedness of l1.next == l2
      assert {:msg "  Inhale might fail. There might be insufficient permission to access l1.next (0286.vpr@52.9--52.22) [70930]"}
        HasDirectPerm(Mask, l1_1, next);
    assume Heap[l1_1, next] == l2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(l2, end), write) -- 0286.vpr@53.1--53.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access l2.val (0286.vpr@53.1--53.19) [70933]"}
        perm <= Mask[l2, val];
    }
    Mask := Mask[l2, val:=Mask[l2, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access l2.next (0286.vpr@53.1--53.19) [70935]"}
        perm <= Mask[l2, next];
    }
    Mask := Mask[l2, next:=Mask[l2, next] - perm];
    if (Heap[l2, next] != end_1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access lseg(l2.next, end) (0286.vpr@53.1--53.19) [70937]"}
          perm <= Mask[null, lseg(Heap[l2, next], end_1)];
      }
      Mask := Mask[null, lseg(Heap[l2, next], end_1):=Mask[null, lseg(Heap[l2, next], end_1)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(l2, end_1), Heap[null, lseg(l2, end_1)], lseg(Heap[l2, next], end_1), Heap[null, lseg(Heap[l2, next], end_1)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(l2, end_1):=Mask[null, lseg(l2, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(l2, end_1));
    assume Heap[null, lseg(l2, end_1)] == CombineFrames(FrameFragment(Heap[l2, val]), CombineFrames(FrameFragment(Heap[l2, next]), FrameFragment((if Heap[l2, next] != end_1 then Heap[null, lseg(Heap[l2, next], end_1)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(l2, end_1))) {
      Heap := Heap[null, lseg#sm(l2, end_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(l2, end_1):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(l2, end_1):=Heap[null, lseg#sm(l2, end_1)][l2, val:=true]];
    Heap := Heap[null, lseg#sm(l2, end_1):=Heap[null, lseg#sm(l2, end_1)][l2, next:=true]];
    if (Heap[l2, next] != end_1) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, lseg#sm(l2, end_1)][o_40, f_52] || Heap[null, lseg#sm(Heap[l2, next], end_1)][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, lseg#sm(l2, end_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(l1, end), write) -- 0286.vpr@54.1--54.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access l1.val (0286.vpr@54.1--54.19) [70941]"}
        perm <= Mask[l1_1, val];
    }
    Mask := Mask[l1_1, val:=Mask[l1_1, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access l1.next (0286.vpr@54.1--54.19) [70943]"}
        perm <= Mask[l1_1, next];
    }
    Mask := Mask[l1_1, next:=Mask[l1_1, next] - perm];
    if (Heap[l1_1, next] != end_1) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access lseg(l1.next, end) (0286.vpr@54.1--54.19) [70945]"}
          perm <= Mask[null, lseg(Heap[l1_1, next], end_1)];
      }
      Mask := Mask[null, lseg(Heap[l1_1, next], end_1):=Mask[null, lseg(Heap[l1_1, next], end_1)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(l1_1, end_1), Heap[null, lseg(l1_1, end_1)], lseg(Heap[l1_1, next], end_1), Heap[null, lseg(Heap[l1_1, next], end_1)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(l1_1, end_1):=Mask[null, lseg(l1_1, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(l1_1, end_1));
    assume Heap[null, lseg(l1_1, end_1)] == CombineFrames(FrameFragment(Heap[l1_1, val]), CombineFrames(FrameFragment(Heap[l1_1, next]), FrameFragment((if Heap[l1_1, next] != end_1 then Heap[null, lseg(Heap[l1_1, next], end_1)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(l1_1, end_1))) {
      Heap := Heap[null, lseg#sm(l1_1, end_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(l1_1, end_1):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(l1_1, end_1):=Heap[null, lseg#sm(l1_1, end_1)][l1_1, val:=true]];
    Heap := Heap[null, lseg#sm(l1_1, end_1):=Heap[null, lseg#sm(l1_1, end_1)][l1_1, next:=true]];
    if (Heap[l1_1, next] != end_1) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, lseg#sm(l1_1, end_1)][o_42, f_55] || Heap[null, lseg#sm(Heap[l1_1, next], end_1)][o_42, f_55] ==> newPMask[o_42, f_55]
      );
      Heap := Heap[null, lseg#sm(l1_1, end_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(end), write) -- 0286.vpr@55.1--55.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access end.val (0286.vpr@55.1--55.15) [70949]"}
        perm <= Mask[end_1, val];
    }
    Mask := Mask[end_1, val:=Mask[end_1, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access end.next (0286.vpr@55.1--55.15) [70951]"}
        perm <= Mask[end_1, next];
    }
    Mask := Mask[end_1, next:=Mask[end_1, next] - perm];
    if (Heap[end_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access list(end.next) (0286.vpr@55.1--55.15) [70953]"}
          perm <= Mask[null, list(Heap[end_1, next])];
      }
      Mask := Mask[null, list(Heap[end_1, next]):=Mask[null, list(Heap[end_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(end_1), Heap[null, list(end_1)], list(Heap[end_1, next]), Heap[null, list(Heap[end_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(end_1):=Mask[null, list(end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(end_1));
    assume Heap[null, list(end_1)] == CombineFrames(FrameFragment(Heap[end_1, val]), CombineFrames(FrameFragment(Heap[end_1, next]), FrameFragment((if Heap[end_1, next] != null then Heap[null, list(Heap[end_1, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(end_1))) {
      Heap := Heap[null, list#sm(end_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(end_1):=freshVersion];
    }
    Heap := Heap[null, list#sm(end_1):=Heap[null, list#sm(end_1)][end_1, val:=true]];
    Heap := Heap[null, list#sm(end_1):=Heap[null, list#sm(end_1)][end_1, next:=true]];
    if (Heap[end_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, list#sm(end_1)][o_46, f_60] || Heap[null, list#sm(Heap[end_1, next])][o_46, f_60] ==> newPMask[o_46, f_60]
      );
      Heap := Heap[null, list#sm(end_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert lsegelems(l1, old(l2.next)) ==
  //   old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) -- 0286.vpr@58.1--58.79
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val))
      assert {:msg "  Assert might fail. There might be insufficient permission to access l2.next (0286.vpr@58.8--58.79) [70955]"}
        HasDirectPerm(oldMask, l2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@58.8--58.34) [70956]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(l1_1, oldHeap[l2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@58.42--58.58) [70957]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(l1_1, l2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access l2.val (0286.vpr@58.8--58.79) [70958]"}
        HasDirectPerm(oldMask, l2, val);
    assert {:msg "  Assert might fail. Assertion lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) might not hold. (0286.vpr@58.8--58.79) [70959]"}
      Seq#Equal(lsegelems(Heap, l1_1, oldHeap[l2, next]), Seq#Append(lsegelems(oldHeap, l1_1, l2), Seq#Singleton(oldHeap[l2, val])));
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@44.9--44.171) [70960]"}
        perm <= Mask[null, lseg(l1_1, oldHeap[l2, next])];
    }
    Mask := Mask[null, lseg(l1_1, oldHeap[l2, next]):=Mask[null, lseg(l1_1, oldHeap[l2, next])] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access list(old(l2.next)) (0286.vpr@44.9--44.171) [70961]"}
        perm <= Mask[null, list(oldHeap[l2, next])];
    }
    Mask := Mask[null, list(oldHeap[l2, next]):=Mask[null, list(oldHeap[l2, next])] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion elems(old(l2.next)) == old(elems(l2.next)) might not hold. (0286.vpr@44.9--44.171) [70962]"}
      Seq#Equal(elems(Heap, oldHeap[l2, next]), elems(oldHeap, oldHeap[l2, next]));
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) might not hold. (0286.vpr@44.9--44.171) [70963]"}
      Seq#Equal(lsegelems(Heap, l1_1, oldHeap[l2, next]), Seq#Append(lsegelems(oldHeap, l1_1, l2), Seq#Singleton(oldHeap[l2, val])));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}