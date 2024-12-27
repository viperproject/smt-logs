// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:46:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0076.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0076-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_9: Ref, f_13: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_9, f_13] }
  Heap[o_9, $allocated] ==> Heap[Heap[o_9, f_13], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref, f_14: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, f_14] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_10, f_14) ==> Heap[o_10, f_14] == ExhaleHeap[o_10, f_14]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_10, $allocated] ==> ExhaleHeap[o_10, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_9: Ref, f_15: (Field A B), v: B ::
  { Heap[o_9, f_15:=v] }
  succHeap(Heap, Heap[o_9, f_15:=v])
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
// - height 1: prio
// - height 0: contentNodes
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

const unique data: Field NormalField Ref;
axiom !IsPredicateField(data);
axiom !IsWandField(data);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function prio
// ==================================================

// Uninterpreted function definitions
function  prio(Heap: HeapType, this: Ref): int;
function  prio'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { prio(Heap, this) }
  prio(Heap, this) == prio'(Heap, this) && dummyFunction(prio#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { prio'(Heap, this) }
  dummyFunction(prio#triggerStateless(this))
);

// Framing axioms
function  prio#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), prio'(Heap, this) }
  state(Heap, Mask) ==> prio'(Heap, this) == prio#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  prio#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  prio#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure prio#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function contentNodes
// ==================================================

