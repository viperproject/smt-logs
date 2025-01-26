// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:33
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial003.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial003-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: vals
// - height 1: fun01
// - height 0: fun02
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

const unique v_35: Field NormalField int;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);
const unique r_11: Field NormalField Ref;
axiom !IsPredicateField(r_11);
axiom !IsWandField(r_11);
const unique l: Field NormalField Ref;
axiom !IsPredicateField(l);
axiom !IsWandField(l);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref, b1: bool, b2: bool): int;
function  fun01'(Heap: HeapType, x: Ref, b1: bool, b2: bool): int;
axiom (forall Heap: HeapType, x: Ref, b1: bool, b2: bool ::
  { fun01(Heap, x, b1, b2) }
  fun01(Heap, x, b1, b2) == fun01'(Heap, x, b1, b2) && dummyFunction(fun01#triggerStateless(x, b1, b2))
);
axiom (forall Heap: HeapType, x: Ref, b1: bool, b2: bool ::
  { fun01'(Heap, x, b1, b2) }
  dummyFunction(fun01#triggerStateless(x, b1, b2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b1: bool, b2: bool ::
  { state(Heap, Mask), fun01(Heap, x, b1, b2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun01(Heap, x, b1, b2) == Heap[x, v_35]
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref, b1: bool, b2: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b1: bool, b2: bool ::
  { state(Heap, Mask), fun01'(Heap, x, b1, b2) }
  state(Heap, Mask) ==> fun01'(Heap, x, b1, b2) == fun01#frame(CombineFrames(FrameFragment(Heap[x, v_35]), CombineFrames(FrameFragment((if b1 then FrameFragment(Heap[x, v_35]) else EmptyFrame)), FrameFragment((if b2 then FrameFragment(Heap[x, v_35]) else EmptyFrame)))), x, b1, b2)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref, b1: bool, b2: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref, b1: bool, b2: bool): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref, b1: bool, b2: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unofficial003.vpr@14.12--14.25) [61738]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (b1) {
      perm := 1 / 3;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unofficial003.vpr@15.12--15.32) [61739]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    if (b2) {
      perm := 1 / 3;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unofficial003.vpr@16.12--16.32) [61740]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.v
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (unofficial003.vpr@13.1--19.2) [61741]"}
        HasDirectPerm(Mask, x, v_35);
  
  // -- Translate function body
    Result := Heap[x, v_35];
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, x: Ref, b_24: bool): bool;
function  fun02'(Heap: HeapType, x: Ref, b_24: bool): bool;
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { fun02(Heap, x, b_24) }
  fun02(Heap, x, b_24) == fun02'(Heap, x, b_24) && dummyFunction(fun02#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { fun02'(Heap, x, b_24) }
  dummyFunction(fun02#triggerStateless(x, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), fun02(Heap, x, b_24) } { state(Heap, Mask), fun02#triggerStateless(x, b_24), P01#trigger(Heap, P01(x, b_24)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun02(Heap, x, b_24) == (if Heap[x, r_11] == null then b_24 else fun02'(Heap, Heap[x, r_11], b_24))
);

// Framing axioms
function  fun02#frame(frame: FrameType, x: Ref, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), fun02'(Heap, x, b_24) } { state(Heap, Mask), fun02#triggerStateless(x, b_24), P01#trigger(Heap, P01(x, b_24)) }
  state(Heap, Mask) ==> fun02'(Heap, x, b_24) == fun02#frame(Heap[null, P01(x, b_24)], x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, x: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun02#triggerStateless(x: Ref, b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure fun02#definedness(x: Ref, b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P01(x, b), write) in (x.r == null ? b : fun02(x.r, b)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P01#trigger(UnfoldingHeap, P01(x, b_24));
      assume UnfoldingHeap[null, P01(x, b_24)] == CombineFrames(FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, v_35]) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[x, r_11]), FrameFragment((if UnfoldingHeap[x, r_11] != null then UnfoldingHeap[null, P01(UnfoldingHeap[x, r_11], b_24)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@36.1--40.2) [61742]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P01(x, b_24)];
      if (b_24) {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, v_35:=UnfoldingMask[x, v_35] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, r_11:=UnfoldingMask[x, r_11] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, r_11] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, P01(UnfoldingHeap[x, r_11], b_24):=UnfoldingMask[null, P01(UnfoldingHeap[x, r_11], b_24)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(P01(x, b_24), UnfoldingHeap[null, P01(x, b_24)], P01(UnfoldingHeap[x, r_11], b_24), UnfoldingHeap[null, P01(UnfoldingHeap[x, r_11], b_24)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@36.1--40.2) [61743]"}
        HasDirectPerm(UnfoldingMask, x, r_11);
      if (UnfoldingHeap[x, r_11] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@36.1--40.2) [61744]"}
          HasDirectPerm(UnfoldingMask, x, r_11);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access P01(x.r, b) (unofficial003.vpr@39.50--39.63) [61745]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P01(UnfoldingHeap[x, r_11], b_24)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun02#trigger(UnfoldingHeap[null, P01(UnfoldingHeap[x, r_11], b_24)], UnfoldingHeap[x, r_11], b_24);
        }
      }
      
      // -- Free assumptions (exp module)
        if (b_24) {
          Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, v_35:=true]];
        }
        Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, r_11:=true]];
        if (Heap[x, r_11] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, P01#sm(x, b_24)][o_5, f_11] || Heap[null, P01#sm(Heap[x, r_11], b_24)][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, P01#sm(x, b_24):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[x, r_11] == null then b_24 else fun02(Heap, Heap[x, r_11], b_24));
}

