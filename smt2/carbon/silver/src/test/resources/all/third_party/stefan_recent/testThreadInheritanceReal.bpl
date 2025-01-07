// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:23:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testThreadInheritanceReal.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testThreadInheritanceReal-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain TYPE
// ==================================================

// The type for domain TYPE
type TYPEDomainType;

// Translation of domain function class_Object
function  class_Object(): TYPEDomainType;

// Translation of domain function class_Thread
function  class_Thread(): TYPEDomainType;

// Translation of domain function class_Worker
function  class_Worker(): TYPEDomainType;

// Translation of domain function class_Main
function  class_Main(): TYPEDomainType;

// Translation of domain function instanceof
function  instanceof(t1_5: TYPEDomainType, t2_2: TYPEDomainType): bool;

// Translation of domain function type_of
function  type_of(val_3: Ref): TYPEDomainType;

// Translation of domain axiom object_top
axiom (forall t_2: TYPEDomainType ::
  { (instanceof((class_Object(): TYPEDomainType), t_2): bool) }
  (instanceof((class_Object(): TYPEDomainType), t_2): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Worker__input: Field NormalField int;
axiom !IsPredicateField(Worker__input);
axiom !IsWandField(Worker__input);
const unique Worker__output: Field NormalField int;
axiom !IsPredicateField(Worker__output);
axiom !IsWandField(Worker__output);
const unique Ref__String_value: Field NormalField (Seq int);
axiom !IsPredicateField(Ref__String_value);
axiom !IsWandField(Ref__String_value);

// ==================================================
// Translation of predicate Thread__is_a_Thread
// ==================================================

type PredicateType_Thread__is_a_Thread;
function  Thread__is_a_Thread(diz: Ref): Field PredicateType_Thread__is_a_Thread FrameType;
function  Thread__is_a_Thread#sm(diz: Ref): Field PredicateType_Thread__is_a_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Thread__is_a_Thread(diz)) }
  PredicateMaskField(Thread__is_a_Thread(diz)) == Thread__is_a_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Thread__is_a_Thread(diz) }
  IsPredicateField(Thread__is_a_Thread(diz))
);
axiom (forall diz: Ref ::
  { Thread__is_a_Thread(diz) }
  getPredWandId(Thread__is_a_Thread(diz)) == 0
);
function  Thread__is_a_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__is_a_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__is_a_Thread(diz), Thread__is_a_Thread(diz2) }
  Thread__is_a_Thread(diz) == Thread__is_a_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__is_a_Thread#sm(diz), Thread__is_a_Thread#sm(diz2) }
  Thread__is_a_Thread#sm(diz) == Thread__is_a_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Thread__is_a_Thread#trigger(Heap, Thread__is_a_Thread(diz)) }
  Thread__is_a_Thread#everUsed(Thread__is_a_Thread(diz))
);

// ==================================================
// Translation of predicate Thread__instance_of_Thread
// ==================================================

type PredicateType_Thread__instance_of_Thread;
function  Thread__instance_of_Thread(diz: Ref): Field PredicateType_Thread__instance_of_Thread FrameType;
function  Thread__instance_of_Thread#sm(diz: Ref): Field PredicateType_Thread__instance_of_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Thread__instance_of_Thread(diz)) }
  PredicateMaskField(Thread__instance_of_Thread(diz)) == Thread__instance_of_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Thread__instance_of_Thread(diz) }
  IsPredicateField(Thread__instance_of_Thread(diz))
);
axiom (forall diz: Ref ::
  { Thread__instance_of_Thread(diz) }
  getPredWandId(Thread__instance_of_Thread(diz)) == 1
);
function  Thread__instance_of_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__instance_of_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__instance_of_Thread(diz), Thread__instance_of_Thread(diz2) }
  Thread__instance_of_Thread(diz) == Thread__instance_of_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Thread__instance_of_Thread#sm(diz), Thread__instance_of_Thread#sm(diz2) }
  Thread__instance_of_Thread#sm(diz) == Thread__instance_of_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Thread__instance_of_Thread#trigger(Heap, Thread__instance_of_Thread(diz)) }
  Thread__instance_of_Thread#everUsed(Thread__instance_of_Thread(diz))
);

// ==================================================
// Translation of predicate Thread__joinToken
// ==================================================

type PredicateType_Thread__joinToken;
function  Thread__joinToken(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken FrameType;
function  Thread__joinToken#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__joinToken(diz, p_1)) }
  PredicateMaskField(Thread__joinToken(diz, p_1)) == Thread__joinToken#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken(diz, p_1) }
  IsPredicateField(Thread__joinToken(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken(diz, p_1) }
  getPredWandId(Thread__joinToken(diz, p_1)) == 2
);
function  Thread__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken(diz, p_1), Thread__joinToken(diz2, p2_1) }
  Thread__joinToken(diz, p_1) == Thread__joinToken(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken#sm(diz, p_1), Thread__joinToken#sm(diz2, p2_1) }
  Thread__joinToken#sm(diz, p_1) == Thread__joinToken#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__joinToken#trigger(Heap, Thread__joinToken(diz, p_1)) }
  Thread__joinToken#everUsed(Thread__joinToken(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__preFork
// ==================================================

type PredicateType_Thread__preFork;
function  Thread__preFork(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork FrameType;
function  Thread__preFork#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__preFork(diz, p_1)) }
  PredicateMaskField(Thread__preFork(diz, p_1)) == Thread__preFork#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork(diz, p_1) }
  IsPredicateField(Thread__preFork(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork(diz, p_1) }
  getPredWandId(Thread__preFork(diz, p_1)) == 3
);
function  Thread__preFork#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__preFork#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork(diz, p_1), Thread__preFork(diz2, p2_1) }
  Thread__preFork(diz, p_1) == Thread__preFork(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork#sm(diz, p_1), Thread__preFork#sm(diz2, p2_1) }
  Thread__preFork#sm(diz, p_1) == Thread__preFork#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__preFork#trigger(Heap, Thread__preFork(diz, p_1)) }
  Thread__preFork#everUsed(Thread__preFork(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__postJoin
// ==================================================

type PredicateType_Thread__postJoin;
function  Thread__postJoin(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin FrameType;
function  Thread__postJoin#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__postJoin(diz, p_1)) }
  PredicateMaskField(Thread__postJoin(diz, p_1)) == Thread__postJoin#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin(diz, p_1) }
  IsPredicateField(Thread__postJoin(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin(diz, p_1) }
  getPredWandId(Thread__postJoin(diz, p_1)) == 4
);
function  Thread__postJoin#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__postJoin#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin(diz, p_1), Thread__postJoin(diz2, p2_1) }
  Thread__postJoin(diz, p_1) == Thread__postJoin(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin#sm(diz, p_1), Thread__postJoin#sm(diz2, p2_1) }
  Thread__postJoin#sm(diz, p_1) == Thread__postJoin#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__postJoin#trigger(Heap, Thread__postJoin(diz, p_1)) }
  Thread__postJoin#everUsed(Thread__postJoin(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__joinToken_at_Thread
// ==================================================

type PredicateType_Thread__joinToken_at_Thread;
function  Thread__joinToken_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken_at_Thread FrameType;
function  Thread__joinToken_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__joinToken_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__joinToken_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__joinToken_at_Thread(diz, p_1)) == Thread__joinToken_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1) }
  IsPredicateField(Thread__joinToken_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1) }
  getPredWandId(Thread__joinToken_at_Thread(diz, p_1)) == 5
);
function  Thread__joinToken_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__joinToken_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken_at_Thread(diz, p_1), Thread__joinToken_at_Thread(diz2, p2_1) }
  Thread__joinToken_at_Thread(diz, p_1) == Thread__joinToken_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__joinToken_at_Thread#sm(diz, p_1), Thread__joinToken_at_Thread#sm(diz2, p2_1) }
  Thread__joinToken_at_Thread#sm(diz, p_1) == Thread__joinToken_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__joinToken_at_Thread#trigger(Heap, Thread__joinToken_at_Thread(diz, p_1)) }
  Thread__joinToken_at_Thread#everUsed(Thread__joinToken_at_Thread(diz, p_1))
);

