// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/allTypes.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/allTypes-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_19) ==> Heap[o_12, f_19] == ExhaleHeap[o_12, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_51: (Field A B), v: B ::
  { Heap[o_1, f_51:=v] }
  succHeap(Heap, Heap[o_1, f_51:=v])
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
// - height 17: sequences
// - height 16: fact
// - height 15: predicates_e
// - height 14: predicates
// - height 13: rationals_e
// - height 12: sets_e
// - height 11: fact_e
// - height 10: multiSets
// - height 9: references
// - height 8: booleans_e
// - height 7: PI_list
// - height 6: references_e
// - height 5: rationals
// - height 4: multiSets_e
// - height 3: sets
// - height 2: booleans
// - height 1: numberOfUsers
// - height 0: sequences_e
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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of domain MultiSetWellFoundedOrder
// ==================================================

// The type for domain MultiSetWellFoundedOrder
type MultiSetWellFoundedOrderDomainType S;

// Translation of domain axiom multiset_ax_dec
axiom (forall <S> mSet1: (MultiSet S), mSet2: (MultiSet S) ::
  { (decreasing(mSet1, mSet2): bool) }
  MultiSet#Card(mSet1) < MultiSet#Card(mSet2) ==> (decreasing(mSet1, mSet2): bool)
);

// Translation of domain axiom multiset_ax_bound
axiom (forall <S> mSet1: (MultiSet S) ::
  { (bounded(mSet1): bool) }
  (bounded(mSet1): bool)
);

// ==================================================
// Translation of domain SetWellFoundedOrder
// ==================================================

// The type for domain SetWellFoundedOrder
type SetWellFoundedOrderDomainType S;

// Translation of domain axiom set_ax_dec
axiom (forall <S> set1: (Set S), set2: (Set S) ::
  { (decreasing(set1, set2): bool) }
  Set#Card(set1) < Set#Card(set2) ==> (decreasing(set1, set2): bool)
);

// Translation of domain axiom set_ax_bound
axiom (forall <S> set1: (Set S) ::
  { (bounded(set1): bool) }
  (bounded(set1): bool)
);

// ==================================================
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of domain SeqWellFoundedOrder
// ==================================================

// The type for domain SeqWellFoundedOrder
type SeqWellFoundedOrderDomainType S;

// Translation of domain axiom seq_ax_dec
axiom (forall <S> seq1: (Seq S), seq2: (Seq S) ::
  { (decreasing(seq1, seq2): bool) }
  Seq#Length(seq1) < Seq#Length(seq2) ==> (decreasing(seq1, seq2): bool)
);

// Translation of domain axiom seq_ax_bound
axiom (forall <S> seq1: (Seq S) ::
  { (bounded(seq1): bool) }
  Seq#Length(seq1) >= 0 ==> (bounded(seq1): bool)
);

// ==================================================
// Translation of domain BoolWellFoundedOrder
// ==================================================

// The type for domain BoolWellFoundedOrder
type BoolWellFoundedOrderDomainType;

// Translation of domain axiom bool_ax_dec
axiom (decreasing(false, true): bool);

// Translation of domain axiom bool_ax_bound
axiom (forall bool1: bool ::
  { (bounded(bool1): bool) }
  (bounded(bool1): bool)
);

// ==================================================
// Translation of domain PredicateInstancesWellFoundedOrder
// ==================================================

// The type for domain PredicateInstancesWellFoundedOrder
type PredicateInstancesWellFoundedOrderDomainType;

// Translation of domain axiom predicate_instances_ax_dec
axiom (forall l1_1: PredicateInstanceDomainType, l2: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l2): bool) }
  (decreasing(l1_1, l2): bool) == (nestedPredicates(l1_1, l2): bool)
);

// Translation of domain axiom predicate_instances_ax_bound
axiom (forall l1_1: PredicateInstanceDomainType ::
  { (bounded(l1_1): bool) }
  (bounded(l1_1): bool)
);

// ==================================================
// Translation of domain PredicateInstancesNestedRelation
// ==================================================

// The type for domain PredicateInstancesNestedRelation
type PredicateInstancesNestedRelationDomainType;

// Translation of domain function nestedPredicates
function  nestedPredicates(l1_2: PredicateInstanceDomainType, l2_1: PredicateInstanceDomainType): bool;

// Translation of domain axiom nestedTrans
axiom (forall l1_1: PredicateInstanceDomainType, l2: PredicateInstanceDomainType, l3: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l2): bool), (nestedPredicates(l2, l3): bool) }
  (nestedPredicates(l1_1, l2): bool) && (nestedPredicates(l2, l3): bool) ==> (nestedPredicates(l1_1, l3): bool)
);

// Translation of domain axiom nestedReflex
axiom (forall l1_1: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l1_1): bool) }
  !(nestedPredicates(l1_1, l1_1): bool)
);

// ==================================================
// Translation of domain PredicateInstance
// ==================================================

// The type for domain PredicateInstance
type PredicateInstanceDomainType;

// ==================================================
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
);

// ==================================================
// Translation of domain PermWellFoundedOrder
// ==================================================

// The type for domain PermWellFoundedOrder
type PermWellFoundedOrderDomainType;

// Translation of domain axiom rational_ax_dec
axiom (forall int1: Perm, int2: Perm ::
  { (decreasing(int1, int2): bool) }
  int1 <= int2 - 1 / 1 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom rational_ax_bound
axiom (forall int1: Perm ::
  { (bounded(int1): bool) }
  0 / 1 <= int1 ==> (bounded(int1): bool)
);

// ==================================================
// Translation of domain RefWellFoundedOrder
// ==================================================

// The type for domain RefWellFoundedOrder
type RefWellFoundedOrderDomainType;

// Translation of domain axiom ref_ax_dec
axiom (forall ref1: Ref ::
  { (decreasing(null, ref1): bool) }
  ref1 != null ==> (decreasing(null, ref1): bool)
);

// Translation of domain axiom ref_ax_bound
axiom (forall ref1: Ref ::
  { (bounded(ref1): bool) }
  (bounded(ref1): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function fact
// ==================================================

// Uninterpreted function definitions
function  fact(Heap: HeapType, x: int): int;
function  fact'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fact(Heap, x) }
  fact(Heap, x) == fact'(Heap, x) && dummyFunction(fact#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fact'(Heap, x) }
  dummyFunction(fact#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fact(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 16 ==> x >= 0 ==> fact(Heap, x) == (if x == 0 then 1 else x * fact'(Heap, x - 1))
);

// Framing axioms
function  fact#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fact'(Heap, x) }
  state(Heap, Mask) ==> fact'(Heap, x) == fact#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fact#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fact#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fact#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 16;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? 1 : x * fact(x - 1))
      if (x == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function fact might not hold. Assertion x - 1 >= 0 might not hold. (allTypes.vpr@11.18--11.27) [18625]"}
            x - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fact#trigger(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then 1 else x * fact(Heap, x - 1));
}

// ==================================================
// Translation of function fact_e
// ==================================================

// Uninterpreted function definitions
function  fact_e(Heap: HeapType, x: int): int;
function  fact_e'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fact_e(Heap, x) }
  fact_e(Heap, x) == fact_e'(Heap, x) && dummyFunction(fact_e#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fact_e'(Heap, x) }
  dummyFunction(fact_e#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fact_e(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 11 ==> x >= 0 ==> fact_e(Heap, x) == (if x == 0 then 1 else x * fact_e'(Heap, x))
);

// Framing axioms
function  fact_e#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fact_e'(Heap, x) }
  state(Heap, Mask) ==> fact_e'(Heap, x) == fact_e#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fact_e#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fact_e#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fact_e#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 11;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? 1 : x * fact_e(x))
      if (x == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function fact_e might not hold. Assertion x >= 0 might not hold. (allTypes.vpr@19.18--19.27) [18626]"}
            x >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fact_e#trigger(EmptyFrame, x);
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then 1 else x * fact_e(Heap, x));
}