// Uninterpreted function definitions
function  contentNodes(Heap: HeapType, this: Ref, end: Ref): Seq Ref;
function  contentNodes'(Heap: HeapType, this: Ref, end: Ref): Seq Ref;
axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { contentNodes(Heap, this, end) }
  contentNodes(Heap, this, end) == contentNodes'(Heap, this, end) && dummyFunction(contentNodes#triggerStateless(this, end))
);
axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { contentNodes'(Heap, this, end) }
  dummyFunction(contentNodes#triggerStateless(this, end))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes(Heap, this, end) } { state(Heap, Mask), contentNodes#triggerStateless(this, end), Lseg#trigger(Heap, Lseg(this, end)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> contentNodes(Heap, this, end) == (if this == end then (Seq#Empty(): Seq Ref) else Seq#Append(Seq#Singleton(Heap[this, data]), (if Heap[this, next] == null then (Seq#Empty(): Seq Ref) else contentNodes'(Heap, Heap[this, next], end))))
);

// Framing axioms
function  contentNodes#frame(frame: FrameType, this: Ref, end: Ref): Seq Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end) } { state(Heap, Mask), contentNodes#triggerStateless(this, end), Lseg#trigger(Heap, Lseg(this, end)) }
  state(Heap, Mask) ==> contentNodes'(Heap, this, end) == contentNodes#frame(Heap[null, Lseg(this, end)], this, end)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || contentNodes#trigger(Heap[null, Lseg(this, end)], this, end)) ==> (this == end) == Seq#Equal(contentNodes'(Heap, this, end), (Seq#Empty(): Seq Ref))
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || contentNodes#trigger(Heap[null, Lseg(this, end)], this, end)) ==> this != end ==> 0 < Seq#Length(contentNodes'(Heap, this, end))
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || contentNodes#trigger(Heap[null, Lseg(this, end)], this, end)) ==> this != end ==> Seq#Index(contentNodes'(Heap, this, end), 0) == Heap[this, data]
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || contentNodes#trigger(Heap[null, Lseg(this, end)], this, end)) ==> this != end ==> (forall i: int, j_9: int ::
    { Seq#Index(contentNodes'(Heap, this, end), i), prio#frame(EmptyFrame, Seq#Index(contentNodes'(Heap, this, end), j_9)) } { prio#frame(EmptyFrame, Seq#Index(contentNodes'(Heap, this, end), i)), Seq#Index(contentNodes'(Heap, this, end), j_9) } { prio#frame(EmptyFrame, Seq#Index(contentNodes'(Heap, this, end), i)), prio#frame(EmptyFrame, Seq#Index(contentNodes'(Heap, this, end), j_9)) }
    0 <= i && (i < j_9 && j_9 < Seq#Length(contentNodes'(Heap, this, end))) ==> prio(Heap, Seq#Index(contentNodes'(Heap, this, end), i)) <= prio(Heap, Seq#Index(contentNodes'(Heap, this, end), j_9))
  )
);

// Trigger function (controlling recursive postconditions)
function  contentNodes#trigger(frame: FrameType, this: Ref, end: Ref): bool;

// State-independent trigger function
function  contentNodes#triggerStateless(this: Ref, end: Ref): Seq Ref;

// Check contract well-formedness and postcondition
procedure contentNodes#definedness(this: Ref, end: Ref) returns (Result: (Seq Ref))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_22: int;
  var j_14: int;
  var i_2_1: int;
  var j_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume Heap[end, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Lseg(this, end):=Mask[null, Lseg(this, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (this == end ? Seq[Ref]() : (unfolding acc(Lseg(this, end), write) in Seq(this.data) ++ (this.next == null ? Seq[Ref]() : contentNodes(this.next, end))))
      if (this == end) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Lseg#trigger(UnfoldingHeap, Lseg(this, end));
        assume UnfoldingHeap[null, Lseg(this, end)] == FrameFragment((if this != end then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)] else EmptyFrame)))) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Lseg(this, end) (0076.vpr@21.1--35.2) [195089]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Lseg(this, end)];
        if (this != end) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Lseg(this, end), UnfoldingHeap[null, Lseg(this, end)], Lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Execute unfolding (for extra information)
              Unfolding1Heap := UnfoldingHeap;
              Unfolding1Mask := UnfoldingMask;
              assume Lseg#trigger(Unfolding1Heap, Lseg(Unfolding1Heap[this, next], end));
              assume Unfolding1Heap[null, Lseg(Unfolding1Heap[this, next], end)] == FrameFragment((if Unfolding1Heap[this, next] != end then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] else EmptyFrame)))) else EmptyFrame));
              ExhaleWellDef0Heap := Unfolding1Heap;
              ExhaleWellDef0Mask := Unfolding1Mask;
              perm := FullPerm;
              if (Unfolding1Heap[this, next] != end) {
                perm := FullPerm;
                assume Unfolding1Heap[this, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], data:=Unfolding1Mask[Unfolding1Heap[this, next], data] + perm];
                assume state(Unfolding1Heap, Unfolding1Mask);
                perm := FullPerm;
                assume Unfolding1Heap[this, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
                assume state(Unfolding1Heap, Unfolding1Mask);
                if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
                  perm := FullPerm;
                  Unfolding1Mask := Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Lseg(Unfolding1Heap[this, next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[this, next], end)], Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)]);
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  assume Unfolding1Heap[Unfolding1Heap[this, next], next] != end ==> prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[this, next], data]) <= prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]);
                  
                  // -- Free assumptions (inhale module)
                    if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end) {
                      Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][Unfolding1Heap[Unfolding1Heap[this, next], next], data:=true]];
                      Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][Unfolding1Heap[Unfolding1Heap[this, next], next], next:=true]];
                      if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null) {
                        havoc newPMask;
                        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                          { newPMask[o_16, f_21] }
                          Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][o_16, f_21] || Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)][o_16, f_21] ==> newPMask[o_16, f_21]
                        );
                        Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=newPMask];
                      }
                    }
                    assume state(Unfolding1Heap, Unfolding1Mask);
                }
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
            assume UnfoldingHeap[this, next] != end ==> prio(UnfoldingHeap, UnfoldingHeap[this, data]) <= prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[this, next], data]);
            
            // -- Free assumptions (inhale module)
              if (UnfoldingHeap[this, next] != end) {
                UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][UnfoldingHeap[this, next], data:=true]];
                UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][UnfoldingHeap[this, next], next:=true]];
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                    { newPMask[o_15, f_20] }
                    UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][o_15, f_20] || UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][o_15, f_20] ==> newPMask[o_15, f_20]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=newPMask];
                }
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (0076.vpr@21.1--35.2) [195090]"}
          HasDirectPerm(UnfoldingMask, this, data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@21.1--35.2) [195091]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (UnfoldingHeap[this, next] == null) {
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@21.1--35.2) [195092]"}
            HasDirectPerm(UnfoldingMask, this, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access Lseg(this.next, end) (0076.vpr@33.73--33.101) [195093]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume contentNodes#trigger(UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)], UnfoldingHeap[this, next], end);
          }
        }
        
        // -- Free assumptions (exp module)
          if (this != end) {
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, data:=true]];
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, next:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                { newPMask[o_52, f_55] }
                Heap[null, Lseg#sm(this, end)][o_52, f_55] || Heap[null, Lseg#sm(Heap[this, next], end)][o_52, f_55] ==> newPMask[o_52, f_55]
              );
              Heap := Heap[null, Lseg#sm(this, end):=newPMask];
            }
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if this == end then (Seq#Empty(): Seq Ref) else Seq#Append(Seq#Singleton(Heap[this, data]), (if Heap[this, next] == null then (Seq#Empty(): Seq Ref) else contentNodes(Heap, Heap[this, next], end))));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of contentNodes might not hold. Assertion (this == end) == (result == Seq[Ref]()) might not hold. (0076.vpr@23.12--23.49) [195094]"}
      (this == end) == Seq#Equal(Result, (Seq#Empty(): Seq Ref));
    if (this != end) {
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion 0 < |result| might not hold. (0076.vpr@24.12--24.40) [195095]"}
        0 < Seq#Length(Result);
    }
    if (this != end) {
      
      // -- Check definedness of result[0] == (unfolding acc(Lseg(this, end), write) in this.data)
        assert {:msg "  Contract might not be well-formed. Index result[0] into result might exceed sequence length. (0076.vpr@25.12--25.84) [195096]"}
          0 < Seq#Length(Result);
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume Lseg#trigger(UnfoldingHeap, Lseg(this, end));
        assume UnfoldingHeap[null, Lseg(this, end)] == FrameFragment((if this != end then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)] else EmptyFrame)))) else EmptyFrame));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Lseg(this, end) (0076.vpr@25.12--25.84) [195097]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Lseg(this, end)];
        if (this != end) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(Lseg(this, end), UnfoldingHeap[null, Lseg(this, end)], Lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Execute unfolding (for extra information)
              Unfolding1Heap := UnfoldingHeap;
              Unfolding1Mask := UnfoldingMask;
              assume Lseg#trigger(Unfolding1Heap, Lseg(Unfolding1Heap[this, next], end));
              assume Unfolding1Heap[null, Lseg(Unfolding1Heap[this, next], end)] == FrameFragment((if Unfolding1Heap[this, next] != end then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] else EmptyFrame)))) else EmptyFrame));
              ExhaleWellDef1Heap := Unfolding1Heap;
              ExhaleWellDef1Mask := Unfolding1Mask;
              perm := FullPerm;
              if (Unfolding1Heap[this, next] != end) {
                perm := FullPerm;
                assume Unfolding1Heap[this, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], data:=Unfolding1Mask[Unfolding1Heap[this, next], data] + perm];
                assume state(Unfolding1Heap, Unfolding1Mask);
                perm := FullPerm;
                assume Unfolding1Heap[this, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
                assume state(Unfolding1Heap, Unfolding1Mask);
                if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
                  perm := FullPerm;
                  Unfolding1Mask := Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Lseg(Unfolding1Heap[this, next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[this, next], end)], Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)]);
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  assume Unfolding1Heap[Unfolding1Heap[this, next], next] != end ==> prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[this, next], data]) <= prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]);
                  
                  // -- Free assumptions (inhale module)
                    if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end) {
                      Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][Unfolding1Heap[Unfolding1Heap[this, next], next], data:=true]];
                      Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][Unfolding1Heap[Unfolding1Heap[this, next], next], next:=true]];
                      if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null) {
                        havoc newPMask;
                        assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                          { newPMask[o_26, f_29] }
                          Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end)][o_26, f_29] || Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)][o_26, f_29] ==> newPMask[o_26, f_29]
                        );
                        Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=newPMask];
                      }
                    }
                    assume state(Unfolding1Heap, Unfolding1Mask);
                }
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
            assume UnfoldingHeap[this, next] != end ==> prio(UnfoldingHeap, UnfoldingHeap[this, data]) <= prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[this, next], data]);
            
            // -- Free assumptions (inhale module)
              if (UnfoldingHeap[this, next] != end) {
                UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][UnfoldingHeap[this, next], data:=true]];
                UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][UnfoldingHeap[this, next], next:=true]];
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                    { newPMask[o_53, f_56] }
                    UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end)][o_53, f_56] || UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][o_53, f_56] ==> newPMask[o_53, f_56]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[this, next], end):=newPMask];
                }
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.data (0076.vpr@25.12--25.84) [195098]"}
          HasDirectPerm(UnfoldingMask, this, data);
        
        // -- Free assumptions (exp module)
          if (this != end) {
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, data:=true]];
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, next:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                { newPMask[o, f_85] }
                Heap[null, Lseg#sm(this, end)][o, f_85] || Heap[null, Lseg#sm(Heap[this, next], end)][o, f_85] ==> newPMask[o, f_85]
              );
              Heap := Heap[null, Lseg#sm(this, end):=newPMask];
            }
          }
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          if (this != end) {
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, data:=true]];
            Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, next:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
                { newPMask[o_11, f_3] }
                Heap[null, Lseg#sm(this, end)][o_11, f_3] || Heap[null, Lseg#sm(Heap[this, next], end)][o_11, f_3] ==> newPMask[o_11, f_3]
              );
              Heap := Heap[null, Lseg#sm(this, end):=newPMask];
            }
          }
          assume state(Heap, Mask);
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion result[0] == (unfolding acc(Lseg(this, end), write) in this.data) might not hold. (0076.vpr@25.12--25.84) [195099]"}
        Seq#Index(Result, 0) == Heap[this, data];
    }
    if (this != end) {
      
      // -- Check definedness of (forall i: Int, j: Int :: { result[i], prio(result[j]) } { prio(result[i]), result[j] } { prio(result[i]), prio(result[j]) } 0 <= i && (i < j && j < |result|) ==> prio(result[i]) <= prio(result[j]))
        if (*) {
          if (0 <= i_22 && (i_22 < j_14 && j_14 < Seq#Length(Result))) {
            assert {:msg "  Contract might not be well-formed. Index result[i] into result might be negative. (0076.vpr@26.12--29.43) [195100]"}
              i_22 >= 0;
            assert {:msg "  Contract might not be well-formed. Index result[i] into result might exceed sequence length. (0076.vpr@26.12--29.43) [195101]"}
              i_22 < Seq#Length(Result);
            if (*) {
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. Index result[j] into result might be negative. (0076.vpr@26.12--29.43) [195102]"}
              j_14 >= 0;
            assert {:msg "  Contract might not be well-formed. Index result[j] into result might exceed sequence length. (0076.vpr@26.12--29.43) [195103]"}
              j_14 < Seq#Length(Result);
            if (*) {
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
      if (*) {
        if (0 <= i_2_1 && (i_2_1 < j_2_1 && j_2_1 < Seq#Length(Result))) {
          assert {:msg "  Postcondition of contentNodes might not hold. Assertion prio(result[i]) <= prio(result[j]) might not hold. (0076.vpr@26.12--29.43) [195104]"}
            prio(Heap, Seq#Index(Result, i_2_1)) <= prio(Heap, Seq#Index(Result, j_2_1));
        }
        assume false;
      }
      assume (forall i_3_1_1: int, j_3_1_1: int ::
        { Seq#Index(Result, i_3_1_1), prio#frame(EmptyFrame, Seq#Index(Result, j_3_1_1)) } { prio#frame(EmptyFrame, Seq#Index(Result, i_3_1_1)), Seq#Index(Result, j_3_1_1) } { prio#frame(EmptyFrame, Seq#Index(Result, i_3_1_1)), prio#frame(EmptyFrame, Seq#Index(Result, j_3_1_1)) }
        0 <= i_3_1_1 && (i_3_1_1 < j_3_1_1 && j_3_1_1 < Seq#Length(Result)) ==> prio(Heap, Seq#Index(Result, i_3_1_1)) <= prio(Heap, Seq#Index(Result, j_3_1_1))
      );
    }
    
    // -- Free assumptions (exhale module)
      if (this != end) {
        Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, data:=true]];
        Heap := Heap[null, Lseg#sm(this, end):=Heap[null, Lseg#sm(this, end)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_7: Ref, f_31: (Field A B) ::
            { newPMask[o_7, f_31] }
            Heap[null, Lseg#sm(this, end)][o_7, f_31] || Heap[null, Lseg#sm(Heap[this, next], end)][o_7, f_31] ==> newPMask[o_7, f_31]
          );
          Heap := Heap[null, Lseg#sm(this, end):=newPMask];
        }
      }
      assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Lseg
// ==================================================

type PredicateType_Lseg;
function  Lseg(this: Ref, end: Ref): Field PredicateType_Lseg FrameType;
function  Lseg#sm(this: Ref, end: Ref): Field PredicateType_Lseg PMaskType;
axiom (forall this: Ref, end: Ref ::
  { PredicateMaskField(Lseg(this, end)) }
  PredicateMaskField(Lseg(this, end)) == Lseg#sm(this, end)
);
axiom (forall this: Ref, end: Ref ::
  { Lseg(this, end) }
  IsPredicateField(Lseg(this, end))
);
axiom (forall this: Ref, end: Ref ::
  { Lseg(this, end) }
  getPredWandId(Lseg(this, end)) == 0
);
function  Lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { Lseg(this, end), Lseg(this2, end2) }
  Lseg(this, end) == Lseg(this2, end2) ==> this == this2 && end == end2
);
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { Lseg#sm(this, end), Lseg#sm(this2, end2) }
  Lseg#sm(this, end) == Lseg#sm(this2, end2) ==> this == this2 && end == end2
);

axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { Lseg#trigger(Heap, Lseg(this, end)) }
  Lseg#everUsed(Lseg(this, end))
);

procedure Lseg#definedness(this: Ref, end: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of Lseg
    
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
      Mask := Mask[this, data:=Mask[this, data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, next:=Mask[this, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.next != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@13.1--19.2) [195105]"}
          HasDirectPerm(Mask, this, next);
      if (Heap[this, next] != null) {
        
        // -- Check definedness of acc(Lseg(this.next, end), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@13.1--19.2) [195106]"}
            HasDirectPerm(Mask, this, next);
        perm := FullPerm;
        Mask := Mask[null, Lseg(Heap[this, next], end):=Mask[null, Lseg(Heap[this, next], end)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (unfolding acc(Lseg(this.next, end), write) in this.next != end ==> prio(this.data) <= prio(this.next.data))
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume Lseg#trigger(UnfoldingHeap, Lseg(UnfoldingHeap[this, next], end));
          assume UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)] == FrameFragment((if UnfoldingHeap[this, next] != end then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, next], next] != null then UnfoldingHeap[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)] else EmptyFrame)))) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access Lseg(this.next, end) (0076.vpr@13.1--19.2) [195107]"}
              perm <= UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)];
          }
          UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)] - perm];
          if (UnfoldingHeap[this, next] != end) {
            perm := FullPerm;
            assume UnfoldingHeap[this, next] != null;
            UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume UnfoldingHeap[this, next] != null;
            UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(Lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)], Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Execute unfolding (for extra information)
                Unfolding1Heap := UnfoldingHeap;
                Unfolding1Mask := UnfoldingMask;
                assume Lseg#trigger(Unfolding1Heap, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end));
                assume Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] == FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != end then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null then Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)] else EmptyFrame)))) else EmptyFrame));
                ExhaleWellDef0Heap := Unfolding1Heap;
                ExhaleWellDef0Mask := Unfolding1Mask;
                perm := FullPerm;
                Unfolding1Mask := Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end):=Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)] - perm];
                if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end) {
                  perm := FullPerm;
                  assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
                  Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data] + perm];
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  perm := FullPerm;
                  assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
                  Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next] + perm];
                  assume state(Unfolding1Heap, Unfolding1Mask);
                  if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null) {
                    perm := FullPerm;
                    Unfolding1Mask := Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end):=Unfolding1Mask[null, Lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)] + perm];
                    
                    // -- Extra unfolding of predicate
                      assume InsidePredicate(Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end)], Lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end), Unfolding1Heap[null, Lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)]);
                    assume state(Unfolding1Heap, Unfolding1Mask);
                    assume state(Unfolding1Heap, Unfolding1Mask);
                    assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != end ==> prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]) <= prio(Unfolding1Heap, Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data]);
                    
                    // -- Free assumptions (inhale module)
                      if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != end) {
                        Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data:=true]];
                        Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end):=Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next:=true]];
                        if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next] != null) {
                          havoc newPMask;
                          assume (forall <A, B> o_27: Ref, f_16: (Field A B) ::
                            { newPMask[o_27, f_16] }
                            Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end)][o_27, f_16] || Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next], end)][o_27, f_16] ==> newPMask[o_27, f_16]
                          );
                          Unfolding1Heap := Unfolding1Heap[null, Lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end):=newPMask];
                        }
                      }
                      assume state(Unfolding1Heap, Unfolding1Mask);
                  }
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
              assume UnfoldingHeap[UnfoldingHeap[this, next], next] != end ==> prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[this, next], data]) <= prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data]);
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != end) {
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
                  if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_6: Ref, f_2: (Field A B) ::
                      { newPMask[o_6, f_2] }
                      UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][o_6, f_2] || UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], end)][o_6, f_2] ==> newPMask[o_6, f_2]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=newPMask];
                  }
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@13.1--19.2) [195108]"}
            HasDirectPerm(UnfoldingMask, this, next);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@13.1--19.2) [195109]"}
            HasDirectPerm(UnfoldingMask, this, next);
          if (UnfoldingHeap[this, next] != end) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (0076.vpr@13.1--19.2) [195110]"}
              HasDirectPerm(UnfoldingMask, this, data);
            if (*) {
              // Stop execution
              assume false;
            }
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0076.vpr@13.1--19.2) [195111]"}
              HasDirectPerm(UnfoldingMask, this, next);
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next.data (0076.vpr@13.1--19.2) [195112]"}
              HasDirectPerm(UnfoldingMask, UnfoldingHeap[this, next], data);
            if (*) {
              // Stop execution
              assume false;
            }
          }
          
          // -- Free assumptions (exp module)
            if (Heap[this, next] != end) {
              Heap := Heap[null, Lseg#sm(Heap[this, next], end):=Heap[null, Lseg#sm(Heap[this, next], end)][Heap[this, next], data:=true]];
              Heap := Heap[null, Lseg#sm(Heap[this, next], end):=Heap[null, Lseg#sm(Heap[this, next], end)][Heap[this, next], next:=true]];
              if (Heap[Heap[this, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_8: Ref, f_30: (Field A B) ::
                  { newPMask[o_8, f_30] }
                  Heap[null, Lseg#sm(Heap[this, next], end)][o_8, f_30] || Heap[null, Lseg#sm(Heap[Heap[this, next], next], end)][o_8, f_30] ==> newPMask[o_8, f_30]
                );
                Heap := Heap[null, Lseg#sm(Heap[this, next], end):=newPMask];
              }
            }
            assume state(Heap, Mask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume Lseg#trigger(UnfoldingHeap, Lseg(UnfoldingHeap[this, next], end));
          assume UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)] == FrameFragment((if UnfoldingHeap[this, next] != end then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, next], next] != null then UnfoldingHeap[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)] else EmptyFrame)))) else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[this, next], end)] - perm];
          if (UnfoldingHeap[this, next] != end) {
            perm := FullPerm;
            assume UnfoldingHeap[this, next] != null;
            UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume UnfoldingHeap[this, next] != null;
            UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingMask[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(Lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[this, next], end)], Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end), UnfoldingHeap[null, Lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[this, next], next] != end ==> prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[this, next], data]) <= prio(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data]);
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != end) {
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
                  if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_30: Ref, f_8: (Field A B) ::
                      { newPMask[o_30, f_8] }
                      UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end)][o_30, f_8] || UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], end)][o_30, f_8] ==> newPMask[o_30, f_8]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, Lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end):=newPMask];
                  }
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume Heap[this, next] != end ==> prio(Heap, Heap[this, data]) <= prio(Heap, Heap[Heap[this, next], data]);
      }
    }
    assume state(Heap, Mask);
}