// ==================================================
// Translation of predicate Thread__preFork_at_Thread
// ==================================================

type PredicateType_Thread__preFork_at_Thread;
function  Thread__preFork_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork_at_Thread FrameType;
function  Thread__preFork_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__preFork_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__preFork_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__preFork_at_Thread(diz, p_1)) == Thread__preFork_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1) }
  IsPredicateField(Thread__preFork_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1) }
  getPredWandId(Thread__preFork_at_Thread(diz, p_1)) == 6
);
function  Thread__preFork_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__preFork_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork_at_Thread(diz, p_1), Thread__preFork_at_Thread(diz2, p2_1) }
  Thread__preFork_at_Thread(diz, p_1) == Thread__preFork_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__preFork_at_Thread#sm(diz, p_1), Thread__preFork_at_Thread#sm(diz2, p2_1) }
  Thread__preFork_at_Thread#sm(diz, p_1) == Thread__preFork_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__preFork_at_Thread#trigger(Heap, Thread__preFork_at_Thread(diz, p_1)) }
  Thread__preFork_at_Thread#everUsed(Thread__preFork_at_Thread(diz, p_1))
);

procedure Thread__preFork_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Thread__preFork_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Thread__postJoin_at_Thread
// ==================================================

type PredicateType_Thread__postJoin_at_Thread;
function  Thread__postJoin_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin_at_Thread FrameType;
function  Thread__postJoin_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Thread__postJoin_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Thread__postJoin_at_Thread(diz, p_1)) }
  PredicateMaskField(Thread__postJoin_at_Thread(diz, p_1)) == Thread__postJoin_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1) }
  IsPredicateField(Thread__postJoin_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1) }
  getPredWandId(Thread__postJoin_at_Thread(diz, p_1)) == 7
);
function  Thread__postJoin_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Thread__postJoin_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin_at_Thread(diz, p_1), Thread__postJoin_at_Thread(diz2, p2_1) }
  Thread__postJoin_at_Thread(diz, p_1) == Thread__postJoin_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Thread__postJoin_at_Thread#sm(diz, p_1), Thread__postJoin_at_Thread#sm(diz2, p2_1) }
  Thread__postJoin_at_Thread#sm(diz, p_1) == Thread__postJoin_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Thread__postJoin_at_Thread#trigger(Heap, Thread__postJoin_at_Thread(diz, p_1)) }
  Thread__postJoin_at_Thread#everUsed(Thread__postJoin_at_Thread(diz, p_1))
);

procedure Thread__postJoin_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Thread__postJoin_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__is_a_Worker
// ==================================================

type PredicateType_Worker__is_a_Worker;
function  Worker__is_a_Worker(diz: Ref): Field PredicateType_Worker__is_a_Worker FrameType;
function  Worker__is_a_Worker#sm(diz: Ref): Field PredicateType_Worker__is_a_Worker PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__is_a_Worker(diz)) }
  PredicateMaskField(Worker__is_a_Worker(diz)) == Worker__is_a_Worker#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__is_a_Worker(diz) }
  IsPredicateField(Worker__is_a_Worker(diz))
);
axiom (forall diz: Ref ::
  { Worker__is_a_Worker(diz) }
  getPredWandId(Worker__is_a_Worker(diz)) == 8
);
function  Worker__is_a_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__is_a_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Worker(diz), Worker__is_a_Worker(diz2) }
  Worker__is_a_Worker(diz) == Worker__is_a_Worker(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Worker#sm(diz), Worker__is_a_Worker#sm(diz2) }
  Worker__is_a_Worker#sm(diz) == Worker__is_a_Worker#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__is_a_Worker#trigger(Heap, Worker__is_a_Worker(diz)) }
  Worker__is_a_Worker#everUsed(Worker__is_a_Worker(diz))
);

// ==================================================
// Translation of predicate Worker__instance_of_Worker
// ==================================================

type PredicateType_Worker__instance_of_Worker;
function  Worker__instance_of_Worker(diz: Ref): Field PredicateType_Worker__instance_of_Worker FrameType;
function  Worker__instance_of_Worker#sm(diz: Ref): Field PredicateType_Worker__instance_of_Worker PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__instance_of_Worker(diz)) }
  PredicateMaskField(Worker__instance_of_Worker(diz)) == Worker__instance_of_Worker#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Worker(diz) }
  IsPredicateField(Worker__instance_of_Worker(diz))
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Worker(diz) }
  getPredWandId(Worker__instance_of_Worker(diz)) == 9
);
function  Worker__instance_of_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__instance_of_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Worker(diz), Worker__instance_of_Worker(diz2) }
  Worker__instance_of_Worker(diz) == Worker__instance_of_Worker(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Worker#sm(diz), Worker__instance_of_Worker#sm(diz2) }
  Worker__instance_of_Worker#sm(diz) == Worker__instance_of_Worker#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__instance_of_Worker#trigger(Heap, Worker__instance_of_Worker(diz)) }
  Worker__instance_of_Worker#everUsed(Worker__instance_of_Worker(diz))
);

// ==================================================
// Translation of predicate Worker__is_a_Thread
// ==================================================

type PredicateType_Worker__is_a_Thread;
function  Worker__is_a_Thread(diz: Ref): Field PredicateType_Worker__is_a_Thread FrameType;
function  Worker__is_a_Thread#sm(diz: Ref): Field PredicateType_Worker__is_a_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__is_a_Thread(diz)) }
  PredicateMaskField(Worker__is_a_Thread(diz)) == Worker__is_a_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__is_a_Thread(diz) }
  IsPredicateField(Worker__is_a_Thread(diz))
);
axiom (forall diz: Ref ::
  { Worker__is_a_Thread(diz) }
  getPredWandId(Worker__is_a_Thread(diz)) == 10
);
function  Worker__is_a_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__is_a_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Thread(diz), Worker__is_a_Thread(diz2) }
  Worker__is_a_Thread(diz) == Worker__is_a_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__is_a_Thread#sm(diz), Worker__is_a_Thread#sm(diz2) }
  Worker__is_a_Thread#sm(diz) == Worker__is_a_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__is_a_Thread#trigger(Heap, Worker__is_a_Thread(diz)) }
  Worker__is_a_Thread#everUsed(Worker__is_a_Thread(diz))
);