// ==================================================
// Translation of function vals
// ==================================================

// Uninterpreted function definitions
function  vals_1(Heap: HeapType, x: Ref): Seq int;
function  vals'(Heap: HeapType, x: Ref): Seq int;
axiom (forall Heap: HeapType, x: Ref ::
  { vals_1(Heap, x) }
  vals_1(Heap, x) == vals'(Heap, x) && dummyFunction(vals#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { vals'(Heap, x) }
  dummyFunction(vals#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), vals_1(Heap, x) } { state(Heap, Mask), vals#triggerStateless(x), Tree#trigger(Heap, Tree(x)), Tree#trigger(Heap, Tree(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> vals_1(Heap, x) == Seq#Append(Seq#Append((if Heap[x, l] == null then (Seq#Empty(): Seq int) else vals'(Heap, Heap[x, l])), Seq#Singleton(Heap[x, v_35])), (if Heap[x, r_11] == null then (Seq#Empty(): Seq int) else vals'(Heap, Heap[x, r_11])))
);

// Framing axioms
function  vals#frame(frame: FrameType, x: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), vals'(Heap, x) } { state(Heap, Mask), vals#triggerStateless(x), Tree#trigger(Heap, Tree(x)), Tree#trigger(Heap, Tree(x)) }
  state(Heap, Mask) ==> vals'(Heap, x) == vals#frame(Heap[null, Tree(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  vals#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  vals#triggerStateless(x: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure vals#definedness(x: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Tree(x), write) in (x.l == null ? Seq[Int]() : vals(x.l)) ++ Seq(x.v) ++ (x.r == null ? Seq[Int]() : vals(x.r)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Tree#trigger(UnfoldingHeap, Tree(x));
      assume UnfoldingHeap[null, Tree(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, v_35]), CombineFrames(FrameFragment(UnfoldingHeap[x, l]), CombineFrames(FrameFragment((if UnfoldingHeap[x, l] != null then UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[x, r_11]), FrameFragment((if UnfoldingHeap[x, r_11] != null then UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree(x) (unofficial003.vpr@71.1--75.2) [61746]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, v_35:=UnfoldingMask[x, v_35] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, l:=UnfoldingMask[x, l] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, l] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, l]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, l])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, l]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, r_11:=UnfoldingMask[x, r_11] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, r_11] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.l (unofficial003.vpr@71.1--75.2) [61747]"}
        HasDirectPerm(UnfoldingMask, x, l);
      if (UnfoldingHeap[x, l] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.l (unofficial003.vpr@71.1--75.2) [61748]"}
          HasDirectPerm(UnfoldingMask, x, l);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.l) (unofficial003.vpr@74.57--74.66) [61749]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(UnfoldingHeap[x, l])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume vals#trigger(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])], UnfoldingHeap[x, l]);
        }
      }
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (unofficial003.vpr@71.1--75.2) [61750]"}
        HasDirectPerm(UnfoldingMask, x, v_35);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@71.1--75.2) [61751]"}
        HasDirectPerm(UnfoldingMask, x, r_11);
      if (UnfoldingHeap[x, r_11] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@71.1--75.2) [61752]"}
          HasDirectPerm(UnfoldingMask, x, r_11);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.r) (unofficial003.vpr@74.111--74.120) [61753]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume vals#trigger(UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])], UnfoldingHeap[x, r_11]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, v_35:=true]];
        Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, l:=true]];
        if (Heap[x, l] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, Tree#sm(x)][o_6, f_12] || Heap[null, Tree#sm(Heap[x, l])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
        }
        Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, r_11:=true]];
        if (Heap[x, r_11] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, Tree#sm(x)][o_40, f_52] || Heap[null, Tree#sm(Heap[x, r_11])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Seq#Append(Seq#Append((if Heap[x, l] == null then (Seq#Empty(): Seq int) else vals_1(Heap, Heap[x, l])), Seq#Singleton(Heap[x, v_35])), (if Heap[x, r_11] == null then (Seq#Empty(): Seq int) else vals_1(Heap, Heap[x, r_11])));
}

