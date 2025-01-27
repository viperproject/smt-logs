// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:25:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/RingBufferRd.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/RingBufferRd-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 2: Contents
// - height 1: HeadF
// - height 0: Capacity
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

const unique data: Field NormalField (Seq int);
axiom !IsPredicateField(data);
axiom !IsWandField(data);
const unique first_3: Field NormalField int;
axiom !IsPredicateField(first_3);
axiom !IsWandField(first_3);
const unique len_2: Field NormalField int;
axiom !IsPredicateField(len_2);
axiom !IsWandField(len_2);

// ==================================================
// Translation of function Contents
// ==================================================

// Uninterpreted function definitions
function  Contents(Heap: HeapType, this: Ref): Seq int;
function  Contents'(Heap: HeapType, this: Ref): Seq int;
axiom (forall Heap: HeapType, this: Ref ::
  { Contents(Heap, this) }
  Contents(Heap, this) == Contents'(Heap, this) && dummyFunction(Contents#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Contents'(Heap, this) }
  dummyFunction(Contents#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Contents(Heap, this) } { state(Heap, Mask), Contents#triggerStateless(this), Valid#trigger(Heap, Valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Contents(Heap, this) == (if Seq#Length(Heap[this, data]) == 0 then (Seq#Empty(): Seq int) else (if Heap[this, first_3] + Heap[this, len_2] <= Seq#Length(Heap[this, data]) then Seq#Drop(Seq#Take(Heap[this, data], Heap[this, first_3] + Heap[this, len_2]), Heap[this, first_3]) else Seq#Append(Seq#Drop(Heap[this, data], Heap[this, first_3]), Seq#Take(Heap[this, data], Heap[this, first_3] + Heap[this, len_2] - Seq#Length(Heap[this, data])))))
);

// Framing axioms
function  Contents#frame(frame: FrameType, this: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Contents'(Heap, this) }
  state(Heap, Mask) ==> Contents'(Heap, this) == Contents#frame(Heap[null, Valid(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Contents#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Contents#triggerStateless(this: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Contents#definedness(this: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Valid(this), wildcard) in (|this.data| == 0 ? Seq[Int]() : (this.first + this.len <= |this.data| ? this.data[this.first..this.first + this.len] : this.data[this.first..] ++ this.data[..this.first + this.len - |this.data|])))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Valid#trigger(UnfoldingHeap, Valid(this));
      assume UnfoldingHeap[null, Valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, first_3]), CombineFrames(FrameFragment(UnfoldingHeap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@15.1--22.4) [88464]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Valid(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, first_3:=UnfoldingMask[this, first_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, len_2:=UnfoldingMask[this, len_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, first_3];
      assume 0 <= UnfoldingHeap[this, len_2];
      if (Seq#Length(UnfoldingHeap[this, data]) == 0) {
        assume UnfoldingHeap[this, len_2] == 0;
        assume UnfoldingHeap[this, first_3] == 0;
      }
      if (Seq#Length(UnfoldingHeap[this, data]) > 0) {
        assume UnfoldingHeap[this, len_2] <= Seq#Length(UnfoldingHeap[this, data]);
        assume UnfoldingHeap[this, first_3] < Seq#Length(UnfoldingHeap[this, data]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88465]"}
        HasDirectPerm(UnfoldingMask, this, data);
      if (Seq#Length(UnfoldingHeap[this, data]) == 0) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@15.1--22.4) [88466]"}
          HasDirectPerm(UnfoldingMask, this, first_3);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@15.1--22.4) [88467]"}
          HasDirectPerm(UnfoldingMask, this, len_2);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88468]"}
          HasDirectPerm(UnfoldingMask, this, data);
        if (UnfoldingHeap[this, first_3] + UnfoldingHeap[this, len_2] <= Seq#Length(UnfoldingHeap[this, data])) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88469]"}
            HasDirectPerm(UnfoldingMask, this, data);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@15.1--22.4) [88470]"}
            HasDirectPerm(UnfoldingMask, this, first_3);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@15.1--22.4) [88471]"}
            HasDirectPerm(UnfoldingMask, this, len_2);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@15.1--22.4) [88472]"}
            HasDirectPerm(UnfoldingMask, this, first_3);
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88473]"}
            HasDirectPerm(UnfoldingMask, this, data);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@15.1--22.4) [88474]"}
            HasDirectPerm(UnfoldingMask, this, first_3);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88475]"}
            HasDirectPerm(UnfoldingMask, this, data);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@15.1--22.4) [88476]"}
            HasDirectPerm(UnfoldingMask, this, first_3);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@15.1--22.4) [88477]"}
            HasDirectPerm(UnfoldingMask, this, len_2);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@15.1--22.4) [88478]"}
            HasDirectPerm(UnfoldingMask, this, data);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Seq#Length(Heap[this, data]) == 0 then (Seq#Empty(): Seq int) else (if Heap[this, first_3] + Heap[this, len_2] <= Seq#Length(Heap[this, data]) then Seq#Drop(Seq#Take(Heap[this, data], Heap[this, first_3] + Heap[this, len_2]), Heap[this, first_3]) else Seq#Append(Seq#Drop(Heap[this, data], Heap[this, first_3]), Seq#Take(Heap[this, data], Heap[this, first_3] + Heap[this, len_2] - Seq#Length(Heap[this, data])))));
}

// ==================================================
// Translation of function Capacity
// ==================================================