// ==================================================
// Translation of predicate Worker__instance_of_Thread
// ==================================================

type PredicateType_Worker__instance_of_Thread;
function  Worker__instance_of_Thread(diz: Ref): Field PredicateType_Worker__instance_of_Thread FrameType;
function  Worker__instance_of_Thread#sm(diz: Ref): Field PredicateType_Worker__instance_of_Thread PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__instance_of_Thread(diz)) }
  PredicateMaskField(Worker__instance_of_Thread(diz)) == Worker__instance_of_Thread#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Thread(diz) }
  IsPredicateField(Worker__instance_of_Thread(diz))
);
axiom (forall diz: Ref ::
  { Worker__instance_of_Thread(diz) }
  getPredWandId(Worker__instance_of_Thread(diz)) == 11
);
function  Worker__instance_of_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__instance_of_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Thread(diz), Worker__instance_of_Thread(diz2) }
  Worker__instance_of_Thread(diz) == Worker__instance_of_Thread(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__instance_of_Thread#sm(diz), Worker__instance_of_Thread#sm(diz2) }
  Worker__instance_of_Thread#sm(diz) == Worker__instance_of_Thread#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__instance_of_Thread#trigger(Heap, Worker__instance_of_Thread(diz)) }
  Worker__instance_of_Thread#everUsed(Worker__instance_of_Thread(diz))
);

// ==================================================
// Translation of predicate Worker__joinToken
// ==================================================

type PredicateType_Worker__joinToken;
function  Worker__joinToken(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken FrameType;
function  Worker__joinToken#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken(diz, p_1)) }
  PredicateMaskField(Worker__joinToken(diz, p_1)) == Worker__joinToken#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken(diz, p_1) }
  IsPredicateField(Worker__joinToken(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken(diz, p_1) }
  getPredWandId(Worker__joinToken(diz, p_1)) == 12
);
function  Worker__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken(diz, p_1), Worker__joinToken(diz2, p2_1) }
  Worker__joinToken(diz, p_1) == Worker__joinToken(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken#sm(diz, p_1), Worker__joinToken#sm(diz2, p2_1) }
  Worker__joinToken#sm(diz, p_1) == Worker__joinToken#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken#trigger(Heap, Worker__joinToken(diz, p_1)) }
  Worker__joinToken#everUsed(Worker__joinToken(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__joinToken_at_Worker
// ==================================================

type PredicateType_Worker__joinToken_at_Worker;
function  Worker__joinToken_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Worker FrameType;
function  Worker__joinToken_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__joinToken_at_Worker(diz, p_1)) == Worker__joinToken_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1) }
  IsPredicateField(Worker__joinToken_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1) }
  getPredWandId(Worker__joinToken_at_Worker(diz, p_1)) == 13
);
function  Worker__joinToken_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Worker(diz, p_1), Worker__joinToken_at_Worker(diz2, p2_1) }
  Worker__joinToken_at_Worker(diz, p_1) == Worker__joinToken_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Worker#sm(diz, p_1), Worker__joinToken_at_Worker#sm(diz2, p2_1) }
  Worker__joinToken_at_Worker#sm(diz, p_1) == Worker__joinToken_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Worker#trigger(Heap, Worker__joinToken_at_Worker(diz, p_1)) }
  Worker__joinToken_at_Worker#everUsed(Worker__joinToken_at_Worker(diz, p_1))
);

procedure Worker__joinToken_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Worker__joinToken_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken_at_Thread(diz, p_1):=Mask[null, Worker__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__preFork
// ==================================================

type PredicateType_Worker__preFork;
function  Worker__preFork(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork FrameType;
function  Worker__preFork#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork(diz, p_1)) }
  PredicateMaskField(Worker__preFork(diz, p_1)) == Worker__preFork#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork(diz, p_1) }
  IsPredicateField(Worker__preFork(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork(diz, p_1) }
  getPredWandId(Worker__preFork(diz, p_1)) == 14
);
function  Worker__preFork#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork(diz, p_1), Worker__preFork(diz2, p2_1) }
  Worker__preFork(diz, p_1) == Worker__preFork(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork#sm(diz, p_1), Worker__preFork#sm(diz2, p2_1) }
  Worker__preFork#sm(diz, p_1) == Worker__preFork#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork#trigger(Heap, Worker__preFork(diz, p_1)) }
  Worker__preFork#everUsed(Worker__preFork(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__postJoin
// ==================================================

type PredicateType_Worker__postJoin;
function  Worker__postJoin(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin FrameType;
function  Worker__postJoin#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin(diz, p_1)) }
  PredicateMaskField(Worker__postJoin(diz, p_1)) == Worker__postJoin#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin(diz, p_1) }
  IsPredicateField(Worker__postJoin(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin(diz, p_1) }
  getPredWandId(Worker__postJoin(diz, p_1)) == 15
);
function  Worker__postJoin#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin(diz, p_1), Worker__postJoin(diz2, p2_1) }
  Worker__postJoin(diz, p_1) == Worker__postJoin(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin#sm(diz, p_1), Worker__postJoin#sm(diz2, p2_1) }
  Worker__postJoin#sm(diz, p_1) == Worker__postJoin#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin#trigger(Heap, Worker__postJoin(diz, p_1)) }
  Worker__postJoin#everUsed(Worker__postJoin(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__joinToken_at_Thread
// ==================================================

type PredicateType_Worker__joinToken_at_Thread;
function  Worker__joinToken_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Thread FrameType;
function  Worker__joinToken_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__joinToken_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__joinToken_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__joinToken_at_Thread(diz, p_1)) == Worker__joinToken_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1) }
  IsPredicateField(Worker__joinToken_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1) }
  getPredWandId(Worker__joinToken_at_Thread(diz, p_1)) == 16
);
function  Worker__joinToken_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Thread(diz, p_1), Worker__joinToken_at_Thread(diz2, p2_1) }
  Worker__joinToken_at_Thread(diz, p_1) == Worker__joinToken_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__joinToken_at_Thread#sm(diz, p_1), Worker__joinToken_at_Thread#sm(diz2, p2_1) }
  Worker__joinToken_at_Thread#sm(diz, p_1) == Worker__joinToken_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__joinToken_at_Thread#trigger(Heap, Worker__joinToken_at_Thread(diz, p_1)) }
  Worker__joinToken_at_Thread#everUsed(Worker__joinToken_at_Thread(diz, p_1))
);

// ==================================================
// Translation of predicate Worker__preFork_at_Thread
// ==================================================

type PredicateType_Worker__preFork_at_Thread;
function  Worker__preFork_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Thread FrameType;
function  Worker__preFork_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__preFork_at_Thread(diz, p_1)) == Worker__preFork_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1) }
  IsPredicateField(Worker__preFork_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1) }
  getPredWandId(Worker__preFork_at_Thread(diz, p_1)) == 17
);
function  Worker__preFork_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Thread(diz, p_1), Worker__preFork_at_Thread(diz2, p2_1) }
  Worker__preFork_at_Thread(diz, p_1) == Worker__preFork_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Thread#sm(diz, p_1), Worker__preFork_at_Thread#sm(diz2, p2_1) }
  Worker__preFork_at_Thread#sm(diz, p_1) == Worker__preFork_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Thread#trigger(Heap, Worker__preFork_at_Thread(diz, p_1)) }
  Worker__preFork_at_Thread#everUsed(Worker__preFork_at_Thread(diz, p_1))
);