// ==================================================
// Translation of predicate P01
// ==================================================

type PredicateType_P01;
function  P01(x: Ref, b_24: bool): Field PredicateType_P01 FrameType;
function  P01#sm(x: Ref, b_24: bool): Field PredicateType_P01 PMaskType;
axiom (forall x: Ref, b_24: bool ::
  { PredicateMaskField(P01(x, b_24)) }
  PredicateMaskField(P01(x, b_24)) == P01#sm(x, b_24)
);
axiom (forall x: Ref, b_24: bool ::
  { P01(x, b_24) }
  IsPredicateField(P01(x, b_24))
);
axiom (forall x: Ref, b_24: bool ::
  { P01(x, b_24) }
  getPredWandId(P01(x, b_24)) == 0
);
function  P01#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P01#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P01(x, b_24), P01(x2, b2) }
  P01(x, b_24) == P01(x2, b2) ==> x == x2 && b_24 == b2
);
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P01#sm(x, b_24), P01#sm(x2, b2) }
  P01#sm(x, b_24) == P01#sm(x2, b2) ==> x == x2 && b_24 == b2
);

axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { P01#trigger(Heap, P01(x, b_24)) }
  P01#everUsed(P01(x, b_24))
);

procedure P01#definedness(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P01
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.r != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@31.1--34.2) [61754]"}
        HasDirectPerm(Mask, x, r_11);
    if (Heap[x, r_11] != null) {
      
      // -- Check definedness of acc(P01(x.r, b), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@31.1--34.2) [61755]"}
          HasDirectPerm(Mask, x, r_11);
      perm := FullPerm;
      Mask := Mask[null, P01(Heap[x, r_11], b_24):=Mask[null, P01(Heap[x, r_11], b_24)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Tree
// ==================================================

type PredicateType_Tree;
function  Tree(x: Ref): Field PredicateType_Tree FrameType;
function  Tree#sm(x: Ref): Field PredicateType_Tree PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Tree(x)) }
  PredicateMaskField(Tree(x)) == Tree#sm(x)
);
axiom (forall x: Ref ::
  { Tree(x) }
  IsPredicateField(Tree(x))
);
axiom (forall x: Ref ::
  { Tree(x) }
  getPredWandId(Tree(x)) == 1
);
function  Tree#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Tree#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Tree(x), Tree(x2) }
  Tree(x) == Tree(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Tree#sm(x), Tree#sm(x2) }
  Tree#sm(x) == Tree#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Tree#trigger(Heap, Tree(x)) }
  Tree#everUsed(Tree(x))
);

procedure Tree#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Tree
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.l != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.l (unofficial003.vpr@65.1--69.2) [61756]"}
        HasDirectPerm(Mask, x, l);
    if (Heap[x, l] != null) {
      
      // -- Check definedness of acc(Tree(x.l), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.l (unofficial003.vpr@65.1--69.2) [61757]"}
          HasDirectPerm(Mask, x, l);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, l]):=Mask[null, Tree(Heap[x, l])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.r != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@65.1--69.2) [61758]"}
        HasDirectPerm(Mask, x, r_11);
    if (Heap[x, r_11] != null) {
      
      // -- Check definedness of acc(Tree(x.r), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (unofficial003.vpr@65.1--69.2) [61759]"}
          HasDirectPerm(Mask, x, r_11);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, r_11]):=Mask[null, Tree(Heap[x, r_11])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: x.v := 4 -- unofficial003.vpr@24.3--24.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.v (unofficial003.vpr@24.3--24.11) [61760]"}
      FullPerm == Mask[x, v_35];
    Heap := Heap[x, v_35:=4];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x, b2, b1) == 4 -- unofficial003.vpr@25.3--25.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01(x, b2, b1) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function fun01 might not hold. Fraction 1 / 3 might be negative. (unofficial003.vpr@25.10--25.26) [61761]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (unofficial003.vpr@25.10--25.26) [61762]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_35];
        if (b2) {
          perm := 1 / 3;
          assert {:msg "  Precondition of function fun01 might not hold. Fraction 1 / 3 might be negative. (unofficial003.vpr@25.10--25.26) [61763]"}
            perm >= NoPerm;
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (unofficial003.vpr@25.10--25.26) [61764]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_35];
        }
        if (b1) {
          perm := 1 / 3;
          assert {:msg "  Precondition of function fun01 might not hold. Fraction 1 / 3 might be negative. (unofficial003.vpr@25.10--25.26) [61765]"}
            perm >= NoPerm;
          assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (unofficial003.vpr@25.10--25.26) [61766]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_35];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x, b2, b1) == 4 might not hold. (unofficial003.vpr@25.10--25.31) [61767]"}
      fun01(Heap, x, b2, b1) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- unofficial003.vpr@27.3--27.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (unofficial003.vpr@27.10--27.15) [61768]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(P01(x, b), write) -- unofficial003.vpr@45.3--45.19
    assume P01#trigger(Heap, P01(x, b_24));
    assume Heap[null, P01(x, b_24)] == CombineFrames(FrameFragment((if b_24 then FrameFragment(Heap[x, v_35]) else EmptyFrame)), CombineFrames(FrameFragment(Heap[x, r_11]), FrameFragment((if Heap[x, r_11] != null then Heap[null, P01(Heap[x, r_11], b_24)] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P01(x, b) might fail. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@45.3--45.19) [61771]"}
        perm <= Mask[null, P01(x, b_24)];
    }
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P01(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P01(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    if (Heap[x, r_11] != null) {
      perm := FullPerm;
      Mask := Mask[null, P01(Heap[x, r_11], b_24):=Mask[null, P01(Heap[x, r_11], b_24)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(P01(x, b_24), Heap[null, P01(x, b_24)], P01(Heap[x, r_11], b_24), Heap[null, P01(Heap[x, r_11], b_24)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- unofficial003.vpr@46.10--46.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.r == null -- unofficial003.vpr@46.15--46.26
    
    // -- Check definedness of x.r == null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.r (unofficial003.vpr@46.15--46.26) [61775]"}
        HasDirectPerm(Mask, x, r_11);
    assume Heap[x, r_11] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P01(x, b), write) -- unofficial003.vpr@47.3--47.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access x.v (unofficial003.vpr@47.3--47.17) [61778]"}
          perm <= Mask[x, v_35];
      }
      Mask := Mask[x, v_35:=Mask[x, v_35] - perm];
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access x.r (unofficial003.vpr@47.3--47.17) [61780]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    if (Heap[x, r_11] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access P01(x.r, b) (unofficial003.vpr@47.3--47.17) [61782]"}
          perm <= Mask[null, P01(Heap[x, r_11], b_24)];
      }
      Mask := Mask[null, P01(Heap[x, r_11], b_24):=Mask[null, P01(Heap[x, r_11], b_24)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(P01(x, b_24), Heap[null, P01(x, b_24)], P01(Heap[x, r_11], b_24), Heap[null, P01(Heap[x, r_11], b_24)]);
    }
    perm := FullPerm;
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P01#trigger(Heap, P01(x, b_24));
    assume Heap[null, P01(x, b_24)] == CombineFrames(FrameFragment((if b_24 then FrameFragment(Heap[x, v_35]) else EmptyFrame)), CombineFrames(FrameFragment(Heap[x, r_11]), FrameFragment((if Heap[x, r_11] != null then Heap[null, P01(Heap[x, r_11], b_24)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, P01(x, b_24))) {
      Heap := Heap[null, P01#sm(x, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P01(x, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, v_35:=true]];
    }
    Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, r_11:=true]];
    if (Heap[x, r_11] != null) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, P01#sm(x, b_24)][o_42, f_55] || Heap[null, P01#sm(Heap[x, r_11], b_24)][o_42, f_55] ==> newPMask[o_42, f_55]
      );
      Heap := Heap[null, P01#sm(x, b_24):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x, b) -- unofficial003.vpr@48.3--48.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@48.10--48.21) [61784]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, b_24)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x, b) might not hold. (unofficial003.vpr@48.10--48.21) [61785]"}
      fun02(Heap, x, b_24);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !fun02(x, b) -- unofficial003.vpr@51.3--51.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of !fun02(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@51.11--51.22) [61786]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, b_24)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion !fun02(x, b) might not hold. (unofficial003.vpr@51.10--51.22) [61787]"}
      !fun02(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(P01(x, b), write) -- unofficial003.vpr@57.3--57.19
    assume P01#trigger(Heap, P01(x, b_24));
    assume Heap[null, P01(x, b_24)] == CombineFrames(FrameFragment((if b_24 then FrameFragment(Heap[x, v_35]) else EmptyFrame)), CombineFrames(FrameFragment(Heap[x, r_11]), FrameFragment((if Heap[x, r_11] != null then Heap[null, P01(Heap[x, r_11], b_24)] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P01(x, b) might fail. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@57.3--57.19) [61790]"}
        perm <= Mask[null, P01(x, b_24)];
    }
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P01(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P01(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    if (Heap[x, r_11] != null) {
      perm := FullPerm;
      Mask := Mask[null, P01(Heap[x, r_11], b_24):=Mask[null, P01(Heap[x, r_11], b_24)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(P01(x, b_24), Heap[null, P01(x, b_24)], P01(Heap[x, r_11], b_24), Heap[null, P01(Heap[x, r_11], b_24)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- unofficial003.vpr@58.10--58.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P01(x, b), write) -- unofficial003.vpr@59.3--59.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access x.v (unofficial003.vpr@59.3--59.17) [61796]"}
          perm <= Mask[x, v_35];
      }
      Mask := Mask[x, v_35:=Mask[x, v_35] - perm];
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access x.r (unofficial003.vpr@59.3--59.17) [61798]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    if (Heap[x, r_11] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P01(x, b) might fail. There might be insufficient permission to access P01(x.r, b) (unofficial003.vpr@59.3--59.17) [61800]"}
          perm <= Mask[null, P01(Heap[x, r_11], b_24)];
      }
      Mask := Mask[null, P01(Heap[x, r_11], b_24):=Mask[null, P01(Heap[x, r_11], b_24)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(P01(x, b_24), Heap[null, P01(x, b_24)], P01(Heap[x, r_11], b_24), Heap[null, P01(Heap[x, r_11], b_24)]);
    }
    perm := FullPerm;
    Mask := Mask[null, P01(x, b_24):=Mask[null, P01(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P01#trigger(Heap, P01(x, b_24));
    assume Heap[null, P01(x, b_24)] == CombineFrames(FrameFragment((if b_24 then FrameFragment(Heap[x, v_35]) else EmptyFrame)), CombineFrames(FrameFragment(Heap[x, r_11]), FrameFragment((if Heap[x, r_11] != null then Heap[null, P01(Heap[x, r_11], b_24)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, P01(x, b_24))) {
      Heap := Heap[null, P01#sm(x, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P01(x, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, v_35:=true]];
    }
    Heap := Heap[null, P01#sm(x, b_24):=Heap[null, P01#sm(x, b_24)][x, r_11:=true]];
    if (Heap[x, r_11] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, P01#sm(x, b_24)][o_46, f_60] || Heap[null, P01#sm(Heap[x, r_11], b_24)][o_46, f_60] ==> newPMask[o_46, f_60]
      );
      Heap := Heap[null, P01#sm(x, b_24):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x, b) -- unofficial003.vpr@61.3--61.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun02(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access P01(x, b) (unofficial003.vpr@61.10--61.21) [61802]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P01(x, b_24)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x, b) might not hold. (unofficial003.vpr@61.10--61.21) [61803]"}
      fun02(Heap, x, b_24);
    assume state(Heap, Mask);
}