// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:43:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/quantifiers.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/quantifiers-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 5: g2
// - height 4: g
// - height 3: f2
// - height 2: f
// - height 1: reqIGt0
// - height 0: Cell_get
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
// Translation of all fields
// ==================================================

const unique Cell_x: Field NormalField int;
axiom !IsPredicateField(Cell_x);
axiom !IsWandField(Cell_x);

// ==================================================
// Translation of function Cell_get
// ==================================================

// Uninterpreted function definitions
function  Cell_get_1(Heap: HeapType, this: Ref): int;
function  Cell_get'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Cell_get_1(Heap, this) }
  Cell_get_1(Heap, this) == Cell_get'(Heap, this) && dummyFunction(Cell_get#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Cell_get'(Heap, this) }
  dummyFunction(Cell_get#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Cell_get_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Cell_get_1(Heap, this) == Heap[this, Cell_x]
);

// Framing axioms
function  Cell_get#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Cell_get'(Heap, this) }
  state(Heap, Mask) ==> Cell_get'(Heap, this) == Cell_get#frame(FrameFragment(Heap[this, Cell_x]), this)
);

// Trigger function (controlling recursive postconditions)
function  Cell_get#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Cell_get#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Cell_get#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Cell_x:=Mask[this, Cell_x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.Cell_x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Cell_x (quantifiers.vpr@6.1--8.16) [186088]"}
        HasDirectPerm(Mask, this, Cell_x);
  
  // -- Translate function body
    Result := Heap[this, Cell_x];
}

// ==================================================
// Translation of function reqIGt0
// ==================================================

// Uninterpreted function definitions
function  reqIGt0(Heap: HeapType, i: int): int;
function  reqIGt0'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { reqIGt0(Heap, i) }
  reqIGt0(Heap, i) == reqIGt0'(Heap, i) && dummyFunction(reqIGt0#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { reqIGt0'(Heap, i) }
  dummyFunction(reqIGt0#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), reqIGt0(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> i >= 0 ==> reqIGt0(Heap, i) == i
);

// Framing axioms
function  reqIGt0#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), reqIGt0'(Heap, i) }
  state(Heap, Mask) ==> reqIGt0'(Heap, i) == reqIGt0#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  reqIGt0#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  reqIGt0#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure reqIGt0#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := i;
}

// ==================================================
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, i: int, j_9: int): int;
function  f'(Heap: HeapType, i: int, j_9: int): int;
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { f_6(Heap, i, j_9) }
  f_6(Heap, i, j_9) == f'(Heap, i, j_9) && dummyFunction(f#triggerStateless(i, j_9))
);
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { f'(Heap, i, j_9) }
  dummyFunction(f#triggerStateless(i, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, j_9: int ::
  { state(Heap, Mask), f_6(Heap, i, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> f_6(Heap, i, j_9) == i + j_9
);

// Framing axioms
function  f#frame(frame: FrameType, i: int, j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, j_9: int ::
  { state(Heap, Mask), f'(Heap, i, j_9) }
  state(Heap, Mask) ==> f'(Heap, i, j_9) == f#frame(EmptyFrame, i, j_9)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, i: int, j_9: int): bool;

// State-independent trigger function
function  f#triggerStateless(i: int, j_9: int): int;

// Check contract well-formedness and postcondition
procedure f#definedness(i: int, j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := i + j_9;
}

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_3(Heap: HeapType, i: int): int;
function  g'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { g_3(Heap, i) }
  g_3(Heap, i) == g'(Heap, i) && dummyFunction(g#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { g'(Heap, i) }
  dummyFunction(g#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), g_3(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> g_3(Heap, i) == i
);

// Framing axioms
function  g#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), g'(Heap, i) }
  state(Heap, Mask) ==> g'(Heap, i) == g#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  g#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure g#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Translate function body
    Result := i;
}

// ==================================================
// Translation of function f2
// ==================================================

// Uninterpreted function definitions
function  f2_3(Heap: HeapType, i: int): bool;
function  f2'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { f2_3(Heap, i) }
  f2_3(Heap, i) == f2'(Heap, i) && dummyFunction(f2#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f2'(Heap, i) }
  dummyFunction(f2#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f2_3(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> f2_3(Heap, i)
);

// Framing axioms
function  f2#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f2'(Heap, i) }
  state(Heap, Mask) ==> f2'(Heap, i) == f2#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f2#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f2#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure f2#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function g2
// ==================================================