procedure Worker__preFork_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Worker__preFork_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__postJoin_at_Thread
// ==================================================

type PredicateType_Worker__postJoin_at_Thread;
function  Worker__postJoin_at_Thread(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Thread FrameType;
function  Worker__postJoin_at_Thread#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Thread PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin_at_Thread(diz, p_1)) }
  PredicateMaskField(Worker__postJoin_at_Thread(diz, p_1)) == Worker__postJoin_at_Thread#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1) }
  IsPredicateField(Worker__postJoin_at_Thread(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1) }
  getPredWandId(Worker__postJoin_at_Thread(diz, p_1)) == 18
);
function  Worker__postJoin_at_Thread#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin_at_Thread#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Thread(diz, p_1), Worker__postJoin_at_Thread(diz2, p2_1) }
  Worker__postJoin_at_Thread(diz, p_1) == Worker__postJoin_at_Thread(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Thread#sm(diz, p_1), Worker__postJoin_at_Thread#sm(diz2, p2_1) }
  Worker__postJoin_at_Thread#sm(diz, p_1) == Worker__postJoin_at_Thread#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Thread#trigger(Heap, Worker__postJoin_at_Thread(diz, p_1)) }
  Worker__postJoin_at_Thread#everUsed(Worker__postJoin_at_Thread(diz, p_1))
);

procedure Worker__postJoin_at_Thread#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Worker__postJoin_at_Thread
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__preFork_at_Worker
// ==================================================

type PredicateType_Worker__preFork_at_Worker;
function  Worker__preFork_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Worker FrameType;
function  Worker__preFork_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__preFork_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__preFork_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__preFork_at_Worker(diz, p_1)) == Worker__preFork_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1) }
  IsPredicateField(Worker__preFork_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1) }
  getPredWandId(Worker__preFork_at_Worker(diz, p_1)) == 19
);
function  Worker__preFork_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__preFork_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Worker(diz, p_1), Worker__preFork_at_Worker(diz2, p2_1) }
  Worker__preFork_at_Worker(diz, p_1) == Worker__preFork_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__preFork_at_Worker#sm(diz, p_1), Worker__preFork_at_Worker#sm(diz2, p2_1) }
  Worker__preFork_at_Worker#sm(diz, p_1) == Worker__preFork_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, p_1)) }
  Worker__preFork_at_Worker#everUsed(Worker__preFork_at_Worker(diz, p_1))
);

