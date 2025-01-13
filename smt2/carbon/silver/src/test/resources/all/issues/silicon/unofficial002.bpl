// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:24:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial002.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial002-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// - height 0: degrees
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

const unique sibling: Field NormalField Ref;
axiom !IsPredicateField(sibling);
axiom !IsWandField(sibling);

// ==================================================
// Translation of function degrees
// ==================================================

// Uninterpreted function definitions
function  degrees(Heap: HeapType, this: Ref, last: Ref): Seq int;
function  degrees'(Heap: HeapType, this: Ref, last: Ref): Seq int;
axiom (forall Heap: HeapType, this: Ref, last: Ref ::
  { degrees(Heap, this, last) }
  degrees(Heap, this, last) == degrees'(Heap, this, last) && dummyFunction(degrees#triggerStateless(this, last))
);
axiom (forall Heap: HeapType, this: Ref, last: Ref ::
  { degrees'(Heap, this, last) }
  dummyFunction(degrees#triggerStateless(this, last))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, last: Ref ::
  { state(Heap, Mask), degrees(Heap, this, last) } { state(Heap, Mask), degrees#triggerStateless(this, last), lseg#trigger(Heap, lseg(this, last)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> degrees(Heap, this, last) == (if this == last then (Seq#Empty(): Seq int) else (if Heap[this, sibling] == null then Seq#Singleton(0) else Seq#Append(Seq#Singleton(0), degrees'(Heap, Heap[this, sibling], last))))
);

// Framing axioms
function  degrees#frame(frame: FrameType, this: Ref, last: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, last: Ref ::
  { state(Heap, Mask), degrees'(Heap, this, last) } { state(Heap, Mask), degrees#triggerStateless(this, last), lseg#trigger(Heap, lseg(this, last)) }
  state(Heap, Mask) ==> degrees'(Heap, this, last) == degrees#frame(Heap[null, lseg(this, last)], this, last)
);

// Trigger function (controlling recursive postconditions)
function  degrees#trigger(frame: FrameType, this: Ref, last: Ref): bool;

// State-independent trigger function
function  degrees#triggerStateless(this: Ref, last: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure degrees#definedness(this: Ref, last: Ref) returns (Result: (Seq int))
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
    assume Heap[this, $allocated];
    assume Heap[last, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    perm := FullPerm;
    Mask := Mask[null, lseg(this, last):=Mask[null, lseg(this, last)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (this == last ? Seq[Int]() : (unfolding acc(lseg(this, last), write) in (this.sibling == null ? Seq(0) : Seq(0) ++ degrees(this.sibling, last))))
      if (this == last) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(this, last));
        assume UnfoldingHeap[null, lseg(this, last)] == FrameFragment((if this != last then CombineFrames(FrameFragment(UnfoldingHeap[this, sibling]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, sibling], last)]) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, last) (unofficial002.vpr@17.1--24.2) [200420]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, last)];
        if (this != last) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, sibling:=UnfoldingMask[this, sibling] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[this, sibling] != null;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, sibling], last):=UnfoldingMask[null, lseg(UnfoldingHeap[this, sibling], last)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(this, last), UnfoldingHeap[null, lseg(this, last)], lseg(UnfoldingHeap[this, sibling], last), UnfoldingHeap[null, lseg(UnfoldingHeap[this, sibling], last)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.sibling (unofficial002.vpr@17.1--24.2) [200421]"}
          HasDirectPerm(UnfoldingMask, this, sibling);
        if (UnfoldingHeap[this, sibling] == null) {
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.sibling (unofficial002.vpr@17.1--24.2) [200422]"}
            HasDirectPerm(UnfoldingMask, this, sibling);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            assert {:msg "  Precondition of function degrees might not hold. Assertion this.sibling != null might not hold. (unofficial002.vpr@23.52--23.79) [200423]"}
              UnfoldingHeap[this, sibling] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function degrees might not hold. There might be insufficient permission to access lseg(this.sibling, last) (unofficial002.vpr@23.52--23.79) [200424]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, sibling], last)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume degrees#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, sibling], last)], UnfoldingHeap[this, sibling], last);
          }
        }
        
        // -- Free assumptions (exp module)
          if (this != last) {
            Heap := Heap[null, lseg#sm(this, last):=Heap[null, lseg#sm(this, last)][this, sibling:=true]];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, lseg#sm(this, last)][o_15, f_20] || Heap[null, lseg#sm(Heap[this, sibling], last)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, lseg#sm(this, last):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if this == last then (Seq#Empty(): Seq int) else (if Heap[this, sibling] == null then Seq#Singleton(0) else Seq#Append(Seq#Singleton(0), degrees(Heap, Heap[this, sibling], last))));
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(this: Ref, end: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(this: Ref, end: Ref): Field PredicateType_lseg PMaskType;
axiom (forall this: Ref, end: Ref ::
  { PredicateMaskField(lseg(this, end)) }
  PredicateMaskField(lseg(this, end)) == lseg#sm(this, end)
);
axiom (forall this: Ref, end: Ref ::
  { lseg(this, end) }
  IsPredicateField(lseg(this, end))
);
axiom (forall this: Ref, end: Ref ::
  { lseg(this, end) }
  getPredWandId(lseg(this, end)) == 0
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { lseg(this, end), lseg(this2, end2) }
  lseg(this, end) == lseg(this2, end2) ==> this == this2 && end == end2
);
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { lseg#sm(this, end), lseg#sm(this2, end2) }
  lseg#sm(this, end) == lseg#sm(this2, end2) ==> this == this2 && end == end2
);

axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { lseg#trigger(Heap, lseg(this, end)) }
  lseg#everUsed(lseg(this, end))
);

procedure lseg#definedness(this: Ref, end: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
      assume Heap[end, $allocated];
    if (this != end) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, sibling:=Mask[this, sibling] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.sibling != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.sibling (unofficial002.vpr@10.1--15.2) [200425]"}
          HasDirectPerm(Mask, this, sibling);
      assume Heap[this, sibling] != null;
      
      // -- Check definedness of acc(lseg(this.sibling, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.sibling (unofficial002.vpr@10.1--15.2) [200426]"}
          HasDirectPerm(Mask, this, sibling);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, sibling], end):=Mask[null, lseg(Heap[this, sibling], end)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method join
// ==================================================

procedure join(s1: Ref, m1_3: Ref, l1_3: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_s1: Ref;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ys: (Seq int);
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var xs: (Seq int);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s1, $allocated];
    assume Heap[m1_3, $allocated];
    assume Heap[l1_3, $allocated];
  
  // -- Checked inhaling of precondition
    assume s1 != null;
    assume m1_3 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(s1, m1_3):=Mask[null, lseg(s1, m1_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(m1_3, l1_3):=Mask[null, lseg(m1_3, l1_3)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, lseg(s1, l1_3):=PostMask[null, lseg(s1, l1_3)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale s1 != m1 -- unofficial002.vpr@32.10--32.18
    assume s1 != m1_3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(lseg(s1, m1), write) -- unofficial002.vpr@34.3--34.27
    assume lseg#trigger(Heap, lseg(s1, m1_3));
    assume Heap[null, lseg(s1, m1_3)] == FrameFragment((if s1 != m1_3 then CombineFrames(FrameFragment(Heap[s1, sibling]), Heap[null, lseg(Heap[s1, sibling], m1_3)]) else EmptyFrame));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(s1, m1) might fail. There might be insufficient permission to access lseg(s1, m1) (unofficial002.vpr@34.3--34.27) [200429]"}
        perm <= Mask[null, lseg(s1, m1_3)];
    }
    Mask := Mask[null, lseg(s1, m1_3):=Mask[null, lseg(s1, m1_3)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(s1, m1_3))) {
        havoc newVersion;
        Heap := Heap[null, lseg(s1, m1_3):=newVersion];
      }
    if (s1 != m1_3) {
      perm := FullPerm;
      assume s1 != null;
      Mask := Mask[s1, sibling:=Mask[s1, sibling] + perm];
      assume state(Heap, Mask);
      assume Heap[s1, sibling] != null;
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[s1, sibling], m1_3):=Mask[null, lseg(Heap[s1, sibling], m1_3)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(s1, m1_3), Heap[null, lseg(s1, m1_3)], lseg(Heap[s1, sibling], m1_3), Heap[null, lseg(Heap[s1, sibling], m1_3)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: join(s1.sibling, m1, l1) -- unofficial002.vpr@35.3--35.27
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of s1.sibling
      assert {:msg "  Method call might fail. There might be insufficient permission to access s1.sibling (unofficial002.vpr@35.3--35.27) [200432]"}
        HasDirectPerm(Mask, s1, sibling);
    arg_s1 := Heap[s1, sibling];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method join might not hold. Assertion s1.sibling != null might not hold. (unofficial002.vpr@35.3--35.27) [200433]"}
        arg_s1 != null;
      assert {:msg "  The precondition of method join might not hold. Assertion m1 != null might not hold. (unofficial002.vpr@35.3--35.27) [200434]"}
        m1_3 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method join might not hold. There might be insufficient permission to access lseg(s1.sibling, m1) (unofficial002.vpr@35.3--35.27) [200435]"}
          perm <= Mask[null, lseg(arg_s1, m1_3)];
      }
      Mask := Mask[null, lseg(arg_s1, m1_3):=Mask[null, lseg(arg_s1, m1_3)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method join might not hold. There might be insufficient permission to access lseg(m1, l1) (unofficial002.vpr@35.3--35.27) [200436]"}
          perm <= Mask[null, lseg(m1_3, l1_3)];
      }
      Mask := Mask[null, lseg(m1_3, l1_3):=Mask[null, lseg(m1_3, l1_3)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(arg_s1, l1_3):=Mask[null, lseg(arg_s1, l1_3)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(s1, l1), write) -- unofficial002.vpr@36.3--36.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (s1 != l1_3) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(s1, l1) might fail. There might be insufficient permission to access s1.sibling (unofficial002.vpr@36.3--36.25) [200439]"}
          perm <= Mask[s1, sibling];
      }
      Mask := Mask[s1, sibling:=Mask[s1, sibling] - perm];
      assert {:msg "  Folding lseg(s1, l1) might fail. Assertion s1.sibling != null might not hold. (unofficial002.vpr@36.3--36.25) [200440]"}
        Heap[s1, sibling] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(s1, l1) might fail. There might be insufficient permission to access lseg(s1.sibling, l1) (unofficial002.vpr@36.3--36.25) [200442]"}
          perm <= Mask[null, lseg(Heap[s1, sibling], l1_3)];
      }
      Mask := Mask[null, lseg(Heap[s1, sibling], l1_3):=Mask[null, lseg(Heap[s1, sibling], l1_3)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(s1, l1_3), Heap[null, lseg(s1, l1_3)], lseg(Heap[s1, sibling], l1_3), Heap[null, lseg(Heap[s1, sibling], l1_3)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(s1, l1_3):=Mask[null, lseg(s1, l1_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(s1, l1_3));
    assume Heap[null, lseg(s1, l1_3)] == FrameFragment((if s1 != l1_3 then CombineFrames(FrameFragment(Heap[s1, sibling]), Heap[null, lseg(Heap[s1, sibling], l1_3)]) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, lseg(s1, l1_3))) {
      Heap := Heap[null, lseg#sm(s1, l1_3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(s1, l1_3):=freshVersion];
    }
    if (s1 != l1_3) {
      Heap := Heap[null, lseg#sm(s1, l1_3):=Heap[null, lseg#sm(s1, l1_3)][s1, sibling:=true]];
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, lseg#sm(s1, l1_3)][o_16, f_21] || Heap[null, lseg#sm(Heap[s1, sibling], l1_3)][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, lseg#sm(s1, l1_3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale s1 != l1 -- unofficial002.vpr@38.10--38.18
    assume s1 != l1_3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: ys := degrees(s1, l1) -- unofficial002.vpr@40.3--40.38
    
    // -- Check definedness of degrees(s1, l1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function degrees might not hold. Assertion s1 != null might not hold. (unofficial002.vpr@40.23--40.38) [200444]"}
          s1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function degrees might not hold. There might be insufficient permission to access lseg(s1, l1) (unofficial002.vpr@40.23--40.38) [200445]"}
          NoPerm < perm ==> NoPerm < Mask[null, lseg(s1, l1_3)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    ys := degrees(Heap, s1, l1_3);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := (unfolding acc(lseg(s1, l1), write) in
  //     Seq(0) ++ degrees(s1.sibling, l1)) -- unofficial002.vpr@41.3--41.89
    
    // -- Check definedness of (unfolding acc(lseg(s1, l1), write) in Seq(0) ++ degrees(s1.sibling, l1))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(s1, l1_3));
      assume UnfoldingHeap[null, lseg(s1, l1_3)] == FrameFragment((if s1 != l1_3 then CombineFrames(FrameFragment(UnfoldingHeap[s1, sibling]), UnfoldingHeap[null, lseg(UnfoldingHeap[s1, sibling], l1_3)]) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access lseg(s1, l1) (unofficial002.vpr@41.3--41.89) [200446]"}
          perm <= UnfoldingMask[null, lseg(s1, l1_3)];
      }
      UnfoldingMask := UnfoldingMask[null, lseg(s1, l1_3):=UnfoldingMask[null, lseg(s1, l1_3)] - perm];
      if (s1 != l1_3) {
        perm := FullPerm;
        assume s1 != null;
        UnfoldingMask := UnfoldingMask[s1, sibling:=UnfoldingMask[s1, sibling] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[s1, sibling] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[s1, sibling], l1_3):=UnfoldingMask[null, lseg(UnfoldingHeap[s1, sibling], l1_3)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(s1, l1_3), UnfoldingHeap[null, lseg(s1, l1_3)], lseg(UnfoldingHeap[s1, sibling], l1_3), UnfoldingHeap[null, lseg(UnfoldingHeap[s1, sibling], l1_3)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access s1.sibling (unofficial002.vpr@41.3--41.89) [200447]"}
        HasDirectPerm(UnfoldingMask, s1, sibling);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        assert {:msg "  Precondition of function degrees might not hold. Assertion s1.sibling != null might not hold. (unofficial002.vpr@41.65--41.88) [200448]"}
          UnfoldingHeap[s1, sibling] != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function degrees might not hold. There might be insufficient permission to access lseg(s1.sibling, l1) (unofficial002.vpr@41.65--41.88) [200449]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[s1, sibling], l1_3)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        if (s1 != l1_3) {
          Heap := Heap[null, lseg#sm(s1, l1_3):=Heap[null, lseg#sm(s1, l1_3)][s1, sibling:=true]];
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, lseg#sm(s1, l1_3)][o_52, f_55] || Heap[null, lseg#sm(Heap[s1, sibling], l1_3)][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, lseg#sm(s1, l1_3):=newPMask];
        }
        assume state(Heap, Mask);
    xs := Seq#Append(Seq#Singleton(0), degrees(Heap, Heap[s1, sibling], l1_3));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert xs == ys -- unofficial002.vpr@43.3--43.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion xs == ys might not hold. (unofficial002.vpr@43.10--43.18) [200450]"}
      Seq#Equal(xs, ys);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of join might not hold. There might be insufficient permission to access lseg(s1, l1) (unofficial002.vpr@30.12--30.29) [200451]"}
        perm <= Mask[null, lseg(s1, l1_3)];
    }
    Mask := Mask[null, lseg(s1, l1_3):=Mask[null, lseg(s1, l1_3)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}