// ==================================================
// Translation of function references
// ==================================================

// Uninterpreted function definitions
function  references(Heap: HeapType, r_1: Ref): int;
function  references'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { references(Heap, r_1) }
  references(Heap, r_1) == references'(Heap, r_1) && dummyFunction(references#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { references'(Heap, r_1) }
  dummyFunction(references#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), references(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> references(Heap, r_1) == (if r_1 == null then 1 else references'(Heap, null))
);

// Framing axioms
function  references#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), references'(Heap, r_1) }
  state(Heap, Mask) ==> references'(Heap, r_1) == references#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  references#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  references#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure references#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (r == null ? 1 : references(null))
      if (r_1 == null) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume references#trigger(EmptyFrame, null);
        }
      }
  
  // -- Translate function body
    Result := (if r_1 == null then 1 else references(Heap, null));
}

// ==================================================
// Translation of function references_e
// ==================================================

// Uninterpreted function definitions
function  references_e(Heap: HeapType, r_1: Ref): int;
function  references_e'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { references_e(Heap, r_1) }
  references_e(Heap, r_1) == references_e'(Heap, r_1) && dummyFunction(references_e#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { references_e'(Heap, r_1) }
  dummyFunction(references_e#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), references_e(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> references_e(Heap, r_1) == (if r_1 == null then 1 else references_e'(Heap, r_1))
);

// Framing axioms
function  references_e#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), references_e'(Heap, r_1) }
  state(Heap, Mask) ==> references_e'(Heap, r_1) == references_e#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  references_e#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  references_e#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure references_e#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (r == null ? 1 : references_e(r))
      if (r_1 == null) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume references_e#trigger(EmptyFrame, r_1);
        }
      }
  
  // -- Translate function body
    Result := (if r_1 == null then 1 else references_e(Heap, r_1));
}

// ==================================================
// Translation of function booleans
// ==================================================

// Uninterpreted function definitions
function  booleans(Heap: HeapType, b_24: bool): int;
function  booleans'(Heap: HeapType, b_24: bool): int;
axiom (forall Heap: HeapType, b_24: bool ::
  { booleans(Heap, b_24) }
  booleans(Heap, b_24) == booleans'(Heap, b_24) && dummyFunction(booleans#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { booleans'(Heap, b_24) }
  dummyFunction(booleans#triggerStateless(b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans(Heap, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> booleans(Heap, b_24) == (if b_24 then booleans'(Heap, !b_24) else 1)
);

// Framing axioms
function  booleans#frame(frame: FrameType, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans'(Heap, b_24) }
  state(Heap, Mask) ==> booleans'(Heap, b_24) == booleans#frame(EmptyFrame, b_24)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans'(Heap, b_24) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || booleans#trigger(EmptyFrame, b_24)) ==> booleans'(Heap, b_24) == 1
);

// Trigger function (controlling recursive postconditions)
function  booleans#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  booleans#triggerStateless(b_24: bool): int;

// Check contract well-formedness and postcondition
procedure booleans#definedness(b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (b ? booleans(!b) : 1)
      if (b_24) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume booleans#trigger(EmptyFrame, !b_24);
        }
      }
  
  // -- Translate function body
    Result := (if b_24 then booleans(Heap, !b_24) else 1);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of booleans might not hold. Assertion result == 1 might not hold. (allTypes.vpr@40.9--40.20) [18627]"}
      Result == 1;
}

// ==================================================
// Translation of function booleans_e
// ==================================================

// Uninterpreted function definitions
function  booleans_e(Heap: HeapType, b_24: bool): int;
function  booleans_e'(Heap: HeapType, b_24: bool): int;
axiom (forall Heap: HeapType, b_24: bool ::
  { booleans_e(Heap, b_24) }
  booleans_e(Heap, b_24) == booleans_e'(Heap, b_24) && dummyFunction(booleans_e#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { booleans_e'(Heap, b_24) }
  dummyFunction(booleans_e#triggerStateless(b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans_e(Heap, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> booleans_e(Heap, b_24) == (if !b_24 then booleans_e'(Heap, !b_24) else 1)
);

// Framing axioms
function  booleans_e#frame(frame: FrameType, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans_e'(Heap, b_24) }
  state(Heap, Mask) ==> booleans_e'(Heap, b_24) == booleans_e#frame(EmptyFrame, b_24)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), booleans_e'(Heap, b_24) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 8 || booleans_e#trigger(EmptyFrame, b_24)) ==> booleans_e'(Heap, b_24) == 1
);

// Trigger function (controlling recursive postconditions)
function  booleans_e#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  booleans_e#triggerStateless(b_24: bool): int;

// Check contract well-formedness and postcondition
procedure booleans_e#definedness(b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 8;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (!b ? booleans_e(!b) : 1)
      if (!b_24) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume booleans_e#trigger(EmptyFrame, !b_24);
        }
      }
  
  // -- Translate function body
    Result := (if !b_24 then booleans_e(Heap, !b_24) else 1);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of booleans_e might not hold. Assertion result == 1 might not hold. (allTypes.vpr@47.9--47.20) [18628]"}
      Result == 1;
}

