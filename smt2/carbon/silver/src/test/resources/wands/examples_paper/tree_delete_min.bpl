// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:17:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/tree_delete_min.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/tree_delete_min-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_28: Ref, f_32: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_28, f_32] }
  Heap[o_28, $allocated] ==> Heap[Heap[o_28, f_32], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref, f_33: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, f_33] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_29, f_33) ==> Heap[o_29, f_33] == ExhaleHeap[o_29, f_33]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_29, $allocated] ==> ExhaleHeap[o_29, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_28: Ref, f_34: (Field A B), v: B ::
  { Heap[o_28, f_34:=v] }
  succHeap(Heap, Heap[o_28, f_34:=v])
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
// - height 1: vals
// - height 0: val
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int)): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int)): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int)): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: (Seq int), arg6: Ref, arg7: Ref, arg8: (Seq int), arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: (Seq int), arg6_2: Ref, arg7_2: Ref, arg8_2: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique v_36: Field NormalField int;
axiom !IsPredicateField(v_36);
axiom !IsWandField(v_36);
const unique l_8: Field NormalField Ref;
axiom !IsPredicateField(l_8);
axiom !IsWandField(l_8);
const unique r_6: Field NormalField Ref;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);

// ==================================================
// Translation of function val
// ==================================================

// Uninterpreted function definitions
function  val_2(Heap: HeapType, x: Ref): int;
function  val'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { val_2(Heap, x) }
  val_2(Heap, x) == val'(Heap, x) && dummyFunction(val#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { val'(Heap, x) }
  dummyFunction(val#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), val_2(Heap, x) } { state(Heap, Mask), val#triggerStateless(x), Tree#trigger(Heap, Tree(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x != null ==> val_2(Heap, x) == Heap[x, v_36]
);

// Framing axioms
function  val#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), val'(Heap, x) }
  state(Heap, Mask) ==> val'(Heap, x) == val#frame(Heap[null, Tree(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  val#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  val#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure val#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume x != null;
    perm := FullPerm;
    Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Tree(x), write) in x.v)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Tree#trigger(UnfoldingHeap, Tree(x));
      assume UnfoldingHeap[null, Tree(x)] == FrameFragment((if x == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[x, v_36]), CombineFrames(FrameFragment(UnfoldingHeap[x, l_8]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l_8])], CombineFrames(FrameFragment(UnfoldingHeap[x, r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_6])]))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@28.1--30.34) [120677]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(x)];
      if (x == null) {
      } else {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, v_36:=UnfoldingMask[x, v_36] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, l_8:=UnfoldingMask[x, l_8] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, l_8]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, l_8])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, l_8]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, l_8])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, r_6]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, r_6])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_6])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (tree_delete_min.vpr@28.1--30.34) [120678]"}
        HasDirectPerm(UnfoldingMask, x, v_36);
      
      // -- Free assumptions (exp module)
        if (x == null) {
        } else {
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, v_36:=true]];
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, l_8:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Tree#sm(x)][o_15, f_20] || Heap[null, Tree#sm(Heap[x, l_8])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, r_6:=true]];
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Tree#sm(x)][o_16, f_21] || Heap[null, Tree#sm(Heap[x, r_6])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, v_36];
}

// ==================================================
// Translation of function vals
// ==================================================

