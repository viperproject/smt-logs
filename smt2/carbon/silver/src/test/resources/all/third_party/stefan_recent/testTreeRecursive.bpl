// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:09:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeRecursive.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeRecursive-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
// - height 0: Tree__contents
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

const unique Tree__data: Field NormalField int;
axiom !IsPredicateField(Tree__data);
axiom !IsWandField(Tree__data);
const unique Tree__left: Field NormalField Ref;
axiom !IsPredicateField(Tree__left);
axiom !IsWandField(Tree__left);
const unique Tree__right: Field NormalField Ref;
axiom !IsPredicateField(Tree__right);
axiom !IsWandField(Tree__right);

// ==================================================
// Translation of function Tree__contents
// ==================================================

// Uninterpreted function definitions
function  Tree__contents(Heap: HeapType, t_2: Ref): Seq int;
function  Tree__contents'(Heap: HeapType, t_2: Ref): Seq int;
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__contents(Heap, t_2) }
  Tree__contents(Heap, t_2) == Tree__contents'(Heap, t_2) && dummyFunction(Tree__contents#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__contents'(Heap, t_2) }
  dummyFunction(Tree__contents#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__contents(Heap, t_2) } { state(Heap, Mask), Tree__contents#triggerStateless(t_2), Tree__state#trigger(Heap, Tree__state(t_2)), Tree__state#trigger(Heap, Tree__state(t_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Tree__contents(Heap, t_2) == (if t_2 == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(Tree__contents'(Heap, Heap[t_2, Tree__left]), Seq#Singleton(Heap[t_2, Tree__data])), Tree__contents'(Heap, Heap[t_2, Tree__right])))
);

// Framing axioms
function  Tree__contents#frame(frame: FrameType, t_2: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__contents'(Heap, t_2) } { state(Heap, Mask), Tree__contents#triggerStateless(t_2), Tree__state#trigger(Heap, Tree__state(t_2)), Tree__state#trigger(Heap, Tree__state(t_2)) }
  state(Heap, Mask) ==> Tree__contents'(Heap, t_2) == Tree__contents#frame(FrameFragment((if t_2 != null then Heap[null, Tree__state(t_2)] else EmptyFrame)), t_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__contents'(Heap, t_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || Tree__contents#trigger(FrameFragment((if t_2 != null then Heap[null, Tree__state(t_2)] else EmptyFrame)), t_2)) ==> t_2 != null ==> Seq#Length(Tree__contents'(Heap, t_2)) > 0
);

// Trigger function (controlling recursive postconditions)
function  Tree__contents#trigger(frame: FrameType, t_2: Ref): bool;