// Uninterpreted function definitions
function  Capacity(Heap: HeapType, this: Ref): int;
function  Capacity'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Capacity(Heap, this) }
  Capacity(Heap, this) == Capacity'(Heap, this) && dummyFunction(Capacity#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Capacity'(Heap, this) }
  dummyFunction(Capacity#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Capacity(Heap, this) } { state(Heap, Mask), Capacity#triggerStateless(this), Valid#trigger(Heap, Valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Capacity(Heap, this) == Seq#Length(Heap[this, data])
);

// Framing axioms
function  Capacity#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Capacity'(Heap, this) }
  state(Heap, Mask) ==> Capacity'(Heap, this) == Capacity#frame(Heap[null, Valid(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Capacity#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Capacity#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Capacity#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Valid(this), wildcard) in |this.data|)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Valid#trigger(UnfoldingHeap, Valid(this));
      assume UnfoldingHeap[null, Valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, first_3]), CombineFrames(FrameFragment(UnfoldingHeap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@24.1--28.4) [88479]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Valid(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, first_3:=UnfoldingMask[this, first_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, len_2:=UnfoldingMask[this, len_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, first_3];
      assume 0 <= UnfoldingHeap[this, len_2];
      if (Seq#Length(UnfoldingHeap[this, data]) == 0) {
        assume UnfoldingHeap[this, len_2] == 0;
        assume UnfoldingHeap[this, first_3] == 0;
      }
      if (Seq#Length(UnfoldingHeap[this, data]) > 0) {
        assume UnfoldingHeap[this, len_2] <= Seq#Length(UnfoldingHeap[this, data]);
        assume UnfoldingHeap[this, first_3] < Seq#Length(UnfoldingHeap[this, data]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@24.1--28.4) [88480]"}
        HasDirectPerm(UnfoldingMask, this, data);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Seq#Length(Heap[this, data]);
}

// ==================================================
// Translation of function HeadF
// ==================================================

// Uninterpreted function definitions
function  HeadF(Heap: HeapType, this: Ref): int;
function  HeadF'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { HeadF(Heap, this) }
  HeadF(Heap, this) == HeadF'(Heap, this) && dummyFunction(HeadF#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { HeadF'(Heap, this) }
  dummyFunction(HeadF#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), HeadF(Heap, this) } { state(Heap, Mask), HeadF#triggerStateless(this), Valid#trigger(Heap, Valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> !Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int)) ==> HeadF(Heap, this) == Seq#Index(Heap[this, data], Heap[this, first_3])
);

// Framing axioms
function  HeadF#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), HeadF'(Heap, this) }
  state(Heap, Mask) ==> HeadF'(Heap, this) == HeadF#frame(Heap[null, Valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), HeadF'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || HeadF#trigger(Heap[null, Valid(this)], this)) ==> !Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int)) ==> HeadF'(Heap, this) == Seq#Index(Contents(Heap, this), 0)
);

// Trigger function (controlling recursive postconditions)
function  HeadF#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  HeadF#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure HeadF#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Contents(this) != Seq[Int]()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@75.14--75.28) [88481]"}
          NoPerm < perm ==> NoPerm < Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume !Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Valid(this), wildcard) in this.data[this.first])
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Valid#trigger(UnfoldingHeap, Valid(this));
      assume UnfoldingHeap[null, Valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, first_3]), CombineFrames(FrameFragment(UnfoldingHeap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(UnfoldingHeap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@73.3--79.4) [88482]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Valid(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, first_3:=UnfoldingMask[this, first_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, len_2:=UnfoldingMask[this, len_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, first_3];
      assume 0 <= UnfoldingHeap[this, len_2];
      if (Seq#Length(UnfoldingHeap[this, data]) == 0) {
        assume UnfoldingHeap[this, len_2] == 0;
        assume UnfoldingHeap[this, first_3] == 0;
      }
      if (Seq#Length(UnfoldingHeap[this, data]) > 0) {
        assume UnfoldingHeap[this, len_2] <= Seq#Length(UnfoldingHeap[this, data]);
        assume UnfoldingHeap[this, first_3] < Seq#Length(UnfoldingHeap[this, data]);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@73.3--79.4) [88483]"}
        HasDirectPerm(UnfoldingMask, this, data);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@73.3--79.4) [88484]"}
        HasDirectPerm(UnfoldingMask, this, first_3);
      assert {:msg "  Function might not be well-formed. Index this.data[this.first] into this.data might be negative. (RingBufferRd.vpr@73.3--79.4) [88485]"}
        UnfoldingHeap[this, first_3] >= 0;
      assert {:msg "  Function might not be well-formed. Index this.data[this.first] into this.data might exceed sequence length. (RingBufferRd.vpr@73.3--79.4) [88486]"}
        UnfoldingHeap[this, first_3] < Seq#Length(UnfoldingHeap[this, data]);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
        Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Seq#Index(Heap[this, data], Heap[this, first_3]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == Contents(this)[0]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@76.23--76.37) [88487]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index Contents(this)[0] into Contents(this) might exceed sequence length. (RingBufferRd.vpr@76.13--76.40) [88488]"}
        0 < Seq#Length(Contents(Heap, this));
    assert {:msg "  Postcondition of HeadF might not hold. Assertion result == Contents(this)[0] might not hold. (RingBufferRd.vpr@76.13--76.40) [88489]"}
      Result == Seq#Index(Contents(Heap, this), 0);
}

// ==================================================
// Translation of predicate Valid
// ==================================================

type PredicateType_Valid;
function  Valid(this: Ref): Field PredicateType_Valid FrameType;
function  Valid#sm(this: Ref): Field PredicateType_Valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Valid(this)) }
  PredicateMaskField(Valid(this)) == Valid#sm(this)
);
axiom (forall this: Ref ::
  { Valid(this) }
  IsPredicateField(Valid(this))
);
axiom (forall this: Ref ::
  { Valid(this) }
  getPredWandId(Valid(this)) == 0
);
function  Valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Valid(this), Valid(this2) }
  Valid(this) == Valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Valid#sm(this), Valid#sm(this2) }
  Valid#sm(this) == Valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Valid#trigger(Heap, Valid(this)) }
  Valid#everUsed(Valid(this))
);