// Uninterpreted function definitions
function  g2_1(Heap: HeapType, i: int, j_9: int): bool;
function  g2'(Heap: HeapType, i: int, j_9: int): bool;
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { g2_1(Heap, i, j_9) }
  g2_1(Heap, i, j_9) == g2'(Heap, i, j_9) && dummyFunction(g2#triggerStateless(i, j_9))
);
axiom (forall Heap: HeapType, i: int, j_9: int ::
  { g2'(Heap, i, j_9) }
  dummyFunction(g2#triggerStateless(i, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, j_9: int ::
  { state(Heap, Mask), g2_1(Heap, i, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> g2_1(Heap, i, j_9)
);

// Framing axioms
function  g2#frame(frame: FrameType, i: int, j_9: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, j_9: int ::
  { state(Heap, Mask), g2'(Heap, i, j_9) }
  state(Heap, Mask) ==> g2'(Heap, i, j_9) == g2#frame(EmptyFrame, i, j_9)
);

// Trigger function (controlling recursive postconditions)
function  g2#trigger(frame: FrameType, i: int, j_9: int): bool;

// State-independent trigger function
function  g2#triggerStateless(i: int, j_9: int): bool;

// Check contract well-formedness and postcondition
procedure g2#definedness(i: int, j_9: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of method forallCellGet10
// ==================================================

procedure forallCellGet10(c: Ref) returns (d: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var i1_17: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i2: int;
  var i3_14: int;
  var i2_2_1: int;
  var i3_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume c != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c != null;
    Mask := Mask[c, Cell_x:=Mask[c, Cell_x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int ::0 <= i1 && i1 < Cell_get(c) ==> Cell_get(c) > i1)
      if (*) {
        if (0 <= i1_17) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@21.46--21.57) [186089]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i1_17 && i1_17 < Cell_get_1(Heap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@21.64--21.75) [186090]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
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
    assume (forall i1_1_1: int ::
      
      0 <= i1_1_1 && i1_1_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) > i1_1_1
    );
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
    assume c != null;
    PostMask := PostMask[c, Cell_x:=PostMask[c, Cell_x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i2: Int ::0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) > i2)
      if (*) {
        if (0 <= i2) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@23.45--23.56) [186091]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i2 && i2 < Cell_get_1(PostHeap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@23.63--23.74) [186092]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i2_1_1: int ::
      
      0 <= i2_1_1 && i2_1_1 < Cell_get_1(PostHeap, c) ==> Cell_get_1(PostHeap, c) > i2_1_1
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i3: Int ::0 <= i3 && i3 < Cell_get(c) ==> Cell_get(c) != i3)
      if (*) {
        if (0 <= i3_14) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@24.45--24.56) [186093]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i3_14 && i3_14 < Cell_get_1(PostHeap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@24.63--24.74) [186094]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i3_1: int ::
      
      0 <= i3_1 && i3_1 < Cell_get_1(PostHeap, c) ==> Cell_get_1(PostHeap, c) != i3_1
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of forallCellGet10 might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@22.10--22.30) [186095]"}
        perm <= Mask[c, Cell_x];
    }
    Mask := Mask[c, Cell_x:=Mask[c, Cell_x] - perm];
    if (*) {
      if (0 <= i2_2_1 && i2_2_1 < Cell_get_1(Heap, c)) {
        assert {:msg "  Postcondition of forallCellGet10 might not hold. Assertion Cell_get(c) > i2 might not hold. (quantifiers.vpr@23.10--23.80) [186096]"}
          Cell_get_1(Heap, c) > i2_2_1;
      }
      assume false;
    }
    assume (forall i2_3_1: int ::
      
      0 <= i2_3_1 && i2_3_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) > i2_3_1
    );
    if (*) {
      if (0 <= i3_2 && i3_2 < Cell_get_1(Heap, c)) {
        assert {:msg "  Postcondition of forallCellGet10 might not hold. Assertion Cell_get(c) != i3 might not hold. (quantifiers.vpr@24.10--24.81) [186097]"}
          Cell_get_1(Heap, c) != i3_2;
      }
      assume false;
    }
    assume (forall i3_3_1: int ::
      
      0 <= i3_3_1 && i3_3_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) != i3_3_1
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fail10ForallCellGet10
// ==================================================

procedure fail10ForallCellGet10(c: Ref) returns (d: Ref)
  modifies Heap, Mask;
{
  var i_6: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume c != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::0 <= i && i < Cell_get(c) ==> Cell_get(c) > i)
      if (*) {
        if (0 <= i_6) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@30.43--30.54) [186098]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_6 && i_6 < Cell_get_1(Heap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@30.61--30.72) [186099]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
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
    assume (forall i_1: int ::
      
      0 <= i_1 && i_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) > i_1
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method fail20ForallCellGet10
// ==================================================

procedure fail20ForallCellGet10(c: Ref) returns (d: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i1_12: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i2_14: int;
  var i2_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume c != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c != null;
    Mask := Mask[c, Cell_x:=Mask[c, Cell_x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Cell_get(c) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@36.11--36.22) [186100]"}
          NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Cell_get_1(Heap, c) > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i1: Int ::0 <= i1 && i1 < Cell_get(c) ==> Cell_get(c) >= i1)
      if (*) {
        if (0 <= i1_12) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@37.46--37.57) [186101]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i1_12 && i1_12 < Cell_get_1(Heap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@37.64--37.75) [186102]"}
              NoPerm < perm ==> NoPerm < Mask[c, Cell_x];
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
    assume (forall i1_1_1: int ::
      
      0 <= i1_1_1 && i1_1_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) >= i1_1_1
    );
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
    assume c != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume c != null;
    PostMask := PostMask[c, Cell_x:=PostMask[c, Cell_x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i2: Int ::0 <= i2 && i2 < Cell_get(c) ==> Cell_get(c) <= i2)
      if (*) {
        if (0 <= i2_14) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@41.45--41.56) [186103]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (0 <= i2_14 && i2_14 < Cell_get_1(PostHeap, c)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@41.63--41.74) [186104]"}
              NoPerm < perm ==> NoPerm < PostMask[c, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i2_1_1: int ::
      
      0 <= i2_1_1 && i2_1_1 < Cell_get_1(PostHeap, c) ==> Cell_get_1(PostHeap, c) <= i2_1_1
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of fail20ForallCellGet10 might not hold. Assertion c != null might not hold. (quantifiers.vpr@38.10--38.19) [186105]"}
      c != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fail20ForallCellGet10 might not hold. There might be insufficient permission to access c.Cell_x (quantifiers.vpr@39.10--39.30) [186106]"}
        perm <= Mask[c, Cell_x];
    }
    Mask := Mask[c, Cell_x:=Mask[c, Cell_x] - perm];
    if (*) {
      if (0 <= i2_2_1 && i2_2_1 < Cell_get_1(Heap, c)) {
        assert {:msg "  Postcondition of fail20ForallCellGet10 might not hold. Assertion Cell_get(c) <= i2 might not hold. (quantifiers.vpr@41.10--41.81) [186107]"}
          Cell_get_1(Heap, c) <= i2_2_1;
      }
      assume false;
    }
    assume (forall i2_3_1: int ::
      
      0 <= i2_3_1 && i2_3_1 < Cell_get_1(Heap, c) ==> Cell_get_1(Heap, c) <= i2_3_1
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method noQuantifiedPermissionsPre
// ==================================================

procedure noQuantifiedPermissionsPre(s_2: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var r_30: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) && r != null ==> r.Cell_x > 0)
      if (*) {
        if (s_2[r_30] && r_30 != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.Cell_x (quantifiers.vpr@46.12--46.66) [186108]"}
            HasDirectPerm(Mask, r_30, Cell_x);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { s_2[r_1_1] }
      s_2[r_1_1] && r_1_1 != null ==> Heap[r_1_1, Cell_x] > 0
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method noQuantifiedPermissionsPost
// ==================================================

procedure noQuantifiedPermissionsPost(s_2: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var r_32: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var r_2_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall r: Ref :: { (r in s) } { Cell_get(r) } (r in s) && r != null ==> Cell_get(r) >= Cell_get(r))
      if (*) {
        if (s_2[r_32] && r_32 != null) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access r.Cell_x (quantifiers.vpr@51.52--51.63) [186109]"}
              NoPerm < perm ==> NoPerm < PostMask[r_32, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function Cell_get might not hold. There might be insufficient permission to access r.Cell_x (quantifiers.vpr@51.67--51.78) [186110]"}
              NoPerm < perm ==> NoPerm < PostMask[r_32, Cell_x];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { s_2[r_1_1] } { Cell_get#frame(FrameFragment(PostHeap[r_1_1, Cell_x]), r_1_1) }
      s_2[r_1_1] && r_1_1 != null ==> Cell_get_1(PostHeap, r_1_1) >= Cell_get_1(PostHeap, r_1_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (*) {
      if (s_2[r_2_1] && r_2_1 != null) {
        assert {:msg "  Postcondition of noQuantifiedPermissionsPost might not hold. Assertion Cell_get(r) >= Cell_get(r) might not hold. (quantifiers.vpr@51.11--51.79) [186111]"}
          Cell_get_1(Heap, r_2_1) >= Cell_get_1(Heap, r_2_1);
      }
      assume false;
    }
    assume (forall r_3_1: Ref ::
      { s_2[r_3_1] } { Cell_get#frame(FrameFragment(Heap[r_3_1, Cell_x]), r_3_1) }
      s_2[r_3_1] && r_3_1 != null ==> Cell_get_1(Heap, r_3_1) >= Cell_get_1(Heap, r_3_1)
    );
}

// ==================================================
// Translation of method succeedsRange10
// ==================================================

procedure succeedsRange10(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_11: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume a_2 > 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int :: { reqIGt0(i) } 1 <= i ==> reqIGt0(i) == i) -- quantifiers.vpr@57.2--57.54
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { reqIGt0(i) } 1 <= i ==> reqIGt0(i) == i)
      if (*) {
        if (1 <= i_11) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function reqIGt0 might not hold. Assertion i >= 0 might not hold. (quantifiers.vpr@57.39--57.49) [186112]"}
              i_11 >= 0;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (1 <= i_1) {
        assert {:msg "  Assert might fail. Assertion reqIGt0(i) == i might not hold. (quantifiers.vpr@57.9--57.54) [186113]"}
          reqIGt0(Heap, i_1) == i_1;
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { reqIGt0#frame(EmptyFrame, i_2_1_1) }
      1 <= i_2_1_1 ==> reqIGt0(Heap, i_2_1_1) == i_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method failsRange10
// ==================================================

procedure failsRange10(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_12: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int ::
  //     { reqIGt0(i) }
  //     -1 <= i && i < a ==> reqIGt0(i) == i) -- quantifiers.vpr@64.3--64.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { reqIGt0(i) } -1 <= i && i < a ==> reqIGt0(i) == i)
      if (*) {
        if (-1 <= i_12 && i_12 < a_2) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function reqIGt0 might not hold. Assertion i >= 0 might not hold. (quantifiers.vpr@64.51--64.61) [186114]"}
              i_12 >= 0;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (-1 <= i_1 && i_1 < a_2) {
        assert {:msg "  Assert might fail. Assertion reqIGt0(i) == i might not hold. (quantifiers.vpr@64.10--64.67) [186115]"}
          reqIGt0(Heap, i_1) == i_1;
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { reqIGt0#frame(EmptyFrame, i_2_1_1) }
      -1 <= i_2_1_1 && i_2_1_1 < a_2 ==> reqIGt0(Heap, i_2_1_1) == i_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method succeedsExplicit10
// ==================================================

procedure succeedsExplicit10(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_16: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int, fresh__395: Int ::
  //     { (i in Seq(fresh__395, 2, 4, 6, 8)) }
  //     (i in Seq(-2, 2, 4, 6, 8)) ==> reqIGt0(i * i) > i) -- quantifiers.vpr@68.3--68.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int, fresh__395: Int :: { (i in Seq(fresh__395, 2, 4, 6, 8)) } (i in Seq(-2, 2, 4, 6, 8)) ==> reqIGt0(i * i) > i)
      if (*) {
        if (Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_16)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function reqIGt0 might not hold. Assertion i * i >= 0 might not hold. (quantifiers.vpr@68.55--68.67) [186116]"}
              i_16 * i_16 >= 0;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_1)) {
        assert {:msg "  Assert might fail. Assertion reqIGt0(i * i) > i might not hold. (quantifiers.vpr@68.10--68.72) [186117]"}
          reqIGt0(Heap, i_1 * i_1) > i_1;
      }
      assume false;
    }
    assume (forall i_2_1_1: int, fresh__395_2_1: int ::
      { Seq#ContainsTrigger(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(fresh__395_2_1), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_2_1_1) } { Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(fresh__395_2_1), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_2_1_1) }
      Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_2_1_1) ==> reqIGt0(Heap, i_2_1_1 * i_2_1_1) > i_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method failsExplicit10
// ==================================================

procedure failsExplicit10(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_18: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int ::
  //     { reqIGt0(i) }
  //     (i in Seq(-2, 2, 4, 6, 8)) ==> reqIGt0(i) < i * i) -- quantifiers.vpr@74.3--74.76
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { reqIGt0(i) } (i in Seq(-2, 2, 4, 6, 8)) ==> reqIGt0(i) < i * i)
      if (*) {
        if (Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_18)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function reqIGt0 might not hold. Assertion i >= 0 might not hold. (quantifiers.vpr@74.56--74.66) [186118]"}
              i_18 >= 0;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_1)) {
        assert {:msg "  Assert might fail. Assertion reqIGt0(i) < i * i might not hold. (quantifiers.vpr@74.11--74.75) [186119]"}
          reqIGt0(Heap, i_1) < i_1 * i_1;
      }
      assume false;
    }
    assume (forall i_2_1_1: int ::
      { reqIGt0#frame(EmptyFrame, i_2_1_1) }
      Seq#Contains(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(-2), Seq#Singleton(2)), Seq#Singleton(4)), Seq#Singleton(6)), Seq#Singleton(8)), i_2_1_1) ==> reqIGt0(Heap, i_2_1_1) < i_2_1_1 * i_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method succeeds1
// ==================================================

procedure succeeds1(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i1_26: int;
  var i1_1_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume a_2 > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i1: Int :: { g(i1) } 0 <= i1 && i1 < a ==> g(i1) >= 0) -- quantifiers.vpr@85.2--85.61
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i1: Int :: { g(i1) } 0 <= i1 && i1 < a ==> g(i1) >= 0)
      if (*) {
        if (0 <= i1_26 && i1_26 < a_2) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i1_1_1 && i1_1_1 < a_2) {
        assert {:msg "  Assert might fail. Assertion g(i1) >= 0 might not hold. (quantifiers.vpr@85.9--85.61) [186120]"}
          g_3(Heap, i1_1_1) >= 0;
      }
      assume false;
    }
    assume (forall i1_2_1_1: int ::
      { g#frame(EmptyFrame, i1_2_1_1) }
      0 <= i1_2_1_1 && i1_2_1_1 < a_2 ==> g_3(Heap, i1_2_1_1) >= 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (exists i2: Int :: { (i2 in Seq(0)) } (i2 in Seq(0)) ==> true) -- quantifiers.vpr@87.2--87.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (exists i2: Int :: { (i2 in Seq(0)) } (i2 in Seq(0)) ==> true)
      if (*) {
        assume false;
      }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method succeeds2
// ==================================================

procedure succeeds2(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_24: int;
  var j_14: int;
  var i_1: int;
  var j_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume a_2 > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int ::(forall j: Int ::
  //       { f(i, j) }
  //       0 <= i && (i < a && (0 <= j && j < a)) ==> f(i, j) >= 0)) -- quantifiers.vpr@100.2--101.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int ::(forall j: Int :: { f(i, j) } 0 <= i && (i < a && (0 <= j && j < a)) ==> f(i, j) >= 0))
      if (*) {
        if (*) {
          if (0 <= i_24 && (i_24 < a_2 && (0 <= j_14 && j_14 < a_2))) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
        assume false;
      }
    if (*) {
      if (*) {
        if (0 <= i_1 && (i_1 < a_2 && (0 <= j_1 && j_1 < a_2))) {
          assert {:msg "  Assert might fail. Assertion f(i, j) >= 0 might not hold. (quantifiers.vpr@100.9--101.56) [186122]"}
            f_6(Heap, i_1, j_1) >= 0;
        }
        assume false;
      }
      assume (forall j_2_1_1: int ::
        { f#frame(EmptyFrame, i_1, j_2_1_1) }
        0 <= i_1 && (i_1 < a_2 && (0 <= j_2_1_1 && j_2_1_1 < a_2)) ==> f_6(Heap, i_1, j_2_1_1) >= 0
      );
      assume false;
    }
    assume (forall i_2_1_1: int ::
      
      (forall j_3_1: int ::
        { f#frame(EmptyFrame, i_2_1_1, j_3_1) }
        0 <= i_2_1_1 && (i_2_1_1 < a_2 && (0 <= j_3_1 && j_3_1 < a_2)) ==> f_6(Heap, i_2_1_1, j_3_1) >= 0
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(A_1: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var v1_33: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var v2_33: int;
  var v2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@115.9--115.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall v1: Int ::
  //     { f2(v1) }
  //     0 <= v1 && (v1 < 3 && f2(v1)) ==>
  //     (exists j1: Int :: 0 <= j1 && (j1 < 3 && j1 == v1))) -- quantifiers.vpr@117.9--118.86
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v1: Int :: { f2(v1) } 0 <= v1 && (v1 < 3 && f2(v1)) ==> (exists j1: Int :: 0 <= j1 && (j1 < 3 && j1 == v1)))
      if (*) {
        if (0 <= v1_33) {
          if (v1_33 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v1_33 && (v1_33 < 3 && f2_3(Heap, v1_33))) {
          if (*) {
            assume false;
          }
        }
        assume false;
      }
    assume (forall v1_1: int ::
      { f2#frame(EmptyFrame, v1_1) }
      0 <= v1_1 && (v1_1 < 3 && f2_3(Heap, v1_1)) ==> (exists j1_1: int ::
        
        0 <= j1_1 && (j1_1 < 3 && j1_1 == v1_1)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall v2: Int ::
  //     { f2(v2) }
  //     0 <= v2 && (v2 < 3 && f2(v2)) ==>
  //     (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 == v2))) -- quantifiers.vpr@121.2--122.86
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall v2: Int :: { f2(v2) } 0 <= v2 && (v2 < 3 && f2(v2)) ==> (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 == v2)))
      if (*) {
        if (0 <= v2_33) {
          if (v2_33 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v2_33 && (v2_33 < 3 && f2_3(Heap, v2_33))) {
          if (*) {
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= v2_1 && (v2_1 < 3 && f2_3(Heap, v2_1))) {
        assert {:msg "  Assert might fail. Assertion (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 == v2)) might not hold. (quantifiers.vpr@121.9--122.86) [186123]"}
          (exists j2_1: int ::
          
          0 <= j2_1 && (j2_1 < 3 && j2_1 == v2_1)
        );
      }
      assume false;
    }
    assume (forall v2_2_1_1: int ::
      { f2#frame(EmptyFrame, v2_2_1_1) }
      0 <= v2_2_1_1 && (v2_2_1_1 < 3 && f2_3(Heap, v2_2_1_1)) ==> (exists j2_2: int ::
        
        0 <= j2_2 && (j2_2 < 3 && j2_2 == v2_2_1_1)
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(A_1: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var v1_7: int;
  var j1_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var v2_34: int;
  var j2_7: int;
  var v2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@129.9--129.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall v1: Int ::
  //     { f2(v1) }
  //     0 <= v1 && (v1 < 3 && f2(v1)) ==>
  //     (exists j1: Int :: { g2(j1, v1) } 0 <= j1 && (j1 < 3 && g2(j1, v1)))) -- quantifiers.vpr@131.9--132.88
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v1: Int :: { f2(v1) } 0 <= v1 && (v1 < 3 && f2(v1)) ==> (exists j1: Int :: { g2(j1, v1) } 0 <= j1 && (j1 < 3 && g2(j1, v1))))
      if (*) {
        if (0 <= v1_7) {
          if (v1_7 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v1_7 && (v1_7 < 3 && f2_3(Heap, v1_7))) {
          if (*) {
            if (0 <= j1_2) {
              if (j1_2 < 3) {
                if (*) {
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        }
        assume false;
      }
    assume (forall v1_1: int ::
      { f2#frame(EmptyFrame, v1_1) }
      0 <= v1_1 && (v1_1 < 3 && f2_3(Heap, v1_1)) ==> (exists j1_1: int ::
        { g2#frame(EmptyFrame, j1_1, v1_1) }
        0 <= j1_1 && (j1_1 < 3 && g2_1(Heap, j1_1, v1_1))
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall v2: Int ::
  //     { f2(v2) }
  //     0 <= v2 && (v2 < 3 && f2(v2)) ==>
  //     (exists j2: Int :: { g2(j2, v2) } 0 <= j2 && (j2 < 3 && g2(j2, v2)))) -- quantifiers.vpr@134.2--135.88
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall v2: Int :: { f2(v2) } 0 <= v2 && (v2 < 3 && f2(v2)) ==> (exists j2: Int :: { g2(j2, v2) } 0 <= j2 && (j2 < 3 && g2(j2, v2))))
      if (*) {
        if (0 <= v2_34) {
          if (v2_34 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v2_34 && (v2_34 < 3 && f2_3(Heap, v2_34))) {
          if (*) {
            if (0 <= j2_7) {
              if (j2_7 < 3) {
                if (*) {
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= v2_1 && (v2_1 < 3 && f2_3(Heap, v2_1))) {
        assert {:msg "  Assert might fail. Assertion (exists j2: Int :: { g2(j2, v2) } 0 <= j2 && (j2 < 3 && g2(j2, v2))) might not hold. (quantifiers.vpr@134.9--135.88) [186124]"}
          (exists j2_1: int ::
          { g2#frame(EmptyFrame, j2_1, v2_1) }
          0 <= j2_1 && (j2_1 < 3 && g2_1(Heap, j2_1, v2_1))
        );
      }
      assume false;
    }
    assume (forall v2_2_1_1: int ::
      { f2#frame(EmptyFrame, v2_2_1_1) }
      0 <= v2_2_1_1 && (v2_2_1_1 < 3 && f2_3(Heap, v2_2_1_1)) ==> (exists j2_2: int ::
        { g2#frame(EmptyFrame, j2_2, v2_2_1_1) }
        0 <= j2_2 && (j2_2 < 3 && g2_1(Heap, j2_2, v2_2_1_1))
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(A_1: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var v1_34: int;
  var j1_30: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var v2_35: int;
  var j2_13: int;
  var v2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@139.9--139.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall v1: Int ::
  //     { f2(v1) }
  //     0 <= v1 && (v1 < 3 && f2(v1)) ==>
  //     (exists j1: Int :: { A[j1] } 0 <= j1 && (j1 < 3 && A[j1] == v1))) -- quantifiers.vpr@141.9--142.89
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v1: Int :: { f2(v1) } 0 <= v1 && (v1 < 3 && f2(v1)) ==> (exists j1: Int :: { A[j1] } 0 <= j1 && (j1 < 3 && A[j1] == v1)))
      if (*) {
        if (0 <= v1_34) {
          if (v1_34 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v1_34 && (v1_34 < 3 && f2_3(Heap, v1_34))) {
          if (*) {
            if (0 <= j1_30) {
              if (j1_30 < 3) {
                assert {:msg "  Inhale might fail. Index A[j1] into A might be negative. (quantifiers.vpr@141.9--142.89) [186125]"}
                  j1_30 >= 0;
                assert {:msg "  Inhale might fail. Index A[j1] into A might exceed sequence length. (quantifiers.vpr@141.9--142.89) [186126]"}
                  j1_30 < Seq#Length(A_1);
              }
            }
            assume false;
          }
        }
        assume false;
      }
    assume (forall v1_1: int ::
      { f2#frame(EmptyFrame, v1_1) }
      0 <= v1_1 && (v1_1 < 3 && f2_3(Heap, v1_1)) ==> (exists j1_1: int ::
        { Seq#Index(A_1, j1_1) }
        0 <= j1_1 && (j1_1 < 3 && Seq#Index(A_1, j1_1) == v1_1)
      )
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall v2: Int ::
  //     { f2(v2) }
  //     0 <= v2 && (v2 < 3 && f2(v2)) ==>
  //     (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] == v2))) -- quantifiers.vpr@144.2--145.89
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall v2: Int :: { f2(v2) } 0 <= v2 && (v2 < 3 && f2(v2)) ==> (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] == v2)))
      if (*) {
        if (0 <= v2_35) {
          if (v2_35 < 3) {
            if (*) {
              // Stop execution
              assume false;
            }
          }
        }
        if (0 <= v2_35 && (v2_35 < 3 && f2_3(Heap, v2_35))) {
          if (*) {
            if (0 <= j2_13) {
              if (j2_13 < 3) {
                assert {:msg "  Assert might fail. Index A[j2] into A might be negative. (quantifiers.vpr@144.9--145.89) [186127]"}
                  j2_13 >= 0;
                assert {:msg "  Assert might fail. Index A[j2] into A might exceed sequence length. (quantifiers.vpr@144.9--145.89) [186128]"}
                  j2_13 < Seq#Length(A_1);
              }
            }
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= v2_1 && (v2_1 < 3 && f2_3(Heap, v2_1))) {
        assert {:msg "  Assert might fail. Assertion (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] == v2)) might not hold. (quantifiers.vpr@144.9--145.89) [186129]"}
          (exists j2_1: int ::
          { Seq#Index(A_1, j2_1) }
          0 <= j2_1 && (j2_1 < 3 && Seq#Index(A_1, j2_1) == v2_1)
        );
      }
      assume false;
    }
    assume (forall v2_2_1_1: int ::
      { f2#frame(EmptyFrame, v2_2_1_1) }
      0 <= v2_2_1_1 && (v2_2_1_1 < 3 && f2_3(Heap, v2_2_1_1)) ==> (exists j2_2: int ::
        { Seq#Index(A_1, j2_2) }
        0 <= j2_2 && (j2_2 < 3 && Seq#Index(A_1, j2_2) == v2_2_1_1)
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(A_1: (Seq int)) returns ()
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
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@150.9--150.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale f2(0) ==> (exists j1: Int :: 0 <= j1 && (j1 < 3 && j1 > 0)) -- quantifiers.vpr@152.9--152.66
    
    // -- Check definedness of f2(0)
      if (*) {
        // Stop execution
        assume false;
      }
    if (f2_3(Heap, 0)) {
      
      // -- Check definedness of (exists j1: Int :: 0 <= j1 && (j1 < 3 && j1 > 0))
        if (*) {
          assume false;
        }
      assume (exists j1_1: int ::
        
        0 <= j1_1 && (j1_1 < 3 && j1_1 > 0)
      );
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f2(0) ==> (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 > 0)) -- quantifiers.vpr@155.2--155.66
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of f2(0)
      if (*) {
        // Stop execution
        assume false;
      }
    if (f2_3(Heap, 0)) {
      
      // -- Check definedness of (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 > 0))
        if (*) {
          assume false;
        }
      assert {:msg "  Assert might fail. Assertion (exists j2: Int :: 0 <= j2 && (j2 < 3 && j2 > 0)) might not hold. (quantifiers.vpr@155.9--155.66) [186130]"}
        (exists j2_1: int ::
        
        0 <= j2_1 && (j2_1 < 3 && j2_1 > 0)
      );
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(A_1: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j1_31: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j2_14: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@162.9--162.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale f2(0) ==>
  //   (exists j1: Int :: { f2(j1) } 0 <= j1 && (j1 < 3 && f2(j1))) -- quantifiers.vpr@164.9--164.66
    
    // -- Check definedness of f2(0)
      if (*) {
        // Stop execution
        assume false;
      }
    if (f2_3(Heap, 0)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of (exists j1: Int :: { f2(j1) } 0 <= j1 && (j1 < 3 && f2(j1)))
        if (*) {
          if (0 <= j1_31) {
            if (j1_31 < 3) {
              if (*) {
                // Stop execution
                assume false;
              }
            }
          }
          assume false;
        }
      assume (exists j1_1: int ::
        { f2#frame(EmptyFrame, j1_1) }
        0 <= j1_1 && (j1_1 < 3 && f2_3(Heap, j1_1))
      );
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f2(0) ==>
  //   (exists j2: Int :: { f2(j2) } 0 <= j2 && (j2 < 3 && f2(j2))) -- quantifiers.vpr@165.2--165.66
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of f2(0)
      if (*) {
        // Stop execution
        assume false;
      }
    if (f2_3(Heap, 0)) {
      
      // -- Check definedness of (exists j2: Int :: { f2(j2) } 0 <= j2 && (j2 < 3 && f2(j2)))
        if (*) {
          if (0 <= j2_14) {
            if (j2_14 < 3) {
              if (*) {
                // Stop execution
                assume false;
              }
            }
          }
          assume false;
        }
      assert {:msg "  Assert might fail. Assertion (exists j2: Int :: { f2(j2) } 0 <= j2 && (j2 < 3 && f2(j2))) might not hold. (quantifiers.vpr@165.9--165.66) [186131]"}
        (exists j2_1: int ::
        { f2#frame(EmptyFrame, j2_1) }
        0 <= j2_1 && (j2_1 < 3 && f2_3(Heap, j2_1))
      );
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6(A_1: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var j1_32: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var j2_15: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale |A| > 10 -- quantifiers.vpr@169.9--169.17
    assume Seq#Length(A_1) > 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (exists j1: Int :: { A[j1] } 0 <= j1 && (j1 < 3 && A[j1] != null)) -- quantifiers.vpr@171.9--171.61
    
    // -- Check definedness of (exists j1: Int :: { A[j1] } 0 <= j1 && (j1 < 3 && A[j1] != null))
      if (*) {
        if (0 <= j1_32) {
          if (j1_32 < 3) {
            assert {:msg "  Inhale might fail. Index A[j1] into A might be negative. (quantifiers.vpr@171.9--171.61) [186132]"}
              j1_32 >= 0;
            assert {:msg "  Inhale might fail. Index A[j1] into A might exceed sequence length. (quantifiers.vpr@171.9--171.61) [186133]"}
              j1_32 < Seq#Length(A_1);
          }
        }
        assume false;
      }
    assume (exists j1_1: int ::
      { Seq#Index(A_1, j1_1) }
      0 <= j1_1 && (j1_1 < 3 && Seq#Index(A_1, j1_1) != null)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] != null)) -- quantifiers.vpr@172.2--172.61
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] != null))
      if (*) {
        if (0 <= j2_15) {
          if (j2_15 < 3) {
            assert {:msg "  Assert might fail. Index A[j2] into A might be negative. (quantifiers.vpr@172.9--172.61) [186134]"}
              j2_15 >= 0;
            assert {:msg "  Assert might fail. Index A[j2] into A might exceed sequence length. (quantifiers.vpr@172.9--172.61) [186135]"}
              j2_15 < Seq#Length(A_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (exists j2: Int :: { A[j2] } 0 <= j2 && (j2 < 3 && A[j2] != null)) might not hold. (quantifiers.vpr@172.9--172.61) [186136]"}
      (exists j2_1: int ::
      { Seq#Index(A_1, j2_1) }
      0 <= j2_1 && (j2_1 < 3 && Seq#Index(A_1, j2_1) != null)
    );
    assume state(Heap, Mask);
}