// State-independent trigger function
function  Tree__contents#triggerStateless(t_2: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Tree__contents#definedness(t_2: Ref) returns (Result: (Seq int))
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
    assume Heap[t_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    if (t_2 != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (t == null ? Seq[Int]() : (unfolding acc(Tree__state(t), write) in Tree__contents(t.Tree__left) ++ Seq(t.Tree__data) ++ Tree__contents(t.Tree__right)))
      if (t_2 == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Tree__state#trigger(UnfoldingHeap, Tree__state(t_2));
        assume UnfoldingHeap[null, Tree__state(t_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__data]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__left]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__right]), CombineFrames(FrameFragment((if UnfoldingHeap[t_2, Tree__left] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t_2, Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] else EmptyFrame))))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree__state(t) (testTreeRecursive.vpr@10.1--15.2) [178972]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(t_2)];
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__data:=UnfoldingMask[t_2, Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__left:=UnfoldingMask[t_2, Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__right:=UnfoldingMask[t_2, Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[t_2, Tree__left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(t_2), UnfoldingHeap[null, Tree__state(t_2)], Tree__state(UnfoldingHeap[t_2, Tree__left]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t_2, Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(t_2), UnfoldingHeap[null, Tree__state(t_2)], Tree__state(UnfoldingHeap[t_2, Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@10.1--15.2) [178973]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[t_2, Tree__left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeRecursive.vpr@14.70--14.98) [178974]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Tree__contents#trigger(FrameFragment((if UnfoldingHeap[t_2, Tree__left] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] else EmptyFrame)), UnfoldingHeap[t_2, Tree__left]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__data (testTreeRecursive.vpr@10.1--15.2) [178975]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__right (testTreeRecursive.vpr@10.1--15.2) [178976]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__right);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[t_2, Tree__right] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t.Tree__right) (testTreeRecursive.vpr@14.123--14.152) [178977]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Tree__contents#trigger(FrameFragment((if UnfoldingHeap[t_2, Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] else EmptyFrame)), UnfoldingHeap[t_2, Tree__right]);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__data:=true]];
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__left:=true]];
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__right:=true]];
          if (Heap[t_2, Tree__left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, Tree__state#sm(t_2)][o_15, f_20] || Heap[null, Tree__state#sm(Heap[t_2, Tree__left])][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
          }
          if (Heap[t_2, Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, Tree__state#sm(t_2)][o_16, f_21] || Heap[null, Tree__state#sm(Heap[t_2, Tree__right])][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if t_2 == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(Tree__contents(Heap, Heap[t_2, Tree__left]), Seq#Singleton(Heap[t_2, Tree__data])), Tree__contents(Heap, Heap[t_2, Tree__right])));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (t_2 != null) {
      assert {:msg "  Postcondition of Tree__contents might not hold. Assertion |result| > 0 might not hold. (testTreeRecursive.vpr@12.11--12.41) [178978]"}
        Seq#Length(Result) > 0;
    }
}

// ==================================================
// Translation of predicate Tree__state
// ==================================================

type PredicateType_Tree__state;
function  Tree__state(diz: Ref): Field PredicateType_Tree__state FrameType;
function  Tree__state#sm(diz: Ref): Field PredicateType_Tree__state PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Tree__state(diz)) }
  PredicateMaskField(Tree__state(diz)) == Tree__state#sm(diz)
);
axiom (forall diz: Ref ::
  { Tree__state(diz) }
  IsPredicateField(Tree__state(diz))
);
axiom (forall diz: Ref ::
  { Tree__state(diz) }
  getPredWandId(Tree__state(diz)) == 0
);
function  Tree__state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Tree__state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Tree__state(diz), Tree__state(diz2) }
  Tree__state(diz) == Tree__state(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Tree__state#sm(diz), Tree__state#sm(diz2) }
  Tree__state#sm(diz) == Tree__state#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Tree__state#trigger(Heap, Tree__state(diz)) }
  Tree__state#everUsed(Tree__state(diz))
);

procedure Tree__state#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Tree__state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__data:=Mask[diz, Tree__data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__left:=Mask[diz, Tree__left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__right:=Mask[diz, Tree__right] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Tree__left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeRecursive.vpr@17.1--19.2) [178979]"}
        HasDirectPerm(Mask, diz, Tree__left);
    if (Heap[diz, Tree__left] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeRecursive.vpr@17.1--19.2) [178980]"}
          HasDirectPerm(Mask, diz, Tree__left);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[diz, Tree__left]):=Mask[null, Tree__state(Heap[diz, Tree__left])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of diz.Tree__right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeRecursive.vpr@17.1--19.2) [178981]"}
        HasDirectPerm(Mask, diz, Tree__right);
    if (Heap[diz, Tree__right] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeRecursive.vpr@17.1--19.2) [178982]"}
          HasDirectPerm(Mask, diz, Tree__right);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[diz, Tree__right]):=Mask[null, Tree__state(Heap[diz, Tree__right])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Tree__del_min
// ==================================================

procedure Tree__del_min(diz: Ref, current_thread_id: int, t_2: Ref) returns (sys__result: Ref)
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
  var __flatten_1: Ref;
  var __flatten_2: Ref;
  var __flatten_3: Ref;
  var __flatten_4: Ref;
  var __flatten_7: Ref;
  var newVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_t: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[t_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume t_2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] + perm];
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
    if (sys__result != null) {
      perm := FullPerm;
      PostMask := PostMask[null, Tree__state(sys__result):=PostMask[null, Tree__state(sys__result)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Tree__contents(sys__result) == old(Tree__contents(t))[1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        if (sys__result != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@27.11--27.38) [178983]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Tree__state(sys__result)];
        }
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
        if (t_2 != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t) (testTreeRecursive.vpr@27.46--27.63) [178984]"}
            NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(t_2)];
        }
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Tree__contents(PostHeap, sys__result), Seq#Drop(Tree__contents(oldHeap, t_2), 1));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_7, $allocated];
  
  // -- Translating statement: unfold acc(Tree__state(t), write) -- testTreeRecursive.vpr@34.3--34.36
    assume Tree__state#trigger(Heap, Tree__state(t_2));
    assume Heap[null, Tree__state(t_2)] == CombineFrames(FrameFragment(Heap[t_2, Tree__data]), CombineFrames(FrameFragment(Heap[t_2, Tree__left]), CombineFrames(FrameFragment(Heap[t_2, Tree__right]), CombineFrames(FrameFragment((if Heap[t_2, Tree__left] != null then Heap[null, Tree__state(Heap[t_2, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[t_2, Tree__right] != null then Heap[null, Tree__state(Heap[t_2, Tree__right])] else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree__state(t) might fail. There might be insufficient permission to access Tree__state(t) (testTreeRecursive.vpr@34.3--34.36) [178987]"}
        perm <= Mask[null, Tree__state(t_2)];
    }
    Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Tree__state(t_2))) {
        havoc newVersion;
        Heap := Heap[null, Tree__state(t_2):=newVersion];
      }
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, Tree__data:=Mask[t_2, Tree__data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, Tree__left:=Mask[t_2, Tree__left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, Tree__right:=Mask[t_2, Tree__right] + perm];
    assume state(Heap, Mask);
    if (Heap[t_2, Tree__left] != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[t_2, Tree__left]):=Mask[null, Tree__state(Heap[t_2, Tree__left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree__state(t_2), Heap[null, Tree__state(t_2)], Tree__state(Heap[t_2, Tree__left]), Heap[null, Tree__state(Heap[t_2, Tree__left])]);
      assume state(Heap, Mask);
    }
    if (Heap[t_2, Tree__right] != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[t_2, Tree__right]):=Mask[null, Tree__state(Heap[t_2, Tree__right])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree__state(t_2), Heap[null, Tree__state(t_2)], Tree__state(Heap[t_2, Tree__right]), Heap[null, Tree__state(Heap[t_2, Tree__right])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (t.Tree__left == null) -- testTreeRecursive.vpr@35.3--51.4
    
    // -- Check definedness of t.Tree__left == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@35.7--35.27) [178993]"}
        HasDirectPerm(Mask, t_2, Tree__left);
    if (Heap[t_2, Tree__left] == null) {
      
      // -- Translating statement: assert Tree__contents(t.Tree__left) == Seq[Int]() -- testTreeRecursive.vpr@36.5--36.54
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of Tree__contents(t.Tree__left) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@36.12--36.54) [178994]"}
            HasDirectPerm(ExhaleWellDef0Mask, t_2, Tree__left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[t_2, Tree__left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeRecursive.vpr@36.12--36.40) [178995]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[t_2, Tree__left])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__contents(t.Tree__left) == Seq[Int]() might not hold. (testTreeRecursive.vpr@36.12--36.54) [178996]"}
          Seq#Equal(Tree__contents(Heap, Heap[t_2, Tree__left]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_1 := t.Tree__right -- testTreeRecursive.vpr@37.5--37.33
        
        // -- Check definedness of t.Tree__right
          assert {:msg "  Assignment might fail. There might be insufficient permission to access t.Tree__right (testTreeRecursive.vpr@37.5--37.33) [178997]"}
            HasDirectPerm(Mask, t_2, Tree__right);
        __flatten_1 := Heap[t_2, Tree__right];
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_1 -- testTreeRecursive.vpr@38.5--38.31
        sys__result := __flatten_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   Tree__contents(sys__result) == old(Tree__contents(t))[1..] -- testTreeRecursive.vpr@39.5--39.140
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@39.12--39.140) [178999]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of Tree__contents(sys__result) == old(Tree__contents(t))[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@39.81--39.108) [179000]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
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
            if (t_2 != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t) (testTreeRecursive.vpr@39.116--39.133) [179001]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(t_2)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__contents(sys__result) == old(Tree__contents(t))[1..] might not hold. (testTreeRecursive.vpr@39.12--39.140) [179002]"}
          Seq#Equal(Tree__contents(AssertHeap, sys__result), Seq#Drop(Tree__contents(oldHeap, t_2), 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeRecursive.vpr@40.5--40.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_3 := Tree__del_min(diz, current_thread_id, t.Tree__left) -- testTreeRecursive.vpr@42.5--42.71
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of t.Tree__left
          assert {:msg "  Method call might fail. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@42.5--42.71) [179003]"}
            HasDirectPerm(Mask, t_2, Tree__left);
        arg_t := Heap[t_2, Tree__left];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Tree__del_min might not hold. Assertion diz != null might not hold. (testTreeRecursive.vpr@42.5--42.71) [179004]"}
            diz != null;
          assert {:msg "  The precondition of method Tree__del_min might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeRecursive.vpr@42.5--42.71) [179005]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Tree__del_min might not hold. Assertion t.Tree__left != null might not hold. (testTreeRecursive.vpr@42.5--42.71) [179006]"}
            arg_t != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Tree__del_min might not hold. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeRecursive.vpr@42.5--42.71) [179007]"}
              perm <= Mask[null, Tree__state(arg_t)];
          }
          Mask := Mask[null, Tree__state(arg_t):=Mask[null, Tree__state(arg_t)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc __flatten_3;
        
        // -- Inhaling postcondition
          if (__flatten_3 != null) {
            perm := FullPerm;
            Mask := Mask[null, Tree__state(__flatten_3):=Mask[null, Tree__state(__flatten_3)] + perm];
            assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
          assume Seq#Equal(Tree__contents(Heap, __flatten_3), Seq#Drop(Tree__contents(PreCallHeap, arg_t), 1));
          assume state(Heap, Mask);
        assume Heap[__flatten_3, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_2 := __flatten_3 -- testTreeRecursive.vpr@43.5--43.31
        __flatten_2 := __flatten_3;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_7 := __flatten_2 -- testTreeRecursive.vpr@44.5--44.31
        __flatten_7 := __flatten_2;
        assume state(Heap, Mask);
      
      // -- Translating statement: t.Tree__left := __flatten_7 -- testTreeRecursive.vpr@45.5--45.32
        assert {:msg "  Assignment might fail. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@45.5--45.32) [179008]"}
          FullPerm == Mask[t_2, Tree__left];
        Heap := Heap[t_2, Tree__left:=__flatten_7];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(Tree__state(t), write) -- testTreeRecursive.vpr@46.5--46.36
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(t) might fail. There might be insufficient permission to access t.Tree__data (testTreeRecursive.vpr@46.5--46.36) [179011]"}
            perm <= Mask[t_2, Tree__data];
        }
        Mask := Mask[t_2, Tree__data:=Mask[t_2, Tree__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(t) might fail. There might be insufficient permission to access t.Tree__left (testTreeRecursive.vpr@46.5--46.36) [179013]"}
            perm <= Mask[t_2, Tree__left];
        }
        Mask := Mask[t_2, Tree__left:=Mask[t_2, Tree__left] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(t) might fail. There might be insufficient permission to access t.Tree__right (testTreeRecursive.vpr@46.5--46.36) [179015]"}
            perm <= Mask[t_2, Tree__right];
        }
        Mask := Mask[t_2, Tree__right:=Mask[t_2, Tree__right] - perm];
        if (Heap[t_2, Tree__left] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(t) might fail. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeRecursive.vpr@46.5--46.36) [179017]"}
              perm <= Mask[null, Tree__state(Heap[t_2, Tree__left])];
          }
          Mask := Mask[null, Tree__state(Heap[t_2, Tree__left]):=Mask[null, Tree__state(Heap[t_2, Tree__left])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(t_2), Heap[null, Tree__state(t_2)], Tree__state(Heap[t_2, Tree__left]), Heap[null, Tree__state(Heap[t_2, Tree__left])]);
        }
        if (Heap[t_2, Tree__right] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(t) might fail. There might be insufficient permission to access Tree__state(t.Tree__right) (testTreeRecursive.vpr@46.5--46.36) [179019]"}
              perm <= Mask[null, Tree__state(Heap[t_2, Tree__right])];
          }
          Mask := Mask[null, Tree__state(Heap[t_2, Tree__right]):=Mask[null, Tree__state(Heap[t_2, Tree__right])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(t_2), Heap[null, Tree__state(t_2)], Tree__state(Heap[t_2, Tree__right]), Heap[null, Tree__state(Heap[t_2, Tree__right])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Tree__state#trigger(Heap, Tree__state(t_2));
        assume Heap[null, Tree__state(t_2)] == CombineFrames(FrameFragment(Heap[t_2, Tree__data]), CombineFrames(FrameFragment(Heap[t_2, Tree__left]), CombineFrames(FrameFragment(Heap[t_2, Tree__right]), CombineFrames(FrameFragment((if Heap[t_2, Tree__left] != null then Heap[null, Tree__state(Heap[t_2, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[t_2, Tree__right] != null then Heap[null, Tree__state(Heap[t_2, Tree__right])] else EmptyFrame))))));
        if (!HasDirectPerm(Mask, null, Tree__state(t_2))) {
          Heap := Heap[null, Tree__state#sm(t_2):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Tree__state(t_2):=freshVersion];
        }
        Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__data:=true]];
        Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__left:=true]];
        Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__right:=true]];
        if (Heap[t_2, Tree__left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, Tree__state#sm(t_2)][o_52, f_55] || Heap[null, Tree__state#sm(Heap[t_2, Tree__left])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
        }
        if (Heap[t_2, Tree__right] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Tree__state#sm(t_2)][o_53, f_56] || Heap[null, Tree__state#sm(Heap[t_2, Tree__right])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_4 := t -- testTreeRecursive.vpr@47.5--47.21
        __flatten_4 := t_2;
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_4 -- testTreeRecursive.vpr@48.5--48.31
        sys__result := __flatten_4;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   Tree__contents(sys__result) == old(Tree__contents(t))[1..] -- testTreeRecursive.vpr@49.5--49.140
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@49.12--49.140) [179022]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of Tree__contents(sys__result) == old(Tree__contents(t))[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@49.81--49.108) [179023]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
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
            if (t_2 != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__contents might not hold. There might be insufficient permission to access Tree__state(t) (testTreeRecursive.vpr@49.116--49.133) [179024]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(t_2)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__contents(sys__result) == old(Tree__contents(t))[1..] might not hold. (testTreeRecursive.vpr@49.12--49.140) [179025]"}
          Seq#Equal(Tree__contents(AssertHeap, sys__result), Seq#Drop(Tree__contents(oldHeap, t_2), 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeRecursive.vpr@50.5--50.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (sys__result != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Tree__del_min might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeRecursive.vpr@26.11--26.73) [179026]"}
          perm <= Mask[null, Tree__state(sys__result)];
      }
      Mask := Mask[null, Tree__state(sys__result):=Mask[null, Tree__state(sys__result)] - perm];
    }
    assert {:msg "  Postcondition of Tree__del_min might not hold. Assertion Tree__contents(sys__result) == old(Tree__contents(t))[1..] might not hold. (testTreeRecursive.vpr@27.11--27.69) [179027]"}
      Seq#Equal(Tree__contents(Heap, sys__result), Seq#Drop(Tree__contents(oldHeap, t_2), 1));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Tree__Tree
// ==================================================

procedure Tree__Tree(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_5: int;
  var __flatten_8: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__data:=PostMask[sys__result, Tree__data] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__data (testTreeRecursive.vpr@57.11--57.78) [179028]"}
        HasDirectPerm(PostMask, sys__result, Tree__data);
    assume PostHeap[sys__result, Tree__data] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__left:=PostMask[sys__result, Tree__left] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__left (testTreeRecursive.vpr@58.11--58.81) [179029]"}
        HasDirectPerm(PostMask, sys__result, Tree__left);
    assume PostHeap[sys__result, Tree__left] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__right:=PostMask[sys__result, Tree__right] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__right (testTreeRecursive.vpr@59.11--59.83) [179030]"}
        HasDirectPerm(PostMask, sys__result, Tree__right);
    assume PostHeap[sys__result, Tree__right] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Tree__data, Tree__left, Tree__right) -- testTreeRecursive.vpr@64.3--64.50
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Tree__data:=Mask[diz, Tree__data] + FullPerm];
    Mask := Mask[diz, Tree__left:=Mask[diz, Tree__left] + FullPerm];
    Mask := Mask[diz, Tree__right:=Mask[diz, Tree__right] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := 0 -- testTreeRecursive.vpr@65.3--65.19
    __flatten_5 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := __flatten_5 -- testTreeRecursive.vpr@66.3--66.29
    __flatten_8 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__data := __flatten_8 -- testTreeRecursive.vpr@67.3--67.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__data (testTreeRecursive.vpr@67.3--67.32) [179031]"}
      FullPerm == Mask[diz, Tree__data];
    Heap := Heap[diz, Tree__data:=__flatten_8];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__left := null -- testTreeRecursive.vpr@68.3--68.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__left (testTreeRecursive.vpr@68.3--68.25) [179032]"}
      FullPerm == Mask[diz, Tree__left];
    Heap := Heap[diz, Tree__left:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__right := null -- testTreeRecursive.vpr@69.3--69.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__right (testTreeRecursive.vpr@69.3--69.26) [179033]"}
      FullPerm == Mask[diz, Tree__right];
    Heap := Heap[diz, Tree__right:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTreeRecursive.vpr@70.3--70.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Tree__data, write) && sys__result.Tree__data == 0 &&
  //   (acc(sys__result.Tree__left, write) && sys__result.Tree__left == null &&
  //   (acc(sys__result.Tree__right, write) && sys__result.Tree__right == null))) -- testTreeRecursive.vpr@71.3--71.258
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeRecursive.vpr@71.10--71.258) [179034]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeRecursive.vpr@71.10--71.258) [179036]"}
        perm <= AssertMask[sys__result, Tree__data];
    }
    AssertMask := AssertMask[sys__result, Tree__data:=AssertMask[sys__result, Tree__data] - perm];
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeRecursive.vpr@71.10--71.258) [179037]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__data);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__data == 0 might not hold. (testTreeRecursive.vpr@71.10--71.258) [179038]"}
      AssertHeap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeRecursive.vpr@71.10--71.258) [179040]"}
        perm <= AssertMask[sys__result, Tree__left];
    }
    AssertMask := AssertMask[sys__result, Tree__left:=AssertMask[sys__result, Tree__left] - perm];
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeRecursive.vpr@71.10--71.258) [179041]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__left);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__left == null might not hold. (testTreeRecursive.vpr@71.10--71.258) [179042]"}
      AssertHeap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeRecursive.vpr@71.10--71.258) [179044]"}
        perm <= AssertMask[sys__result, Tree__right];
    }
    AssertMask := AssertMask[sys__result, Tree__right:=AssertMask[sys__result, Tree__right] - perm];
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeRecursive.vpr@71.10--71.258) [179045]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__right);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__right == null might not hold. (testTreeRecursive.vpr@71.10--71.258) [179046]"}
      AssertHeap[sys__result, Tree__right] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeRecursive.vpr@72.3--72.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result != null might not hold. (testTreeRecursive.vpr@56.11--56.30) [179047]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__data (testTreeRecursive.vpr@57.11--57.78) [179048]"}
        perm <= Mask[sys__result, Tree__data];
    }
    Mask := Mask[sys__result, Tree__data:=Mask[sys__result, Tree__data] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__data == 0 might not hold. (testTreeRecursive.vpr@57.11--57.78) [179049]"}
      Heap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__left (testTreeRecursive.vpr@58.11--58.81) [179050]"}
        perm <= Mask[sys__result, Tree__left];
    }
    Mask := Mask[sys__result, Tree__left:=Mask[sys__result, Tree__left] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__left == null might not hold. (testTreeRecursive.vpr@58.11--58.81) [179051]"}
      Heap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__right (testTreeRecursive.vpr@59.11--59.83) [179052]"}
        perm <= Mask[sys__result, Tree__right];
    }
    Mask := Mask[sys__result, Tree__right:=Mask[sys__result, Tree__right] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__right == null might not hold. (testTreeRecursive.vpr@59.11--59.83) [179053]"}
      Heap[sys__result, Tree__right] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}