procedure Valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= this.first
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@8.1--13.2) [88490]"}
        HasDirectPerm(Mask, this, first_3);
    assume 0 <= Heap[this, first_3];
    
    // -- Check definedness of 0 <= this.len
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@8.1--13.2) [88491]"}
        HasDirectPerm(Mask, this, len_2);
    assume 0 <= Heap[this, len_2];
    
    // -- Check definedness of |this.data| == 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@8.1--13.2) [88492]"}
        HasDirectPerm(Mask, this, data);
    if (Seq#Length(Heap[this, data]) == 0) {
      
      // -- Check definedness of this.len == 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@8.1--13.2) [88493]"}
          HasDirectPerm(Mask, this, len_2);
      assume Heap[this, len_2] == 0;
      
      // -- Check definedness of this.first == 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@8.1--13.2) [88494]"}
          HasDirectPerm(Mask, this, first_3);
      assume Heap[this, first_3] == 0;
    }
    
    // -- Check definedness of |this.data| > 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@8.1--13.2) [88495]"}
        HasDirectPerm(Mask, this, data);
    if (Seq#Length(Heap[this, data]) > 0) {
      
      // -- Check definedness of this.len <= |this.data|
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.len (RingBufferRd.vpr@8.1--13.2) [88496]"}
          HasDirectPerm(Mask, this, len_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@8.1--13.2) [88497]"}
          HasDirectPerm(Mask, this, data);
      assume Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      
      // -- Check definedness of this.first < |this.data|
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.first (RingBufferRd.vpr@8.1--13.2) [88498]"}
          HasDirectPerm(Mask, this, first_3);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@8.1--13.2) [88499]"}
          HasDirectPerm(Mask, this, data);
      assume Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Create
// ==================================================

procedure Create(this: Ref, n: int) returns ()
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
  var i: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= n;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
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
    PostMask := PostMask[null, Valid(this):=PostMask[null, Valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Contents(this) == Seq[Int]()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@34.13--34.27) [88500]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Contents(PostHeap, this), (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Capacity(this) == n
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@34.45--34.59) [88501]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Capacity(PostHeap, this) == n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := n -- RingBufferRd.vpr@38.5--38.11
    i := n;
    assume state(Heap, Mask);
  
  // -- Translating statement: this.data := Seq[Int]() -- RingBufferRd.vpr@39.5--39.28
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@39.5--39.28) [88502]"}
      FullPerm == Mask[this, data];
    Heap := Heap[this, data:=(Seq#Empty(): Seq int)];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (0 < i) -- RingBufferRd.vpr@40.5--45.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not hold on entry. There might be insufficient permission to access this.data (RingBufferRd.vpr@41.17--41.72) [88503]"}
            perm <= Mask[this, data];
        }
        Mask := Mask[this, data:=Mask[this, data] - perm];
        assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not hold on entry. Assertion 0 <= i might not hold. (RingBufferRd.vpr@41.17--41.72) [88504]"}
          0 <= i;
        assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not hold on entry. Assertion |this.data| == n - i might not hold. (RingBufferRd.vpr@41.17--41.72) [88505]"}
          Seq#Length(Heap[this, data]) == n - i;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, data:=Mask[this, data] + perm];
        assume state(Heap, Mask);
        assume 0 <= i;
        
        // -- Check definedness of |this.data| == n - i
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.data (RingBufferRd.vpr@41.17--41.72) [88506]"}
            HasDirectPerm(Mask, this, data);
        assume Seq#Length(Heap[this, data]) == n - i;
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
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, data:=Mask[this, data] + perm];
        assume state(Heap, Mask);
        assume 0 <= i;
        assume Seq#Length(Heap[this, data]) == n - i;
        assume state(Heap, Mask);
        // Check and assume guard
        assume 0 < i;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: this.data := this.data ++ Seq(0) -- RingBufferRd.vpr@43.7--43.39
            
            // -- Check definedness of this.data ++ Seq(0)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@43.7--43.39) [88507]"}
                HasDirectPerm(Mask, this, data);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@43.7--43.39) [88508]"}
              FullPerm == Mask[this, data];
            Heap := Heap[this, data:=Seq#Append(Heap[this, data], Seq#Singleton(0))];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i - 1 -- RingBufferRd.vpr@44.7--44.17
            i := i - 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not be preserved. There might be insufficient permission to access this.data (RingBufferRd.vpr@41.17--41.72) [88509]"}
            perm <= Mask[this, data];
        }
        Mask := Mask[this, data:=Mask[this, data] - perm];
        assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not be preserved. Assertion 0 <= i might not hold. (RingBufferRd.vpr@41.17--41.72) [88510]"}
          0 <= i;
        assert {:msg "  Loop invariant acc(this.data, write) && (0 <= i && |this.data| == n - i) might not be preserved. Assertion |this.data| == n - i might not hold. (RingBufferRd.vpr@41.17--41.72) [88511]"}
          Seq#Length(Heap[this, data]) == n - i;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(0 < i);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, data:=Mask[this, data] + perm];
      assume state(Heap, Mask);
      assume 0 <= i;
      assume Seq#Length(Heap[this, data]) == n - i;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.first := 0 -- RingBufferRd.vpr@46.5--46.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@46.5--46.20) [88512]"}
      FullPerm == Mask[this, first_3];
    Heap := Heap[this, first_3:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.len := 0 -- RingBufferRd.vpr@47.5--47.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@47.5--47.18) [88513]"}
      FullPerm == Mask[this, len_2];
    Heap := Heap[this, len_2:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Valid(this), write) -- RingBufferRd.vpr@48.5--48.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@48.5--48.33) [88516]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@48.5--48.33) [88518]"}
        perm <= Mask[this, first_3];
    }
    Mask := Mask[this, first_3:=Mask[this, first_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@48.5--48.33) [88520]"}
        perm <= Mask[this, len_2];
    }
    Mask := Mask[this, len_2:=Mask[this, len_2] - perm];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.first might not hold. (RingBufferRd.vpr@48.5--48.33) [88521]"}
      0 <= Heap[this, first_3];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.len might not hold. (RingBufferRd.vpr@48.5--48.33) [88522]"}
      0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len == 0 might not hold. (RingBufferRd.vpr@48.5--48.33) [88523]"}
        Heap[this, len_2] == 0;
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first == 0 might not hold. (RingBufferRd.vpr@48.5--48.33) [88524]"}
        Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len <= |this.data| might not hold. (RingBufferRd.vpr@48.5--48.33) [88525]"}
        Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first < |this.data| might not hold. (RingBufferRd.vpr@48.5--48.33) [88526]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Valid(this))) {
      Heap := Heap[null, Valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Valid(this):=freshVersion];
    }
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Create might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@33.13--33.36) [88528]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    assert {:msg "  Postcondition of Create might not hold. Assertion Contents(this) == Seq[Int]() might not hold. (RingBufferRd.vpr@34.13--34.64) [88529]"}
      Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int));
    assert {:msg "  Postcondition of Create might not hold. Assertion Capacity(this) == n might not hold. (RingBufferRd.vpr@34.13--34.64) [88530]"}
      Capacity(Heap, this) == n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Clear