// Uninterpreted function definitions
function  vals(Heap: HeapType, x: Ref): Seq int;
function  vals'(Heap: HeapType, x: Ref): Seq int;
axiom (forall Heap: HeapType, x: Ref ::
  { vals(Heap, x) }
  vals(Heap, x) == vals'(Heap, x) && dummyFunction(vals#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { vals'(Heap, x) }
  dummyFunction(vals#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), vals(Heap, x) } { state(Heap, Mask), vals#triggerStateless(x), Tree#trigger(Heap, Tree(x)), Tree#trigger(Heap, Tree(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> vals(Heap, x) == (if x == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(vals'(Heap, Heap[x, l_8]), Seq#Singleton(Heap[x, v_36])), vals'(Heap, Heap[x, r_6])))
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == null ? Seq[Int]() : (unfolding acc(Tree(x), write) in vals(x.l) ++ Seq(x.v) ++ vals(x.r)))
      if (x == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Tree#trigger(UnfoldingHeap, Tree(x));
        assume UnfoldingHeap[null, Tree(x)] == FrameFragment((if x == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[x, v_36]), CombineFrames(FrameFragment(UnfoldingHeap[x, l_8]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l_8])], CombineFrames(FrameFragment(UnfoldingHeap[x, r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_6])]))))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@32.1--34.90) [120679]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(x)];
        if (x == null) {
        } else {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, v_36:=UnfoldingMask[x, v_36] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, l_8:=UnfoldingMask[x, l_8] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, l_8]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, l_8])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, l_8]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, l_8])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, r_6]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, r_6])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_6])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.l (tree_delete_min.vpr@32.1--34.90) [120680]"}
          HasDirectPerm(UnfoldingMask, x, l_8);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.l) (tree_delete_min.vpr@34.54--34.63) [120681]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(UnfoldingHeap[x, l_8])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume vals#trigger(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l_8])], UnfoldingHeap[x, l_8]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (tree_delete_min.vpr@32.1--34.90) [120682]"}
          HasDirectPerm(UnfoldingMask, x, v_36);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (tree_delete_min.vpr@32.1--34.90) [120683]"}
          HasDirectPerm(UnfoldingMask, x, r_6);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.r) (tree_delete_min.vpr@34.79--34.88) [120684]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(UnfoldingHeap[x, r_6])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume vals#trigger(UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_6])], UnfoldingHeap[x, r_6]);
        }
        
        // -- Free assumptions (exp module)
          if (x == null) {
          } else {
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, v_36:=true]];
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, l_8:=true]];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, Tree#sm(x)][o_52, f_55] || Heap[null, Tree#sm(Heap[x, l_8])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, Tree#sm(x):=newPMask];
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, r_6:=true]];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, Tree#sm(x)][o_53, f_56] || Heap[null, Tree#sm(Heap[x, r_6])][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, Tree#sm(x):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if x == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(vals(Heap, Heap[x, l_8]), Seq#Singleton(Heap[x, v_36])), vals(Heap, Heap[x, r_6])));
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
  getPredWandId(Tree(x)) == 0
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
    if (x == null) {
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, v_36:=Mask[x, v_36] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, l_8:=Mask[x, l_8] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Tree(x.l), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.l (tree_delete_min.vpr@20.1--26.2) [120685]"}
          HasDirectPerm(Mask, x, l_8);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, l_8]):=Mask[null, Tree(Heap[x, l_8])] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, r_6:=Mask[x, r_6] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Tree(x.r), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (tree_delete_min.vpr@20.1--26.2) [120686]"}
          HasDirectPerm(Mask, x, r_6);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, r_6]):=Mask[null, Tree(Heap[x, r_6])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tree_delete_min
// ==================================================

procedure tree_delete_min(x: Ref) returns (z: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var p_1: Ref;
  var newVersion: FrameType;
  var plvs: (Seq int);
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_6: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var arg_1_1: Ref;
  var b_7: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_8: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_9: bool;
  var arg_2: Ref;
  var b_10: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var oldP: Ref;
  var oldPlvs: (Seq int);
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_12: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_11: bool;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_13: bool;
  var b_14: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var b_15: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var arg_3: Ref;
  var b_16: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_17: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var arg_4: Ref;
  var b_18: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_19: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_20: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var b_21: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_22: bool;
  var b_23: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var arg_5: Ref;
  var b_24_1: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_25: bool;
  var arg_6: Ref;
  var b_26: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume x != null;
    perm := FullPerm;
    Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, Tree(z):=PostMask[null, Tree(z)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of vals(z) == old(vals(x))[1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(z) (tree_delete_min.vpr@43.11--43.18) [120687]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Tree(z)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@43.26--43.33) [120688]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(vals(PostHeap, z), Seq#Drop(vals(oldHeap, x), 1));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[p_1, $allocated];
  
  // -- Translating statement: p := x -- tree_delete_min.vpr@45.3--45.18
    p_1 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Tree(p), write) -- tree_delete_min.vpr@51.3--51.22
    assume Tree#trigger(Heap, Tree(p_1));
    assume Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Heap[p_1, v_36]), CombineFrames(FrameFragment(Heap[p_1, l_8]), CombineFrames(Heap[null, Tree(Heap[p_1, l_8])], CombineFrames(FrameFragment(Heap[p_1, r_6]), Heap[null, Tree(Heap[p_1, r_6])]))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree(p) might fail. There might be insufficient permission to access Tree(p) (tree_delete_min.vpr@51.3--51.22) [120691]"}
        perm <= Mask[null, Tree(p_1)];
    }
    Mask := Mask[null, Tree(p_1):=Mask[null, Tree(p_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Tree(p_1))) {
        havoc newVersion;
        Heap := Heap[null, Tree(p_1):=newVersion];
      }
    if (p_1 == null) {
    } else {
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, v_36:=Mask[p_1, v_36] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, l_8:=Mask[p_1, l_8] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree(p_1), Heap[null, Tree(p_1)], Tree(Heap[p_1, l_8]), Heap[null, Tree(Heap[p_1, l_8])]);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, r_6:=Mask[p_1, r_6] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[p_1, r_6]):=Mask[null, Tree(Heap[p_1, r_6])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree(p_1), Heap[null, Tree(p_1)], Tree(Heap[p_1, r_6]), Heap[null, Tree(Heap[p_1, r_6])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: plvs := vals(p.l) -- tree_delete_min.vpr@52.3--52.20
    
    // -- Check definedness of vals(p.l)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@52.3--52.20) [120697]"}
        HasDirectPerm(Mask, p_1, l_8);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@52.11--52.20) [120698]"}
          NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l_8])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    plvs := vals(Heap, Heap[p_1, l_8]);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (p.l == null) -- tree_delete_min.vpr@54.3--90.4
    
    // -- Check definedness of p.l == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@54.7--54.18) [120699]"}
        HasDirectPerm(Mask, p_1, l_8);
    if (Heap[p_1, l_8] == null) {
      
      // -- Translating statement: z := p.r -- tree_delete_min.vpr@55.5--55.13
        
        // -- Check definedness of p.r
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@55.5--55.13) [120700]"}
            HasDirectPerm(Mask, p_1, r_6);
        z := Heap[p_1, r_6];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert vals(x.l) == Seq[Int]() -- tree_delete_min.vpr@57.5--57.35
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of vals(x.l) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.l (tree_delete_min.vpr@57.12--57.35) [120701]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, l_8);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.l) (tree_delete_min.vpr@57.12--57.21) [120702]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree(ExhaleWellDef0Heap[x, l_8])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion vals(x.l) == Seq[Int]() might not hold. (tree_delete_min.vpr@57.12--57.35) [120703]"}
          Seq#Equal(vals(Heap, Heap[x, l_8]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: package acc(p.l, write) &&
  // (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --*
  // acc(Tree(x), write) && vals(x) == old(vals(x))[1..] {
  //   fold acc(Tree(p), write)
  // } -- tree_delete_min.vpr@59.5--61.6
        havoc Ops_1Heap;
        Ops_1Mask := ZeroMask;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc UsedHeap;
        UsedMask := ZeroMask;
        b_2 := b_2 && state(UsedHeap, UsedMask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1 && p_1 != null;
            Ops_1Mask := Ops_1Mask[p_1, l_8:=Ops_1Mask[p_1, l_8] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              if (b_1_1) {
                
                // -- Check definedness of acc(Tree(p.l), write)
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@59.5--61.6) [120704]"}
                    HasDirectPerm(Ops_1Mask, p_1, l_8);
              }
              perm := FullPerm;
              b_1_1 := b_1_1;
              Ops_1Mask := Ops_1Mask[null, Tree(Ops_1Heap[p_1, l_8]):=Ops_1Mask[null, Tree(Ops_1Heap[p_1, l_8])] + perm];
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            }
            if (b_1_1) {
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
              if (b_1_1) {
                
                // -- Check definedness of vals(p.l) == plvs[1..]
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@59.5--61.6) [120705]"}
                    HasDirectPerm(Ops_1Mask, p_1, l_8);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Ops_1Mask;
                    ExhaleWellDef0Heap := Ops_1Heap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@59.14--59.15) [120706]"}
                      NoPerm < perm ==> NoPerm < Ops_1Mask[null, Tree(Ops_1Heap[p_1, l_8])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                    Ops_1Heap := ExhaleHeap;
                    // Stop execution
                    b_1_1 := false;
                  }
              }
              b_1_1 := b_1_1 && Seq#Equal(vals(Ops_1Heap, Ops_1Heap[p_1, l_8]), Seq#Drop(plvs, 1));
            }
          }
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- Translating statement: label lhs1 -- tree_delete_min.vpr@59.13--59.22
          lhs1:
          Labellhs1Mask := Ops_1Mask;
          Labellhs1Heap := Ops_1Heap;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        boolCur := true;
        if (b_1_1) {
          
          // -- Translating statement: fold acc(Tree(p), write) -- tree_delete_min.vpr@60.9--60.26
            ExhaleWellDef0Mask := Ops_1Mask;
            ExhaleWellDef0Heap := Ops_1Heap;
            havoc Used_1Heap;
            Used_1Mask := ZeroMask;
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            if (b_1_1) {
              if (p_1 == null) {
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
              } else {
                
                // -- Transfer of acc(p.v, write)
                  rcvLocal := p_1;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[rcvLocal, v_36] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.v, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [120709]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, v_36];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, v_36:=Used_1Mask[rcvLocal, v_36] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, v_36] == Used_1Heap[rcvLocal, v_36];
                        Ops_1Mask := Ops_1Mask[rcvLocal, v_36:=Ops_1Mask[rcvLocal, v_36] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, v_36];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, v_36:=Used_1Mask[rcvLocal, v_36] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, v_36] == Used_1Heap[rcvLocal, v_36];
                        Mask := Mask[rcvLocal, v_36:=Mask[rcvLocal, v_36] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, v_36:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.v (tree_delete_min.vpr@60.9--60.26) [120710]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, v_36] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_3 := b_1_1 && b_2_1;
                    b_3 := b_3 && state(ResultHeap, ResultMask);
                    b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
                    b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
                    b_3 := b_3 && state(ResultHeap, ResultMask);
                  b_1_1 := b_1_1 && b_3;
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
                
                // -- Transfer of acc(p.l, write)
                  rcvLocal := p_1;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[rcvLocal, l_8] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.l, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [120711]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, l_8];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, l_8:=Used_1Mask[rcvLocal, l_8] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, l_8] == Used_1Heap[rcvLocal, l_8];
                        Ops_1Mask := Ops_1Mask[rcvLocal, l_8:=Ops_1Mask[rcvLocal, l_8] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, l_8];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, l_8:=Used_1Mask[rcvLocal, l_8] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, l_8] == Used_1Heap[rcvLocal, l_8];
                        Mask := Mask[rcvLocal, l_8:=Mask[rcvLocal, l_8] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, l_8:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@60.9--60.26) [120712]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, l_8] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_4 := b_1_1 && b_2_1;
                    b_4 := b_4 && state(Result_1Heap, Result_1Mask);
                    b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
                    b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
                    b_4 := b_4 && state(Result_1Heap, Result_1Mask);
                  b_1_1 := b_1_1 && b_4;
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
                
                // -- Transfer of acc(Tree(p.l), write)
                  
                  // -- checking if access predicate defined in used state
                    if (b_1_1 && b_2_1) {
                      if (b_1_1) {
                        
                        // -- Check definedness of acc(Tree(p.l), write)
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@60.9--60.26) [120713]"}
                            HasDirectPerm(Result_1Mask, p_1, l_8);
                      }
                    }
                  arg_1 := Result_1Heap[p_1, l_8];
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[null, Tree(arg_1)] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.l), write) might be negative. (tree_delete_min.vpr@60.9--60.26) [120714]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[null, Tree(arg_1)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1):=Used_1Mask[null, Tree(arg_1)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                        Ops_1Mask := Ops_1Mask[null, Tree(arg_1):=Ops_1Mask[null, Tree(arg_1)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg_1)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1):=Used_1Mask[null, Tree(arg_1)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                        Mask := Mask[null, Tree(arg_1):=Mask[null, Tree(arg_1)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                          { newPMask[o_26, f_29] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_26, f_29] || Heap[null, Tree#sm(Heap[p_1, l_8])][o_26, f_29] ==> newPMask[o_26, f_29]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@60.9--60.26) [120715]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Tree(arg_1)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_5 := b_1_1 && b_2_1;
                    b_5 := b_5 && state(Result_2Heap, Result_2Mask);
                    b_5 := b_5 && sumMask(Result_2Mask, Ops_1Mask, Used_1Mask);
                    b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_2Heap, Used_1Mask);
                    b_5 := b_5 && state(Result_2Heap, Result_2Mask);
                  b_1_1 := b_1_1 && b_5;
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
                
                // -- Transfer of acc(p.r, write)
                  rcvLocal := p_1;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[rcvLocal, r_6] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.r, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [120716]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, r_6];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, r_6:=Used_1Mask[rcvLocal, r_6] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, r_6] == Used_1Heap[rcvLocal, r_6];
                        Ops_1Mask := Ops_1Mask[rcvLocal, r_6:=Ops_1Mask[rcvLocal, r_6] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, r_6];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, r_6:=Used_1Mask[rcvLocal, r_6] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, r_6] == Used_1Heap[rcvLocal, r_6];
                        Mask := Mask[rcvLocal, r_6:=Mask[rcvLocal, r_6] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, r_6:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@60.9--60.26) [120717]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, r_6] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_6 := b_1_1 && b_2_1;
                    b_6 := b_6 && state(Result_3Heap, Result_3Mask);
                    b_6 := b_6 && sumMask(Result_3Mask, Ops_1Mask, Used_1Mask);
                    b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_3Heap, Used_1Mask);
                    b_6 := b_6 && state(Result_3Heap, Result_3Mask);
                  b_1_1 := b_1_1 && b_6;
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
                
                // -- Transfer of acc(Tree(p.r), write)
                  
                  // -- checking if access predicate defined in used state
                    if (b_1_1 && b_2_1) {
                      if (b_1_1) {
                        
                        // -- Check definedness of acc(Tree(p.r), write)
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@60.9--60.26) [120718]"}
                            HasDirectPerm(Result_3Mask, p_1, r_6);
                      }
                    }
                  arg_1_1 := Result_3Heap[p_1, r_6];
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[null, Tree(arg_1_1)] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.r), write) might be negative. (tree_delete_min.vpr@60.9--60.26) [120719]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[null, Tree(arg_1_1)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1_1):=Used_1Mask[null, Tree(arg_1_1)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1_1):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                        Ops_1Mask := Ops_1Mask[null, Tree(arg_1_1):=Ops_1Mask[null, Tree(arg_1_1)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg_1_1)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1_1):=Used_1Mask[null, Tree(arg_1_1)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1_1):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                        Mask := Mask[null, Tree(arg_1_1):=Mask[null, Tree(arg_1_1)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                          { newPMask[o, f_85] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o, f_85] || Heap[null, Tree#sm(Heap[p_1, r_6])][o, f_85] ==> newPMask[o, f_85]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.r) (tree_delete_min.vpr@60.9--60.26) [120720]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Tree(arg_1_1)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_7 := b_1_1 && b_2_1;
                    b_7 := b_7 && state(Result_4Heap, Result_4Mask);
                    b_7 := b_7 && sumMask(Result_4Mask, Ops_1Mask, Used_1Mask);
                    b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_4Heap, Used_1Mask);
                    b_7 := b_7 && state(Result_4Heap, Result_4Mask);
                  b_1_1 := b_1_1 && b_7;
                b_1_1 := b_1_1 && b_2_1;
                b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
              }
            }
            
            // -- Creating state which is the sum of the two previously built up states
              b_8 := b_1_1 && b_2_1;
              b_8 := b_8 && state(Result_5Heap, Result_5Mask);
              b_8 := b_8 && sumMask(Result_5Mask, Ops_1Mask, Used_1Mask);
              b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_5Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_5Heap, Used_1Mask);
              b_8 := b_8 && state(Result_5Heap, Result_5Mask);
            b_1_1 := b_1_1 && b_8;
            perm := FullPerm;
            b_1_1 := b_1_1;
            Ops_1Mask := Ops_1Mask[null, Tree(p_1):=Ops_1Mask[null, Tree(p_1)] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            assume Tree#trigger(Ops_1Heap, Tree(p_1));
            assume Ops_1Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Ops_1Heap[p_1, v_36]), CombineFrames(FrameFragment(Ops_1Heap[p_1, l_8]), CombineFrames(Ops_1Heap[null, Tree(Ops_1Heap[p_1, l_8])], CombineFrames(FrameFragment(Ops_1Heap[p_1, r_6]), Ops_1Heap[null, Tree(Ops_1Heap[p_1, r_6])]))))));
            if (!HasDirectPerm(Ops_1Mask, null, Tree(p_1))) {
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=ZeroPMask];
              havoc freshVersion;
              Ops_1Heap := Ops_1Heap[null, Tree(p_1):=freshVersion];
            }
            if (p_1 == null) {
            } else {
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, v_36:=true]];
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, l_8:=true]];
              havoc newPMask;
              assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
                { newPMask[o_11, f_3] }
                Ops_1Heap[null, Tree#sm(p_1)][o_11, f_3] || Ops_1Heap[null, Tree#sm(Ops_1Heap[p_1, l_8])][o_11, f_3] ==> newPMask[o_11, f_3]
              );
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=newPMask];
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, r_6:=true]];
              havoc newPMask;
              assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
                { newPMask[o_35, f_17] }
                Ops_1Heap[null, Tree#sm(p_1)][o_35, f_17] || Ops_1Heap[null, Tree#sm(Ops_1Heap[p_1, r_6])][o_35, f_17] ==> newPMask[o_35, f_17]
              );
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=newPMask];
            }
            assume state(Ops_1Heap, Ops_1Mask);
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        // Translating exec of non-ghost operationacc(Tree(x), write) && vals(x) == old(vals(x))[1..]
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_9 := b_9 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(Tree(x), write)
          arg_2 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[null, Tree(arg_2)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(Tree(x), write) might be negative. (tree_delete_min.vpr@59.5--61.6) [120722]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Tree(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Tree(arg_2):=Used_2Mask[null, Tree(arg_2)] + takeTransfer];
                b_9 := b_9 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Tree(arg_2):=FullPerm];
                b_9 := b_9 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Tree(arg_2):=Ops_1Mask[null, Tree(arg_2)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Tree(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Tree(arg_2):=Used_2Mask[null, Tree(arg_2)] + takeTransfer];
                b_9 := b_9 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Tree(arg_2):=FullPerm];
                b_9 := b_9 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                Mask := Mask[null, Tree(arg_2):=Mask[null, Tree(arg_2)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                  { newPMask[o_1, f_11] }
                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_1, f_11] || Heap[null, Tree#sm(x)][o_1, f_11] ==> newPMask[o_1, f_11]
                );
                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.5--61.6) [120723]"}
            (b_1_1 && b_1_1) && b_9 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Tree(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_10 := b_1_1 && b_9;
            b_10 := b_10 && state(Result_6Heap, Result_6Mask);
            b_10 := b_10 && sumMask(Result_6Mask, Ops_1Mask, Used_2Mask);
            b_10 := (b_10 && IdenticalOnKnownLocations(Ops_1Heap, Result_6Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_6Heap, Used_2Mask);
            b_10 := b_10 && state(Result_6Heap, Result_6Mask);
          b_1_1 := b_1_1 && b_10;
        if ((b_1_1 && b_1_1) && b_9) {
          if (b_1_1) {
            
            // -- Check definedness of vals(x) == old(vals(x))[1..]
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Result_6Mask;
                ExhaleWellDef0Heap := Result_6Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.21--59.22) [120724]"}
                  NoPerm < perm ==> NoPerm < Result_6Mask[null, Tree(x)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                Result_6Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.21--59.22) [120725]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                // Finish exhale
                // Stop execution
                assume false;
              }
          }
        }
        assert {:msg "  Packaging wand might fail. Assertion vals(x) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@59.5--61.6) [120726]"}
          (b_1_1 && b_1_1) && b_9 ==> Seq#Equal(vals(Result_6Heap, x), Seq#Drop(vals(oldHeap, x), 1));
        assume state(Heap, Mask);
        Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: while ((unfolding acc(Tree(p.l), write) in p.l.l != null)) -- tree_delete_min.vpr@63.5--80.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. Assertion p != null might not hold. (tree_delete_min.vpr@64.17--64.71) [120727]"}
              p_1 != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [120728]"}
                perm <= Mask[p_1, l_8];
            }
            Mask := Mask[p_1, l_8:=Mask[p_1, l_8] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@64.17--64.71) [120729]"}
                perm <= Mask[null, Tree(Heap[p_1, l_8])];
            }
            Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] - perm];
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. Assertion p.l != null might not hold. (tree_delete_min.vpr@64.17--64.71) [120730]"}
              Heap[p_1, l_8] != null;
            assert {:msg "  Loop invariant plvs == vals(p.l) might not hold on entry. Assertion plvs == vals(p.l) might not hold. (tree_delete_min.vpr@65.17--65.34) [120731]"}
              Seq#Equal(plvs, vals(Heap, Heap[p_1, l_8]));
            // permLe
            assert {:msg "  Loop invariant acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might not hold on entry. Magic wand instance not found. (tree_delete_min.vpr@66.17--66.24) [120732]"}
              FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))];
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] - FullPerm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc plvs, p_1;
          assume Heap[p_1, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            assume p_1 != null;
            perm := FullPerm;
            assume p_1 != null;
            Mask := Mask[p_1, l_8:=Mask[p_1, l_8] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(Tree(p.l), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [120733]"}
                HasDirectPerm(Mask, p_1, l_8);
            perm := FullPerm;
            Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of p.l != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [120734]"}
                HasDirectPerm(Mask, p_1, l_8);
            assume Heap[p_1, l_8] != null;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of plvs == vals(p.l)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@65.17--65.34) [120735]"}
                HasDirectPerm(Mask, p_1, l_8);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@65.25--65.34) [120736]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l_8])];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(plvs, vals(Heap, Heap[p_1, l_8]));
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..]
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume p_1 != null;
                WandDefLHSMask := WandDefLHSMask[p_1, l_8:=WandDefLHSMask[p_1, l_8] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Check definedness of acc(Tree(p.l), write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@66.17--66.24) [120737]"}
                    HasDirectPerm(WandDefLHSMask, p_1, l_8);
                perm := FullPerm;
                WandDefLHSMask := WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l_8]):=WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l_8])] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Check definedness of vals(p.l) == plvs[1..]
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@66.17--66.24) [120738]"}
                    HasDirectPerm(WandDefLHSMask, p_1, l_8);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := WandDefLHSMask;
                    ExhaleWellDef0Heap := WandDefLHSHeap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@66.17--66.18) [120739]"}
                      NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l_8])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                    WandDefLHSHeap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assume Seq#Equal(vals(WandDefLHSHeap, WandDefLHSHeap[p_1, l_8]), Seq#Drop(plvs, 1));
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs3 -- tree_delete_min.vpr@66.17--66.24
                  lhs3:
                  Labellhs3Mask := WandDefLHSMask;
                  Labellhs3Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                WandDefRHSMask := WandDefRHSMask[null, Tree(x):=WandDefRHSMask[null, Tree(x)] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                
                // -- Check definedness of vals(x) == old(vals(x))[1..]
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := WandDefRHSMask;
                    ExhaleWellDef0Heap := WandDefRHSHeap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@66.23--66.24) [120740]"}
                      NoPerm < perm ==> NoPerm < WandDefRHSMask[null, Tree(x)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                    WandDefRHSHeap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := oldMask;
                    ExhaleWellDef0Heap := oldHeap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@66.23--66.24) [120741]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
                assume Seq#Equal(vals(WandDefRHSHeap, x), Seq#Drop(vals(oldHeap, x), 1));
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + FullPerm];
            assume state(Heap, Mask);
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
            assume p_1 != null;
            perm := FullPerm;
            assume p_1 != null;
            Mask := Mask[p_1, l_8:=Mask[p_1, l_8] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] + perm];
            assume state(Heap, Mask);
            assume Heap[p_1, l_8] != null;
            assume state(Heap, Mask);
            assume Seq#Equal(plvs, vals(Heap, Heap[p_1, l_8]));
            assume state(Heap, Mask);
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of (unfolding acc(Tree(p.l), write) in p.l.l != null)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume Tree#trigger(UnfoldingHeap, Tree(UnfoldingHeap[p_1, l_8]));
              assume UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l_8])] == FrameFragment((if UnfoldingHeap[p_1, l_8] == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l_8], v_36]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8])], CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6])]))))));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  While statement might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@63.12--63.53) [120742]"}
                  perm <= UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l_8])];
              }
              UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l_8]):=UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l_8])] - perm];
              if (UnfoldingHeap[p_1, l_8] == null) {
              } else {
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l_8] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l_8], v_36:=UnfoldingMask[UnfoldingHeap[p_1, l_8], v_36] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l_8] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l_8], l_8:=UnfoldingMask[UnfoldingHeap[p_1, l_8], l_8] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8]):=UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(Tree(UnfoldingHeap[p_1, l_8]), UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l_8])], Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], l_8])]);
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l_8] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l_8], r_6:=UnfoldingMask[UnfoldingHeap[p_1, l_8], r_6] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6]):=UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(Tree(UnfoldingHeap[p_1, l_8]), UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l_8])], Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l_8], r_6])]);
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@63.12--63.53) [120743]"}
                HasDirectPerm(UnfoldingMask, p_1, l_8);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@63.12--63.53) [120744]"}
                HasDirectPerm(UnfoldingMask, p_1, l_8);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l.l (tree_delete_min.vpr@63.12--63.53) [120745]"}
                HasDirectPerm(UnfoldingMask, UnfoldingHeap[p_1, l_8], l_8);
              
              // -- Free assumptions (exp module)
                if (Heap[p_1, l_8] == null) {
                } else {
                  Heap := Heap[null, Tree#sm(Heap[p_1, l_8]):=Heap[null, Tree#sm(Heap[p_1, l_8])][Heap[p_1, l_8], v_36:=true]];
                  Heap := Heap[null, Tree#sm(Heap[p_1, l_8]):=Heap[null, Tree#sm(Heap[p_1, l_8])][Heap[p_1, l_8], l_8:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
                    { newPMask[o_12, f_9] }
                    Heap[null, Tree#sm(Heap[p_1, l_8])][o_12, f_9] || Heap[null, Tree#sm(Heap[Heap[p_1, l_8], l_8])][o_12, f_9] ==> newPMask[o_12, f_9]
                  );
                  Heap := Heap[null, Tree#sm(Heap[p_1, l_8]):=newPMask];
                  Heap := Heap[null, Tree#sm(Heap[p_1, l_8]):=Heap[null, Tree#sm(Heap[p_1, l_8])][Heap[p_1, l_8], r_6:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
                    { newPMask[o_22, f_24] }
                    Heap[null, Tree#sm(Heap[p_1, l_8])][o_22, f_24] || Heap[null, Tree#sm(Heap[Heap[p_1, l_8], r_6])][o_22, f_24] ==> newPMask[o_22, f_24]
                  );
                  Heap := Heap[null, Tree#sm(Heap[p_1, l_8]):=newPMask];
                }
                assume state(Heap, Mask);
            assume Heap[Heap[p_1, l_8], l_8] != null;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Assumptions about local variables
                assume Heap[oldP, $allocated];
              
              // -- Translating statement: oldP := p -- tree_delete_min.vpr@68.7--68.25
                oldP := p_1;
                assume state(Heap, Mask);
              
              // -- Translating statement: oldPlvs := plvs -- tree_delete_min.vpr@69.7--69.36
                oldPlvs := plvs;
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(Tree(p.l), write) -- tree_delete_min.vpr@71.7--71.28
                
                // -- Check definedness of acc(Tree(p.l), write)
                  assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@71.7--71.28) [120746]"}
                    HasDirectPerm(Mask, p_1, l_8);
                assume Tree#trigger(Heap, Tree(Heap[p_1, l_8]));
                assume Heap[null, Tree(Heap[p_1, l_8])] == FrameFragment((if Heap[p_1, l_8] == null then EmptyFrame else CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], v_36]), CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], l_8]), CombineFrames(Heap[null, Tree(Heap[Heap[p_1, l_8], l_8])], CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], r_6]), Heap[null, Tree(Heap[Heap[p_1, l_8], r_6])]))))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@71.7--71.28) [120747]"}
                    perm <= Mask[null, Tree(Heap[p_1, l_8])];
                }
                Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, Tree(Heap[p_1, l_8]))) {
                    havoc newVersion;
                    Heap := Heap[null, Tree(Heap[p_1, l_8]):=newVersion];
                  }
                if (Heap[p_1, l_8] == null) {
                } else {
                  perm := FullPerm;
                  assume Heap[p_1, l_8] != null;
                  Mask := Mask[Heap[p_1, l_8], v_36:=Mask[Heap[p_1, l_8], v_36] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  assume Heap[p_1, l_8] != null;
                  Mask := Mask[Heap[p_1, l_8], l_8:=Mask[Heap[p_1, l_8], l_8] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  Mask := Mask[null, Tree(Heap[Heap[p_1, l_8], l_8]):=Mask[null, Tree(Heap[Heap[p_1, l_8], l_8])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree(Heap[p_1, l_8]), Heap[null, Tree(Heap[p_1, l_8])], Tree(Heap[Heap[p_1, l_8], l_8]), Heap[null, Tree(Heap[Heap[p_1, l_8], l_8])]);
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  assume Heap[p_1, l_8] != null;
                  Mask := Mask[Heap[p_1, l_8], r_6:=Mask[Heap[p_1, l_8], r_6] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  Mask := Mask[null, Tree(Heap[Heap[p_1, l_8], r_6]):=Mask[null, Tree(Heap[Heap[p_1, l_8], r_6])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree(Heap[p_1, l_8]), Heap[null, Tree(Heap[p_1, l_8])], Tree(Heap[Heap[p_1, l_8], r_6]), Heap[null, Tree(Heap[Heap[p_1, l_8], r_6])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: p := p.l -- tree_delete_min.vpr@72.7--72.15
                
                // -- Check definedness of p.l
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@72.7--72.15) [120748]"}
                    HasDirectPerm(Mask, p_1, l_8);
                p_1 := Heap[p_1, l_8];
                assume state(Heap, Mask);
              
              // -- Translating statement: plvs := vals(p.l) -- tree_delete_min.vpr@73.7--73.24
                
                // -- Check definedness of vals(p.l)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@73.7--73.24) [120749]"}
                    HasDirectPerm(Mask, p_1, l_8);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@73.15--73.24) [120750]"}
                      NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l_8])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                plvs := vals(Heap, Heap[p_1, l_8]);
                assume state(Heap, Mask);
              
              // -- Translating statement: package acc(p.l, write) &&
  // (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --*
  // acc(Tree(x), write) && vals(x) == old(vals(x))[1..] {
  //   fold acc(Tree(p), write)
  //   apply acc(oldP.l, write) &&
  //     (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --*
  //     acc(Tree(x), write) && vals(x) == old(vals(x))[1..]
  // } -- tree_delete_min.vpr@75.7--79.8
                havoc Ops_3Heap;
                Ops_3Mask := ZeroMask;
                b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                havoc Used_3Heap;
                Used_3Mask := ZeroMask;
                b_11 := b_11 && state(Used_3Heap, Used_3Mask);
                // Inhaling left hand side of current wand into hypothetical state
                if (b_12) {
                  if (b_12) {
                    perm := FullPerm;
                    b_12 := b_12 && p_1 != null;
                    Ops_3Mask := Ops_3Mask[p_1, l_8:=Ops_3Mask[p_1, l_8] + perm];
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                  }
                  if (b_12) {
                    if (b_12) {
                      if (b_12) {
                        
                        // -- Check definedness of acc(Tree(p.l), write)
                          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@75.7--79.8) [120751]"}
                            HasDirectPerm(Ops_3Mask, p_1, l_8);
                      }
                      perm := FullPerm;
                      b_12 := b_12;
                      Ops_3Mask := Ops_3Mask[null, Tree(Ops_3Heap[p_1, l_8]):=Ops_3Mask[null, Tree(Ops_3Heap[p_1, l_8])] + perm];
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    }
                    if (b_12) {
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      if (b_12) {
                        
                        // -- Check definedness of vals(p.l) == plvs[1..]
                          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@75.7--79.8) [120752]"}
                            HasDirectPerm(Ops_3Mask, p_1, l_8);
                          if (*) {
                            // Exhale precondition of function application
                            ExhaleWellDef0Mask := Ops_3Mask;
                            ExhaleWellDef0Heap := Ops_3Heap;
                            perm := FullPerm;
                            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@75.16--75.17) [120753]"}
                              NoPerm < perm ==> NoPerm < Ops_3Mask[null, Tree(Ops_3Heap[p_1, l_8])];
                            // Finish exhale
                            havoc ExhaleHeap;
                            b_12 := b_12 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                            Ops_3Heap := ExhaleHeap;
                            // Stop execution
                            b_12 := false;
                          }
                      }
                      b_12 := b_12 && Seq#Equal(vals(Ops_3Heap, Ops_3Heap[p_1, l_8]), Seq#Drop(plvs, 1));
                    }
                  }
                }
                b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                
                // -- Translating statement: label lhs4 -- tree_delete_min.vpr@75.15--75.24
                  lhs4:
                  Labellhs4Mask := Ops_3Mask;
                  Labellhs4Heap := Ops_3Heap;
                  b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                boolCur_1 := true;
                if (b_12) {
                  
                  // -- Translating statement: fold acc(Tree(p), write) -- tree_delete_min.vpr@76.11--76.23
                    ExhaleWellDef0Mask := Ops_3Mask;
                    ExhaleWellDef0Heap := Ops_3Heap;
                    havoc Used_4Heap;
                    Used_4Mask := ZeroMask;
                    b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                    if (b_12) {
                      if (p_1 == null) {
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                      } else {
                        
                        // -- Transfer of acc(p.v, write)
                          rcvLocal := p_1;
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[rcvLocal, v_36] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.v, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [120754]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, v_36];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, v_36:=Used_4Mask[rcvLocal, v_36] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, v_36] == Used_4Heap[rcvLocal, v_36];
                                Ops_3Mask := Ops_3Mask[rcvLocal, v_36:=Ops_3Mask[rcvLocal, v_36] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, v_36];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, v_36:=Used_4Mask[rcvLocal, v_36] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, v_36] == Used_4Heap[rcvLocal, v_36];
                                Mask := Mask[rcvLocal, v_36:=Mask[rcvLocal, v_36] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, v_36:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.v (tree_delete_min.vpr@76.11--76.23) [120755]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, v_36] == initNeededTransfer;
                          
                          // -- Creating state which is the sum of the two previously built up states
                            b_14 := b_12 && b_13;
                            b_14 := b_14 && state(Result_7Heap, Result_7Mask);
                            b_14 := b_14 && sumMask(Result_7Mask, Ops_3Mask, Used_4Mask);
                            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_7Heap, Used_4Mask);
                            b_14 := b_14 && state(Result_7Heap, Result_7Mask);
                          b_12 := b_12 && b_14;
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                        
                        // -- Transfer of acc(p.l, write)
                          rcvLocal := p_1;
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[rcvLocal, l_8] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.l, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [120756]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, l_8];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, l_8:=Used_4Mask[rcvLocal, l_8] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, l_8] == Used_4Heap[rcvLocal, l_8];
                                Ops_3Mask := Ops_3Mask[rcvLocal, l_8:=Ops_3Mask[rcvLocal, l_8] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, l_8];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, l_8:=Used_4Mask[rcvLocal, l_8] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, l_8] == Used_4Heap[rcvLocal, l_8];
                                Mask := Mask[rcvLocal, l_8:=Mask[rcvLocal, l_8] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, l_8:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@76.11--76.23) [120757]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, l_8] == initNeededTransfer;
                          
                          // -- Creating state which is the sum of the two previously built up states
                            b_15 := b_12 && b_13;
                            b_15 := b_15 && state(Result_8Heap, Result_8Mask);
                            b_15 := b_15 && sumMask(Result_8Mask, Ops_3Mask, Used_4Mask);
                            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_8Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_8Heap, Used_4Mask);
                            b_15 := b_15 && state(Result_8Heap, Result_8Mask);
                          b_12 := b_12 && b_15;
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                        
                        // -- Transfer of acc(Tree(p.l), write)
                          
                          // -- checking if access predicate defined in used state
                            if (b_12 && b_13) {
                              if (b_12) {
                                
                                // -- Check definedness of acc(Tree(p.l), write)
                                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@76.11--76.23) [120758]"}
                                    HasDirectPerm(Result_8Mask, p_1, l_8);
                              }
                            }
                          arg_3 := Result_8Heap[p_1, l_8];
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[null, Tree(arg_3)] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.l), write) might be negative. (tree_delete_min.vpr@76.11--76.23) [120759]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[null, Tree(arg_3)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_3):=Used_4Mask[null, Tree(arg_3)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_3):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                                Ops_3Mask := Ops_3Mask[null, Tree(arg_3):=Ops_3Mask[null, Tree(arg_3)] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[null, Tree(arg_3)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_3):=Used_4Mask[null, Tree(arg_3)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_3):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                                Mask := Mask[null, Tree(arg_3):=Mask[null, Tree(arg_3)] - takeTransfer];
                                havoc newPMask;
                                assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
                                  { newPMask[o_3, f_12] }
                                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_3, f_12] || Heap[null, Tree#sm(Heap[p_1, l_8])][o_3, f_12] ==> newPMask[o_3, f_12]
                                );
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@76.11--76.23) [120760]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Tree(arg_3)] == initNeededTransfer;
                          
                          // -- Creating state which is the sum of the two previously built up states
                            b_16 := b_12 && b_13;
                            b_16 := b_16 && state(Result_9Heap, Result_9Mask);
                            b_16 := b_16 && sumMask(Result_9Mask, Ops_3Mask, Used_4Mask);
                            b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_9Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_9Heap, Used_4Mask);
                            b_16 := b_16 && state(Result_9Heap, Result_9Mask);
                          b_12 := b_12 && b_16;
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                        
                        // -- Transfer of acc(p.r, write)
                          rcvLocal := p_1;
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[rcvLocal, r_6] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.r, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [120761]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, r_6];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, r_6:=Used_4Mask[rcvLocal, r_6] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, r_6] == Used_4Heap[rcvLocal, r_6];
                                Ops_3Mask := Ops_3Mask[rcvLocal, r_6:=Ops_3Mask[rcvLocal, r_6] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, r_6];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, r_6:=Used_4Mask[rcvLocal, r_6] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, r_6] == Used_4Heap[rcvLocal, r_6];
                                Mask := Mask[rcvLocal, r_6:=Mask[rcvLocal, r_6] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][p_1, r_6:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@76.11--76.23) [120762]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, r_6] == initNeededTransfer;
                          
                          // -- Creating state which is the sum of the two previously built up states
                            b_17 := b_12 && b_13;
                            b_17 := b_17 && state(Result_10Heap, Result_10Mask);
                            b_17 := b_17 && sumMask(Result_10Mask, Ops_3Mask, Used_4Mask);
                            b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_10Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_10Heap, Used_4Mask);
                            b_17 := b_17 && state(Result_10Heap, Result_10Mask);
                          b_12 := b_12 && b_17;
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                        
                        // -- Transfer of acc(Tree(p.r), write)
                          
                          // -- checking if access predicate defined in used state
                            if (b_12 && b_13) {
                              if (b_12) {
                                
                                // -- Check definedness of acc(Tree(p.r), write)
                                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@76.11--76.23) [120763]"}
                                    HasDirectPerm(Result_10Mask, p_1, r_6);
                              }
                            }
                          arg_4 := Result_10Heap[p_1, r_6];
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[null, Tree(arg_4)] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.r), write) might be negative. (tree_delete_min.vpr@76.11--76.23) [120764]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[null, Tree(arg_4)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_4):=Used_4Mask[null, Tree(arg_4)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_4):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                                Ops_3Mask := Ops_3Mask[null, Tree(arg_4):=Ops_3Mask[null, Tree(arg_4)] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[null, Tree(arg_4)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_4):=Used_4Mask[null, Tree(arg_4)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_4):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                                Mask := Mask[null, Tree(arg_4):=Mask[null, Tree(arg_4)] - takeTransfer];
                                havoc newPMask;
                                assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                                  { newPMask[o_46, f_35] }
                                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_46, f_35] || Heap[null, Tree#sm(Heap[p_1, r_6])][o_46, f_35] ==> newPMask[o_46, f_35]
                                );
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.r) (tree_delete_min.vpr@76.11--76.23) [120765]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Tree(arg_4)] == initNeededTransfer;
                          
                          // -- Creating state which is the sum of the two previously built up states
                            b_18 := b_12 && b_13;
                            b_18 := b_18 && state(Result_11Heap, Result_11Mask);
                            b_18 := b_18 && sumMask(Result_11Mask, Ops_3Mask, Used_4Mask);
                            b_18 := (b_18 && IdenticalOnKnownLocations(Ops_3Heap, Result_11Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_11Heap, Used_4Mask);
                            b_18 := b_18 && state(Result_11Heap, Result_11Mask);
                          b_12 := b_12 && b_18;
                        b_12 := b_12 && b_13;
                        b_12 := b_12 && Used_4Heap == Ops_3Heap;
                      }
                    }
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_19 := b_12 && b_13;
                      b_19 := b_19 && state(Result_12Heap, Result_12Mask);
                      b_19 := b_19 && sumMask(Result_12Mask, Ops_3Mask, Used_4Mask);
                      b_19 := (b_19 && IdenticalOnKnownLocations(Ops_3Heap, Result_12Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_12Heap, Used_4Mask);
                      b_19 := b_19 && state(Result_12Heap, Result_12Mask);
                    b_12 := b_12 && b_19;
                    perm := FullPerm;
                    b_12 := b_12;
                    Ops_3Mask := Ops_3Mask[null, Tree(p_1):=Ops_3Mask[null, Tree(p_1)] + perm];
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    assume Tree#trigger(Ops_3Heap, Tree(p_1));
                    assume Ops_3Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Ops_3Heap[p_1, v_36]), CombineFrames(FrameFragment(Ops_3Heap[p_1, l_8]), CombineFrames(Ops_3Heap[null, Tree(Ops_3Heap[p_1, l_8])], CombineFrames(FrameFragment(Ops_3Heap[p_1, r_6]), Ops_3Heap[null, Tree(Ops_3Heap[p_1, r_6])]))))));
                    if (!HasDirectPerm(Ops_3Mask, null, Tree(p_1))) {
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=ZeroPMask];
                      havoc freshVersion;
                      Ops_3Heap := Ops_3Heap[null, Tree(p_1):=freshVersion];
                    }
                    if (p_1 == null) {
                    } else {
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, v_36:=true]];
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, l_8:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
                        { newPMask[o_41, f_25] }
                        Ops_3Heap[null, Tree#sm(p_1)][o_41, f_25] || Ops_3Heap[null, Tree#sm(Ops_3Heap[p_1, l_8])][o_41, f_25] ==> newPMask[o_41, f_25]
                      );
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=newPMask];
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, r_6:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
                        { newPMask[o_34, f_44] }
                        Ops_3Heap[null, Tree#sm(p_1)][o_34, f_44] || Ops_3Heap[null, Tree#sm(Ops_3Heap[p_1, r_6])][o_34, f_44] ==> newPMask[o_34, f_44]
                      );
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=newPMask];
                    }
                    assume state(Ops_3Heap, Ops_3Mask);
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                }
                if (b_12) {
                  
                  // -- Translating statement: apply acc(oldP.l, write) &&
  //   (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --*
  //   acc(Tree(x), write) && vals(x) == old(vals(x))[1..] -- tree_delete_min.vpr@77.11--78.55
                    
                    // -- check if wand is held and remove an instance
                      ExhaleWellDef0Mask := Ops_3Mask;
                      ExhaleWellDef0Heap := Ops_3Heap;
                      havoc Used_5Heap;
                      Used_5Mask := ZeroMask;
                      b_20 := b_20 && state(Used_5Heap, Used_5Mask);
                      
                      // -- Transfer of acc(oldP.l, write) && (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..]
                        
                        // -- checking if access predicate defined in used state
                          if (b_12 && b_20) {
                            if (b_12) {
                              
                              // -- Check definedness of acc(oldP.l, write) && (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..]
                                if (*) {
                                  havoc WandDefLHSHeap;
                                  WandDefLHSMask := ZeroMask;
                                  perm := FullPerm;
                                  assume oldP != null;
                                  WandDefLHSMask := WandDefLHSMask[oldP, l_8:=WandDefLHSMask[oldP, l_8] + perm];
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Check definedness of acc(Tree(oldP.l), write)
                                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [120766]"}
                                      HasDirectPerm(WandDefLHSMask, oldP, l_8);
                                  perm := FullPerm;
                                  WandDefLHSMask := WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l_8]):=WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l_8])] + perm];
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Check definedness of vals(oldP.l) == oldPlvs[1..]
                                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [120767]"}
                                      HasDirectPerm(WandDefLHSMask, oldP, l_8);
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Mask := WandDefLHSMask;
                                      ExhaleWellDef1Heap := WandDefLHSHeap;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.53--77.65) [120768]"}
                                        NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l_8])];
                                      // Finish exhale
                                      havoc ExhaleHeap;
                                      assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                      WandDefLHSHeap := ExhaleHeap;
                                      // Stop execution
                                      assume false;
                                    }
                                  assume Seq#Equal(vals(WandDefLHSHeap, WandDefLHSHeap[oldP, l_8]), Seq#Drop(oldPlvs, 1));
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Translating statement: label lhs7 -- tree_delete_min.vpr@77.17--78.55
                                    lhs7:
                                    Labellhs7Mask := WandDefLHSMask;
                                    Labellhs7Heap := WandDefLHSHeap;
                                    assume state(WandDefLHSHeap, WandDefLHSMask);
                                  havoc WandDefRHSHeap;
                                  WandDefRHSMask := ZeroMask;
                                  perm := FullPerm;
                                  WandDefRHSMask := WandDefRHSMask[null, Tree(x):=WandDefRHSMask[null, Tree(x)] + perm];
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  
                                  // -- Check definedness of vals(x) == old(vals(x))[1..]
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Mask := WandDefRHSMask;
                                      ExhaleWellDef1Heap := WandDefRHSHeap;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@78.27--78.34) [120769]"}
                                        NoPerm < perm ==> NoPerm < WandDefRHSMask[null, Tree(x)];
                                      // Finish exhale
                                      havoc ExhaleHeap;
                                      assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                                      WandDefRHSHeap := ExhaleHeap;
                                      // Stop execution
                                      assume false;
                                    }
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Mask := oldMask;
                                      ExhaleWellDef1Heap := oldHeap;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@78.42--78.49) [120770]"}
                                        NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                                      // Finish exhale
                                      // Stop execution
                                      assume false;
                                    }
                                  assume Seq#Equal(vals(WandDefRHSHeap, x), Seq#Drop(vals(oldHeap, x), 1));
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  assume false;
                                }
                            }
                          }
                        neededTransfer := 1.000000000;
                        initNeededTransfer := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(oldP.l, write) && (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might be negative. (tree_delete_min.vpr@77.11--78.55) [120771]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + takeTransfer];
                              b_20 := b_20 && state(Used_5Heap, Used_5Mask);
                              Ops_3Mask := Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + takeTransfer];
                              b_20 := b_20 && state(Used_5Heap, Used_5Mask);
                              Mask := Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] - takeTransfer];
                            }
                          }
                        assert {:msg "  Applying wand might fail. Magic wand instance not found. (tree_delete_min.vpr@77.11--78.55) [120772]"}
                          b_12 && b_20 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] == initNeededTransfer;
                        
                        // -- Creating state which is the sum of the two previously built up states
                          b_21 := b_12 && b_20;
                          b_21 := b_21 && state(Result_13Heap, Result_13Mask);
                          b_21 := b_21 && sumMask(Result_13Mask, Ops_3Mask, Used_5Mask);
                          b_21 := (b_21 && IdenticalOnKnownLocations(Ops_3Heap, Result_13Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_13Heap, Used_5Mask);
                          b_21 := b_21 && state(Result_13Heap, Result_13Mask);
                        b_12 := b_12 && b_21;
                      b_12 := b_12 && b_20;
                      b_12 := b_12 && Used_5Heap == Ops_3Heap;
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    
                    // -- check if LHS holds and remove permissions 
                      ExhaleWellDef0Mask := Ops_3Mask;
                      ExhaleWellDef0Heap := Ops_3Heap;
                      havoc Used_6Heap;
                      Used_6Mask := ZeroMask;
                      b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                      
                      // -- Transfer of acc(oldP.l, write)
                        rcvLocal := oldP;
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_6Mask[rcvLocal, l_8] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(oldP.l, write) might be negative. (tree_delete_min.vpr@77.11--78.55) [120773]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[rcvLocal, l_8];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[rcvLocal, l_8:=Used_6Mask[rcvLocal, l_8] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              b_22 := b_22 && Ops_3Heap[rcvLocal, l_8] == Used_6Heap[rcvLocal, l_8];
                              Ops_3Mask := Ops_3Mask[rcvLocal, l_8:=Ops_3Mask[rcvLocal, l_8] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[rcvLocal, l_8];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[rcvLocal, l_8:=Used_6Mask[rcvLocal, l_8] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              b_22 := b_22 && Heap[rcvLocal, l_8] == Used_6Heap[rcvLocal, l_8];
                              Mask := Mask[rcvLocal, l_8:=Mask[rcvLocal, l_8] - takeTransfer];
                              Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][oldP, l_8:=true]];
                            }
                          }
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [120774]"}
                          b_12 && b_22 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, l_8] == initNeededTransfer;
                        
                        // -- Creating state which is the sum of the two previously built up states
                          b_23 := b_12 && b_22;
                          b_23 := b_23 && state(Result_14Heap, Result_14Mask);
                          b_23 := b_23 && sumMask(Result_14Mask, Ops_3Mask, Used_6Mask);
                          b_23 := (b_23 && IdenticalOnKnownLocations(Ops_3Heap, Result_14Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_14Heap, Used_6Mask);
                          b_23 := b_23 && state(Result_14Heap, Result_14Mask);
                        b_12 := b_12 && b_23;
                      b_12 := b_12 && b_22;
                      b_12 := b_12 && Used_6Heap == Ops_3Heap;
                      
                      // -- Transfer of acc(Tree(oldP.l), write)
                        
                        // -- checking if access predicate defined in used state
                          if (b_12 && b_22) {
                            if (b_12) {
                              
                              // -- Check definedness of acc(Tree(oldP.l), write)
                                assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [120775]"}
                                  HasDirectPerm(Result_14Mask, oldP, l_8);
                            }
                          }
                        arg_5 := Result_14Heap[oldP, l_8];
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_6Mask[null, Tree(arg_5)] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(Tree(oldP.l), write) might be negative. (tree_delete_min.vpr@77.11--78.55) [120776]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, Tree(arg_5)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[null, Tree(arg_5):=Used_6Mask[null, Tree(arg_5)] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              TempMask := ZeroMask[null, Tree(arg_5):=FullPerm];
                              b_22 := b_22 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                              Ops_3Mask := Ops_3Mask[null, Tree(arg_5):=Ops_3Mask[null, Tree(arg_5)] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, Tree(arg_5)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[null, Tree(arg_5):=Used_6Mask[null, Tree(arg_5)] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              TempMask := ZeroMask[null, Tree(arg_5):=FullPerm];
                              b_22 := b_22 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                              Mask := Mask[null, Tree(arg_5):=Mask[null, Tree(arg_5)] - takeTransfer];
                              havoc newPMask;
                              assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
                                { newPMask[o_55, f_36] }
                                Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_55, f_36] || Heap[null, Tree#sm(Heap[oldP, l_8])][o_55, f_36] ==> newPMask[o_55, f_36]
                              );
                              Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                            }
                          }
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.11--78.55) [120777]"}
                          b_12 && b_22 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Tree(arg_5)] == initNeededTransfer;
                        
                        // -- Creating state which is the sum of the two previously built up states
                          b_24_1 := b_12 && b_22;
                          b_24_1 := b_24_1 && state(Result_15Heap, Result_15Mask);
                          b_24_1 := b_24_1 && sumMask(Result_15Mask, Ops_3Mask, Used_6Mask);
                          b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_3Heap, Result_15Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_15Heap, Used_6Mask);
                          b_24_1 := b_24_1 && state(Result_15Heap, Result_15Mask);
                        b_12 := b_12 && b_24_1;
                      b_12 := b_12 && b_22;
                      b_12 := b_12 && Used_6Heap == Ops_3Heap;
                      if (b_12 && b_22) {
                        if (b_12) {
                          
                          // -- Check definedness of vals(oldP.l) == oldPlvs[1..]
                            assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [120778]"}
                              HasDirectPerm(Result_15Mask, oldP, l_8);
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef1Mask := Result_15Mask;
                              ExhaleWellDef1Heap := Result_15Heap;
                              perm := FullPerm;
                              assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.53--77.65) [120779]"}
                                NoPerm < perm ==> NoPerm < Result_15Mask[null, Tree(Result_15Heap[oldP, l_8])];
                              // Finish exhale
                              havoc ExhaleHeap;
                              assume IdenticalOnKnownLocations(Result_15Heap, ExhaleHeap, Result_15Mask);
                              Result_15Heap := ExhaleHeap;
                              // Stop execution
                              assume false;
                            }
                        }
                      }
                      assert {:msg "  Applying wand might fail. Assertion vals(oldP.l) == oldPlvs[1..] might not hold. (tree_delete_min.vpr@77.11--78.55) [120780]"}
                        b_12 && b_22 ==> Seq#Equal(vals(Result_15Heap, Result_15Heap[oldP, l_8]), Seq#Drop(oldPlvs, 1));
                      b_12 := b_12 && b_22;
                      b_12 := b_12 && Used_6Heap == Ops_3Heap;
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    
                    // -- inhale the RHS of the wand
                      perm := FullPerm;
                      b_12 := b_12;
                      Ops_3Mask := Ops_3Mask[null, Tree(x):=Ops_3Mask[null, Tree(x)] + perm];
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      b_12 := b_12 && Seq#Equal(vals(Ops_3Heap, x), Seq#Drop(vals(oldHeap, x), 1));
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                    Ops_3Heap := ExhaleHeap;
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                }
                // Translating exec of non-ghost operationacc(Tree(x), write) && vals(x) == old(vals(x))[1..]
                havoc Used_7Heap;
                Used_7Mask := ZeroMask;
                b_25 := b_25 && state(Used_7Heap, Used_7Mask);
                
                // -- Transfer of acc(Tree(x), write)
                  arg_6 := x;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_7Mask[null, Tree(arg_6)] + neededTransfer;
                  assert {:msg "  Packaging wand might fail. Fraction acc(Tree(x), write) might be negative. (tree_delete_min.vpr@75.7--79.8) [120781]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_12 && b_12) && b_25) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[null, Tree(arg_6)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_7Mask := Used_7Mask[null, Tree(arg_6):=Used_7Mask[null, Tree(arg_6)] + takeTransfer];
                        b_25 := b_25 && state(Used_7Heap, Used_7Mask);
                        TempMask := ZeroMask[null, Tree(arg_6):=FullPerm];
                        b_25 := b_25 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
                        Ops_3Mask := Ops_3Mask[null, Tree(arg_6):=Ops_3Mask[null, Tree(arg_6)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_12 && b_12) && b_25) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg_6)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_7Mask := Used_7Mask[null, Tree(arg_6):=Used_7Mask[null, Tree(arg_6)] + takeTransfer];
                        b_25 := b_25 && state(Used_7Heap, Used_7Mask);
                        TempMask := ZeroMask[null, Tree(arg_6):=FullPerm];
                        b_25 := b_25 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                        Mask := Mask[null, Tree(arg_6):=Mask[null, Tree(arg_6)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
                          { newPMask[o_42, f_26] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))][o_42, f_26] || Heap[null, Tree#sm(x)][o_42, f_26] ==> newPMask[o_42, f_26]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.7--79.8) [120782]"}
                    (b_12 && b_12) && b_25 ==> neededTransfer == 0.000000000 && Used_7Mask[null, Tree(arg_6)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_26 := b_12 && b_25;
                    b_26 := b_26 && state(Result_16Heap, Result_16Mask);
                    b_26 := b_26 && sumMask(Result_16Mask, Ops_3Mask, Used_7Mask);
                    b_26 := (b_26 && IdenticalOnKnownLocations(Ops_3Heap, Result_16Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_16Heap, Used_7Mask);
                    b_26 := b_26 && state(Result_16Heap, Result_16Mask);
                  b_12 := b_12 && b_26;
                if ((b_12 && b_12) && b_25) {
                  if (b_12) {
                    
                    // -- Check definedness of vals(x) == old(vals(x))[1..]
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Mask := Result_16Mask;
                        ExhaleWellDef0Heap := Result_16Heap;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.23--75.24) [120783]"}
                          NoPerm < perm ==> NoPerm < Result_16Mask[null, Tree(x)];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(Result_16Heap, ExhaleHeap, Result_16Mask);
                        Result_16Heap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Mask := oldMask;
                        ExhaleWellDef0Heap := oldHeap;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.23--75.24) [120784]"}
                          NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                  }
                }
                assert {:msg "  Packaging wand might fail. Assertion vals(x) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@75.7--79.8) [120785]"}
                  (b_12 && b_12) && b_25 ==> Seq#Equal(vals(Result_16Heap, x), Seq#Drop(vals(oldHeap, x), 1));
                assume state(Heap, Mask);
                Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + FullPerm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. Assertion p != null might not hold. (tree_delete_min.vpr@64.17--64.71) [120786]"}
              p_1 != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [120787]"}
                perm <= Mask[p_1, l_8];
            }
            Mask := Mask[p_1, l_8:=Mask[p_1, l_8] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@64.17--64.71) [120788]"}
                perm <= Mask[null, Tree(Heap[p_1, l_8])];
            }
            Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] - perm];
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. Assertion p.l != null might not hold. (tree_delete_min.vpr@64.17--64.71) [120789]"}
              Heap[p_1, l_8] != null;
            assert {:msg "  Loop invariant plvs == vals(p.l) might not be preserved. Assertion plvs == vals(p.l) might not hold. (tree_delete_min.vpr@65.17--65.34) [120790]"}
              Seq#Equal(plvs, vals(Heap, Heap[p_1, l_8]));
            // permLe
            assert {:msg "  Loop invariant acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might not be preserved. Magic wand instance not found. (tree_delete_min.vpr@66.17--66.24) [120791]"}
              FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))];
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] - FullPerm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[Heap[p_1, l_8], l_8] != null);
          assume state(Heap, Mask);
          assume p_1 != null;
          perm := FullPerm;
          assume p_1 != null;
          Mask := Mask[p_1, l_8:=Mask[p_1, l_8] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] + perm];
          assume state(Heap, Mask);
          assume Heap[p_1, l_8] != null;
          assume state(Heap, Mask);
          assume Seq#Equal(plvs, vals(Heap, Heap[p_1, l_8]));
          assume state(Heap, Mask);
          Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] + FullPerm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(Tree(p.l), write) -- tree_delete_min.vpr@82.5--82.26
        
        // -- Check definedness of acc(Tree(p.l), write)
          assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@82.5--82.26) [120792]"}
            HasDirectPerm(Mask, p_1, l_8);
        assume Tree#trigger(Heap, Tree(Heap[p_1, l_8]));
        assume Heap[null, Tree(Heap[p_1, l_8])] == FrameFragment((if Heap[p_1, l_8] == null then EmptyFrame else CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], v_36]), CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], l_8]), CombineFrames(Heap[null, Tree(Heap[Heap[p_1, l_8], l_8])], CombineFrames(FrameFragment(Heap[Heap[p_1, l_8], r_6]), Heap[null, Tree(Heap[Heap[p_1, l_8], r_6])]))))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@82.5--82.26) [120795]"}
            perm <= Mask[null, Tree(Heap[p_1, l_8])];
        }
        Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Tree(Heap[p_1, l_8]))) {
            havoc newVersion;
            Heap := Heap[null, Tree(Heap[p_1, l_8]):=newVersion];
          }
        if (Heap[p_1, l_8] == null) {
        } else {
          perm := FullPerm;
          assume Heap[p_1, l_8] != null;
          Mask := Mask[Heap[p_1, l_8], v_36:=Mask[Heap[p_1, l_8], v_36] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Heap[p_1, l_8] != null;
          Mask := Mask[Heap[p_1, l_8], l_8:=Mask[Heap[p_1, l_8], l_8] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[Heap[p_1, l_8], l_8]):=Mask[null, Tree(Heap[Heap[p_1, l_8], l_8])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(Heap[p_1, l_8]), Heap[null, Tree(Heap[p_1, l_8])], Tree(Heap[Heap[p_1, l_8], l_8]), Heap[null, Tree(Heap[Heap[p_1, l_8], l_8])]);
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Heap[p_1, l_8] != null;
          Mask := Mask[Heap[p_1, l_8], r_6:=Mask[Heap[p_1, l_8], r_6] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[Heap[p_1, l_8], r_6]):=Mask[null, Tree(Heap[Heap[p_1, l_8], r_6])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(Heap[p_1, l_8]), Heap[null, Tree(Heap[p_1, l_8])], Tree(Heap[Heap[p_1, l_8], r_6]), Heap[null, Tree(Heap[Heap[p_1, l_8], r_6])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert vals(p.l.l) == Seq[Int]() -- tree_delete_min.vpr@83.5--83.37
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of vals(p.l.l) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@83.12--83.37) [120801]"}
            HasDirectPerm(ExhaleWellDef0Mask, p_1, l_8);
          assert {:msg "  Assert might fail. There might be insufficient permission to access p.l.l (tree_delete_min.vpr@83.12--83.37) [120802]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[p_1, l_8], l_8);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l.l) (tree_delete_min.vpr@83.12--83.23) [120803]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree(ExhaleWellDef0Heap[ExhaleWellDef0Heap[p_1, l_8], l_8])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion vals(p.l.l) == Seq[Int]() might not hold. (tree_delete_min.vpr@83.12--83.37) [120804]"}
          Seq#Equal(vals(Heap, Heap[Heap[p_1, l_8], l_8]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
      
      // -- Translating statement: p.l := p.l.r -- tree_delete_min.vpr@85.5--85.17
        
        // -- Check definedness of p.l.r
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@85.5--85.17) [120805]"}
            HasDirectPerm(Mask, p_1, l_8);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l.r (tree_delete_min.vpr@85.5--85.17) [120806]"}
            HasDirectPerm(Mask, Heap[p_1, l_8], r_6);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@85.5--85.17) [120807]"}
          FullPerm == Mask[p_1, l_8];
        Heap := Heap[p_1, l_8:=Heap[Heap[p_1, l_8], r_6]];
        assume state(Heap, Mask);
      
      // -- Translating statement: apply acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --*
  //   acc(Tree(x), write) && vals(x) == old(vals(x))[1..] -- tree_delete_min.vpr@87.5--87.18
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (tree_delete_min.vpr@87.5--87.18) [120808]"}
            FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))];
          Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals(oldHeap, x), 1))] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@87.5--87.18) [120810]"}
              perm <= Mask[p_1, l_8];
          }
          Mask := Mask[p_1, l_8:=Mask[p_1, l_8] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@87.5--87.18) [120812]"}
              perm <= Mask[null, Tree(Heap[p_1, l_8])];
          }
          Mask := Mask[null, Tree(Heap[p_1, l_8]):=Mask[null, Tree(Heap[p_1, l_8])] - perm];
          assert {:msg "  Applying wand might fail. Assertion vals(p.l) == plvs[1..] might not hold. (tree_delete_min.vpr@87.5--87.18) [120813]"}
            Seq#Equal(vals(Heap, Heap[p_1, l_8]), Seq#Drop(plvs, 1));
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(vals(Heap, x), Seq#Drop(vals(oldHeap, x), 1));
          assume state(Heap, Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: z := x -- tree_delete_min.vpr@89.5--89.11
        z := x;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of tree_delete_min might not hold. There might be insufficient permission to access Tree(z) (tree_delete_min.vpr@42.11--42.23) [120815]"}
        perm <= Mask[null, Tree(z)];
    }
    Mask := Mask[null, Tree(z):=Mask[null, Tree(z)] - perm];
    assert {:msg "  Postcondition of tree_delete_min might not hold. Assertion vals(z) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@43.11--43.39) [120816]"}
      Seq#Equal(vals(Heap, z), Seq#Drop(vals(oldHeap, x), 1));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}