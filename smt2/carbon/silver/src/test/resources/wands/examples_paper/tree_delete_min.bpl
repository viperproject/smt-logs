// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:59
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
axiom (forall o_11: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_17] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_56: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_56] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_56) ==> Heap[o_43, f_56] == ExhaleHeap[o_43, f_56]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_57: (Field A B), v: B ::
  { Heap[o_11, f_57:=v] }
  succHeap(Heap, Heap[o_11, f_57:=v])
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

const unique v_35: Field NormalField int;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);
const unique l: Field NormalField Ref;
axiom !IsPredicateField(l);
axiom !IsWandField(l);
const unique r_11: Field NormalField Ref;
axiom !IsPredicateField(r_11);
axiom !IsWandField(r_11);

// ==================================================
// Translation of function val
// ==================================================

// Uninterpreted function definitions
function  val_3(Heap: HeapType, x: Ref): int;
function  val'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { val_3(Heap, x) }
  val_3(Heap, x) == val'(Heap, x) && dummyFunction(val#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { val'(Heap, x) }
  dummyFunction(val#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), val_3(Heap, x) } { state(Heap, Mask), val#triggerStateless(x), Tree#trigger(Heap, Tree(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x != null ==> val_3(Heap, x) == Heap[x, v_35]
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      assume UnfoldingHeap[null, Tree(x)] == FrameFragment((if x == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[x, v_35]), CombineFrames(FrameFragment(UnfoldingHeap[x, l]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])], CombineFrames(FrameFragment(UnfoldingHeap[x, r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])]))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@28.1--30.34) [205904]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(x)];
      if (x == null) {
      } else {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, v_35:=UnfoldingMask[x, v_35] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, l:=UnfoldingMask[x, l] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, l]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, l])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, l]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, r_11:=UnfoldingMask[x, r_11] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (tree_delete_min.vpr@28.1--30.34) [205905]"}
        HasDirectPerm(UnfoldingMask, x, v_35);
      
      // -- Free assumptions (exp module)
        if (x == null) {
        } else {
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, v_35:=true]];
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, l:=true]];
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, Tree#sm(x)][o_5, f_11] || Heap[null, Tree#sm(Heap[x, l])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
          Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, r_11:=true]];
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, Tree#sm(x)][o_6, f_12] || Heap[null, Tree#sm(Heap[x, r_11])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, Tree#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, v_35];
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> vals_1(Heap, x) == (if x == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(vals'(Heap, Heap[x, l]), Seq#Singleton(Heap[x, v_35])), vals'(Heap, Heap[x, r_11])))
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
        assume UnfoldingHeap[null, Tree(x)] == FrameFragment((if x == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[x, v_35]), CombineFrames(FrameFragment(UnfoldingHeap[x, l]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])], CombineFrames(FrameFragment(UnfoldingHeap[x, r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])]))))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@32.1--34.90) [205906]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree(x)];
        if (x == null) {
        } else {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, v_35:=UnfoldingMask[x, v_35] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, l:=UnfoldingMask[x, l] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, l]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, l])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, l]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, l])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, r_11:=UnfoldingMask[x, r_11] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11]):=UnfoldingMask[null, Tree(UnfoldingHeap[x, r_11])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(x), UnfoldingHeap[null, Tree(x)], Tree(UnfoldingHeap[x, r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[x, r_11])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.l (tree_delete_min.vpr@32.1--34.90) [205907]"}
          HasDirectPerm(UnfoldingMask, x, l);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.l) (tree_delete_min.vpr@34.54--34.63) [205908]"}
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (tree_delete_min.vpr@32.1--34.90) [205909]"}
          HasDirectPerm(UnfoldingMask, x, v_35);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.r (tree_delete_min.vpr@32.1--34.90) [205910]"}
          HasDirectPerm(UnfoldingMask, x, r_11);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.r) (tree_delete_min.vpr@34.79--34.88) [205911]"}
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
        
        // -- Free assumptions (exp module)
          if (x == null) {
          } else {
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, v_35:=true]];
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, l:=true]];
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, Tree#sm(x)][o_40, f_52] || Heap[null, Tree#sm(Heap[x, l])][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, Tree#sm(x):=newPMask];
            Heap := Heap[null, Tree#sm(x):=Heap[null, Tree#sm(x)][x, r_11:=true]];
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
              { newPMask[o_42, f_55] }
              Heap[null, Tree#sm(x)][o_42, f_55] || Heap[null, Tree#sm(Heap[x, r_11])][o_42, f_55] ==> newPMask[o_42, f_55]
            );
            Heap := Heap[null, Tree#sm(x):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if x == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(vals_1(Heap, Heap[x, l]), Seq#Singleton(Heap[x, v_35])), vals_1(Heap, Heap[x, r_11])));
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
      Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, l:=Mask[x, l] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Tree(x.l), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.l (tree_delete_min.vpr@20.1--26.2) [205912]"}
          HasDirectPerm(Mask, x, l);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, l]):=Mask[null, Tree(Heap[x, l])] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Tree(x.r), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.r (tree_delete_min.vpr@20.1--26.2) [205913]"}
          HasDirectPerm(Mask, x, r_11);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[x, r_11]):=Mask[null, Tree(Heap[x, r_11])] + perm];
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var p_1: Ref;
  var newVersion: FrameType;
  var plvs: (Seq int);
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
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
  var arg: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_6: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var arg_1_13: Ref;
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
  var arg_2_13: Ref;
  var b_10: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
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
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
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
  var arg_3_13: Ref;
  var b_16: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_17: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var arg_4_13: Ref;
  var b_18: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_19: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_20: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var b_21: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_22: bool;
  var b_23: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var arg_5_12: Ref;
  var b_24_1: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_25_1: bool;
  var arg_6_12: Ref;
  var b_26_1: bool;
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
      oldHeap := Heap;
      oldMask := Mask;
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(z) (tree_delete_min.vpr@43.11--43.18) [205914]"}
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
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@43.26--43.33) [205915]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(vals_1(PostHeap, z), Seq#Drop(vals_1(oldHeap, x), 1));
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
    assume Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Heap[p_1, v_35]), CombineFrames(FrameFragment(Heap[p_1, l]), CombineFrames(Heap[null, Tree(Heap[p_1, l])], CombineFrames(FrameFragment(Heap[p_1, r_11]), Heap[null, Tree(Heap[p_1, r_11])]))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree(p) might fail. There might be insufficient permission to access Tree(p) (tree_delete_min.vpr@51.3--51.22) [205918]"}
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
      Mask := Mask[p_1, v_35:=Mask[p_1, v_35] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, l:=Mask[p_1, l] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree(p_1), Heap[null, Tree(p_1)], Tree(Heap[p_1, l]), Heap[null, Tree(Heap[p_1, l])]);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, r_11:=Mask[p_1, r_11] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Tree(Heap[p_1, r_11]):=Mask[null, Tree(Heap[p_1, r_11])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree(p_1), Heap[null, Tree(p_1)], Tree(Heap[p_1, r_11]), Heap[null, Tree(Heap[p_1, r_11])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: plvs := vals(p.l) -- tree_delete_min.vpr@52.3--52.20
    
    // -- Check definedness of vals(p.l)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@52.3--52.20) [205924]"}
        HasDirectPerm(Mask, p_1, l);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@52.11--52.20) [205925]"}
          NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    plvs := vals_1(Heap, Heap[p_1, l]);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (p.l == null) -- tree_delete_min.vpr@54.3--90.4
    
    // -- Check definedness of p.l == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@54.7--54.18) [205926]"}
        HasDirectPerm(Mask, p_1, l);
    if (Heap[p_1, l] == null) {
      
      // -- Translating statement: z := p.r -- tree_delete_min.vpr@55.5--55.13
        
        // -- Check definedness of p.r
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@55.5--55.13) [205927]"}
            HasDirectPerm(Mask, p_1, r_11);
        z := Heap[p_1, r_11];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert vals(x.l) == Seq[Int]() -- tree_delete_min.vpr@57.5--57.35
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of vals(x.l) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.l (tree_delete_min.vpr@57.12--57.35) [205928]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, l);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x.l) (tree_delete_min.vpr@57.12--57.21) [205929]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree(ExhaleWellDef0Heap[x, l])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion vals(x.l) == Seq[Int]() might not hold. (tree_delete_min.vpr@57.12--57.35) [205930]"}
          Seq#Equal(vals_1(Heap, Heap[x, l]), (Seq#Empty(): Seq int));
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
            Ops_1Mask := Ops_1Mask[p_1, l:=Ops_1Mask[p_1, l] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              if (b_1_1) {
                
                // -- Check definedness of acc(Tree(p.l), write)
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@59.5--61.6) [205931]"}
                    HasDirectPerm(Ops_1Mask, p_1, l);
              }
              perm := FullPerm;
              b_1_1 := b_1_1;
              Ops_1Mask := Ops_1Mask[null, Tree(Ops_1Heap[p_1, l]):=Ops_1Mask[null, Tree(Ops_1Heap[p_1, l])] + perm];
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            }
            if (b_1_1) {
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
              if (b_1_1) {
                
                // -- Check definedness of vals(p.l) == plvs[1..]
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@59.5--61.6) [205932]"}
                    HasDirectPerm(Ops_1Mask, p_1, l);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Ops_1Heap;
                    ExhaleWellDef0Mask := Ops_1Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@59.14--59.15) [205933]"}
                      NoPerm < perm ==> NoPerm < Ops_1Mask[null, Tree(Ops_1Heap[p_1, l])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                    Ops_1Heap := ExhaleHeap;
                    // Stop execution
                    b_1_1 := false;
                  }
              }
              b_1_1 := b_1_1 && Seq#Equal(vals_1(Ops_1Heap, Ops_1Heap[p_1, l]), Seq#Drop(plvs, 1));
            }
          }
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- Translating statement: label lhs1 -- tree_delete_min.vpr@59.13--59.22
          lhs1:
          Labellhs1Heap := Ops_1Heap;
          Labellhs1Mask := Ops_1Mask;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        boolCur := true;
        if (b_1_1) {
          
          // -- Translating statement: fold acc(Tree(p), write) -- tree_delete_min.vpr@60.9--60.26
            ExhaleWellDef0Heap := Ops_1Heap;
            ExhaleWellDef0Mask := Ops_1Mask;
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
                  initNeededTransfer := Used_1Mask[rcvLocal, v_35] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.v, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [205936]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, v_35];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, v_35:=Used_1Mask[rcvLocal, v_35] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, v_35] == Used_1Heap[rcvLocal, v_35];
                        Ops_1Mask := Ops_1Mask[rcvLocal, v_35:=Ops_1Mask[rcvLocal, v_35] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, v_35];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, v_35:=Used_1Mask[rcvLocal, v_35] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, v_35] == Used_1Heap[rcvLocal, v_35];
                        Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, v_35:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.v (tree_delete_min.vpr@60.9--60.26) [205937]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, v_35] == initNeededTransfer;
                  
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
                  initNeededTransfer := Used_1Mask[rcvLocal, l] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.l, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [205938]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, l];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, l:=Used_1Mask[rcvLocal, l] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, l] == Used_1Heap[rcvLocal, l];
                        Ops_1Mask := Ops_1Mask[rcvLocal, l:=Ops_1Mask[rcvLocal, l] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, l];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, l:=Used_1Mask[rcvLocal, l] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, l] == Used_1Heap[rcvLocal, l];
                        Mask := Mask[rcvLocal, l:=Mask[rcvLocal, l] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, l:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@60.9--60.26) [205939]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, l] == initNeededTransfer;
                  
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
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@60.9--60.26) [205940]"}
                            HasDirectPerm(Result_1Mask, p_1, l);
                      }
                    }
                  arg := Result_1Heap[p_1, l];
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[null, Tree(arg)] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.l), write) might be negative. (tree_delete_min.vpr@60.9--60.26) [205941]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[null, Tree(arg)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg):=Used_1Mask[null, Tree(arg)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                        Ops_1Mask := Ops_1Mask[null, Tree(arg):=Ops_1Mask[null, Tree(arg)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg):=Used_1Mask[null, Tree(arg)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                        Mask := Mask[null, Tree(arg):=Mask[null, Tree(arg)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                          { newPMask[o_46, f_60] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_46, f_60] || Heap[null, Tree#sm(Heap[p_1, l])][o_46, f_60] ==> newPMask[o_46, f_60]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@60.9--60.26) [205942]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Tree(arg)] == initNeededTransfer;
                  
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
                  initNeededTransfer := Used_1Mask[rcvLocal, r_11] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.r, write) might be negative. (tree_delete_min.vpr@60.9--60.26) [205943]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[rcvLocal, r_11];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, r_11:=Used_1Mask[rcvLocal, r_11] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, r_11] == Used_1Heap[rcvLocal, r_11];
                        Ops_1Mask := Ops_1Mask[rcvLocal, r_11:=Ops_1Mask[rcvLocal, r_11] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, r_11];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[rcvLocal, r_11:=Used_1Mask[rcvLocal, r_11] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        b_2_1 := b_2_1 && Heap[rcvLocal, r_11] == Used_1Heap[rcvLocal, r_11];
                        Mask := Mask[rcvLocal, r_11:=Mask[rcvLocal, r_11] - takeTransfer];
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, r_11:=true]];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@60.9--60.26) [205944]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, r_11] == initNeededTransfer;
                  
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
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@60.9--60.26) [205945]"}
                            HasDirectPerm(Result_3Mask, p_1, r_11);
                      }
                    }
                  arg_1_13 := Result_3Heap[p_1, r_11];
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_1Mask[null, Tree(arg_1_13)] + neededTransfer;
                  assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.r), write) might be negative. (tree_delete_min.vpr@60.9--60.26) [205946]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[null, Tree(arg_1_13)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1_13):=Used_1Mask[null, Tree(arg_1_13)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1_13):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                        Ops_1Mask := Ops_1Mask[null, Tree(arg_1_13):=Ops_1Mask[null, Tree(arg_1_13)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg_1_13)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_1Mask := Used_1Mask[null, Tree(arg_1_13):=Used_1Mask[null, Tree(arg_1_13)] + takeTransfer];
                        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                        TempMask := ZeroMask[null, Tree(arg_1_13):=FullPerm];
                        b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                        Mask := Mask[null, Tree(arg_1_13):=Mask[null, Tree(arg_1_13)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                          { newPMask[o, f_61] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o, f_61] || Heap[null, Tree#sm(Heap[p_1, r_11])][o, f_61] ==> newPMask[o, f_61]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.r) (tree_delete_min.vpr@60.9--60.26) [205947]"}
                    b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Tree(arg_1_13)] == initNeededTransfer;
                  
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
            assume Ops_1Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Ops_1Heap[p_1, v_35]), CombineFrames(FrameFragment(Ops_1Heap[p_1, l]), CombineFrames(Ops_1Heap[null, Tree(Ops_1Heap[p_1, l])], CombineFrames(FrameFragment(Ops_1Heap[p_1, r_11]), Ops_1Heap[null, Tree(Ops_1Heap[p_1, r_11])]))))));
            if (!HasDirectPerm(Ops_1Mask, null, Tree(p_1))) {
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=ZeroPMask];
              havoc freshVersion;
              Ops_1Heap := Ops_1Heap[null, Tree(p_1):=freshVersion];
            }
            if (p_1 == null) {
            } else {
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, v_35:=true]];
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, l:=true]];
              havoc newPMask;
              assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
                { newPMask[o_14, f_3] }
                Ops_1Heap[null, Tree#sm(p_1)][o_14, f_3] || Ops_1Heap[null, Tree#sm(Ops_1Heap[p_1, l])][o_14, f_3] ==> newPMask[o_14, f_3]
              );
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=newPMask];
              Ops_1Heap := Ops_1Heap[null, Tree#sm(p_1):=Ops_1Heap[null, Tree#sm(p_1)][p_1, r_11:=true]];
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                { newPMask[o_3, f_24] }
                Ops_1Heap[null, Tree#sm(p_1)][o_3, f_24] || Ops_1Heap[null, Tree#sm(Ops_1Heap[p_1, r_11])][o_3, f_24] ==> newPMask[o_3, f_24]
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
          arg_2_13 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[null, Tree(arg_2_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(Tree(x), write) might be negative. (tree_delete_min.vpr@59.5--61.6) [205949]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Tree(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Tree(arg_2_13):=Used_2Mask[null, Tree(arg_2_13)] + takeTransfer];
                b_9 := b_9 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Tree(arg_2_13):=FullPerm];
                b_9 := b_9 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Tree(arg_2_13):=Ops_1Mask[null, Tree(arg_2_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Tree(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, Tree(arg_2_13):=Used_2Mask[null, Tree(arg_2_13)] + takeTransfer];
                b_9 := b_9 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, Tree(arg_2_13):=FullPerm];
                b_9 := b_9 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                Mask := Mask[null, Tree(arg_2_13):=Mask[null, Tree(arg_2_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                  { newPMask[o_1, f_10] }
                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_1, f_10] || Heap[null, Tree#sm(x)][o_1, f_10] ==> newPMask[o_1, f_10]
                );
                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.5--61.6) [205950]"}
            (b_1_1 && b_1_1) && b_9 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Tree(arg_2_13)] == initNeededTransfer;
          
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
                ExhaleWellDef0Heap := Result_6Heap;
                ExhaleWellDef0Mask := Result_6Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.21--59.22) [205951]"}
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
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@59.21--59.22) [205952]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                // Finish exhale
                // Stop execution
                assume false;
              }
          }
        }
        assert {:msg "  Packaging wand might fail. Assertion vals(x) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@59.5--61.6) [205953]"}
          (b_1_1 && b_1_1) && b_9 ==> Seq#Equal(vals_1(Result_6Heap, x), Seq#Drop(vals_1(oldHeap, x), 1));
        assume state(Heap, Mask);
        Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: while ((unfolding acc(Tree(p.l), write) in p.l.l != null)) -- tree_delete_min.vpr@63.5--80.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. Assertion p != null might not hold. (tree_delete_min.vpr@64.17--64.71) [205954]"}
              p_1 != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [205955]"}
                perm <= Mask[p_1, l];
            }
            Mask := Mask[p_1, l:=Mask[p_1, l] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@64.17--64.71) [205956]"}
                perm <= Mask[null, Tree(Heap[p_1, l])];
            }
            Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] - perm];
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not hold on entry. Assertion p.l != null might not hold. (tree_delete_min.vpr@64.17--64.71) [205957]"}
              Heap[p_1, l] != null;
            assert {:msg "  Loop invariant plvs == vals(p.l) might not hold on entry. Assertion plvs == vals(p.l) might not hold. (tree_delete_min.vpr@65.17--65.34) [205958]"}
              Seq#Equal(plvs, vals_1(Heap, Heap[p_1, l]));
            // permLe
            assert {:msg "  Loop invariant acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might not hold on entry. Magic wand instance not found. (tree_delete_min.vpr@66.17--66.24) [205959]"}
              FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))];
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] - FullPerm];
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
            Mask := Mask[p_1, l:=Mask[p_1, l] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(Tree(p.l), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [205960]"}
                HasDirectPerm(Mask, p_1, l);
            perm := FullPerm;
            Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of p.l != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [205961]"}
                HasDirectPerm(Mask, p_1, l);
            assume Heap[p_1, l] != null;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of plvs == vals(p.l)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@65.17--65.34) [205962]"}
                HasDirectPerm(Mask, p_1, l);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@65.25--65.34) [205963]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l])];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(plvs, vals_1(Heap, Heap[p_1, l]));
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..]
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume p_1 != null;
                WandDefLHSMask := WandDefLHSMask[p_1, l:=WandDefLHSMask[p_1, l] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Check definedness of acc(Tree(p.l), write)
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@66.17--66.24) [205964]"}
                    HasDirectPerm(WandDefLHSMask, p_1, l);
                perm := FullPerm;
                WandDefLHSMask := WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l]):=WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l])] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Check definedness of vals(p.l) == plvs[1..]
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (tree_delete_min.vpr@66.17--66.24) [205965]"}
                    HasDirectPerm(WandDefLHSMask, p_1, l);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := WandDefLHSHeap;
                    ExhaleWellDef0Mask := WandDefLHSMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@66.17--66.18) [205966]"}
                      NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Tree(WandDefLHSHeap[p_1, l])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                    WandDefLHSHeap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assume Seq#Equal(vals_1(WandDefLHSHeap, WandDefLHSHeap[p_1, l]), Seq#Drop(plvs, 1));
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs3 -- tree_delete_min.vpr@66.17--66.24
                  lhs3:
                  Labellhs3Heap := WandDefLHSHeap;
                  Labellhs3Mask := WandDefLHSMask;
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
                    ExhaleWellDef0Heap := WandDefRHSHeap;
                    ExhaleWellDef0Mask := WandDefRHSMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@66.23--66.24) [205967]"}
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
                    ExhaleWellDef0Heap := oldHeap;
                    ExhaleWellDef0Mask := oldMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@66.23--66.24) [205968]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
                assume Seq#Equal(vals_1(WandDefRHSHeap, x), Seq#Drop(vals_1(oldHeap, x), 1));
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + FullPerm];
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
            Mask := Mask[p_1, l:=Mask[p_1, l] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] + perm];
            assume state(Heap, Mask);
            assume Heap[p_1, l] != null;
            assume state(Heap, Mask);
            assume Seq#Equal(plvs, vals_1(Heap, Heap[p_1, l]));
            assume state(Heap, Mask);
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of (unfolding acc(Tree(p.l), write) in p.l.l != null)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume Tree#trigger(UnfoldingHeap, Tree(UnfoldingHeap[p_1, l]));
              assume UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l])] == FrameFragment((if UnfoldingHeap[p_1, l] == null then EmptyFrame else CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l], v_35]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l], l]), CombineFrames(UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], l])], CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11])]))))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  While statement might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@63.12--63.53) [205969]"}
                  perm <= UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l])];
              }
              UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l]):=UnfoldingMask[null, Tree(UnfoldingHeap[p_1, l])] - perm];
              if (UnfoldingHeap[p_1, l] == null) {
              } else {
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l], v_35:=UnfoldingMask[UnfoldingHeap[p_1, l], v_35] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l], l:=UnfoldingMask[UnfoldingHeap[p_1, l], l] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], l]):=UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], l])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(Tree(UnfoldingHeap[p_1, l]), UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l])], Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], l]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], l])]);
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                assume UnfoldingHeap[p_1, l] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[p_1, l], r_11:=UnfoldingMask[UnfoldingHeap[p_1, l], r_11] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11]):=UnfoldingMask[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(Tree(UnfoldingHeap[p_1, l]), UnfoldingHeap[null, Tree(UnfoldingHeap[p_1, l])], Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11]), UnfoldingHeap[null, Tree(UnfoldingHeap[UnfoldingHeap[p_1, l], r_11])]);
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@63.12--63.53) [205970]"}
                HasDirectPerm(UnfoldingMask, p_1, l);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@63.12--63.53) [205971]"}
                HasDirectPerm(UnfoldingMask, p_1, l);
              assert {:msg "  While statement might fail. There might be insufficient permission to access p.l.l (tree_delete_min.vpr@63.12--63.53) [205972]"}
                HasDirectPerm(UnfoldingMask, UnfoldingHeap[p_1, l], l);
              
              // -- Free assumptions (exp module)
                if (Heap[p_1, l] == null) {
                } else {
                  Heap := Heap[null, Tree#sm(Heap[p_1, l]):=Heap[null, Tree#sm(Heap[p_1, l])][Heap[p_1, l], v_35:=true]];
                  Heap := Heap[null, Tree#sm(Heap[p_1, l]):=Heap[null, Tree#sm(Heap[p_1, l])][Heap[p_1, l], l:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                    { newPMask[o_15, f_51] }
                    Heap[null, Tree#sm(Heap[p_1, l])][o_15, f_51] || Heap[null, Tree#sm(Heap[Heap[p_1, l], l])][o_15, f_51] ==> newPMask[o_15, f_51]
                  );
                  Heap := Heap[null, Tree#sm(Heap[p_1, l]):=newPMask];
                  Heap := Heap[null, Tree#sm(Heap[p_1, l]):=Heap[null, Tree#sm(Heap[p_1, l])][Heap[p_1, l], r_11:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
                    { newPMask[o_4, f_54] }
                    Heap[null, Tree#sm(Heap[p_1, l])][o_4, f_54] || Heap[null, Tree#sm(Heap[Heap[p_1, l], r_11])][o_4, f_54] ==> newPMask[o_4, f_54]
                  );
                  Heap := Heap[null, Tree#sm(Heap[p_1, l]):=newPMask];
                }
                assume state(Heap, Mask);
            assume Heap[Heap[p_1, l], l] != null;
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
                  assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@71.7--71.28) [205973]"}
                    HasDirectPerm(Mask, p_1, l);
                assume Tree#trigger(Heap, Tree(Heap[p_1, l]));
                assume Heap[null, Tree(Heap[p_1, l])] == FrameFragment((if Heap[p_1, l] == null then EmptyFrame else CombineFrames(FrameFragment(Heap[Heap[p_1, l], v_35]), CombineFrames(FrameFragment(Heap[Heap[p_1, l], l]), CombineFrames(Heap[null, Tree(Heap[Heap[p_1, l], l])], CombineFrames(FrameFragment(Heap[Heap[p_1, l], r_11]), Heap[null, Tree(Heap[Heap[p_1, l], r_11])]))))));
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@71.7--71.28) [205974]"}
                    perm <= Mask[null, Tree(Heap[p_1, l])];
                }
                Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, Tree(Heap[p_1, l]))) {
                    havoc newVersion;
                    Heap := Heap[null, Tree(Heap[p_1, l]):=newVersion];
                  }
                if (Heap[p_1, l] == null) {
                } else {
                  perm := FullPerm;
                  assume Heap[p_1, l] != null;
                  Mask := Mask[Heap[p_1, l], v_35:=Mask[Heap[p_1, l], v_35] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  assume Heap[p_1, l] != null;
                  Mask := Mask[Heap[p_1, l], l:=Mask[Heap[p_1, l], l] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  Mask := Mask[null, Tree(Heap[Heap[p_1, l], l]):=Mask[null, Tree(Heap[Heap[p_1, l], l])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree(Heap[p_1, l]), Heap[null, Tree(Heap[p_1, l])], Tree(Heap[Heap[p_1, l], l]), Heap[null, Tree(Heap[Heap[p_1, l], l])]);
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  assume Heap[p_1, l] != null;
                  Mask := Mask[Heap[p_1, l], r_11:=Mask[Heap[p_1, l], r_11] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  Mask := Mask[null, Tree(Heap[Heap[p_1, l], r_11]):=Mask[null, Tree(Heap[Heap[p_1, l], r_11])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree(Heap[p_1, l]), Heap[null, Tree(Heap[p_1, l])], Tree(Heap[Heap[p_1, l], r_11]), Heap[null, Tree(Heap[Heap[p_1, l], r_11])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: p := p.l -- tree_delete_min.vpr@72.7--72.15
                
                // -- Check definedness of p.l
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@72.7--72.15) [205975]"}
                    HasDirectPerm(Mask, p_1, l);
                p_1 := Heap[p_1, l];
                assume state(Heap, Mask);
              
              // -- Translating statement: plvs := vals(p.l) -- tree_delete_min.vpr@73.7--73.24
                
                // -- Check definedness of vals(p.l)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@73.7--73.24) [205976]"}
                    HasDirectPerm(Mask, p_1, l);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@73.15--73.24) [205977]"}
                      NoPerm < perm ==> NoPerm < Mask[null, Tree(Heap[p_1, l])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                plvs := vals_1(Heap, Heap[p_1, l]);
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
                    Ops_3Mask := Ops_3Mask[p_1, l:=Ops_3Mask[p_1, l] + perm];
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                  }
                  if (b_12) {
                    if (b_12) {
                      if (b_12) {
                        
                        // -- Check definedness of acc(Tree(p.l), write)
                          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@75.7--79.8) [205978]"}
                            HasDirectPerm(Ops_3Mask, p_1, l);
                      }
                      perm := FullPerm;
                      b_12 := b_12;
                      Ops_3Mask := Ops_3Mask[null, Tree(Ops_3Heap[p_1, l]):=Ops_3Mask[null, Tree(Ops_3Heap[p_1, l])] + perm];
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    }
                    if (b_12) {
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      if (b_12) {
                        
                        // -- Check definedness of vals(p.l) == plvs[1..]
                          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@75.7--79.8) [205979]"}
                            HasDirectPerm(Ops_3Mask, p_1, l);
                          if (*) {
                            // Exhale precondition of function application
                            ExhaleWellDef0Heap := Ops_3Heap;
                            ExhaleWellDef0Mask := Ops_3Mask;
                            perm := FullPerm;
                            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@75.16--75.17) [205980]"}
                              NoPerm < perm ==> NoPerm < Ops_3Mask[null, Tree(Ops_3Heap[p_1, l])];
                            // Finish exhale
                            havoc ExhaleHeap;
                            b_12 := b_12 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                            Ops_3Heap := ExhaleHeap;
                            // Stop execution
                            b_12 := false;
                          }
                      }
                      b_12 := b_12 && Seq#Equal(vals_1(Ops_3Heap, Ops_3Heap[p_1, l]), Seq#Drop(plvs, 1));
                    }
                  }
                }
                b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                
                // -- Translating statement: label lhs4 -- tree_delete_min.vpr@75.15--75.24
                  lhs4:
                  Labellhs4Heap := Ops_3Heap;
                  Labellhs4Mask := Ops_3Mask;
                  b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                boolCur_1 := true;
                if (b_12) {
                  
                  // -- Translating statement: fold acc(Tree(p), write) -- tree_delete_min.vpr@76.11--76.23
                    ExhaleWellDef0Heap := Ops_3Heap;
                    ExhaleWellDef0Mask := Ops_3Mask;
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
                          initNeededTransfer := Used_4Mask[rcvLocal, v_35] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.v, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [205981]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, v_35];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, v_35:=Used_4Mask[rcvLocal, v_35] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, v_35] == Used_4Heap[rcvLocal, v_35];
                                Ops_3Mask := Ops_3Mask[rcvLocal, v_35:=Ops_3Mask[rcvLocal, v_35] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, v_35];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, v_35:=Used_4Mask[rcvLocal, v_35] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, v_35] == Used_4Heap[rcvLocal, v_35];
                                Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, v_35:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.v (tree_delete_min.vpr@76.11--76.23) [205982]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, v_35] == initNeededTransfer;
                          
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
                          initNeededTransfer := Used_4Mask[rcvLocal, l] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.l, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [205983]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, l];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, l:=Used_4Mask[rcvLocal, l] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, l] == Used_4Heap[rcvLocal, l];
                                Ops_3Mask := Ops_3Mask[rcvLocal, l:=Ops_3Mask[rcvLocal, l] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, l];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, l:=Used_4Mask[rcvLocal, l] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, l] == Used_4Heap[rcvLocal, l];
                                Mask := Mask[rcvLocal, l:=Mask[rcvLocal, l] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, l:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@76.11--76.23) [205984]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, l] == initNeededTransfer;
                          
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
                                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@76.11--76.23) [205985]"}
                                    HasDirectPerm(Result_8Mask, p_1, l);
                              }
                            }
                          arg_3_13 := Result_8Heap[p_1, l];
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[null, Tree(arg_3_13)] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.l), write) might be negative. (tree_delete_min.vpr@76.11--76.23) [205986]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[null, Tree(arg_3_13)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_3_13):=Used_4Mask[null, Tree(arg_3_13)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_3_13):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                                Ops_3Mask := Ops_3Mask[null, Tree(arg_3_13):=Ops_3Mask[null, Tree(arg_3_13)] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[null, Tree(arg_3_13)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_3_13):=Used_4Mask[null, Tree(arg_3_13)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_3_13):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                                Mask := Mask[null, Tree(arg_3_13):=Mask[null, Tree(arg_3_13)] - takeTransfer];
                                havoc newPMask;
                                assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                                  { newPMask[o_12, f_25] }
                                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_12, f_25] || Heap[null, Tree#sm(Heap[p_1, l])][o_12, f_25] ==> newPMask[o_12, f_25]
                                );
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@76.11--76.23) [205987]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Tree(arg_3_13)] == initNeededTransfer;
                          
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
                          initNeededTransfer := Used_4Mask[rcvLocal, r_11] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(p.r, write) might be negative. (tree_delete_min.vpr@76.11--76.23) [205988]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[rcvLocal, r_11];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, r_11:=Used_4Mask[rcvLocal, r_11] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Ops_3Heap[rcvLocal, r_11] == Used_4Heap[rcvLocal, r_11];
                                Ops_3Mask := Ops_3Mask[rcvLocal, r_11:=Ops_3Mask[rcvLocal, r_11] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[rcvLocal, r_11];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[rcvLocal, r_11:=Used_4Mask[rcvLocal, r_11] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                b_13 := b_13 && Heap[rcvLocal, r_11] == Used_4Heap[rcvLocal, r_11];
                                Mask := Mask[rcvLocal, r_11:=Mask[rcvLocal, r_11] - takeTransfer];
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][p_1, r_11:=true]];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@76.11--76.23) [205989]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, r_11] == initNeededTransfer;
                          
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
                                  assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access p.r (tree_delete_min.vpr@76.11--76.23) [205990]"}
                                    HasDirectPerm(Result_10Mask, p_1, r_11);
                              }
                            }
                          arg_4_13 := Result_10Heap[p_1, r_11];
                          neededTransfer := FullPerm;
                          initNeededTransfer := Used_4Mask[null, Tree(arg_4_13)] + neededTransfer;
                          assert {:msg "  Folding Tree(p) might fail. Fraction acc(Tree(p.r), write) might be negative. (tree_delete_min.vpr@76.11--76.23) [205991]"}
                            neededTransfer >= 0.000000000;
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Ops_3Mask[null, Tree(arg_4_13)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_4_13):=Used_4Mask[null, Tree(arg_4_13)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_4_13):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                                Ops_3Mask := Ops_3Mask[null, Tree(arg_4_13):=Ops_3Mask[null, Tree(arg_4_13)] - takeTransfer];
                              }
                            }
                          
                          // -- transfer code for top state of stack
                            // accumulate constraints which need to be satisfied for transfer to occur
                            accVar2 := true;
                            // actual code for the transfer from current state on stack
                            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                              maskTransfer := Mask[null, Tree(arg_4_13)];
                              if (neededTransfer <= maskTransfer) {
                                takeTransfer := neededTransfer;
                              } else {
                                takeTransfer := maskTransfer;
                              }
                              if (takeTransfer > 0.000000000) {
                                neededTransfer := neededTransfer - takeTransfer;
                                Used_4Mask := Used_4Mask[null, Tree(arg_4_13):=Used_4Mask[null, Tree(arg_4_13)] + takeTransfer];
                                b_13 := b_13 && state(Used_4Heap, Used_4Mask);
                                TempMask := ZeroMask[null, Tree(arg_4_13):=FullPerm];
                                b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                                Mask := Mask[null, Tree(arg_4_13):=Mask[null, Tree(arg_4_13)] - takeTransfer];
                                havoc newPMask;
                                assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                                  { newPMask[o_41, f_21] }
                                  Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_41, f_21] || Heap[null, Tree#sm(Heap[p_1, r_11])][o_41, f_21] ==> newPMask[o_41, f_21]
                                );
                                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                              }
                            }
                          assert {:msg "  Folding Tree(p) might fail. There might be insufficient permission to access Tree(p.r) (tree_delete_min.vpr@76.11--76.23) [205992]"}
                            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Tree(arg_4_13)] == initNeededTransfer;
                          
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
                    assume Ops_3Heap[null, Tree(p_1)] == FrameFragment((if p_1 == null then EmptyFrame else CombineFrames(FrameFragment(Ops_3Heap[p_1, v_35]), CombineFrames(FrameFragment(Ops_3Heap[p_1, l]), CombineFrames(Ops_3Heap[null, Tree(Ops_3Heap[p_1, l])], CombineFrames(FrameFragment(Ops_3Heap[p_1, r_11]), Ops_3Heap[null, Tree(Ops_3Heap[p_1, r_11])]))))));
                    if (!HasDirectPerm(Ops_3Mask, null, Tree(p_1))) {
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=ZeroPMask];
                      havoc freshVersion;
                      Ops_3Heap := Ops_3Heap[null, Tree(p_1):=freshVersion];
                    }
                    if (p_1 == null) {
                    } else {
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, v_35:=true]];
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, l:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                        { newPMask[o_23, f_13] }
                        Ops_3Heap[null, Tree#sm(p_1)][o_23, f_13] || Ops_3Heap[null, Tree#sm(Ops_3Heap[p_1, l])][o_23, f_13] ==> newPMask[o_23, f_13]
                      );
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=newPMask];
                      Ops_3Heap := Ops_3Heap[null, Tree#sm(p_1):=Ops_3Heap[null, Tree#sm(p_1)][p_1, r_11:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                        { newPMask[o_13, f_65] }
                        Ops_3Heap[null, Tree#sm(p_1)][o_13, f_65] || Ops_3Heap[null, Tree#sm(Ops_3Heap[p_1, r_11])][o_13, f_65] ==> newPMask[o_13, f_65]
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
                      ExhaleWellDef0Heap := Ops_3Heap;
                      ExhaleWellDef0Mask := Ops_3Mask;
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
                                  WandDefLHSMask := WandDefLHSMask[oldP, l:=WandDefLHSMask[oldP, l] + perm];
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Check definedness of acc(Tree(oldP.l), write)
                                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [205993]"}
                                      HasDirectPerm(WandDefLHSMask, oldP, l);
                                  perm := FullPerm;
                                  WandDefLHSMask := WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l]):=WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l])] + perm];
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Check definedness of vals(oldP.l) == oldPlvs[1..]
                                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [205994]"}
                                      HasDirectPerm(WandDefLHSMask, oldP, l);
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Heap := WandDefLHSHeap;
                                      ExhaleWellDef1Mask := WandDefLHSMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.53--77.65) [205995]"}
                                        NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Tree(WandDefLHSHeap[oldP, l])];
                                      // Finish exhale
                                      havoc ExhaleHeap;
                                      assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                      WandDefLHSHeap := ExhaleHeap;
                                      // Stop execution
                                      assume false;
                                    }
                                  assume Seq#Equal(vals_1(WandDefLHSHeap, WandDefLHSHeap[oldP, l]), Seq#Drop(oldPlvs, 1));
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Translating statement: label lhs7 -- tree_delete_min.vpr@77.17--78.55
                                    lhs7:
                                    Labellhs7Heap := WandDefLHSHeap;
                                    Labellhs7Mask := WandDefLHSMask;
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
                                      ExhaleWellDef1Heap := WandDefRHSHeap;
                                      ExhaleWellDef1Mask := WandDefRHSMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@78.27--78.34) [205996]"}
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
                                      ExhaleWellDef1Heap := oldHeap;
                                      ExhaleWellDef1Mask := oldMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@78.42--78.49) [205997]"}
                                        NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                                      // Finish exhale
                                      // Stop execution
                                      assume false;
                                    }
                                  assume Seq#Equal(vals_1(WandDefRHSHeap, x), Seq#Drop(vals_1(oldHeap, x), 1));
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  assume false;
                                }
                            }
                          }
                        neededTransfer := 1.000000000;
                        initNeededTransfer := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(oldP.l, write) && (acc(Tree(oldP.l), write) && vals(oldP.l) == oldPlvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might be negative. (tree_delete_min.vpr@77.11--78.55) [205998]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + takeTransfer];
                              b_20 := b_20 && state(Used_5Heap, Used_5Mask);
                              Ops_3Mask := Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Ops_3Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + takeTransfer];
                              b_20 := b_20 && state(Used_5Heap, Used_5Mask);
                              Mask := Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] - takeTransfer];
                            }
                          }
                        assert {:msg "  Applying wand might fail. Magic wand instance not found. (tree_delete_min.vpr@77.11--78.55) [205999]"}
                          b_12 && b_20 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand(oldP, FullPerm, oldP, oldP, Seq#Drop(oldPlvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] == initNeededTransfer;
                        
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
                      ExhaleWellDef0Heap := Ops_3Heap;
                      ExhaleWellDef0Mask := Ops_3Mask;
                      havoc Used_6Heap;
                      Used_6Mask := ZeroMask;
                      b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                      
                      // -- Transfer of acc(oldP.l, write)
                        rcvLocal := oldP;
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_6Mask[rcvLocal, l] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(oldP.l, write) might be negative. (tree_delete_min.vpr@77.11--78.55) [206000]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[rcvLocal, l];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[rcvLocal, l:=Used_6Mask[rcvLocal, l] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              b_22 := b_22 && Ops_3Heap[rcvLocal, l] == Used_6Heap[rcvLocal, l];
                              Ops_3Mask := Ops_3Mask[rcvLocal, l:=Ops_3Mask[rcvLocal, l] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[rcvLocal, l];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[rcvLocal, l:=Used_6Mask[rcvLocal, l] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              b_22 := b_22 && Heap[rcvLocal, l] == Used_6Heap[rcvLocal, l];
                              Mask := Mask[rcvLocal, l:=Mask[rcvLocal, l] - takeTransfer];
                              Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][oldP, l:=true]];
                            }
                          }
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [206001]"}
                          b_12 && b_22 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, l] == initNeededTransfer;
                        
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
                                assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [206002]"}
                                  HasDirectPerm(Result_14Mask, oldP, l);
                            }
                          }
                        arg_5_12 := Result_14Heap[oldP, l];
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_6Mask[null, Tree(arg_5_12)] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(Tree(oldP.l), write) might be negative. (tree_delete_min.vpr@77.11--78.55) [206003]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, Tree(arg_5_12)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[null, Tree(arg_5_12):=Used_6Mask[null, Tree(arg_5_12)] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              TempMask := ZeroMask[null, Tree(arg_5_12):=FullPerm];
                              b_22 := b_22 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                              Ops_3Mask := Ops_3Mask[null, Tree(arg_5_12):=Ops_3Mask[null, Tree(arg_5_12)] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_12 && b_22) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, Tree(arg_5_12)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_6Mask := Used_6Mask[null, Tree(arg_5_12):=Used_6Mask[null, Tree(arg_5_12)] + takeTransfer];
                              b_22 := b_22 && state(Used_6Heap, Used_6Mask);
                              TempMask := ZeroMask[null, Tree(arg_5_12):=FullPerm];
                              b_22 := b_22 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                              Mask := Mask[null, Tree(arg_5_12):=Mask[null, Tree(arg_5_12)] - takeTransfer];
                              havoc newPMask;
                              assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                                { newPMask[o_51, f_66] }
                                Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_51, f_66] || Heap[null, Tree#sm(Heap[oldP, l])][o_51, f_66] ==> newPMask[o_51, f_66]
                              );
                              Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                            }
                          }
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.11--78.55) [206004]"}
                          b_12 && b_22 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Tree(arg_5_12)] == initNeededTransfer;
                        
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
                            assert {:msg "  Applying wand might fail. There might be insufficient permission to access oldP.l (tree_delete_min.vpr@77.11--78.55) [206005]"}
                              HasDirectPerm(Result_15Mask, oldP, l);
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef1Heap := Result_15Heap;
                              ExhaleWellDef1Mask := Result_15Mask;
                              perm := FullPerm;
                              assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(oldP.l) (tree_delete_min.vpr@77.53--77.65) [206006]"}
                                NoPerm < perm ==> NoPerm < Result_15Mask[null, Tree(Result_15Heap[oldP, l])];
                              // Finish exhale
                              havoc ExhaleHeap;
                              assume IdenticalOnKnownLocations(Result_15Heap, ExhaleHeap, Result_15Mask);
                              Result_15Heap := ExhaleHeap;
                              // Stop execution
                              assume false;
                            }
                        }
                      }
                      assert {:msg "  Applying wand might fail. Assertion vals(oldP.l) == oldPlvs[1..] might not hold. (tree_delete_min.vpr@77.11--78.55) [206007]"}
                        b_12 && b_22 ==> Seq#Equal(vals_1(Result_15Heap, Result_15Heap[oldP, l]), Seq#Drop(oldPlvs, 1));
                      b_12 := b_12 && b_22;
                      b_12 := b_12 && Used_6Heap == Ops_3Heap;
                    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                    
                    // -- inhale the RHS of the wand
                      perm := FullPerm;
                      b_12 := b_12;
                      Ops_3Mask := Ops_3Mask[null, Tree(x):=Ops_3Mask[null, Tree(x)] + perm];
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
                      b_12 := b_12 && Seq#Equal(vals_1(Ops_3Heap, x), Seq#Drop(vals_1(oldHeap, x), 1));
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
                b_25_1 := b_25_1 && state(Used_7Heap, Used_7Mask);
                
                // -- Transfer of acc(Tree(x), write)
                  arg_6_12 := x;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_7Mask[null, Tree(arg_6_12)] + neededTransfer;
                  assert {:msg "  Packaging wand might fail. Fraction acc(Tree(x), write) might be negative. (tree_delete_min.vpr@75.7--79.8) [206008]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_12 && b_12) && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[null, Tree(arg_6_12)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_7Mask := Used_7Mask[null, Tree(arg_6_12):=Used_7Mask[null, Tree(arg_6_12)] + takeTransfer];
                        b_25_1 := b_25_1 && state(Used_7Heap, Used_7Mask);
                        TempMask := ZeroMask[null, Tree(arg_6_12):=FullPerm];
                        b_25_1 := b_25_1 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
                        Ops_3Mask := Ops_3Mask[null, Tree(arg_6_12):=Ops_3Mask[null, Tree(arg_6_12)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_12 && b_12) && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Tree(arg_6_12)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_7Mask := Used_7Mask[null, Tree(arg_6_12):=Used_7Mask[null, Tree(arg_6_12)] + takeTransfer];
                        b_25_1 := b_25_1 && state(Used_7Heap, Used_7Mask);
                        TempMask := ZeroMask[null, Tree(arg_6_12):=FullPerm];
                        b_25_1 := b_25_1 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                        Mask := Mask[null, Tree(arg_6_12):=Mask[null, Tree(arg_6_12)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
                          { newPMask[o_52, f_14] }
                          Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))][o_52, f_14] || Heap[null, Tree#sm(x)][o_52, f_14] ==> newPMask[o_52, f_14]
                        );
                        Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=newPMask];
                      }
                    }
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.7--79.8) [206009]"}
                    (b_12 && b_12) && b_25_1 ==> neededTransfer == 0.000000000 && Used_7Mask[null, Tree(arg_6_12)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_26_1 := b_12 && b_25_1;
                    b_26_1 := b_26_1 && state(Result_16Heap, Result_16Mask);
                    b_26_1 := b_26_1 && sumMask(Result_16Mask, Ops_3Mask, Used_7Mask);
                    b_26_1 := (b_26_1 && IdenticalOnKnownLocations(Ops_3Heap, Result_16Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_16Heap, Used_7Mask);
                    b_26_1 := b_26_1 && state(Result_16Heap, Result_16Mask);
                  b_12 := b_12 && b_26_1;
                if ((b_12 && b_12) && b_25_1) {
                  if (b_12) {
                    
                    // -- Check definedness of vals(x) == old(vals(x))[1..]
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := Result_16Heap;
                        ExhaleWellDef0Mask := Result_16Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.23--75.24) [206010]"}
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
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(x) (tree_delete_min.vpr@75.23--75.24) [206011]"}
                          NoPerm < perm ==> NoPerm < oldMask[null, Tree(x)];
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                  }
                }
                assert {:msg "  Packaging wand might fail. Assertion vals(x) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@75.7--79.8) [206012]"}
                  (b_12 && b_12) && b_25_1 ==> Seq#Equal(vals_1(Result_16Heap, x), Seq#Drop(vals_1(oldHeap, x), 1));
                assume state(Heap, Mask);
                Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + FullPerm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. Assertion p != null might not hold. (tree_delete_min.vpr@64.17--64.71) [206013]"}
              p_1 != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. There might be insufficient permission to access p.l (tree_delete_min.vpr@64.17--64.71) [206014]"}
                perm <= Mask[p_1, l];
            }
            Mask := Mask[p_1, l:=Mask[p_1, l] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@64.17--64.71) [206015]"}
                perm <= Mask[null, Tree(Heap[p_1, l])];
            }
            Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] - perm];
            assert {:msg "  Loop invariant p != null && (acc(p.l, write) && (acc(Tree(p.l), write) && p.l != null)) might not be preserved. Assertion p.l != null might not hold. (tree_delete_min.vpr@64.17--64.71) [206016]"}
              Heap[p_1, l] != null;
            assert {:msg "  Loop invariant plvs == vals(p.l) might not be preserved. Assertion plvs == vals(p.l) might not hold. (tree_delete_min.vpr@65.17--65.34) [206017]"}
              Seq#Equal(plvs, vals_1(Heap, Heap[p_1, l]));
            // permLe
            assert {:msg "  Loop invariant acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --* acc(Tree(x), write) && vals(x) == old(vals(x))[1..] might not be preserved. Magic wand instance not found. (tree_delete_min.vpr@66.17--66.24) [206018]"}
              FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))];
            Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] - FullPerm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[Heap[p_1, l], l] != null);
          assume state(Heap, Mask);
          assume p_1 != null;
          perm := FullPerm;
          assume p_1 != null;
          Mask := Mask[p_1, l:=Mask[p_1, l] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] + perm];
          assume state(Heap, Mask);
          assume Heap[p_1, l] != null;
          assume state(Heap, Mask);
          assume Seq#Equal(plvs, vals_1(Heap, Heap[p_1, l]));
          assume state(Heap, Mask);
          Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] + FullPerm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(Tree(p.l), write) -- tree_delete_min.vpr@82.5--82.26
        
        // -- Check definedness of acc(Tree(p.l), write)
          assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@82.5--82.26) [206019]"}
            HasDirectPerm(Mask, p_1, l);
        assume Tree#trigger(Heap, Tree(Heap[p_1, l]));
        assume Heap[null, Tree(Heap[p_1, l])] == FrameFragment((if Heap[p_1, l] == null then EmptyFrame else CombineFrames(FrameFragment(Heap[Heap[p_1, l], v_35]), CombineFrames(FrameFragment(Heap[Heap[p_1, l], l]), CombineFrames(Heap[null, Tree(Heap[Heap[p_1, l], l])], CombineFrames(FrameFragment(Heap[Heap[p_1, l], r_11]), Heap[null, Tree(Heap[Heap[p_1, l], r_11])]))))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Tree(p.l) might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@82.5--82.26) [206022]"}
            perm <= Mask[null, Tree(Heap[p_1, l])];
        }
        Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Tree(Heap[p_1, l]))) {
            havoc newVersion;
            Heap := Heap[null, Tree(Heap[p_1, l]):=newVersion];
          }
        if (Heap[p_1, l] == null) {
        } else {
          perm := FullPerm;
          assume Heap[p_1, l] != null;
          Mask := Mask[Heap[p_1, l], v_35:=Mask[Heap[p_1, l], v_35] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Heap[p_1, l] != null;
          Mask := Mask[Heap[p_1, l], l:=Mask[Heap[p_1, l], l] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[Heap[p_1, l], l]):=Mask[null, Tree(Heap[Heap[p_1, l], l])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(Heap[p_1, l]), Heap[null, Tree(Heap[p_1, l])], Tree(Heap[Heap[p_1, l], l]), Heap[null, Tree(Heap[Heap[p_1, l], l])]);
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Heap[p_1, l] != null;
          Mask := Mask[Heap[p_1, l], r_11:=Mask[Heap[p_1, l], r_11] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree(Heap[Heap[p_1, l], r_11]):=Mask[null, Tree(Heap[Heap[p_1, l], r_11])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree(Heap[p_1, l]), Heap[null, Tree(Heap[p_1, l])], Tree(Heap[Heap[p_1, l], r_11]), Heap[null, Tree(Heap[Heap[p_1, l], r_11])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert vals(p.l.l) == Seq[Int]() -- tree_delete_min.vpr@83.5--83.37
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of vals(p.l.l) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@83.12--83.37) [206028]"}
            HasDirectPerm(ExhaleWellDef0Mask, p_1, l);
          assert {:msg "  Assert might fail. There might be insufficient permission to access p.l.l (tree_delete_min.vpr@83.12--83.37) [206029]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[p_1, l], l);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function vals might not hold. There might be insufficient permission to access Tree(p.l.l) (tree_delete_min.vpr@83.12--83.23) [206030]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree(ExhaleWellDef0Heap[ExhaleWellDef0Heap[p_1, l], l])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion vals(p.l.l) == Seq[Int]() might not hold. (tree_delete_min.vpr@83.12--83.37) [206031]"}
          Seq#Equal(vals_1(Heap, Heap[Heap[p_1, l], l]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
      
      // -- Translating statement: p.l := p.l.r -- tree_delete_min.vpr@85.5--85.17
        
        // -- Check definedness of p.l.r
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@85.5--85.17) [206032]"}
            HasDirectPerm(Mask, p_1, l);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l.r (tree_delete_min.vpr@85.5--85.17) [206033]"}
            HasDirectPerm(Mask, Heap[p_1, l], r_11);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@85.5--85.17) [206034]"}
          FullPerm == Mask[p_1, l];
        Heap := Heap[p_1, l:=Heap[Heap[p_1, l], r_11]];
        assume state(Heap, Mask);
      
      // -- Translating statement: apply acc(p.l, write) && (acc(Tree(p.l), write) && vals(p.l) == plvs[1..]) --*
  //   acc(Tree(x), write) && vals(x) == old(vals(x))[1..] -- tree_delete_min.vpr@87.5--87.18
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (tree_delete_min.vpr@87.5--87.18) [206035]"}
            FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))];
          Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1)):=Mask[null, wand(p_1, FullPerm, p_1, p_1, Seq#Drop(plvs, 1), x, x, Seq#Drop(vals_1(oldHeap, x), 1))] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.l (tree_delete_min.vpr@87.5--87.18) [206037]"}
              perm <= Mask[p_1, l];
          }
          Mask := Mask[p_1, l:=Mask[p_1, l] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Tree(p.l) (tree_delete_min.vpr@87.5--87.18) [206039]"}
              perm <= Mask[null, Tree(Heap[p_1, l])];
          }
          Mask := Mask[null, Tree(Heap[p_1, l]):=Mask[null, Tree(Heap[p_1, l])] - perm];
          assert {:msg "  Applying wand might fail. Assertion vals(p.l) == plvs[1..] might not hold. (tree_delete_min.vpr@87.5--87.18) [206040]"}
            Seq#Equal(vals_1(Heap, Heap[p_1, l]), Seq#Drop(plvs, 1));
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          Mask := Mask[null, Tree(x):=Mask[null, Tree(x)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(vals_1(Heap, x), Seq#Drop(vals_1(oldHeap, x), 1));
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of tree_delete_min might not hold. There might be insufficient permission to access Tree(z) (tree_delete_min.vpr@42.11--42.23) [206042]"}
        perm <= Mask[null, Tree(z)];
    }
    Mask := Mask[null, Tree(z):=Mask[null, Tree(z)] - perm];
    assert {:msg "  Postcondition of tree_delete_min might not hold. Assertion vals(z) == old(vals(x))[1..] might not hold. (tree_delete_min.vpr@43.11--43.39) [206043]"}
      Seq#Equal(vals_1(Heap, z), Seq#Drop(vals_1(oldHeap, x), 1));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}