// ==================================================
// Translation of function rationals
// ==================================================

// Uninterpreted function definitions
function  rationals(Heap: HeapType, r_1: Perm): Perm;
function  rationals'(Heap: HeapType, r_1: Perm): Perm;
axiom (forall Heap: HeapType, r_1: Perm ::
  { rationals(Heap, r_1) }
  rationals(Heap, r_1) == rationals'(Heap, r_1) && dummyFunction(rationals#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Perm ::
  { rationals'(Heap, r_1) }
  dummyFunction(rationals#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Perm ::
  { state(Heap, Mask), rationals(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> rationals(Heap, r_1) == (if 0 / 1 <= r_1 then rationals'(Heap, r_1 - 1 / 1) else r_1)
);

// Framing axioms
function  rationals#frame(frame: FrameType, r_1: Perm): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Perm ::
  { state(Heap, Mask), rationals'(Heap, r_1) }
  state(Heap, Mask) ==> rationals'(Heap, r_1) == rationals#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  rationals#trigger(frame: FrameType, r_1: Perm): bool;

// State-independent trigger function
function  rationals#triggerStateless(r_1: Perm): Perm;

// Check contract well-formedness and postcondition
procedure rationals#definedness(r_1: Perm) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (r >= 0 / 1 ? rationals(r - 1 / 1) : r)
      if (0 / 1 <= r_1) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume rationals#trigger(EmptyFrame, r_1 - 1 / 1);
        }
      }
  
  // -- Translate function body
    Result := (if 0 / 1 <= r_1 then rationals(Heap, r_1 - 1 / 1) else r_1);
}

// ==================================================
// Translation of function rationals_e
// ==================================================

// Uninterpreted function definitions
function  rationals_e(Heap: HeapType, r_1: Perm): Perm;
function  rationals_e'(Heap: HeapType, r_1: Perm): Perm;
axiom (forall Heap: HeapType, r_1: Perm ::
  { rationals_e(Heap, r_1) }
  rationals_e(Heap, r_1) == rationals_e'(Heap, r_1) && dummyFunction(rationals_e#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Perm ::
  { rationals_e'(Heap, r_1) }
  dummyFunction(rationals_e#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Perm ::
  { state(Heap, Mask), rationals_e(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 13 ==> rationals_e(Heap, r_1) == (if 0 / 1 <= r_1 then rationals_e'(Heap, r_1 / 2) else r_1)
);

// Framing axioms
function  rationals_e#frame(frame: FrameType, r_1: Perm): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Perm ::
  { state(Heap, Mask), rationals_e'(Heap, r_1) }
  state(Heap, Mask) ==> rationals_e'(Heap, r_1) == rationals_e#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  rationals_e#trigger(frame: FrameType, r_1: Perm): bool;

// State-independent trigger function
function  rationals_e#triggerStateless(r_1: Perm): Perm;

// Check contract well-formedness and postcondition
procedure rationals_e#definedness(r_1: Perm) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 13;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (r >= 0 / 1 ? rationals_e(r / 2) : r)
      if (0 / 1 <= r_1) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume rationals_e#trigger(EmptyFrame, r_1 / 2);
        }
      }
  
  // -- Translate function body
    Result := (if 0 / 1 <= r_1 then rationals_e(Heap, r_1 / 2) else r_1);
}

// ==================================================
// Translation of function sequences
// ==================================================

// Uninterpreted function definitions
function  sequences(Heap: HeapType, seq: (Seq int)): int;
function  sequences'(Heap: HeapType, seq: (Seq int)): int;
axiom (forall Heap: HeapType, seq: (Seq int) ::
  { sequences(Heap, seq) }
  sequences(Heap, seq) == sequences'(Heap, seq) && dummyFunction(sequences#triggerStateless(seq))
);
axiom (forall Heap: HeapType, seq: (Seq int) ::
  { sequences'(Heap, seq) }
  dummyFunction(sequences#triggerStateless(seq))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences(Heap, seq) }
  state(Heap, Mask) && AssumeFunctionsAbove < 17 ==> sequences(Heap, seq) == (if Seq#Length(seq) != 0 then 1 + sequences'(Heap, Seq#Drop(seq, 1)) else 0)
);

// Framing axioms
function  sequences#frame(frame: FrameType, seq: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences'(Heap, seq) }
  state(Heap, Mask) ==> sequences'(Heap, seq) == sequences#frame(EmptyFrame, seq)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences'(Heap, seq) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 17 || sequences#trigger(EmptyFrame, seq)) ==> sequences'(Heap, seq) == Seq#Length(seq)
);

// Trigger function (controlling recursive postconditions)
function  sequences#trigger(frame: FrameType, seq: (Seq int)): bool;

// State-independent trigger function
function  sequences#triggerStateless(seq: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sequences#definedness(seq: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 17;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|seq| != 0 ? 1 + sequences(seq[1..]) : 0)
      if (Seq#Length(seq) != 0) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sequences#trigger(EmptyFrame, Seq#Drop(seq, 1));
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(seq) != 0 then 1 + sequences(Heap, Seq#Drop(seq, 1)) else 0);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of sequences might not hold. Assertion result == |seq| might not hold. (allTypes.vpr@69.9--69.24) [18629]"}
      Result == Seq#Length(seq);
}

// ==================================================
// Translation of function sequences_e
// ==================================================

// Uninterpreted function definitions
function  sequences_e(Heap: HeapType, seq: (Seq int)): int;
function  sequences_e'(Heap: HeapType, seq: (Seq int)): int;
axiom (forall Heap: HeapType, seq: (Seq int) ::
  { sequences_e(Heap, seq) }
  sequences_e(Heap, seq) == sequences_e'(Heap, seq) && dummyFunction(sequences_e#triggerStateless(seq))
);
axiom (forall Heap: HeapType, seq: (Seq int) ::
  { sequences_e'(Heap, seq) }
  dummyFunction(sequences_e#triggerStateless(seq))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences_e(Heap, seq) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sequences_e(Heap, seq) == (if Seq#Length(seq) != 0 then sequences_e'(Heap, Seq#Append(Seq#Drop(seq, 1), Seq#Singleton(1))) else 0)
);

// Framing axioms
function  sequences_e#frame(frame: FrameType, seq: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences_e'(Heap, seq) }
  state(Heap, Mask) ==> sequences_e'(Heap, seq) == sequences_e#frame(EmptyFrame, seq)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq int) ::
  { state(Heap, Mask), sequences_e'(Heap, seq) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || sequences_e#trigger(EmptyFrame, seq)) ==> sequences_e'(Heap, seq) == Seq#Length(seq)
);

// Trigger function (controlling recursive postconditions)
function  sequences_e#trigger(frame: FrameType, seq: (Seq int)): bool;

// State-independent trigger function
function  sequences_e#triggerStateless(seq: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sequences_e#definedness(seq: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|seq| != 0 ? sequences_e(seq[1..] ++ Seq(1)) : 0)
      if (Seq#Length(seq) != 0) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sequences_e#trigger(EmptyFrame, Seq#Append(Seq#Drop(seq, 1), Seq#Singleton(1)));
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(seq) != 0 then sequences_e(Heap, Seq#Append(Seq#Drop(seq, 1), Seq#Singleton(1))) else 0);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of sequences_e might not hold. Assertion result == |seq| might not hold. (allTypes.vpr@76.9--76.24) [18630]"}
      Result == Seq#Length(seq);
}

// ==================================================
// Translation of function numberOfUsers
// ==================================================

// Uninterpreted function definitions
function  numberOfUsers(Heap: HeapType, seq: (Seq bool)): int;
function  numberOfUsers'(Heap: HeapType, seq: (Seq bool)): int;
axiom (forall Heap: HeapType, seq: (Seq bool) ::
  { numberOfUsers(Heap, seq) }
  numberOfUsers(Heap, seq) == numberOfUsers'(Heap, seq) && dummyFunction(numberOfUsers#triggerStateless(seq))
);
axiom (forall Heap: HeapType, seq: (Seq bool) ::
  { numberOfUsers'(Heap, seq) }
  dummyFunction(numberOfUsers#triggerStateless(seq))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq bool) ::
  { state(Heap, Mask), numberOfUsers(Heap, seq) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> numberOfUsers(Heap, seq) == (if Seq#Length(seq) == 0 then 0 else (if Seq#Index(seq, 0) then 1 + numberOfUsers'(Heap, Seq#Drop(seq, 1)) else numberOfUsers'(Heap, Seq#Drop(seq, 1))))
);

// Framing axioms
function  numberOfUsers#frame(frame: FrameType, seq: (Seq bool)): int;
axiom (forall Heap: HeapType, Mask: MaskType, seq: (Seq bool) ::
  { state(Heap, Mask), numberOfUsers'(Heap, seq) }
  state(Heap, Mask) ==> numberOfUsers'(Heap, seq) == numberOfUsers#frame(EmptyFrame, seq)
);

// Trigger function (controlling recursive postconditions)
function  numberOfUsers#trigger(frame: FrameType, seq: (Seq bool)): bool;

// State-independent trigger function
function  numberOfUsers#triggerStateless(seq: (Seq bool)): int;

// Check contract well-formedness and postcondition
procedure numberOfUsers#definedness(seq: (Seq bool)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|seq| == 0 ? 0 : (seq[0] ? 1 + numberOfUsers(seq[1..]) : numberOfUsers(seq[1..])))
      if (Seq#Length(seq) == 0) {
      } else {
        assert {:msg "  Function might not be well-formed. Index seq[0] into seq might exceed sequence length. (allTypes.vpr@84.1--89.2) [18631]"}
          0 < Seq#Length(seq);
        if (Seq#Index(seq, 0)) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume numberOfUsers#trigger(EmptyFrame, Seq#Drop(seq, 1));
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume numberOfUsers#trigger(EmptyFrame, Seq#Drop(seq, 1));
          }
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(seq) == 0 then 0 else (if Seq#Index(seq, 0) then 1 + numberOfUsers(Heap, Seq#Drop(seq, 1)) else numberOfUsers(Heap, Seq#Drop(seq, 1))));
}

// ==================================================
// Translation of function sets
// ==================================================

// Uninterpreted function definitions
function  sets(Heap: HeapType, s_1: (Set int)): int;
function  sets'(Heap: HeapType, s_1: (Set int)): int;
axiom (forall Heap: HeapType, s_1: (Set int) ::
  { sets(Heap, s_1) }
  sets(Heap, s_1) == sets'(Heap, s_1) && dummyFunction(sets#triggerStateless(s_1))
);
axiom (forall Heap: HeapType, s_1: (Set int) ::
  { sets'(Heap, s_1) }
  dummyFunction(sets#triggerStateless(s_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Set int) ::
  { state(Heap, Mask), sets(Heap, s_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> sets(Heap, s_1) == (if Set#Card(s_1) > 0 && s_1[Set#Card(s_1)] then sets'(Heap, Set#Difference(s_1, Set#Singleton(Set#Card(s_1)))) else 1)
);

// Framing axioms
function  sets#frame(frame: FrameType, s_1: (Set int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Set int) ::
  { state(Heap, Mask), sets'(Heap, s_1) }
  state(Heap, Mask) ==> sets'(Heap, s_1) == sets#frame(EmptyFrame, s_1)
);

// Trigger function (controlling recursive postconditions)
function  sets#trigger(frame: FrameType, s_1: (Set int)): bool;

// State-independent trigger function
function  sets#triggerStateless(s_1: (Set int)): int;

// Check contract well-formedness and postcondition
procedure sets#definedness(s_1: (Set int)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|s| > 0 && (|s| in s) ? sets((s setminus Set(|s|))) : 1)
      if (Set#Card(s_1) > 0 && s_1[Set#Card(s_1)]) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sets#trigger(EmptyFrame, Set#Difference(s_1, Set#Singleton(Set#Card(s_1))));
        }
      }
  
  // -- Translate function body
    Result := (if Set#Card(s_1) > 0 && s_1[Set#Card(s_1)] then sets(Heap, Set#Difference(s_1, Set#Singleton(Set#Card(s_1)))) else 1);
}

// ==================================================
// Translation of function sets_e
// ==================================================

// Uninterpreted function definitions
function  sets_e(Heap: HeapType, s_1: (Set int)): int;
function  sets_e'(Heap: HeapType, s_1: (Set int)): int;
axiom (forall Heap: HeapType, s_1: (Set int) ::
  { sets_e(Heap, s_1) }
  sets_e(Heap, s_1) == sets_e'(Heap, s_1) && dummyFunction(sets_e#triggerStateless(s_1))
);
axiom (forall Heap: HeapType, s_1: (Set int) ::
  { sets_e'(Heap, s_1) }
  dummyFunction(sets_e#triggerStateless(s_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Set int) ::
  { state(Heap, Mask), sets_e(Heap, s_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 12 ==> sets_e(Heap, s_1) == (if Set#Card(s_1) > 0 && s_1[Set#Card(s_1)] then 1 else sets_e'(Heap, Set#Difference(s_1, Set#Singleton(Set#Card(s_1)))))
);

// Framing axioms
function  sets_e#frame(frame: FrameType, s_1: (Set int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (Set int) ::
  { state(Heap, Mask), sets_e'(Heap, s_1) }
  state(Heap, Mask) ==> sets_e'(Heap, s_1) == sets_e#frame(EmptyFrame, s_1)
);

// Trigger function (controlling recursive postconditions)
function  sets_e#trigger(frame: FrameType, s_1: (Set int)): bool;

// State-independent trigger function
function  sets_e#triggerStateless(s_1: (Set int)): int;

// Check contract well-formedness and postcondition
procedure sets_e#definedness(s_1: (Set int)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 12;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|s| > 0 && (|s| in s) ? 1 : sets_e((s setminus Set(|s|))))
      if (Set#Card(s_1) > 0 && s_1[Set#Card(s_1)]) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sets_e#trigger(EmptyFrame, Set#Difference(s_1, Set#Singleton(Set#Card(s_1))));
        }
      }
  
  // -- Translate function body
    Result := (if Set#Card(s_1) > 0 && s_1[Set#Card(s_1)] then 1 else sets_e(Heap, Set#Difference(s_1, Set#Singleton(Set#Card(s_1)))));
}

// ==================================================
// Translation of function multiSets
// ==================================================

// Uninterpreted function definitions
function  multiSets(Heap: HeapType, s_1: (MultiSet int)): int;
function  multiSets'(Heap: HeapType, s_1: (MultiSet int)): int;
axiom (forall Heap: HeapType, s_1: (MultiSet int) ::
  { multiSets(Heap, s_1) }
  multiSets(Heap, s_1) == multiSets'(Heap, s_1) && dummyFunction(multiSets#triggerStateless(s_1))
);
axiom (forall Heap: HeapType, s_1: (MultiSet int) ::
  { multiSets'(Heap, s_1) }
  dummyFunction(multiSets#triggerStateless(s_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (MultiSet int) ::
  { state(Heap, Mask), multiSets(Heap, s_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 10 ==> multiSets(Heap, s_1) == (if MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0 then multiSets'(Heap, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1)))) else 1)
);

// Framing axioms
function  multiSets#frame(frame: FrameType, s_1: (MultiSet int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (MultiSet int) ::
  { state(Heap, Mask), multiSets'(Heap, s_1) }
  state(Heap, Mask) ==> multiSets'(Heap, s_1) == multiSets#frame(EmptyFrame, s_1)
);

// Trigger function (controlling recursive postconditions)
function  multiSets#trigger(frame: FrameType, s_1: (MultiSet int)): bool;

// State-independent trigger function
function  multiSets#triggerStateless(s_1: (MultiSet int)): int;

// Check contract well-formedness and postcondition
procedure multiSets#definedness(s_1: (MultiSet int)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 10;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|s| > 0 && ((|s| in s)) > 0 ? multiSets((s setminus Multiset(|s|))) : 1)
      if (MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume multiSets#trigger(EmptyFrame, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1))));
        }
      }
  
  // -- Translate function body
    Result := (if MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0 then multiSets(Heap, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1)))) else 1);
}

// ==================================================
// Translation of function multiSets_e
// ==================================================

// Uninterpreted function definitions
function  multiSets_e(Heap: HeapType, s_1: (MultiSet int)): int;
function  multiSets_e'(Heap: HeapType, s_1: (MultiSet int)): int;
axiom (forall Heap: HeapType, s_1: (MultiSet int) ::
  { multiSets_e(Heap, s_1) }
  multiSets_e(Heap, s_1) == multiSets_e'(Heap, s_1) && dummyFunction(multiSets_e#triggerStateless(s_1))
);
axiom (forall Heap: HeapType, s_1: (MultiSet int) ::
  { multiSets_e'(Heap, s_1) }
  dummyFunction(multiSets_e#triggerStateless(s_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (MultiSet int) ::
  { state(Heap, Mask), multiSets_e(Heap, s_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> multiSets_e(Heap, s_1) == (if MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0 then 1 else multiSets_e'(Heap, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1)))))
);

// Framing axioms
function  multiSets_e#frame(frame: FrameType, s_1: (MultiSet int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, s_1: (MultiSet int) ::
  { state(Heap, Mask), multiSets_e'(Heap, s_1) }
  state(Heap, Mask) ==> multiSets_e'(Heap, s_1) == multiSets_e#frame(EmptyFrame, s_1)
);

// Trigger function (controlling recursive postconditions)
function  multiSets_e#trigger(frame: FrameType, s_1: (MultiSet int)): bool;

// State-independent trigger function
function  multiSets_e#triggerStateless(s_1: (MultiSet int)): int;

// Check contract well-formedness and postcondition
procedure multiSets_e#definedness(s_1: (MultiSet int)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|s| > 0 && ((|s| in s)) > 0 ? 1 : multiSets_e((s setminus Multiset(|s|))))
      if (MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume multiSets_e#trigger(EmptyFrame, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1))));
        }
      }
  
  // -- Translate function body
    Result := (if MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0 then 1 else multiSets_e(Heap, MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1)))));
}

// ==================================================
// Translation of function predicates
// ==================================================

// Uninterpreted function definitions
function  predicates(Heap: HeapType, xs: Ref): int;
function  predicates'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { predicates(Heap, xs) }
  predicates(Heap, xs) == predicates'(Heap, xs) && dummyFunction(predicates#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { predicates'(Heap, xs) }
  dummyFunction(predicates#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), predicates(Heap, xs) } { state(Heap, Mask), predicates#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 14 ==> predicates(Heap, xs) == (if Heap[xs, next] != null then predicates'(Heap, Heap[xs, next]) else 0)
);

// Framing axioms
function  predicates#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), predicates'(Heap, xs) } { state(Heap, Mask), predicates#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> predicates'(Heap, xs) == predicates#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  predicates#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  predicates#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure predicates#definedness(xs: Ref) returns (Result: int)
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
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 14;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in (xs.next != null ? predicates(xs.next) : 0))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame)));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (allTypes.vpr@144.1--149.2) [18632]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (allTypes.vpr@144.1--149.2) [18633]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] != null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (allTypes.vpr@144.1--149.2) [18634]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function predicates might not hold. There might be insufficient permission to access list(xs.next) (allTypes.vpr@148.45--148.64) [18635]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume predicates#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, list#sm(xs)][o_5, f_11] || Heap[null, list#sm(Heap[xs, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[xs, next] != null then predicates(Heap, Heap[xs, next]) else 0);
}

// ==================================================
// Translation of function predicates_e
// ==================================================

// Uninterpreted function definitions
function  predicates_e(Heap: HeapType, xs: Ref): int;
function  predicates_e'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { predicates_e(Heap, xs) }
  predicates_e(Heap, xs) == predicates_e'(Heap, xs) && dummyFunction(predicates_e#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { predicates_e'(Heap, xs) }
  dummyFunction(predicates_e#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), predicates_e(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 15 ==> predicates_e(Heap, xs) == (if Heap[xs, next] != null then predicates_e'(Heap, xs) else 0)
);

// Framing axioms
function  predicates_e#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), predicates_e'(Heap, xs) }
  state(Heap, Mask) ==> predicates_e'(Heap, xs) == predicates_e#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  predicates_e#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  predicates_e#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure predicates_e#definedness(xs: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 15;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((unfolding acc(list(xs), write) in xs.next != null) ? predicates_e(xs) : 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame)));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (allTypes.vpr@151.1--158.1) [18636]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (allTypes.vpr@151.1--158.1) [18637]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, list#sm(xs)][o_6, f_12] || Heap[null, list#sm(Heap[xs, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
      if (Heap[xs, next] != null) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function predicates_e might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@156.47--156.63) [18638]"}
            NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume predicates_e#trigger(Heap[null, list(xs)], xs);
        }
      }
  
  // -- Translate function body
    Result := (if Heap[xs, next] != null then predicates_e(Heap, xs) else 0);
}

// ==================================================
// Translation of function PI_list
// ==================================================

// Uninterpreted function definitions
function  PI_list(Heap: HeapType, xs: Ref): PredicateInstanceDomainType;
function  PI_list'(Heap: HeapType, xs: Ref): PredicateInstanceDomainType;
axiom (forall Heap: HeapType, xs: Ref ::
  { PI_list(Heap, xs) }
  PI_list(Heap, xs) == PI_list'(Heap, xs) && dummyFunction(PI_list#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { PI_list'(Heap, xs) }
  dummyFunction(PI_list#triggerStateless(xs))
);

// Framing axioms
function  PI_list#frame(frame: FrameType, xs: Ref): PredicateInstanceDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), PI_list'(Heap, xs) }
  state(Heap, Mask) ==> PI_list'(Heap, xs) == PI_list#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  PI_list#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  PI_list#triggerStateless(xs: Ref): PredicateInstanceDomainType;

// Check contract well-formedness and postcondition
procedure PI_list#definedness(xs: Ref) returns (Result: PredicateInstanceDomainType)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(xs: Ref): Field PredicateType_list FrameType;
function  list#sm(xs: Ref): Field PredicateType_list PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(list(xs)) }
  PredicateMaskField(list(xs)) == list#sm(xs)
);
axiom (forall xs: Ref ::
  { list(xs) }
  IsPredicateField(list(xs))
);
axiom (forall xs: Ref ::
  { list(xs) }
  getPredWandId(list(xs)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { list(xs), list(xs2) }
  list(xs) == list(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { list#sm(xs), list#sm(xs2) }
  list#sm(xs) == list#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { list#trigger(Heap, list(xs)) }
  list#everUsed(list(xs))
);

procedure list#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (allTypes.vpr@139.1--142.2) [18639]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(list(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (allTypes.vpr@139.1--142.2) [18640]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method otherMultiSetTests
// ==================================================

procedure otherMultiSetTests() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (bounded(Multiset(1)): Bool) -- allTypes.vpr@121.5--121.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (bounded(Multiset(1)): Bool) might not hold. (allTypes.vpr@121.12--121.32) [18641]"}
      (bounded(MultiSet#Singleton(1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (decreasing(Multiset(1), Multiset(1, 1)): Bool) -- allTypes.vpr@122.5--122.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(Multiset(1), Multiset(1, 1)): Bool) might not hold. (allTypes.vpr@122.12--122.49) [18642]"}
      (decreasing(MultiSet#Singleton(1), MultiSet#UnionOne(MultiSet#Singleton(1), 1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (bounded(Multiset(1, 2, 3)): Bool) -- allTypes.vpr@123.5--123.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (bounded(Multiset(1, 2, 3)): Bool) might not hold. (allTypes.vpr@123.12--123.36) [18643]"}
      (bounded(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Singleton(3), 2), 1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (decreasing(Multiset(1, 2, 3), Multiset(1, 2, 2, 3, 3)): Bool) -- allTypes.vpr@124.5--124.60
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(Multiset(1, 2, 3), Multiset(1, 2, 2, 3, 3)): Bool) might not hold. (allTypes.vpr@124.12--124.60) [18644]"}
      (decreasing(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Singleton(3), 2), 1), MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Singleton(3), 3), 2), 2), 1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool) -- allTypes.vpr@127.5--127.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(Multiset(1, 1), Multiset(1, 1)): Bool) might not hold. (allTypes.vpr@127.12--127.52) [18645]"}
      (decreasing(MultiSet#UnionOne(MultiSet#Singleton(1), 1), MultiSet#UnionOne(MultiSet#Singleton(1), 1)): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method otherMultiSetTests2
// ==================================================

procedure otherMultiSetTests2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (decreasing(Multiset(2), Multiset(1)): Bool) -- allTypes.vpr@134.5--134.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(Multiset(2), Multiset(1)): Bool) might not hold. (allTypes.vpr@134.12--134.48) [18646]"}
      (decreasing(MultiSet#Singleton(2), MultiSet#Singleton(1)): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fact_termination_proof
// ==================================================

procedure fact_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [18647]"}
          (decreasing(x - 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [18648]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fact_e_termination_proof
// ==================================================

procedure fact_e_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(x, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x, old(x)): Bool) might not hold. (<no position>) [18649]"}
          (decreasing(x, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [18650]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method references_termination_proof
// ==================================================

procedure references_termination_proof(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (r == null) -- <no position>
    if (r_1 == null) {
    } else {
      
      // -- Translating statement: assert (decreasing(null, old(r)): Bool) && (bounded(old(r)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(null, old(r)): Bool) might not hold. (<no position>) [18651]"}
          (decreasing(null, r_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(r)): Bool) might not hold. (<no position>) [18652]"}
          (bounded(r_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method references_e_termination_proof
// ==================================================

procedure references_e_termination_proof(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (r == null) -- <no position>
    if (r_1 == null) {
    } else {
      
      // -- Translating statement: assert (decreasing(r, old(r)): Bool) && (bounded(old(r)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(r, old(r)): Bool) might not hold. (<no position>) [18653]"}
          (decreasing(r_1, r_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(r)): Bool) might not hold. (<no position>) [18654]"}
          (bounded(r_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method booleans_termination_proof
// ==================================================

procedure booleans_termination_proof(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b) -- <no position>
    if (b_24) {
      
      // -- Translating statement: assert (decreasing(!b, old(b)): Bool) && (bounded(old(b)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(!b, old(b)): Bool) might not hold. (<no position>) [18655]"}
          (decreasing(!b_24, b_24): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(b)): Bool) might not hold. (<no position>) [18656]"}
          (bounded(b_24): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method booleans_e_termination_proof
// ==================================================

procedure booleans_e_termination_proof(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (!b) -- <no position>
    if (!b_24) {
      
      // -- Translating statement: assert (decreasing(!b, old(b)): Bool) && (bounded(old(b)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(!b, old(b)): Bool) might not hold. (<no position>) [18657]"}
          (decreasing(!b_24, b_24): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(b)): Bool) might not hold. (<no position>) [18658]"}
          (bounded(b_24): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method rationals_termination_proof
// ==================================================

procedure rationals_termination_proof(r_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (r >= 0 / 1) -- <no position>
    if (0 / 1 <= r_1) {
      
      // -- Translating statement: assert (decreasing(r - 1 / 1, old(r)): Bool) && (bounded(old(r)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(r - 1 / 1, old(r)): Bool) might not hold. (<no position>) [18659]"}
          (decreasing(r_1 - 1 / 1, r_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(r)): Bool) might not hold. (<no position>) [18660]"}
          (bounded(r_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method rationals_e_termination_proof
// ==================================================

procedure rationals_e_termination_proof(r_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (r >= 0 / 1) -- <no position>
    if (0 / 1 <= r_1) {
      
      // -- Translating statement: assert (decreasing(r / 2, old(r)): Bool) && (bounded(old(r)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(r / 2, old(r)): Bool) might not hold. (<no position>) [18661]"}
          (decreasing(r_1 / 2, r_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(r)): Bool) might not hold. (<no position>) [18662]"}
          (bounded(r_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sequences_termination_proof
// ==================================================

procedure sequences_termination_proof(seq: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|seq| != 0) -- <no position>
    if (Seq#Length(seq) != 0) {
      
      // -- Translating statement: assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(seq[1..], old(seq)): Bool) might not hold. (<no position>) [18663]"}
          (decreasing(Seq#Drop(seq, 1), seq): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(seq)): Bool) might not hold. (<no position>) [18664]"}
          (bounded(seq): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sequences_e_termination_proof
// ==================================================

procedure sequences_e_termination_proof(seq: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|seq| != 0) -- <no position>
    if (Seq#Length(seq) != 0) {
      
      // -- Translating statement: assert (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool) &&
  //   (bounded(old(seq)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(seq[1..] ++ Seq(1), old(seq)): Bool) might not hold. (<no position>) [18665]"}
          (decreasing(Seq#Append(Seq#Drop(seq, 1), Seq#Singleton(1)), seq): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(seq)): Bool) might not hold. (<no position>) [18666]"}
          (bounded(seq): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method numberOfUsers_termination_proof
// ==================================================

procedure numberOfUsers_termination_proof(seq: (Seq bool)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|seq| == 0) -- <no position>
    if (Seq#Length(seq) == 0) {
    } else {
      
      // -- Translating statement: if (seq[0]) -- <no position>
        
        // -- Check definedness of seq[0]
          assert {:msg "  Conditional statement might fail. Index seq[0] into seq might exceed sequence length. (allTypes.vpr@88.9--88.15) [18667]"}
            0 < Seq#Length(seq);
        if (Seq#Index(seq, 0)) {
          
          // -- Translating statement: assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(seq[1..], old(seq)): Bool) might not hold. (<no position>) [18668]"}
              (decreasing(Seq#Drop(seq, 1), seq): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(seq)): Bool) might not hold. (<no position>) [18669]"}
              (bounded(seq): bool);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: assert (decreasing(seq[1..], old(seq)): Bool) && (bounded(old(seq)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(seq[1..], old(seq)): Bool) might not hold. (<no position>) [18670]"}
              (decreasing(Seq#Drop(seq, 1), seq): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(seq)): Bool) might not hold. (<no position>) [18671]"}
              (bounded(seq): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sets_termination_proof
// ==================================================

procedure sets_termination_proof(s_1: (Set int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|s| > 0 && (|s| in s)) -- <no position>
    if (Set#Card(s_1) > 0 && s_1[Set#Card(s_1)]) {
      
      // -- Translating statement: assert (decreasing((s setminus Set(|s|)), old(s)): Bool) &&
  //   (bounded(old(s)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((s setminus Set(|s|)), old(s)): Bool) might not hold. (<no position>) [18672]"}
          (decreasing(Set#Difference(s_1, Set#Singleton(Set#Card(s_1))), s_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(s)): Bool) might not hold. (<no position>) [18673]"}
          (bounded(s_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method sets_e_termination_proof
// ==================================================

procedure sets_e_termination_proof(s_1: (Set int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|s| > 0 && (|s| in s)) -- <no position>
    if (Set#Card(s_1) > 0 && s_1[Set#Card(s_1)]) {
    } else {
      
      // -- Translating statement: assert (decreasing((s setminus Set(|s|)), old(s)): Bool) &&
  //   (bounded(old(s)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((s setminus Set(|s|)), old(s)): Bool) might not hold. (<no position>) [18674]"}
          (decreasing(Set#Difference(s_1, Set#Singleton(Set#Card(s_1))), s_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(s)): Bool) might not hold. (<no position>) [18675]"}
          (bounded(s_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method multiSets_termination_proof
// ==================================================

procedure multiSets_termination_proof(s_1: (MultiSet int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|s| > 0 && ((|s| in s)) > 0) -- <no position>
    if (MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0) {
      
      // -- Translating statement: assert (decreasing((s setminus Multiset(|s|)), old(s)): Bool) &&
  //   (bounded(old(s)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((s setminus Multiset(|s|)), old(s)): Bool) might not hold. (<no position>) [18676]"}
          (decreasing(MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1))), s_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(s)): Bool) might not hold. (<no position>) [18677]"}
          (bounded(s_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method multiSets_e_termination_proof
// ==================================================

procedure multiSets_e_termination_proof(s_1: (MultiSet int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (|s| > 0 && ((|s| in s)) > 0) -- <no position>
    if (MultiSet#Card(s_1) > 0 && MultiSet#Select(s_1, MultiSet#Card(s_1)) > 0) {
    } else {
      
      // -- Translating statement: assert (decreasing((s setminus Multiset(|s|)), old(s)): Bool) &&
  //   (bounded(old(s)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((s setminus Multiset(|s|)), old(s)): Bool) might not hold. (<no position>) [18678]"}
          (decreasing(MultiSet#Difference(s_1, MultiSet#Singleton(MultiSet#Card(s_1))), s_1): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(s)): Bool) might not hold. (<no position>) [18679]"}
          (bounded(s_1): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method predicates_termination_proof
// ==================================================

procedure predicates_termination_proof(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__16981330: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_1681681832: PredicateInstanceDomainType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b1) -- <no position>
    if (b1) {
      
      // -- Translating statement: list__16981330 := PI_list(xs) -- allTypes.vpr@148.15--148.23
        
        // -- Check definedness of PI_list(xs)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@148.15--148.23) [18680]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list__16981330 := PI_list(Heap, xs);
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(list(xs), write) -- <no position>
        assume list#trigger(Heap, list(xs));
        assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [18683]"}
            perm <= Mask[null, list(xs)];
        }
        Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, list(xs))) {
            havoc newVersion;
            Heap := Heap[null, list(xs):=newVersion];
          }
        perm := FullPerm;
        assume xs != null;
        Mask := Mask[xs, next:=Mask[xs, next] + perm];
        assume state(Heap, Mask);
        if (Heap[xs, next] != null) {
          perm := FullPerm;
          Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (xs.next != null) -- allTypes.vpr@141.22--141.55
        
        // -- Check definedness of xs.next != null
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (allTypes.vpr@141.22--141.37) [18686]"}
            HasDirectPerm(Mask, xs, next);
        if (Heap[xs, next] != null) {
          
          // -- Translating statement: list_1681681832 := PI_list(xs.next) -- allTypes.vpr@141.42--141.55
            
            // -- Check definedness of PI_list(xs.next)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (allTypes.vpr@141.42--141.55) [18687]"}
                HasDirectPerm(Mask, xs, next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (allTypes.vpr@141.42--141.55) [18688]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            list_1681681832 := PI_list(Heap, Heap[xs, next]);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale nestedPredicates(list_1681681832, list__16981330) -- allTypes.vpr@141.42--141.55
            assume (nestedPredicates(list_1681681832, list__16981330): bool);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: if (xs.next != null) -- <no position>
        
        // -- Check definedness of xs.next != null
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (allTypes.vpr@148.27--148.42) [18689]"}
            HasDirectPerm(Mask, xs, next);
        if (Heap[xs, next] != null) {
          
          // -- Translating statement: assert (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool)
              assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (<no position>) [18690]"}
                HasDirectPerm(ExhaleWellDef0Mask, xs, next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (allTypes.vpr@146.15--146.23) [18691]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
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
                assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@146.15--146.23) [18692]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) might not hold. (<no position>) [18693]"}
              (decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool);
            
            // -- Check definedness of (bounded(old(PI_list(xs))): Bool)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@146.15--146.23) [18694]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion (bounded(old(PI_list(xs))): Bool) might not hold. (<no position>) [18695]"}
              (bounded(PI_list(oldHeap, xs)): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method predicates_pres_termination_proof
// ==================================================

procedure predicates_pres_termination_proof(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(list(xs), write) -- allTypes.vpr@145.14--145.22
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method predicates_e_termination_proof
// ==================================================

procedure predicates_e_termination_proof(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__169813300: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_16816818320: PredicateInstanceDomainType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b2) -- <no position>
    if (b2) {
      
      // -- Translating statement: list__169813300 := PI_list(xs) -- allTypes.vpr@156.16--156.24
        
        // -- Check definedness of PI_list(xs)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@156.16--156.24) [18697]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list__169813300 := PI_list(Heap, xs);
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(list(xs), write) -- <no position>
        assume list#trigger(Heap, list(xs));
        assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [18700]"}
            perm <= Mask[null, list(xs)];
        }
        Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, list(xs))) {
            havoc newVersion;
            Heap := Heap[null, list(xs):=newVersion];
          }
        perm := FullPerm;
        assume xs != null;
        Mask := Mask[xs, next:=Mask[xs, next] + perm];
        assume state(Heap, Mask);
        if (Heap[xs, next] != null) {
          perm := FullPerm;
          Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (xs.next != null) -- allTypes.vpr@141.22--141.55
        
        // -- Check definedness of xs.next != null
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (allTypes.vpr@141.22--141.37) [18703]"}
            HasDirectPerm(Mask, xs, next);
        if (Heap[xs, next] != null) {
          
          // -- Translating statement: list_16816818320 := PI_list(xs.next) -- allTypes.vpr@141.42--141.55
            
            // -- Check definedness of PI_list(xs.next)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (allTypes.vpr@141.42--141.55) [18704]"}
                HasDirectPerm(Mask, xs, next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (allTypes.vpr@141.42--141.55) [18705]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            list_16816818320 := PI_list(Heap, Heap[xs, next]);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale nestedPredicates(list_16816818320, list__169813300) -- allTypes.vpr@141.42--141.55
            assume (nestedPredicates(list_16816818320, list__169813300): bool);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(list(xs), write) in xs.next != null)) -- <no position>
    
    // -- Check definedness of (unfolding acc(list(xs), write) in xs.next != null)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame)));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access list(xs) (allTypes.vpr@156.6--156.43) [18706]"}
          perm <= UnfoldingMask[null, list(xs)];
      }
      UnfoldingMask := UnfoldingMask[null, list(xs):=UnfoldingMask[null, list(xs)] - perm];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (allTypes.vpr@156.6--156.43) [18707]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, list#sm(xs)][o_40, f_52] || Heap[null, list#sm(Heap[xs, next])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: assert (decreasing(PI_list(xs), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (decreasing(PI_list(xs), old(PI_list(xs))): Bool)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@153.15--153.23) [18708]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
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
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@153.15--153.23) [18709]"}
              NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs), old(PI_list(xs))): Bool) might not hold. (<no position>) [18710]"}
          (decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool);
        
        // -- Check definedness of (bounded(old(PI_list(xs))): Bool)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (allTypes.vpr@153.15--153.23) [18711]"}
              NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion (bounded(old(PI_list(xs))): Bool) might not hold. (<no position>) [18712]"}
          (bounded(PI_list(oldHeap, xs)): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method predicates_e_pres_termination_proof
// ==================================================

procedure predicates_e_pres_termination_proof(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(list(xs), write) -- allTypes.vpr@152.14--152.22
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}