// ==================================================

procedure Clear(this: Ref) returns ()
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
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
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
    PostMask := PostMask[null, Valid(this):=PostMask[null, Valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Contents(this) == Seq[Int]()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@54.13--54.27) [88531]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Contents(PostHeap, this), (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Capacity(this) == old(Capacity(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@54.45--54.59) [88532]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@54.67--54.81) [88533]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Capacity(PostHeap, this) == Capacity(oldHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Valid(this), write) -- RingBufferRd.vpr@56.5--56.35
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Valid(this) might fail. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@56.5--56.35) [88536]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Valid(this))) {
        havoc newVersion;
        Heap := Heap[null, Valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, first_3];
    assume 0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assume Heap[this, len_2] == 0;
      assume Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assume Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assume Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.len := 0 -- RingBufferRd.vpr@57.5--57.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@57.5--57.18) [88540]"}
      FullPerm == Mask[this, len_2];
    Heap := Heap[this, len_2:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Valid(this), write) -- RingBufferRd.vpr@58.5--58.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@58.5--58.33) [88543]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@58.5--58.33) [88545]"}
        perm <= Mask[this, first_3];
    }
    Mask := Mask[this, first_3:=Mask[this, first_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@58.5--58.33) [88547]"}
        perm <= Mask[this, len_2];
    }
    Mask := Mask[this, len_2:=Mask[this, len_2] - perm];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.first might not hold. (RingBufferRd.vpr@58.5--58.33) [88548]"}
      0 <= Heap[this, first_3];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.len might not hold. (RingBufferRd.vpr@58.5--58.33) [88549]"}
      0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len == 0 might not hold. (RingBufferRd.vpr@58.5--58.33) [88550]"}
        Heap[this, len_2] == 0;
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first == 0 might not hold. (RingBufferRd.vpr@58.5--58.33) [88551]"}
        Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len <= |this.data| might not hold. (RingBufferRd.vpr@58.5--58.33) [88552]"}
        Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first < |this.data| might not hold. (RingBufferRd.vpr@58.5--58.33) [88553]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Valid(this))) {
      Heap := Heap[null, Valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Valid(this):=freshVersion];
    }
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Clear might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@53.13--53.36) [88555]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    assert {:msg "  Postcondition of Clear might not hold. Assertion Contents(this) == Seq[Int]() might not hold. (RingBufferRd.vpr@54.13--54.82) [88556]"}
      Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int));
    assert {:msg "  Postcondition of Clear might not hold. Assertion Capacity(this) == old(Capacity(this)) might not hold. (RingBufferRd.vpr@54.13--54.82) [88557]"}
      Capacity(Heap, this) == Capacity(oldHeap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Head
// ==================================================

procedure Head(this: Ref) returns (x: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Contents(this) != Seq[Int]()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@63.14--63.28) [88558]"}
          NoPerm < perm ==> NoPerm < Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume !Seq#Equal(Contents(Heap, this), (Seq#Empty(): Seq int));
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
    havoc wildcard;
    perm := wildcard;
    PostMask := PostMask[null, Valid(this):=PostMask[null, Valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Contents(this) == old(Contents(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@65.13--65.27) [88559]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@65.35--65.49) [88560]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Contents(PostHeap, this), Contents(oldHeap, this));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x == Contents(this)[0]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@65.59--65.73) [88561]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index Contents(this)[0] into Contents(this) might exceed sequence length. (RingBufferRd.vpr@65.13--65.76) [88562]"}
        0 < Seq#Length(Contents(PostHeap, this));
    assume x == Seq#Index(Contents(PostHeap, this), 0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Capacity(this) == old(Capacity(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@66.13--66.27) [88563]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@66.35--66.49) [88564]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Capacity(PostHeap, this) == Capacity(oldHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Valid(this), wildcard) -- RingBufferRd.vpr@68.5--68.38
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding Valid(this) might fail. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@68.5--68.38) [88566]"}
      Mask[null, Valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, Valid(this)];
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Valid(this))) {
        havoc newVersion;
        Heap := Heap[null, Valid(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, first_3];
    assume 0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assume Heap[this, len_2] == 0;
      assume Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assume Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assume Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := this.data[this.first] -- RingBufferRd.vpr@69.5--69.31
    
    // -- Check definedness of this.data[this.first]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@69.5--69.31) [88567]"}
        HasDirectPerm(Mask, this, data);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@69.5--69.31) [88568]"}
        HasDirectPerm(Mask, this, first_3);
      assert {:msg "  Assignment might fail. Index this.data[this.first] into this.data might be negative. (RingBufferRd.vpr@69.5--69.31) [88569]"}
        Heap[this, first_3] >= 0;
      assert {:msg "  Assignment might fail. Index this.data[this.first] into this.data might exceed sequence length. (RingBufferRd.vpr@69.5--69.31) [88570]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    x := Seq#Index(Heap[this, data], Heap[this, first_3]);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Valid(this), wildcard) -- RingBufferRd.vpr@70.5--70.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@70.5--70.36) [88572]"}
      Mask[this, data] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, data];
    Mask := Mask[this, data:=Mask[this, data] - wildcard];
    assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@70.5--70.36) [88573]"}
      Mask[this, first_3] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, first_3];
    Mask := Mask[this, first_3:=Mask[this, first_3] - wildcard];
    assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@70.5--70.36) [88574]"}
      Mask[this, len_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, len_2];
    Mask := Mask[this, len_2:=Mask[this, len_2] - wildcard];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.first might not hold. (RingBufferRd.vpr@70.5--70.36) [88575]"}
      0 <= Heap[this, first_3];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.len might not hold. (RingBufferRd.vpr@70.5--70.36) [88576]"}
      0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len == 0 might not hold. (RingBufferRd.vpr@70.5--70.36) [88577]"}
        Heap[this, len_2] == 0;
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first == 0 might not hold. (RingBufferRd.vpr@70.5--70.36) [88578]"}
        Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len <= |this.data| might not hold. (RingBufferRd.vpr@70.5--70.36) [88579]"}
        Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first < |this.data| might not hold. (RingBufferRd.vpr@70.5--70.36) [88580]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Valid(this))) {
      Heap := Heap[null, Valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Valid(this):=freshVersion];
    }
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Head might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@64.13--64.39) [88581]"}
      Mask[null, Valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, Valid(this)];
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - wildcard];
    assert {:msg "  Postcondition of Head might not hold. Assertion Contents(this) == old(Contents(this)) might not hold. (RingBufferRd.vpr@65.13--65.76) [88582]"}
      Seq#Equal(Contents(Heap, this), Contents(oldHeap, this));
    assert {:msg "  Postcondition of Head might not hold. Assertion x == Contents(this)[0] might not hold. (RingBufferRd.vpr@65.13--65.76) [88583]"}
      x == Seq#Index(Contents(Heap, this), 0);
    assert {:msg "  Postcondition of Head might not hold. Assertion Capacity(this) == old(Capacity(this)) might not hold. (RingBufferRd.vpr@66.13--66.50) [88584]"}
      Capacity(Heap, this) == Capacity(oldHeap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Push
// ==================================================

procedure Push(this: Ref, x: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var nextEmpty: int;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |Contents(this)| != Capacity(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@83.15--83.29) [88585]"}
          NoPerm < perm ==> NoPerm < Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@83.34--83.48) [88586]"}
          NoPerm < perm ==> NoPerm < Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Length(Contents(Heap, this)) != Capacity(Heap, this);
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
    PostMask := PostMask[null, Valid(this):=PostMask[null, Valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Contents(this) == old(Contents(this)) ++ Seq(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@85.13--85.27) [88587]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@85.35--85.49) [88588]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Contents(PostHeap, this), Seq#Append(Contents(oldHeap, this), Seq#Singleton(x)));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Capacity(this) == old(Capacity(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@86.13--86.27) [88589]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@86.35--86.49) [88590]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Capacity(PostHeap, this) == Capacity(oldHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Valid(this), write) -- RingBufferRd.vpr@88.5--88.35
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Valid(this) might fail. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@88.5--88.35) [88593]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Valid(this))) {
        havoc newVersion;
        Heap := Heap[null, Valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, first_3];
    assume 0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assume Heap[this, len_2] == 0;
      assume Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assume Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assume Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.first + this.len < |this.data|) -- RingBufferRd.vpr@90.5--97.6
    
    // -- Check definedness of this.first + this.len < |this.data|
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@90.9--90.44) [88597]"}
        HasDirectPerm(Mask, this, first_3);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@90.9--90.44) [88598]"}
        HasDirectPerm(Mask, this, len_2);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@90.9--90.44) [88599]"}
        HasDirectPerm(Mask, this, data);
    if (Heap[this, first_3] + Heap[this, len_2] < Seq#Length(Heap[this, data])) {
      
      // -- Translating statement: nextEmpty := this.first + this.len -- RingBufferRd.vpr@92.7--92.41
        
        // -- Check definedness of this.first + this.len
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@92.7--92.41) [88600]"}
            HasDirectPerm(Mask, this, first_3);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@92.7--92.41) [88601]"}
            HasDirectPerm(Mask, this, len_2);
        nextEmpty := Heap[this, first_3] + Heap[this, len_2];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: nextEmpty := this.first + this.len - |this.data| -- RingBufferRd.vpr@96.7--96.55
        
        // -- Check definedness of this.first + this.len - |this.data|
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@96.7--96.55) [88602]"}
            HasDirectPerm(Mask, this, first_3);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@96.7--96.55) [88603]"}
            HasDirectPerm(Mask, this, len_2);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@96.7--96.55) [88604]"}
            HasDirectPerm(Mask, this, data);
        nextEmpty := Heap[this, first_3] + Heap[this, len_2] - Seq#Length(Heap[this, data]);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: this.data := this.data[..nextEmpty] ++ Seq(x) ++ this.data[nextEmpty + 1..] -- RingBufferRd.vpr@98.5--98.79
    
    // -- Check definedness of this.data[..nextEmpty] ++ Seq(x) ++ this.data[nextEmpty + 1..]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@98.5--98.79) [88605]"}
        HasDirectPerm(Mask, this, data);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@98.5--98.79) [88606]"}
        HasDirectPerm(Mask, this, data);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@98.5--98.79) [88607]"}
      FullPerm == Mask[this, data];
    Heap := Heap[this, data:=Seq#Append(Seq#Append(Seq#Take(Heap[this, data], nextEmpty), Seq#Singleton(x)), Seq#Drop(Heap[this, data], nextEmpty + 1))];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.len := this.len + 1 -- RingBufferRd.vpr@99.5--99.29
    
    // -- Check definedness of this.len + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@99.5--99.29) [88608]"}
        HasDirectPerm(Mask, this, len_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@99.5--99.29) [88609]"}
      FullPerm == Mask[this, len_2];
    Heap := Heap[this, len_2:=Heap[this, len_2] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Valid(this), write) -- RingBufferRd.vpr@100.5--100.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@100.5--100.33) [88612]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@100.5--100.33) [88614]"}
        perm <= Mask[this, first_3];
    }
    Mask := Mask[this, first_3:=Mask[this, first_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@100.5--100.33) [88616]"}
        perm <= Mask[this, len_2];
    }
    Mask := Mask[this, len_2:=Mask[this, len_2] - perm];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.first might not hold. (RingBufferRd.vpr@100.5--100.33) [88617]"}
      0 <= Heap[this, first_3];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.len might not hold. (RingBufferRd.vpr@100.5--100.33) [88618]"}
      0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len == 0 might not hold. (RingBufferRd.vpr@100.5--100.33) [88619]"}
        Heap[this, len_2] == 0;
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first == 0 might not hold. (RingBufferRd.vpr@100.5--100.33) [88620]"}
        Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len <= |this.data| might not hold. (RingBufferRd.vpr@100.5--100.33) [88621]"}
        Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first < |this.data| might not hold. (RingBufferRd.vpr@100.5--100.33) [88622]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Valid(this))) {
      Heap := Heap[null, Valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Valid(this):=freshVersion];
    }
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Push might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@84.13--84.36) [88624]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    assert {:msg "  Postcondition of Push might not hold. Assertion Contents(this) == old(Contents(this)) ++ Seq(x) might not hold. (RingBufferRd.vpr@85.13--85.60) [88625]"}
      Seq#Equal(Contents(Heap, this), Seq#Append(Contents(oldHeap, this), Seq#Singleton(x)));
    assert {:msg "  Postcondition of Push might not hold. Assertion Capacity(this) == old(Capacity(this)) might not hold. (RingBufferRd.vpr@86.13--86.50) [88626]"}
      Capacity(Heap, this) == Capacity(oldHeap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Pop
// ==================================================

procedure Pop(this: Ref) returns (x: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Contents(this) != Seq(1)[1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@105.14--105.28) [88627]"}
          NoPerm < perm ==> NoPerm < Mask[null, Valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume !Seq#Equal(Contents(Heap, this), Seq#Drop(Seq#Singleton(1), 1));
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
    PostMask := PostMask[null, Valid(this):=PostMask[null, Valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x == old(Contents(this))[0]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@107.22--107.36) [88628]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index old(Contents(this))[0] into old(Contents(this)) might exceed sequence length. (RingBufferRd.vpr@107.13--107.127) [88629]"}
        0 < Seq#Length(Contents(oldHeap, this));
    assume x == Seq#Index(Contents(oldHeap, this), 0);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Contents(this) == old(Contents(this))[1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@107.44--107.58) [88630]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Contents might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@107.66--107.80) [88631]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Contents(PostHeap, this), Seq#Drop(Contents(oldHeap, this), 1));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Capacity(this) == old(Capacity(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@107.90--107.104) [88632]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Valid(this)];
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
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@107.112--107.126) [88633]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Valid(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Capacity(PostHeap, this) == Capacity(oldHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Valid(this), write) -- RingBufferRd.vpr@109.5--109.35
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Valid(this) might fail. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@109.5--109.35) [88636]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Valid(this))) {
        havoc newVersion;
        Heap := Heap[null, Valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, first_3:=Mask[this, first_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, first_3];
    assume 0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assume Heap[this, len_2] == 0;
      assume Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assume Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assume Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := this.data[this.first] -- RingBufferRd.vpr@110.5--110.31
    
    // -- Check definedness of this.data[this.first]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@110.5--110.31) [88640]"}
        HasDirectPerm(Mask, this, data);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@110.5--110.31) [88641]"}
        HasDirectPerm(Mask, this, first_3);
      assert {:msg "  Assignment might fail. Index this.data[this.first] into this.data might be negative. (RingBufferRd.vpr@110.5--110.31) [88642]"}
        Heap[this, first_3] >= 0;
      assert {:msg "  Assignment might fail. Index this.data[this.first] into this.data might exceed sequence length. (RingBufferRd.vpr@110.5--110.31) [88643]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    x := Seq#Index(Heap[this, data], Heap[this, first_3]);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.first + 1 == |this.data|) -- RingBufferRd.vpr@111.5--118.6
    
    // -- Check definedness of this.first + 1 == |this.data|
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@111.8--111.37) [88644]"}
        HasDirectPerm(Mask, this, first_3);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@111.8--111.37) [88645]"}
        HasDirectPerm(Mask, this, data);
    if (Heap[this, first_3] + 1 == Seq#Length(Heap[this, data])) {
      
      // -- Translating statement: this.first := 0 -- RingBufferRd.vpr@113.7--113.22
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@113.7--113.22) [88646]"}
          FullPerm == Mask[this, first_3];
        Heap := Heap[this, first_3:=0];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.first := this.first + 1 -- RingBufferRd.vpr@117.7--117.35
        
        // -- Check definedness of this.first + 1
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@117.7--117.35) [88647]"}
            HasDirectPerm(Mask, this, first_3);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@117.7--117.35) [88648]"}
          FullPerm == Mask[this, first_3];
        Heap := Heap[this, first_3:=Heap[this, first_3] + 1];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: this.len := this.len - 1 -- RingBufferRd.vpr@119.5--119.29
    
    // -- Check definedness of this.len - 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@119.5--119.29) [88649]"}
        HasDirectPerm(Mask, this, len_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@119.5--119.29) [88650]"}
      FullPerm == Mask[this, len_2];
    Heap := Heap[this, len_2:=Heap[this, len_2] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Valid(this), write) -- RingBufferRd.vpr@120.5--120.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.data (RingBufferRd.vpr@120.5--120.33) [88653]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.first (RingBufferRd.vpr@120.5--120.33) [88655]"}
        perm <= Mask[this, first_3];
    }
    Mask := Mask[this, first_3:=Mask[this, first_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Valid(this) might fail. There might be insufficient permission to access this.len (RingBufferRd.vpr@120.5--120.33) [88657]"}
        perm <= Mask[this, len_2];
    }
    Mask := Mask[this, len_2:=Mask[this, len_2] - perm];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.first might not hold. (RingBufferRd.vpr@120.5--120.33) [88658]"}
      0 <= Heap[this, first_3];
    assert {:msg "  Folding Valid(this) might fail. Assertion 0 <= this.len might not hold. (RingBufferRd.vpr@120.5--120.33) [88659]"}
      0 <= Heap[this, len_2];
    if (Seq#Length(Heap[this, data]) == 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len == 0 might not hold. (RingBufferRd.vpr@120.5--120.33) [88660]"}
        Heap[this, len_2] == 0;
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first == 0 might not hold. (RingBufferRd.vpr@120.5--120.33) [88661]"}
        Heap[this, first_3] == 0;
    }
    if (Seq#Length(Heap[this, data]) > 0) {
      assert {:msg "  Folding Valid(this) might fail. Assertion this.len <= |this.data| might not hold. (RingBufferRd.vpr@120.5--120.33) [88662]"}
        Heap[this, len_2] <= Seq#Length(Heap[this, data]);
      assert {:msg "  Folding Valid(this) might fail. Assertion this.first < |this.data| might not hold. (RingBufferRd.vpr@120.5--120.33) [88663]"}
        Heap[this, first_3] < Seq#Length(Heap[this, data]);
    }
    perm := FullPerm;
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Valid#trigger(Heap, Valid(this));
    assume Heap[null, Valid(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, first_3]), CombineFrames(FrameFragment(Heap[this, len_2]), CombineFrames(FrameFragment((if Seq#Length(Heap[this, data]) == 0 then EmptyFrame else EmptyFrame)), FrameFragment((if Seq#Length(Heap[this, data]) > 0 then EmptyFrame else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, Valid(this))) {
      Heap := Heap[null, Valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Valid(this):=freshVersion];
    }
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, data:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, first_3:=true]];
    Heap := Heap[null, Valid#sm(this):=Heap[null, Valid#sm(this)][this, len_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Pop might not hold. There might be insufficient permission to access Valid(this) (RingBufferRd.vpr@106.13--106.36) [88665]"}
        perm <= Mask[null, Valid(this)];
    }
    Mask := Mask[null, Valid(this):=Mask[null, Valid(this)] - perm];
    assert {:msg "  Postcondition of Pop might not hold. Assertion x == old(Contents(this))[0] might not hold. (RingBufferRd.vpr@107.13--107.127) [88666]"}
      x == Seq#Index(Contents(oldHeap, this), 0);
    assert {:msg "  Postcondition of Pop might not hold. Assertion Contents(this) == old(Contents(this))[1..] might not hold. (RingBufferRd.vpr@107.13--107.127) [88667]"}
      Seq#Equal(Contents(Heap, this), Seq#Drop(Contents(oldHeap, this), 1));
    assert {:msg "  Postcondition of Pop might not hold. Assertion Capacity(this) == old(Capacity(this)) might not hold. (RingBufferRd.vpr@107.13--107.127) [88668]"}
      Capacity(Heap, this) == Capacity(oldHeap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method TestHarness
// ==================================================

procedure TestHarness(x: int, y: int, z: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var h_1: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: b := new(data, first, len) -- RingBufferRd.vpr@126.5--126.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    b_24 := freshObj;
    Mask := Mask[b_24, data:=Mask[b_24, data] + FullPerm];
    Mask := Mask[b_24, first_3:=Mask[b_24, first_3] + FullPerm];
    Mask := Mask[b_24, len_2:=Mask[b_24, len_2] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: Create(b, 2) -- RingBufferRd.vpr@127.5--127.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Create might not hold. There might be insufficient permission to access b.data (RingBufferRd.vpr@127.5--127.17) [88669]"}
          perm <= Mask[b_24, data];
      }
      Mask := Mask[b_24, data:=Mask[b_24, data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Create might not hold. There might be insufficient permission to access b.first (RingBufferRd.vpr@127.5--127.17) [88670]"}
          perm <= Mask[b_24, first_3];
      }
      Mask := Mask[b_24, first_3:=Mask[b_24, first_3] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Create might not hold. There might be insufficient permission to access b.len (RingBufferRd.vpr@127.5--127.17) [88671]"}
          perm <= Mask[b_24, len_2];
      }
      Mask := Mask[b_24, len_2:=Mask[b_24, len_2] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), (Seq#Empty(): Seq int));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == 2;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Push(b, x) -- RingBufferRd.vpr@128.5--128.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Push might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@128.5--128.15) [88672]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Push might not hold. Assertion |Contents(b)| != Capacity(b) might not hold. (RingBufferRd.vpr@128.5--128.15) [88673]"}
        Seq#Length(Contents(Heap, b_24)) != Capacity(Heap, b_24);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Append(Contents(PreCallHeap, b_24), Seq#Singleton(x)));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Push(b, y) -- RingBufferRd.vpr@129.5--129.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Push might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@129.5--129.15) [88674]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Push might not hold. Assertion |Contents(b)| != Capacity(b) might not hold. (RingBufferRd.vpr@129.5--129.15) [88675]"}
        Seq#Length(Contents(Heap, b_24)) != Capacity(Heap, b_24);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Append(Contents(PreCallHeap, b_24), Seq#Singleton(y)));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: h := Pop(b) -- RingBufferRd.vpr@131.5--131.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Pop might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@131.5--131.16) [88676]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Pop might not hold. Assertion Contents(b) != Seq(1)[1..] might not hold. (RingBufferRd.vpr@131.5--131.16) [88677]"}
        !Seq#Equal(Contents(Heap, b_24), Seq#Drop(Seq#Singleton(1), 1));
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc h_1;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume h_1 == Seq#Index(Contents(PreCallHeap, b_24), 0);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Drop(Contents(PreCallHeap, b_24), 1));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h == x -- RingBufferRd.vpr@131.19--131.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion h == x might not hold. (RingBufferRd.vpr@131.26--131.32) [88678]"}
      h_1 == x;
    assume state(Heap, Mask);
  
  // -- Translating statement: Push(b, z) -- RingBufferRd.vpr@132.5--132.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Push might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@132.5--132.15) [88679]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Push might not hold. Assertion |Contents(b)| != Capacity(b) might not hold. (RingBufferRd.vpr@132.5--132.15) [88680]"}
        Seq#Length(Contents(Heap, b_24)) != Capacity(Heap, b_24);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Append(Contents(PreCallHeap, b_24), Seq#Singleton(z)));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: h := Pop(b) -- RingBufferRd.vpr@133.5--133.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Pop might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@133.5--133.16) [88681]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Pop might not hold. Assertion Contents(b) != Seq(1)[1..] might not hold. (RingBufferRd.vpr@133.5--133.16) [88682]"}
        !Seq#Equal(Contents(Heap, b_24), Seq#Drop(Seq#Singleton(1), 1));
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc h_1;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume h_1 == Seq#Index(Contents(PreCallHeap, b_24), 0);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Drop(Contents(PreCallHeap, b_24), 1));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h == y -- RingBufferRd.vpr@133.19--133.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion h == y might not hold. (RingBufferRd.vpr@133.26--133.32) [88683]"}
      h_1 == y;
    assume state(Heap, Mask);
  
  // -- Translating statement: h := Pop(b) -- RingBufferRd.vpr@134.5--134.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Pop might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@134.5--134.16) [88684]"}
          perm <= Mask[null, Valid(b_24)];
      }
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] - perm];
      assert {:msg "  The precondition of method Pop might not hold. Assertion Contents(b) != Seq(1)[1..] might not hold. (RingBufferRd.vpr@134.5--134.16) [88685]"}
        !Seq#Equal(Contents(Heap, b_24), Seq#Drop(Seq#Singleton(1), 1));
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc h_1;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Valid(b_24):=Mask[null, Valid(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume h_1 == Seq#Index(Contents(PreCallHeap, b_24), 0);
      assume state(Heap, Mask);
      assume Seq#Equal(Contents(Heap, b_24), Seq#Drop(Contents(PreCallHeap, b_24), 1));
      assume state(Heap, Mask);
      assume Capacity(Heap, b_24) == Capacity(PreCallHeap, b_24);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h == z -- RingBufferRd.vpr@134.19--134.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion h == z might not hold. (RingBufferRd.vpr@134.26--134.32) [88686]"}
      h_1 == z;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Capacity(b) == 2 -- RingBufferRd.vpr@135.5--135.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of Capacity(b) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Capacity might not hold. There might be insufficient permission to access Valid(b) (RingBufferRd.vpr@135.12--135.23) [88687]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Valid(b_24)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Capacity(b) == 2 might not hold. (RingBufferRd.vpr@135.12--135.28) [88688]"}
      Capacity(Heap, b_24) == 2;
    assume state(Heap, Mask);
}