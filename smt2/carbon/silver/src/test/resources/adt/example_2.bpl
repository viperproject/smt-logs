// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:29:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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
// - height 3: children
// - height 2: children_seq
// - height 1: height_recursive
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
function  Node_1(v_4: int, left_2: TreeDomainType, right_2: TreeDomainType): TreeDomainType;

// Translation of domain function get_Tree_v
function  get_Tree_v(t_9: TreeDomainType): int;

// Translation of domain function get_Tree_left
function  get_Tree_left(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function get_Tree_right
function  get_Tree_right(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function Tree_tag
function  Tree_tag(t_9: TreeDomainType): int;

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  v_2 == (get_Tree_v((Node_1(v_2, left_1, right): TreeDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  left_1 == (get_Tree_left((Node_1(v_2, left_1, right): TreeDomainType)): TreeDomainType)
);

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  right == (get_Tree_right((Node_1(v_2, left_1, right): TreeDomainType)): TreeDomainType)
);

// Translation of anonymous domain axiom
axiom (Tree_tag((Leaf(): TreeDomainType)): int) == 0;

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  (Tree_tag((Node_1(v_2, left_1, right): TreeDomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall t_2: TreeDomainType ::
  { (Tree_tag(t_2): int) } { (get_Tree_v(t_2): int) } { (get_Tree_left(t_2): TreeDomainType) } { (get_Tree_right(t_2): TreeDomainType) }
  t_2 == (Leaf(): TreeDomainType) || t_2 == (Node_1((get_Tree_v(t_2): int), (get_Tree_left(t_2): TreeDomainType), (get_Tree_right(t_2): TreeDomainType)): TreeDomainType)
);

// ==================================================
// Translation of function height_recursive
// ==================================================

// Uninterpreted function definitions
function  height_recursive(Heap: HeapType, ts: (Seq TreeDomainType)): int;
function  height_recursive'(Heap: HeapType, ts: (Seq TreeDomainType)): int;
axiom (forall Heap: HeapType, ts: (Seq TreeDomainType) ::
  { height_recursive(Heap, ts) }
  height_recursive(Heap, ts) == height_recursive'(Heap, ts) && dummyFunction(height_recursive#triggerStateless(ts))
);
axiom (forall Heap: HeapType, ts: (Seq TreeDomainType) ::
  { height_recursive'(Heap, ts) }
  dummyFunction(height_recursive#triggerStateless(ts))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, ts: (Seq TreeDomainType) ::
  { state(Heap, Mask), height_recursive(Heap, ts) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> height_recursive(Heap, ts) == (if Seq#Length(ts) == 0 then 0 else 1 + height_recursive'(Heap, children_seq(Heap, ts)))
);

// Framing axioms
function  height_recursive#frame(frame: FrameType, ts: (Seq TreeDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, ts: (Seq TreeDomainType) ::
  { state(Heap, Mask), height_recursive'(Heap, ts) }
  state(Heap, Mask) ==> height_recursive'(Heap, ts) == height_recursive#frame(EmptyFrame, ts)
);

// Trigger function (controlling recursive postconditions)
function  height_recursive#trigger(frame: FrameType, ts: (Seq TreeDomainType)): bool;

// State-independent trigger function
function  height_recursive#triggerStateless(ts: (Seq TreeDomainType)): int;

// Check contract well-formedness and postcondition
procedure height_recursive#definedness(ts: (Seq TreeDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|ts| == 0 ? 0 : 1 + height_recursive(children_seq(ts)))
      if (Seq#Length(ts) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume height_recursive#trigger(EmptyFrame, children_seq(Heap, ts));
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(ts) == 0 then 0 else 1 + height_recursive(Heap, children_seq(Heap, ts)));
}

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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> height_1(Heap, t_2) == (if (Tree_tag(t_2): int) == 0 then 0 else height_recursive(Heap, Seq#Singleton(t_2)))
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
    
    // -- Check definedness of (Tree_tag(t) == 0 ? 0 : height_recursive(Seq(t)))
      if ((Tree_tag(t_2): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if (Tree_tag(t_2): int) == 0 then 0 else height_recursive(Heap, Seq#Singleton(t_2)));
}

// ==================================================
// Translation of function children
// ==================================================

// Uninterpreted function definitions
function  children_2(Heap: HeapType, t_2: TreeDomainType): Seq TreeDomainType;
function  children'(Heap: HeapType, t_2: TreeDomainType): Seq TreeDomainType;
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { children_2(Heap, t_2) }
  children_2(Heap, t_2) == children'(Heap, t_2) && dummyFunction(children#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { children'(Heap, t_2) }
  dummyFunction(children#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), children_2(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> children_2(Heap, t_2) == (if (Tree_tag(t_2): int) == 0 || ((Tree_tag(t_2): int) == 1 && ((Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 0 && (Tree_tag((get_Tree_right(t_2): TreeDomainType)): int) == 0)) then (Seq#Empty(): Seq TreeDomainType) else (if (Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 1 && (Tree_tag((get_Tree_right(t_2): TreeDomainType)): int) == 1 then Seq#Append(Seq#Singleton((get_Tree_right(t_2): TreeDomainType)), Seq#Singleton((get_Tree_left(t_2): TreeDomainType))) else (if (Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 1 then Seq#Singleton((get_Tree_left(t_2): TreeDomainType)) else Seq#Singleton((get_Tree_right(t_2): TreeDomainType)))))
);

// Framing axioms
function  children#frame(frame: FrameType, t_2: TreeDomainType): Seq TreeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), children'(Heap, t_2) }
  state(Heap, Mask) ==> children'(Heap, t_2) == children#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  children#trigger(frame: FrameType, t_2: TreeDomainType): bool;

// State-independent trigger function
function  children#triggerStateless(t_2: TreeDomainType): Seq TreeDomainType;

// Check contract well-formedness and postcondition
procedure children#definedness(t_2: TreeDomainType) returns (Result: (Seq TreeDomainType))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Translate function body
    Result := (if (Tree_tag(t_2): int) == 0 || ((Tree_tag(t_2): int) == 1 && ((Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 0 && (Tree_tag((get_Tree_right(t_2): TreeDomainType)): int) == 0)) then (Seq#Empty(): Seq TreeDomainType) else (if (Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 1 && (Tree_tag((get_Tree_right(t_2): TreeDomainType)): int) == 1 then Seq#Append(Seq#Singleton((get_Tree_right(t_2): TreeDomainType)), Seq#Singleton((get_Tree_left(t_2): TreeDomainType))) else (if (Tree_tag((get_Tree_left(t_2): TreeDomainType)): int) == 1 then Seq#Singleton((get_Tree_left(t_2): TreeDomainType)) else Seq#Singleton((get_Tree_right(t_2): TreeDomainType)))));
}

// ==================================================
// Translation of function children_seq
// ==================================================

// Uninterpreted function definitions
function  children_seq(Heap: HeapType, ts: (Seq TreeDomainType)): Seq TreeDomainType;
function  children_seq'(Heap: HeapType, ts: (Seq TreeDomainType)): Seq TreeDomainType;
axiom (forall Heap: HeapType, ts: (Seq TreeDomainType) ::
  { children_seq(Heap, ts) }
  children_seq(Heap, ts) == children_seq'(Heap, ts) && dummyFunction(children_seq#triggerStateless(ts))
);
axiom (forall Heap: HeapType, ts: (Seq TreeDomainType) ::
  { children_seq'(Heap, ts) }
  dummyFunction(children_seq#triggerStateless(ts))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, ts: (Seq TreeDomainType) ::
  { state(Heap, Mask), children_seq(Heap, ts) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> children_seq(Heap, ts) == (if Seq#Length(ts) == 0 then (Seq#Empty(): Seq TreeDomainType) else (if Seq#Length(ts) == 1 then children_2(Heap, Seq#Index(ts, 0)) else Seq#Append(children_seq'(Heap, Seq#Drop(ts, 1)), children_2(Heap, Seq#Index(ts, 0)))))
);

// Framing axioms
function  children_seq#frame(frame: FrameType, ts: (Seq TreeDomainType)): Seq TreeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, ts: (Seq TreeDomainType) ::
  { state(Heap, Mask), children_seq'(Heap, ts) }
  state(Heap, Mask) ==> children_seq'(Heap, ts) == children_seq#frame(EmptyFrame, ts)
);

// Trigger function (controlling recursive postconditions)
function  children_seq#trigger(frame: FrameType, ts: (Seq TreeDomainType)): bool;

// State-independent trigger function
function  children_seq#triggerStateless(ts: (Seq TreeDomainType)): Seq TreeDomainType;

// Check contract well-formedness and postcondition
procedure children_seq#definedness(ts: (Seq TreeDomainType)) returns (Result: (Seq TreeDomainType))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|ts| == 0 ? Seq[Tree]() : (|ts| == 1 ? children(ts[0]) : children_seq(ts[1..]) ++ children(ts[0])))
      if (Seq#Length(ts) == 0) {
      } else {
        if (Seq#Length(ts) == 1) {
          assert {:msg "  Function might not be well-formed. Index ts[0] into ts might exceed sequence length. (example_2.vpr@50.1--57.2) [222976]"}
            0 < Seq#Length(ts);
          if (*) {
            // Stop execution
            assume false;
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume children_seq#trigger(EmptyFrame, Seq#Drop(ts, 1));
          }
          assert {:msg "  Function might not be well-formed. Index ts[0] into ts might exceed sequence length. (example_2.vpr@50.1--57.2) [222977]"}
            0 < Seq#Length(ts);
          if (*) {
            // Stop execution
            assume false;
          }
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(ts) == 0 then (Seq#Empty(): Seq TreeDomainType) else (if Seq#Length(ts) == 1 then children_2(Heap, Seq#Index(ts, 0)) else Seq#Append(children_seq(Heap, Seq#Drop(ts, 1)), children_2(Heap, Seq#Index(ts, 0)))));
}

// ==================================================
// Translation of method computeTreeHeight
// ==================================================

procedure computeTreeHeight(t_2: TreeDomainType) returns (res: int)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var current: (Seq TreeDomainType);
  var next_1: (Seq TreeDomainType);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i: int;
  var i_14: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_current: (Seq TreeDomainType);
  var i_5: int;
  var i_7_1: int;
  var i_2: int;
  var i_4: int;
  var node: TreeDomainType;
  var i_15: int;
  var i_17: int;
  var i_21: int;
  
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
    
    // -- Check definedness of height(t) == res
      if (*) {
        // Stop execution
        assume false;
      }
    assume height_1(PostHeap, t_2) == res;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (Tree_tag(t) == 0) -- example_2.vpr@67.3--105.4
    if ((Tree_tag(t_2): int) == 0) {
      
      // -- Translating statement: res := 0 -- example_2.vpr@68.5--68.13
        res := 0;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: current := Seq(t) -- example_2.vpr@72.5--72.22
        current := Seq#Singleton(t_2);
        assume state(Heap, Mask);
      
      // -- Translating statement: next := Seq[Tree]() -- example_2.vpr@73.5--73.24
        next_1 := (Seq#Empty(): Seq TreeDomainType);
        assume state(Heap, Mask);
      
      // -- Translating statement: res := 0 -- example_2.vpr@74.5--74.13
        res := 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (|current| > 0) -- example_2.vpr@76.5--104.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (*) {
              if (i >= 0 && i < Seq#Length(current)) {
                assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1) might not hold on entry. Assertion Tree_tag(current[i]) == 1 might not hold. (example_2.vpr@77.17--77.79) [222978]"}
                  (Tree_tag(Seq#Index(current, i)): int) == 1;
              }
              assume false;
            }
            assume (forall i_1_1_1: int ::
              { (Tree_tag(Seq#Index(current, i_1_1_1)): int) }
              i_1_1_1 >= 0 && i_1_1_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_1_1_1)): int) == 1
            );
            assert {:msg "  Loop invariant height(t) == res + height_recursive(current) might not hold on entry. Assertion height(t) == res + height_recursive(current) might not hold. (example_2.vpr@78.17--78.61) [222979]"}
              height_1(Heap, t_2) == res + height_recursive(Heap, current);
        
        // -- Havoc loop written variables (except locals)
          havoc current, next_1, res;
        
        // -- Check definedness of invariant
          if (*) {
            
            // -- Check definedness of (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1)
              if (*) {
                if (i_14 >= 0 && i_14 < Seq#Length(current)) {
                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might be negative. (example_2.vpr@77.17--77.79) [222980]"}
                    i_14 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index current[i] into current might exceed sequence length. (example_2.vpr@77.17--77.79) [222981]"}
                    i_14 < Seq#Length(current);
                }
                assume false;
              }
            assume (forall i_3: int ::
              { (Tree_tag(Seq#Index(current, i_3)): int) }
              i_3 >= 0 && i_3 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_3)): int) == 1
            );
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of height(t) == res + height_recursive(current)
              if (*) {
                // Stop execution
                assume false;
              }
              if (*) {
                // Stop execution
                assume false;
              }
            assume height_1(Heap, t_2) == res + height_recursive(Heap, current);
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
            assume (forall i_4_1: int ::
              { (Tree_tag(Seq#Index(current, i_4_1)): int) }
              i_4_1 >= 0 && i_4_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_4_1)): int) == 1
            );
            assume state(Heap, Mask);
            assume height_1(Heap, t_2) == res + height_recursive(Heap, current);
            assume state(Heap, Mask);
            // Check and assume guard
            assume Seq#Length(current) > 0;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: res := res + 1 -- example_2.vpr@81.7--81.21
                res := res + 1;
                assume state(Heap, Mask);
              
              // -- Translating statement: next := Seq[Tree]() -- example_2.vpr@82.7--82.26
                next_1 := (Seq#Empty(): Seq TreeDomainType);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale old_current == current -- example_2.vpr@85.14--85.36
                assume Seq#Equal(old_current, current);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: while (|current| > 0) -- example_2.vpr@87.7--101.8
                
                // -- Before loop head
                  
                  // -- Exhale loop invariant before loop
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (*) {
                      if (i_5 >= 0 && i_5 < Seq#Length(current)) {
                        assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1) might not hold on entry. Assertion Tree_tag(current[i]) == 1 might not hold. (example_2.vpr@88.19--88.81) [222982]"}
                          (Tree_tag(Seq#Index(current, i_5)): int) == 1;
                      }
                      assume false;
                    }
                    assume (forall i_6_1_1: int ::
                      { (Tree_tag(Seq#Index(current, i_6_1_1)): int) }
                      i_6_1_1 >= 0 && i_6_1_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_6_1_1)): int) == 1
                    );
                    if (*) {
                      if (i_7_1 >= 0 && i_7_1 < Seq#Length(next_1)) {
                        assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(next[i]) } i >= 0 && i < |next| ==> Tree_tag(next[i]) == 1) might not hold on entry. Assertion Tree_tag(next[i]) == 1 might not hold. (example_2.vpr@89.19--89.75) [222983]"}
                          (Tree_tag(Seq#Index(next_1, i_7_1)): int) == 1;
                      }
                      assume false;
                    }
                    assume (forall i_8_1: int ::
                      { (Tree_tag(Seq#Index(next_1, i_8_1)): int) }
                      i_8_1 >= 0 && i_8_1 < Seq#Length(next_1) ==> (Tree_tag(Seq#Index(next_1, i_8_1)): int) == 1
                    );
                    assert {:msg "  Loop invariant children_seq(old_current) == children_seq(current) ++ next might not hold on entry. Assertion children_seq(old_current) == children_seq(current) ++ next might not hold. (example_2.vpr@90.19--90.77) [222984]"}
                      Seq#Equal(children_seq(Heap, old_current), Seq#Append(children_seq(Heap, current), next_1));
                
                // -- Havoc loop written variables (except locals)
                  havoc next_1, current;
                
                // -- Check definedness of invariant
                  if (*) {
                    
                    // -- Check definedness of (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1)
                      if (*) {
                        if (i_2 >= 0 && i_2 < Seq#Length(current)) {
                          assert {:msg "  Contract might not be well-formed. Index current[i] into current might be negative. (example_2.vpr@88.19--88.81) [222985]"}
                            i_2 >= 0;
                          assert {:msg "  Contract might not be well-formed. Index current[i] into current might exceed sequence length. (example_2.vpr@88.19--88.81) [222986]"}
                            i_2 < Seq#Length(current);
                        }
                        assume false;
                      }
                    assume (forall i_10_1: int ::
                      { (Tree_tag(Seq#Index(current, i_10_1)): int) }
                      i_10_1 >= 0 && i_10_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_10_1)): int) == 1
                    );
                    assume state(Heap, Mask);
                    
                    // -- Check definedness of (forall i: Int :: { Tree_tag(next[i]) } i >= 0 && i < |next| ==> Tree_tag(next[i]) == 1)
                      if (*) {
                        if (i_4 >= 0 && i_4 < Seq#Length(next_1)) {
                          assert {:msg "  Contract might not be well-formed. Index next[i] into next might be negative. (example_2.vpr@89.19--89.75) [222987]"}
                            i_4 >= 0;
                          assert {:msg "  Contract might not be well-formed. Index next[i] into next might exceed sequence length. (example_2.vpr@89.19--89.75) [222988]"}
                            i_4 < Seq#Length(next_1);
                        }
                        assume false;
                      }
                    assume (forall i_12_1: int ::
                      { (Tree_tag(Seq#Index(next_1, i_12_1)): int) }
                      i_12_1 >= 0 && i_12_1 < Seq#Length(next_1) ==> (Tree_tag(Seq#Index(next_1, i_12_1)): int) == 1
                    );
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    
                    // -- Check definedness of children_seq(old_current) == children_seq(current) ++ next
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                      if (*) {
                        // Stop execution
                        assume false;
                      }
                    assume Seq#Equal(children_seq(Heap, old_current), Seq#Append(children_seq(Heap, current), next_1));
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
                    assume (forall i_13_1: int ::
                      { (Tree_tag(Seq#Index(current, i_13_1)): int) }
                      i_13_1 >= 0 && i_13_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_13_1)): int) == 1
                    );
                    assume (forall i_14_1: int ::
                      { (Tree_tag(Seq#Index(next_1, i_14_1)): int) }
                      i_14_1 >= 0 && i_14_1 < Seq#Length(next_1) ==> (Tree_tag(Seq#Index(next_1, i_14_1)): int) == 1
                    );
                    assume state(Heap, Mask);
                    assume Seq#Equal(children_seq(Heap, old_current), Seq#Append(children_seq(Heap, current), next_1));
                    assume state(Heap, Mask);
                    // Check and assume guard
                    assume Seq#Length(current) > 0;
                    assume state(Heap, Mask);
                    
                    // -- Translate loop body
                      
                      // -- Translating statement: node := current[0] -- example_2.vpr@92.9--92.38
                        
                        // -- Check definedness of current[0]
                          assert {:msg "  Assignment might fail. Index current[0] into current might exceed sequence length. (example_2.vpr@92.9--92.38) [222989]"}
                            0 < Seq#Length(current);
                        node := Seq#Index(current, 0);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: current := current[1..] -- example_2.vpr@113.3--113.20
                        current := Seq#Drop(current, 1);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: if (Tree_tag(get_Tree_left(node)) == 1) -- example_2.vpr@94.9--96.10
                        if ((Tree_tag((get_Tree_left(node): TreeDomainType)): int) == 1) {
                          
                          // -- Translating statement: next := Seq(get_Tree_left(node)) ++ next -- example_2.vpr@109.3--109.25
                            next_1 := Seq#Append(Seq#Singleton((get_Tree_left(node): TreeDomainType)), next_1);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: if (Tree_tag(get_Tree_right(node)) == 1) -- example_2.vpr@97.9--99.10
                        if ((Tree_tag((get_Tree_right(node): TreeDomainType)): int) == 1) {
                          
                          // -- Translating statement: next := Seq(get_Tree_right(node)) ++ next -- example_2.vpr@109.3--109.25
                            next_1 := Seq#Append(Seq#Singleton((get_Tree_right(node): TreeDomainType)), next_1);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                    // Exhale invariant
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (*) {
                      if (i_15 >= 0 && i_15 < Seq#Length(current)) {
                        assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1) might not be preserved. Assertion Tree_tag(current[i]) == 1 might not hold. (example_2.vpr@88.19--88.81) [222990]"}
                          (Tree_tag(Seq#Index(current, i_15)): int) == 1;
                      }
                      assume false;
                    }
                    assume (forall i_16_1_1: int ::
                      { (Tree_tag(Seq#Index(current, i_16_1_1)): int) }
                      i_16_1_1 >= 0 && i_16_1_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_16_1_1)): int) == 1
                    );
                    if (*) {
                      if (i_17 >= 0 && i_17 < Seq#Length(next_1)) {
                        assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(next[i]) } i >= 0 && i < |next| ==> Tree_tag(next[i]) == 1) might not be preserved. Assertion Tree_tag(next[i]) == 1 might not hold. (example_2.vpr@89.19--89.75) [222991]"}
                          (Tree_tag(Seq#Index(next_1, i_17)): int) == 1;
                      }
                      assume false;
                    }
                    assume (forall i_18_1_1: int ::
                      { (Tree_tag(Seq#Index(next_1, i_18_1_1)): int) }
                      i_18_1_1 >= 0 && i_18_1_1 < Seq#Length(next_1) ==> (Tree_tag(Seq#Index(next_1, i_18_1_1)): int) == 1
                    );
                    assert {:msg "  Loop invariant children_seq(old_current) == children_seq(current) ++ next might not be preserved. Assertion children_seq(old_current) == children_seq(current) ++ next might not hold. (example_2.vpr@90.19--90.77) [222992]"}
                      Seq#Equal(children_seq(Heap, old_current), Seq#Append(children_seq(Heap, current), next_1));
                    // Terminate execution
                    assume false;
                  }
                
                // -- Inhale loop invariant after loop, and assume guard
                  assume !(Seq#Length(current) > 0);
                  assume state(Heap, Mask);
                  assume (forall i_19: int ::
                    { (Tree_tag(Seq#Index(current, i_19)): int) }
                    i_19 >= 0 && i_19 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_19)): int) == 1
                  );
                  assume (forall i_20_1: int ::
                    { (Tree_tag(Seq#Index(next_1, i_20_1)): int) }
                    i_20_1 >= 0 && i_20_1 < Seq#Length(next_1) ==> (Tree_tag(Seq#Index(next_1, i_20_1)): int) == 1
                  );
                  assume state(Heap, Mask);
                  assume Seq#Equal(children_seq(Heap, old_current), Seq#Append(children_seq(Heap, current), next_1));
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: current := next -- example_2.vpr@102.7--102.22
                current := next_1;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (*) {
              if (i_21 >= 0 && i_21 < Seq#Length(current)) {
                assert {:msg "  Loop invariant (forall i: Int :: { Tree_tag(current[i]) } i >= 0 && i < |current| ==> Tree_tag(current[i]) == 1) might not be preserved. Assertion Tree_tag(current[i]) == 1 might not hold. (example_2.vpr@77.17--77.79) [222993]"}
                  (Tree_tag(Seq#Index(current, i_21)): int) == 1;
              }
              assume false;
            }
            assume (forall i_22_1_1: int ::
              { (Tree_tag(Seq#Index(current, i_22_1_1)): int) }
              i_22_1_1 >= 0 && i_22_1_1 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_22_1_1)): int) == 1
            );
            assert {:msg "  Loop invariant height(t) == res + height_recursive(current) might not be preserved. Assertion height(t) == res + height_recursive(current) might not hold. (example_2.vpr@78.17--78.61) [222994]"}
              height_1(Heap, t_2) == res + height_recursive(Heap, current);
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Seq#Length(current) > 0);
          assume state(Heap, Mask);
          assume (forall i_23: int ::
            { (Tree_tag(Seq#Index(current, i_23)): int) }
            i_23 >= 0 && i_23 < Seq#Length(current) ==> (Tree_tag(Seq#Index(current, i_23)): int) == 1
          );
          assume state(Heap, Mask);
          assume height_1(Heap, t_2) == res + height_recursive(Heap, current);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of computeTreeHeight might not hold. Assertion height(t) == res might not hold. (example_2.vpr@62.11--62.27) [222995]"}
      height_1(Heap, t_2) == res;
}