procedure Worker__preFork_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Check definedness of predicate body of Worker__preFork_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume NoPerm <= p_1;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, p_1):=Mask[null, Worker__preFork_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume p_1 != NoPerm;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (testThreadInheritanceReal.vpr@77.1--79.2) [179474]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Worker__postJoin_at_Worker
// ==================================================

type PredicateType_Worker__postJoin_at_Worker;
function  Worker__postJoin_at_Worker(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Worker FrameType;
function  Worker__postJoin_at_Worker#sm(diz: Ref, p_1: Perm): Field PredicateType_Worker__postJoin_at_Worker PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Worker__postJoin_at_Worker(diz, p_1)) }
  PredicateMaskField(Worker__postJoin_at_Worker(diz, p_1)) == Worker__postJoin_at_Worker#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1) }
  IsPredicateField(Worker__postJoin_at_Worker(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1) }
  getPredWandId(Worker__postJoin_at_Worker(diz, p_1)) == 20
);
function  Worker__postJoin_at_Worker#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__postJoin_at_Worker#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Worker(diz, p_1), Worker__postJoin_at_Worker(diz2, p2_1) }
  Worker__postJoin_at_Worker(diz, p_1) == Worker__postJoin_at_Worker(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Worker__postJoin_at_Worker#sm(diz, p_1), Worker__postJoin_at_Worker#sm(diz2, p2_1) }
  Worker__postJoin_at_Worker#sm(diz, p_1) == Worker__postJoin_at_Worker#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(diz, p_1)) }
  Worker__postJoin_at_Worker#everUsed(Worker__postJoin_at_Worker(diz, p_1))
);

procedure Worker__postJoin_at_Worker#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  
  // -- Check definedness of predicate body of Worker__postJoin_at_Worker
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume NoPerm <= p_1;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, p_1):=Mask[null, Worker__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume p_1 != NoPerm;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (testThreadInheritanceReal.vpr@81.1--83.2) [179475]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__output == diz.Worker__input + 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__output (testThreadInheritanceReal.vpr@81.1--83.2) [179476]"}
        HasDirectPerm(Mask, diz, Worker__output);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Worker__input (testThreadInheritanceReal.vpr@81.1--83.2) [179477]"}
        HasDirectPerm(Mask, diz, Worker__input);
    assume Heap[diz, Worker__output] == Heap[diz, Worker__input] + 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Thread__run
// ==================================================

procedure Thread__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, FullPerm):=PostMask[null, Thread__postJoin(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@91.3--91.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run might not hold. There might be insufficient permission to access Thread__postJoin(diz, write) (testThreadInheritanceReal.vpr@89.11--89.51) [179478]"}
        perm <= Mask[null, Thread__postJoin(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__postJoin(diz, FullPerm):=Mask[null, Thread__postJoin(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__start
// ==================================================

procedure Thread__start(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken(diz, FullPerm):=PostMask[null, Thread__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@100.3--100.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testThreadInheritanceReal.vpr@98.11--98.52) [179479]"}
        perm <= Mask[null, Thread__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__joinToken(diz, FullPerm):=Mask[null, Thread__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__join
// ==================================================

procedure Thread__join(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, p_1):=PostMask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@109.3--109.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testThreadInheritanceReal.vpr@107.11--107.47) [179480]"}
        perm <= Mask[null, Thread__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_joinToken_at_Thread
// ==================================================

procedure Thread__open_joinToken_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken_at_Thread(diz, p_1):=PostMask[null, Thread__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@119.3--119.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken_at_Thread(diz, p) (testThreadInheritanceReal.vpr@117.11--117.58) [179481]"}
        perm <= Mask[null, Thread__joinToken_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__joinToken_at_Thread(diz, p_1):=Mask[null, Thread__joinToken_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_preFork_at_Thread
// ==================================================

procedure Thread__open_preFork_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__preFork(diz, p_1):=Mask[null, Thread__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__preFork_at_Thread(diz, p_1):=PostMask[null, Thread__preFork_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@129.3--129.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_preFork_at_Thread might not hold. There might be insufficient permission to access Thread__preFork_at_Thread(diz, p) (testThreadInheritanceReal.vpr@127.11--127.56) [179482]"}
        perm <= Mask[null, Thread__preFork_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__preFork_at_Thread(diz, p_1):=Mask[null, Thread__preFork_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__open_postJoin_at_Thread
// ==================================================

procedure Thread__open_postJoin_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__is_a_Thread(diz):=Mask[null, Thread__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin_at_Thread(diz, p_1):=PostMask[null, Thread__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@139.3--139.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, p) (testThreadInheritanceReal.vpr@137.11--137.57) [179483]"}
        perm <= Mask[null, Thread__postJoin_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin_at_Thread(diz, p_1):=Mask[null, Thread__postJoin_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__Thread
// ==================================================

procedure Thread__Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Thread__is_a_Thread(sys__result):=PostMask[null, Thread__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@148.3--148.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@144.11--144.30) [179484]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritanceReal.vpr@145.11--145.49) [179485]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__Thread might not hold. There might be insufficient permission to access Thread__is_a_Thread(sys__result) (testThreadInheritanceReal.vpr@146.11--146.55) [179486]"}
        perm <= Mask[null, Thread__is_a_Thread(sys__result)];
    }
    Mask := Mask[null, Thread__is_a_Thread(sys__result):=Mask[null, Thread__is_a_Thread(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__Thread_at_Thread
// ==================================================

procedure Thread__Thread_at_Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testThreadInheritanceReal.vpr@157.3--157.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Thread() -- testThreadInheritanceReal.vpr@158.3--158.40
    assume (type_of(diz): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@159.3--159.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritanceReal.vpr@160.3--160.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Thread() -- testThreadInheritanceReal.vpr@161.3--161.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@161.10--161.75) [179487]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritanceReal.vpr@161.10--161.75) [179488]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@162.3--162.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@153.11--153.30) [179489]"}
      sys__result != null;
    assert {:msg "  Postcondition of Thread__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritanceReal.vpr@154.11--154.49) [179490]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Thread__run_at_Thread
// ==================================================

procedure Thread__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__preFork_at_Thread(diz, FullPerm):=Mask[null, Thread__preFork_at_Thread(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin_at_Thread(diz, FullPerm):=PostMask[null, Thread__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@171.3--171.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__run_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin_at_Thread(diz, write) (testThreadInheritanceReal.vpr@169.11--169.61) [179491]"}
        perm <= Mask[null, Thread__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__postJoin_at_Thread(diz, FullPerm):=Mask[null, Thread__postJoin_at_Thread(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__start_at_Thread
// ==================================================

procedure Thread__start_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__preFork(diz, FullPerm):=Mask[null, Thread__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Thread__joinToken(diz, FullPerm):=PostMask[null, Thread__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@180.3--180.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__start_at_Thread might not hold. There might be insufficient permission to access Thread__joinToken(diz, write) (testThreadInheritanceReal.vpr@178.11--178.52) [179492]"}
        perm <= Mask[null, Thread__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Thread__joinToken(diz, FullPerm):=Mask[null, Thread__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Thread__join_at_Thread
// ==================================================

procedure Thread__join_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Thread__joinToken(diz, p_1):=Mask[null, Thread__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Thread__postJoin(diz, p_1):=PostMask[null, Thread__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@189.3--189.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Thread__join_at_Thread might not hold. There might be insufficient permission to access Thread__postJoin(diz, p) (testThreadInheritanceReal.vpr@187.11--187.47) [179493]"}
        perm <= Mask[null, Thread__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Thread__postJoin(diz, p_1):=Mask[null, Thread__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__run
// ==================================================

procedure Worker__run(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, FullPerm):=PostMask[null, Worker__postJoin(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@198.3--198.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run might not hold. There might be insufficient permission to access Worker__postJoin(diz, write) (testThreadInheritanceReal.vpr@196.11--196.51) [179494]"}
        perm <= Mask[null, Worker__postJoin(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin(diz, FullPerm):=Mask[null, Worker__postJoin(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__start
// ==================================================

procedure Worker__start(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken(diz, FullPerm):=PostMask[null, Worker__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@207.3--207.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testThreadInheritanceReal.vpr@205.11--205.52) [179495]"}
        perm <= Mask[null, Worker__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__joinToken(diz, FullPerm):=Mask[null, Worker__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__join
// ==================================================

procedure Worker__join(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, p_1):=PostMask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@216.3--216.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testThreadInheritanceReal.vpr@214.11--214.47) [179496]"}
        perm <= Mask[null, Worker__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_joinToken_at_Thread
// ==================================================

procedure Worker__open_joinToken_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken_at_Thread(diz, p_1):=PostMask[null, Worker__joinToken_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@226.3--226.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_joinToken_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken_at_Thread(diz, p) (testThreadInheritanceReal.vpr@224.11--224.58) [179497]"}
        perm <= Mask[null, Worker__joinToken_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__joinToken_at_Thread(diz, p_1):=Mask[null, Worker__joinToken_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_preFork_at_Thread
// ==================================================

procedure Worker__open_preFork_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork(diz, p_1):=Mask[null, Worker__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__preFork_at_Thread(diz, p_1):=PostMask[null, Worker__preFork_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@236.3--236.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Thread might not hold. There might be insufficient permission to access Worker__preFork_at_Thread(diz, p) (testThreadInheritanceReal.vpr@234.11--234.56) [179498]"}
        perm <= Mask[null, Worker__preFork_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__preFork_at_Thread(diz, p_1):=Mask[null, Worker__preFork_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_postJoin_at_Thread
// ==================================================

procedure Worker__open_postJoin_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Thread(diz):=Mask[null, Worker__is_a_Thread(diz)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Thread(diz, p_1):=PostMask[null, Worker__postJoin_at_Thread(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@246.3--246.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, p) (testThreadInheritanceReal.vpr@244.11--244.57) [179499]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, p_1):=Mask[null, Worker__postJoin_at_Thread(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Thread
// ==================================================

procedure Worker__Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Thread(sys__result):=PostMask[null, Worker__is_a_Thread(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@255.3--255.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@251.11--251.30) [179500]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritanceReal.vpr@252.11--252.49) [179501]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Thread might not hold. There might be insufficient permission to access Worker__is_a_Thread(sys__result) (testThreadInheritanceReal.vpr@253.11--253.55) [179502]"}
        perm <= Mask[null, Worker__is_a_Thread(sys__result)];
    }
    Mask := Mask[null, Worker__is_a_Thread(sys__result):=Mask[null, Worker__is_a_Thread(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Thread_at_Thread
// ==================================================

procedure Worker__Thread_at_Thread(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@263.3--263.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@260.11--260.30) [179503]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Thread_at_Thread might not hold. Assertion type_of(sys__result) == class_Thread() might not hold. (testThreadInheritanceReal.vpr@261.11--261.49) [179504]"}
      (type_of(sys__result): TYPEDomainType) == (class_Thread(): TYPEDomainType);
}

// ==================================================
// Translation of method Worker__run_at_Thread
// ==================================================

procedure Worker__run_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Thread(diz, FullPerm):=PostMask[null, Worker__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@272.3--272.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testThreadInheritanceReal.vpr@270.11--270.61) [179505]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__start_at_Thread
// ==================================================

procedure Worker__start_at_Thread(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork(diz, FullPerm):=Mask[null, Worker__preFork(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__joinToken(diz, FullPerm):=PostMask[null, Worker__joinToken(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@281.3--281.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__start_at_Thread might not hold. There might be insufficient permission to access Worker__joinToken(diz, write) (testThreadInheritanceReal.vpr@279.11--279.52) [179506]"}
        perm <= Mask[null, Worker__joinToken(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__joinToken(diz, FullPerm):=Mask[null, Worker__joinToken(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__join_at_Thread
// ==================================================

procedure Worker__join_at_Thread(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken(diz, p_1):=Mask[null, Worker__joinToken(diz, p_1)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin(diz, p_1):=PostMask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@290.3--290.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__join_at_Thread might not hold. There might be insufficient permission to access Worker__postJoin(diz, p) (testThreadInheritanceReal.vpr@288.11--288.47) [179507]"}
        perm <= Mask[null, Worker__postJoin(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_preFork_at_Worker
// ==================================================

procedure Worker__open_preFork_at_Worker(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork(diz, p_1):=Mask[null, Worker__preFork(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Worker(diz):=Mask[null, Worker__is_a_Worker(diz)] + perm];
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
    PostMask := PostMask[null, Worker__preFork_at_Worker(diz, p_1):=PostMask[null, Worker__preFork_at_Worker(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@300.3--300.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_preFork_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(diz, p) (testThreadInheritanceReal.vpr@298.11--298.56) [179508]"}
        perm <= Mask[null, Worker__preFork_at_Worker(diz, p_1)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(diz, p_1):=Mask[null, Worker__preFork_at_Worker(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__open_postJoin_at_Worker
// ==================================================

procedure Worker__open_postJoin_at_Worker(diz: Ref, current_thread_id: int, p_1: Perm) returns (sys__thrown: Ref)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin(diz, p_1):=Mask[null, Worker__postJoin(diz, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__is_a_Worker(diz):=Mask[null, Worker__is_a_Worker(diz)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Worker(diz, p_1):=PostMask[null, Worker__postJoin_at_Worker(diz, p_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@310.3--310.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, p) (testThreadInheritanceReal.vpr@308.11--308.57) [179509]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(diz, p_1)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, p_1):=Mask[null, Worker__postJoin_at_Worker(diz, p_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Worker
// ==================================================

procedure Worker__Worker(current_thread_id: int, input: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork(sys__result, FullPerm):=PostMask[null, Worker__preFork(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__input:=PostMask[sys__result, Worker__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@319.11--319.45) [179510]"}
        HasDirectPerm(PostMask, sys__result, Worker__input);
    assume PostHeap[sys__result, Worker__input] == input;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__is_a_Worker(sys__result):=PostMask[null, Worker__is_a_Worker(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@322.3--322.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@315.11--315.30) [179511]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritanceReal.vpr@316.11--316.49) [179512]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__preFork(sys__result, write) (testThreadInheritanceReal.vpr@317.11--317.58) [179513]"}
        perm <= Mask[null, Worker__preFork(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork(sys__result, FullPerm):=Mask[null, Worker__preFork(sys__result, FullPerm)] - perm];
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@318.11--318.51) [179514]"}
      Mask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__input];
    Mask := Mask[sys__result, Worker__input:=Mask[sys__result, Worker__input] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritanceReal.vpr@319.11--319.45) [179515]"}
      Heap[sys__result, Worker__input] == input;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(sys__result) (testThreadInheritanceReal.vpr@320.11--320.55) [179516]"}
        perm <= Mask[null, Worker__is_a_Worker(sys__result)];
    }
    Mask := Mask[null, Worker__is_a_Worker(sys__result):=Mask[null, Worker__is_a_Worker(sys__result)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__Worker_at_Worker
// ==================================================

procedure Worker__Worker_at_Worker(current_thread_id: int, input: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_3: int;
  var __flatten_11: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=PostMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__input:=PostMask[sys__result, Worker__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@331.11--331.45) [179517]"}
        HasDirectPerm(PostMask, sys__result, Worker__input);
    assume PostHeap[sys__result, Worker__input] == input;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Worker__input, Worker__output) -- testThreadInheritanceReal.vpr@336.3--336.44
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + FullPerm];
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Worker() -- testThreadInheritanceReal.vpr@337.3--337.40
    assume (type_of(diz): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := input -- testThreadInheritanceReal.vpr@338.3--338.23
    __flatten_3 := input;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := __flatten_3 -- testThreadInheritanceReal.vpr@339.3--339.30
    __flatten_11 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__input := __flatten_11 -- testThreadInheritanceReal.vpr@340.3--340.36
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritanceReal.vpr@340.3--340.36) [179518]"}
      FullPerm == Mask[diz, Worker__input];
    Heap := Heap[diz, Worker__input:=__flatten_11];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__preFork_at_Thread(diz, write), write) -- testThreadInheritanceReal.vpr@341.3--341.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__preFork_at_Thread#trigger(Heap, Worker__preFork_at_Thread(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Thread(diz, FullPerm)] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, Worker__preFork_at_Thread(diz, FullPerm))) {
      Heap := Heap[null, Worker__preFork_at_Thread#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__preFork_at_Thread(diz, FullPerm):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__preFork_at_Worker(diz, write), write) -- testThreadInheritanceReal.vpr@342.3--342.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion write >= none might not hold. (testThreadInheritanceReal.vpr@342.3--342.57) [179523]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Thread(diz, write) (testThreadInheritanceReal.vpr@342.3--342.57) [179525]"}
        perm <= Mask[null, Worker__preFork_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritanceReal.vpr@342.3--342.57) [179526]"}
      Mask[diz, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__input];
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] - wildcard];
    assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. Assertion write != none might not hold. (testThreadInheritanceReal.vpr@342.3--342.57) [179527]"}
      FullPerm != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritanceReal.vpr@342.3--342.57) [179529]"}
        perm <= Mask[diz, Worker__output];
    }
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] - perm];
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
    if (!HasDirectPerm(Mask, null, Worker__preFork_at_Worker(diz, FullPerm))) {
      Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__preFork_at_Worker(diz, FullPerm):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
      { newPMask[o_15, f_20] }
      Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][o_15, f_20] || Heap[null, Worker__preFork_at_Thread#sm(diz, FullPerm)][o_15, f_20] ==> newPMask[o_15, f_20]
    );
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=newPMask];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__input:=true]];
    Heap := Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__preFork_at_Worker#sm(diz, FullPerm)][diz, Worker__output:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritanceReal.vpr@343.3--343.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (type_of(sys__result) == class_Worker() &&
  //   (acc(Worker__preFork_at_Worker(sys__result, write), write) &&
  //   (acc(sys__result.Worker__input, wildcard) &&
  //   sys__result.Worker__input == input))) -- testThreadInheritanceReal.vpr@344.3--344.220
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@344.10--344.220) [179531]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritanceReal.vpr@344.10--344.220) [179532]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testThreadInheritanceReal.vpr@344.10--344.220) [179534]"}
        perm <= AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    AssertMask := AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=AssertMask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@344.10--344.220) [179535]"}
      AssertMask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__input];
    AssertMask := AssertMask[sys__result, Worker__input:=AssertMask[sys__result, Worker__input] - wildcard];
    
    // -- Check definedness of sys__result.Worker__input == input
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@344.10--344.220) [179536]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__input);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritanceReal.vpr@344.10--344.220) [179537]"}
      AssertHeap[sys__result, Worker__input] == input;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@345.3--345.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@327.11--327.30) [179538]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion type_of(sys__result) == class_Worker() might not hold. (testThreadInheritanceReal.vpr@328.11--328.49) [179539]"}
      (type_of(sys__result): TYPEDomainType) == (class_Worker(): TYPEDomainType);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access Worker__preFork_at_Worker(sys__result, write) (testThreadInheritanceReal.vpr@329.11--329.68) [179540]"}
        perm <= Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm):=Mask[null, Worker__preFork_at_Worker(sys__result, FullPerm)] - perm];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. There might be insufficient permission to access sys__result.Worker__input (testThreadInheritanceReal.vpr@330.11--330.51) [179541]"}
      Mask[sys__result, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__input];
    Mask := Mask[sys__result, Worker__input:=Mask[sys__result, Worker__input] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker_at_Worker might not hold. Assertion sys__result.Worker__input == input might not hold. (testThreadInheritanceReal.vpr@331.11--331.45) [179542]"}
      Heap[sys__result, Worker__input] == input;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__run_at_Worker
// ==================================================

procedure Worker__run_at_Worker(diz: Ref, current_thread_id: int) returns (sys__thrown: Ref)
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
  var wildcard: real where wildcard > NoPerm;
  var __flatten_4: int;
  var __flatten_12: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] + perm];
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
    PostMask := PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm):=PostMask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Worker__preFork_at_Worker(diz, write), write) -- testThreadInheritanceReal.vpr@356.3--356.59
    assume Worker__preFork_at_Worker#trigger(Heap, Worker__preFork_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__preFork_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__preFork_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__preFork_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__preFork_at_Worker(diz, write) (testThreadInheritanceReal.vpr@356.3--356.59) [179545]"}
        perm <= Mask[null, Worker__preFork_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__preFork_at_Worker(diz, FullPerm):=Mask[null, Worker__preFork_at_Worker(diz, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__preFork_at_Worker(diz, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__preFork_at_Worker(diz, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    Mask := Mask[null, Worker__preFork_at_Thread(diz, FullPerm):=Mask[null, Worker__preFork_at_Thread(diz, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__preFork_at_Worker(diz, FullPerm), Heap[null, Worker__preFork_at_Worker(diz, FullPerm)], Worker__preFork_at_Thread(diz, FullPerm), Heap[null, Worker__preFork_at_Thread(diz, FullPerm)]);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] + perm];
    assume state(Heap, Mask);
    assume FullPerm != NoPerm;
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := diz.Worker__input + 1 -- testThreadInheritanceReal.vpr@357.3--357.39
    
    // -- Check definedness of diz.Worker__input + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritanceReal.vpr@357.3--357.39) [179548]"}
        HasDirectPerm(Mask, diz, Worker__input);
    __flatten_4 := Heap[diz, Worker__input] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := __flatten_4 -- testThreadInheritanceReal.vpr@358.3--358.30
    __flatten_12 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__output := __flatten_12 -- testThreadInheritanceReal.vpr@359.3--359.37
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritanceReal.vpr@359.3--359.37) [179549]"}
      FullPerm == Mask[diz, Worker__output];
    Heap := Heap[diz, Worker__output:=__flatten_12];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Thread(diz, write), write) -- testThreadInheritanceReal.vpr@360.3--360.58
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__postJoin_at_Thread#trigger(Heap, Worker__postJoin_at_Thread(diz, FullPerm));
    assume Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Thread(diz, FullPerm))) {
      Heap := Heap[null, Worker__postJoin_at_Thread#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__postJoin_at_Thread(diz, FullPerm):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Worker__postJoin_at_Worker(diz, write), write) -- testThreadInheritanceReal.vpr@361.3--361.58
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion write >= none might not hold. (testThreadInheritanceReal.vpr@361.3--361.58) [179554]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Thread(diz, write) (testThreadInheritanceReal.vpr@361.3--361.58) [179556]"}
        perm <= Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Thread(diz, FullPerm):=Mask[null, Worker__postJoin_at_Thread(diz, FullPerm)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(Worker__postJoin_at_Worker(diz, FullPerm), Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)], Worker__postJoin_at_Thread(diz, FullPerm), Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)]);
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__input (testThreadInheritanceReal.vpr@361.3--361.58) [179557]"}
      Mask[diz, Worker__input] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Worker__input];
    Mask := Mask[diz, Worker__input:=Mask[diz, Worker__input] - wildcard];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion write != none might not hold. (testThreadInheritanceReal.vpr@361.3--361.58) [179558]"}
      FullPerm != NoPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. There might be insufficient permission to access diz.Worker__output (testThreadInheritanceReal.vpr@361.3--361.58) [179560]"}
        perm <= Mask[diz, Worker__output];
    }
    Mask := Mask[diz, Worker__output:=Mask[diz, Worker__output] - perm];
    assert {:msg "  Folding Worker__postJoin_at_Worker(diz, write) might fail. Assertion diz.Worker__output == diz.Worker__input + 1 might not hold. (testThreadInheritanceReal.vpr@361.3--361.58) [179561]"}
      Heap[diz, Worker__output] == Heap[diz, Worker__input] + 1;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(diz, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(diz, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(diz, FullPerm)], CombineFrames(FrameFragment(Heap[diz, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Worker__output]))));
    if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(diz, FullPerm))) {
      Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Worker__postJoin_at_Worker(diz, FullPerm):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
      { newPMask[o_16, f_21] }
      Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][o_16, f_21] || Heap[null, Worker__postJoin_at_Thread#sm(diz, FullPerm)][o_16, f_21] ==> newPMask[o_16, f_21]
    );
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=newPMask];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__input:=true]];
    Heap := Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm):=Heap[null, Worker__postJoin_at_Worker#sm(diz, FullPerm)][diz, Worker__output:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__run_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin_at_Worker(diz, write) (testThreadInheritanceReal.vpr@352.11--352.61) [179563]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(diz, FullPerm):=Mask[null, Worker__postJoin_at_Worker(diz, FullPerm)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Main__main
// ==================================================

procedure Main__main(current_thread_id: int, args: (Seq Ref)) returns (sys__thrown: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: Ref;
  var __flatten_5: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleHeap: HeapType;
  var arg_p: Perm;
  var arg_p_1: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[w_2, $allocated];
    assume Heap[__flatten_5, $allocated];
  
  // -- Translating statement: sys__thrown, __flatten_5 := Worker__Worker(current_thread_id, 7) -- testThreadInheritanceReal.vpr@369.3--369.67
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritanceReal.vpr@369.3--369.67) [179564]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc sys__thrown, __flatten_5;
    
    // -- Inhaling postcondition
      assume __flatten_5 != null;
      assume (type_of(__flatten_5): TYPEDomainType) == (class_Worker(): TYPEDomainType);
      perm := FullPerm;
      Mask := Mask[null, Worker__preFork(__flatten_5, FullPerm):=Mask[null, Worker__preFork(__flatten_5, FullPerm)] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_5 != null;
      Mask := Mask[__flatten_5, Worker__input:=Mask[__flatten_5, Worker__input] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_5, Worker__input] == 7;
      perm := FullPerm;
      Mask := Mask[null, Worker__is_a_Worker(__flatten_5):=Mask[null, Worker__is_a_Worker(__flatten_5)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume Heap[__flatten_5, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w := __flatten_5 -- testThreadInheritanceReal.vpr@370.3--370.19
    w_2 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__input == 7 -- testThreadInheritanceReal.vpr@371.3--371.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of w.Worker__input == 7
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__input (testThreadInheritanceReal.vpr@371.10--371.30) [179565]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__input);
    assert {:msg "  Assert might fail. Assertion w.Worker__input == 7 might not hold. (testThreadInheritanceReal.vpr@371.10--371.30) [179566]"}
      Heap[w_2, Worker__input] == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__start(w, current_thread_id) -- testThreadInheritanceReal.vpr@372.3--372.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion w != null might not hold. (testThreadInheritanceReal.vpr@372.3--372.53) [179567]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__start might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritanceReal.vpr@372.3--372.53) [179568]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__start might not hold. There might be insufficient permission to access Worker__preFork(w, write) (testThreadInheritanceReal.vpr@372.3--372.53) [179569]"}
          perm <= Mask[null, Worker__preFork(w_2, FullPerm)];
      }
      Mask := Mask[null, Worker__preFork(w_2, FullPerm):=Mask[null, Worker__preFork(w_2, FullPerm)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w_2, FullPerm):=Mask[null, Worker__joinToken(w_2, FullPerm)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__join(w, current_thread_id, write) -- testThreadInheritanceReal.vpr@373.3--373.59
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion w != null might not hold. (testThreadInheritanceReal.vpr@373.3--373.59) [179570]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__join might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritanceReal.vpr@373.3--373.59) [179571]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__join might not hold. There might be insufficient permission to access Worker__joinToken(w, write) (testThreadInheritanceReal.vpr@373.3--373.59) [179572]"}
          perm <= Mask[null, Worker__joinToken(w_2, arg_p)];
      }
      Mask := Mask[null, Worker__joinToken(w_2, arg_p):=Mask[null, Worker__joinToken(w_2, arg_p)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin(w_2, arg_p):=Mask[null, Worker__postJoin(w_2, arg_p)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__input == 7 -- testThreadInheritanceReal.vpr@374.3--374.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of w.Worker__input == 7
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__input (testThreadInheritanceReal.vpr@374.10--374.30) [179573]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__input);
    assert {:msg "  Assert might fail. Assertion w.Worker__input == 7 might not hold. (testThreadInheritanceReal.vpr@374.10--374.30) [179574]"}
      Heap[w_2, Worker__input] == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__thrown := Worker__open_postJoin_at_Worker(w, current_thread_id, write) -- testThreadInheritanceReal.vpr@375.3--375.78
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p_1 := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion w != null might not hold. (testThreadInheritanceReal.vpr@375.3--375.78) [179575]"}
        w_2 != null;
      assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testThreadInheritanceReal.vpr@375.3--375.78) [179576]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__postJoin(w, write) (testThreadInheritanceReal.vpr@375.3--375.78) [179577]"}
          perm <= Mask[null, Worker__postJoin(w_2, arg_p_1)];
      }
      Mask := Mask[null, Worker__postJoin(w_2, arg_p_1):=Mask[null, Worker__postJoin(w_2, arg_p_1)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__open_postJoin_at_Worker might not hold. There might be insufficient permission to access Worker__is_a_Worker(w) (testThreadInheritanceReal.vpr@375.3--375.78) [179578]"}
          perm <= Mask[null, Worker__is_a_Worker(w_2)];
      }
      Mask := Mask[null, Worker__is_a_Worker(w_2):=Mask[null, Worker__is_a_Worker(w_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sys__thrown;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__postJoin_at_Worker(w_2, arg_p_1):=Mask[null, Worker__postJoin_at_Worker(w_2, arg_p_1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[sys__thrown, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Worker__postJoin_at_Worker(w, write), write) -- testThreadInheritanceReal.vpr@376.3--376.58
    assume Worker__postJoin_at_Worker#trigger(Heap, Worker__postJoin_at_Worker(w_2, FullPerm));
    assume Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm)] == CombineFrames(Heap[null, Worker__postJoin_at_Thread(w_2, FullPerm)], CombineFrames(FrameFragment(Heap[w_2, Worker__input]), ConditionalFrame(FullPerm, FrameFragment(Heap[w_2, Worker__output]))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Worker__postJoin_at_Worker(w, write) might fail. There might be insufficient permission to access Worker__postJoin_at_Worker(w, write) (testThreadInheritanceReal.vpr@376.3--376.58) [179581]"}
        perm <= Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm)];
    }
    Mask := Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm):=Mask[null, Worker__postJoin_at_Worker(w_2, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Worker__postJoin_at_Worker(w_2, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    Mask := Mask[null, Worker__postJoin_at_Thread(w_2, FullPerm):=Mask[null, Worker__postJoin_at_Thread(w_2, FullPerm)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(Worker__postJoin_at_Worker(w_2, FullPerm), Heap[null, Worker__postJoin_at_Worker(w_2, FullPerm)], Worker__postJoin_at_Thread(w_2, FullPerm), Heap[null, Worker__postJoin_at_Thread(w_2, FullPerm)]);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume w_2 != null;
    Mask := Mask[w_2, Worker__input:=Mask[w_2, Worker__input] + perm];
    assume state(Heap, Mask);
    assume FullPerm != NoPerm;
    perm := FullPerm;
    assume w_2 != null;
    Mask := Mask[w_2, Worker__output:=Mask[w_2, Worker__output] + perm];
    assume state(Heap, Mask);
    assume Heap[w_2, Worker__output] == Heap[w_2, Worker__input] + 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert w.Worker__output == 8 -- testThreadInheritanceReal.vpr@377.3--377.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of w.Worker__output == 8
      assert {:msg "  Assert might fail. There might be insufficient permission to access w.Worker__output (testThreadInheritanceReal.vpr@377.10--377.31) [179584]"}
        HasDirectPerm(ExhaleWellDef0Mask, w_2, Worker__output);
    assert {:msg "  Assert might fail. Assertion w.Worker__output == 8 might not hold. (testThreadInheritanceReal.vpr@377.10--377.31) [179585]"}
      Heap[w_2, Worker__output] == 8;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__Main
// ==================================================

procedure Main__Main(current_thread_id: int) returns (sys__thrown: Ref, sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    assume (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testThreadInheritanceReal.vpr@386.3--386.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale type_of(diz) == class_Main() -- testThreadInheritanceReal.vpr@387.3--387.38
    assume (type_of(diz): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testThreadInheritanceReal.vpr@388.3--388.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null && type_of(sys__result) == class_Main() -- testThreadInheritanceReal.vpr@389.3--389.73
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@389.10--389.73) [179586]"}
      sys__result != null;
    assert {:msg "  Assert might fail. Assertion type_of(sys__result) == class_Main() might not hold. (testThreadInheritanceReal.vpr@389.10--389.73) [179587]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testThreadInheritanceReal.vpr@390.3--390.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result != null might not hold. (testThreadInheritanceReal.vpr@382.11--382.30) [179588]"}
      sys__result != null;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion type_of(sys__result) == class_Main() might not hold. (testThreadInheritanceReal.vpr@383.11--383.47) [179589]"}
      (type_of(sys__result): TYPEDomainType) == (class_Main(): TYPEDomainType);
}