// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:26:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0400.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0400-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of method test_take_01
// ==================================================

procedure test_take_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@12.3--12.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..0] == Seq[Int]() -- 0400.vpr@13.3--13.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..0] == Seq[Int]() might not hold. (0400.vpr@13.10--13.25) [205011]"}
      Seq#Equal(Seq#Take(a_2, 0), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..1] == Seq(1) -- 0400.vpr@14.3--14.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..1] == Seq(1) might not hold. (0400.vpr@14.10--14.26) [205012]"}
      Seq#Equal(Seq#Take(a_2, 1), Seq#Singleton(1));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..2] == Seq(1, 4) -- 0400.vpr@15.3--15.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..2] == Seq(1, 4) might not hold. (0400.vpr@15.10--15.28) [205013]"}
      Seq#Equal(Seq#Take(a_2, 2), Seq#Append(Seq#Singleton(1), Seq#Singleton(4)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..5] == a -- 0400.vpr@16.3--16.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..5] == a might not hold. (0400.vpr@16.10--16.21) [205014]"}
      Seq#Equal(Seq#Take(a_2, 5), a_2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_length_01
// ==================================================

procedure test_take_length_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@21.3--21.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..0]| == 0 -- 0400.vpr@22.3--22.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..0]| == 0 might not hold. (0400.vpr@22.10--22.23) [205015]"}
      Seq#Length(Seq#Take(a_2, 0)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..1]| == 1 -- 0400.vpr@23.3--23.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..1]| == 1 might not hold. (0400.vpr@23.10--23.23) [205016]"}
      Seq#Length(Seq#Take(a_2, 1)) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..2]| == 2 -- 0400.vpr@24.3--24.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..2]| == 2 might not hold. (0400.vpr@24.10--24.23) [205017]"}
      Seq#Length(Seq#Take(a_2, 2)) == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..5]| == |a| -- 0400.vpr@25.3--25.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..5]| == |a| might not hold. (0400.vpr@25.10--25.25) [205018]"}
      Seq#Length(Seq#Take(a_2, 5)) == Seq#Length(a_2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_drop_01
// ==================================================

procedure test_drop_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@30.3--30.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[0..] == a -- 0400.vpr@31.3--31.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[0..] == a might not hold. (0400.vpr@31.10--31.21) [205019]"}
      Seq#Equal(Seq#Drop(a_2, 0), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[2..] == Seq(5, 7, 8) -- 0400.vpr@32.3--32.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[2..] == Seq(5, 7, 8) might not hold. (0400.vpr@32.10--32.32) [205020]"}
      Seq#Equal(Seq#Drop(a_2, 2), Seq#Append(Seq#Append(Seq#Singleton(5), Seq#Singleton(7)), Seq#Singleton(8)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[4..] == Seq(8) -- 0400.vpr@33.3--33.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[4..] == Seq(8) might not hold. (0400.vpr@33.10--33.26) [205021]"}
      Seq#Equal(Seq#Drop(a_2, 4), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[5..] == Seq[Int]() -- 0400.vpr@34.3--34.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[5..] == Seq[Int]() might not hold. (0400.vpr@34.10--34.25) [205022]"}
      Seq#Equal(Seq#Drop(a_2, 5), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_drop_length_01
// ==================================================

procedure test_drop_length_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@39.3--39.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[0..]| == |a| -- 0400.vpr@40.3--40.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[0..]| == |a| might not hold. (0400.vpr@40.10--40.25) [205023]"}
      Seq#Length(Seq#Drop(a_2, 0)) == Seq#Length(a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[2..]| == 3 -- 0400.vpr@41.3--41.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[2..]| == 3 might not hold. (0400.vpr@41.10--41.23) [205024]"}
      Seq#Length(Seq#Drop(a_2, 2)) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[4..]| == 1 -- 0400.vpr@42.3--42.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[4..]| == 1 might not hold. (0400.vpr@42.10--42.23) [205025]"}
      Seq#Length(Seq#Drop(a_2, 4)) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[5..]| == 0 -- 0400.vpr@43.3--43.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[5..]| == 0 might not hold. (0400.vpr@43.10--43.23) [205026]"}
      Seq#Length(Seq#Drop(a_2, 5)) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_drop_01
// ==================================================

procedure test_take_drop_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@48.3--48.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[0..2] == a[0..2] -- 0400.vpr@49.3--49.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[0..2] == a[0..2] might not hold. (0400.vpr@49.10--49.32) [205027]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 2), 0), Seq#Drop(Seq#Take(a_2, 2), 0));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[2..4] == a[2..4] -- 0400.vpr@50.3--50.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[2..4] == a[2..4] might not hold. (0400.vpr@50.10--50.32) [205028]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 4), 2), Seq#Drop(Seq#Take(a_2, 4), 2));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[0..5] == a[0..5] -- 0400.vpr@51.3--51.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[0..5] == a[0..5] might not hold. (0400.vpr@51.10--51.32) [205029]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 5), 0), Seq#Drop(Seq#Take(a_2, 5), 0));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1..1] == a[1..1] -- 0400.vpr@52.3--52.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[1..1] == a[1..1] might not hold. (0400.vpr@52.10--52.32) [205030]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 1), 1), Seq#Drop(Seq#Take(a_2, 1), 1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_drop_length_01
// ==================================================

procedure test_take_drop_length_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@57.3--57.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[0..2]| == 2 -- 0400.vpr@58.3--58.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[0..2]| == 2 might not hold. (0400.vpr@58.10--58.24) [205031]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 2), 0)) == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[2..4]| == 2 -- 0400.vpr@59.3--59.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[2..4]| == 2 might not hold. (0400.vpr@59.10--59.24) [205032]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 4), 2)) == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[0..5]| == 5 -- 0400.vpr@60.3--60.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[0..5]| == 5 might not hold. (0400.vpr@60.10--60.24) [205033]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 5), 0)) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[1..1]| == 0 -- 0400.vpr@61.3--61.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[1..1]| == 0 might not hold. (0400.vpr@61.10--61.24) [205034]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 1), 1)) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_02
// ==================================================

procedure test_take_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e1_2: int;
  var e2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@70.3--70.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..-1] == Seq[Int]() -- 0400.vpr@72.3--72.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..-1] == Seq[Int]() might not hold. (0400.vpr@72.10--72.26) [205035]"}
      Seq#Equal(Seq#Take(a_2, -1), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 < -1 -- 0400.vpr@74.23--74.30
    assume e1_2 < -1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..e1] == Seq[Int]() -- 0400.vpr@75.3--75.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..e1] == Seq[Int]() might not hold. (0400.vpr@75.10--75.26) [205036]"}
      Seq#Equal(Seq#Take(a_2, e1_2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..6] == a -- 0400.vpr@77.3--77.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..6] == a might not hold. (0400.vpr@77.10--77.21) [205037]"}
      Seq#Equal(Seq#Take(a_2, 6), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < e2 -- 0400.vpr@79.23--79.29
    assume 6 < e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..e2] == a -- 0400.vpr@80.3--80.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[..e2] == a might not hold. (0400.vpr@80.10--80.22) [205038]"}
      Seq#Equal(Seq#Take(a_2, e2_1), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0400.vpr@83.3--83.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0400.vpr@83.10--83.15) [205039]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_length_02
// ==================================================

procedure test_take_length_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e1_2: int;
  var e2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@88.3--88.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..-1]| == 0 -- 0400.vpr@90.3--90.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..-1]| == 0 might not hold. (0400.vpr@90.10--90.24) [205040]"}
      Seq#Length(Seq#Take(a_2, -1)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 < -1 -- 0400.vpr@92.23--92.30
    assume e1_2 < -1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..e1]| == 0 -- 0400.vpr@93.3--93.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..e1]| == 0 might not hold. (0400.vpr@93.10--93.24) [205041]"}
      Seq#Length(Seq#Take(a_2, e1_2)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..6]| == 5 -- 0400.vpr@95.3--95.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..6]| == 5 might not hold. (0400.vpr@95.10--95.23) [205042]"}
      Seq#Length(Seq#Take(a_2, 6)) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < e2 -- 0400.vpr@97.23--97.29
    assume 6 < e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[..e2]| == 5 -- 0400.vpr@98.3--98.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[..e2]| == 5 might not hold. (0400.vpr@98.10--98.24) [205043]"}
      Seq#Length(Seq#Take(a_2, e2_1)) == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_index_01
// ==================================================

procedure test_take_index_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@103.3--103.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..10][3] == 7 -- 0400.vpr@105.3--105.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a[..10][3] == 7
      assert {:msg "  Assert might fail. Index a[..10][3] into a[..10] might exceed sequence length. (0400.vpr@105.10--105.25) [205044]"}
        3 < Seq#Length(Seq#Take(a_2, 10));
    assert {:msg "  Assert might fail. Assertion a[..10][3] == 7 might not hold. (0400.vpr@105.10--105.25) [205045]"}
      Seq#Index(Seq#Take(a_2, 10), 3) == 7;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_drop_02
// ==================================================

procedure test_drop_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e1_2: int;
  var e2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@114.3--114.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[-1..] == a -- 0400.vpr@116.3--116.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[-1..] == a might not hold. (0400.vpr@116.10--116.22) [205046]"}
      Seq#Equal(Seq#Drop(a_2, -1), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 < -1 -- 0400.vpr@118.23--118.30
    assume e1_2 < -1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[e1..] == a -- 0400.vpr@119.3--119.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[e1..] == a might not hold. (0400.vpr@119.10--119.22) [205047]"}
      Seq#Equal(Seq#Drop(a_2, e1_2), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[6..] == Seq[Int]() -- 0400.vpr@121.3--121.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[6..] == Seq[Int]() might not hold. (0400.vpr@121.10--121.25) [205048]"}
      Seq#Equal(Seq#Drop(a_2, 6), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < e2 -- 0400.vpr@123.23--123.29
    assume 6 < e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[e2..] == Seq[Int]() -- 0400.vpr@124.3--124.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[e2..] == Seq[Int]() might not hold. (0400.vpr@124.10--124.26) [205049]"}
      Seq#Equal(Seq#Drop(a_2, e2_1), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_drop_length_02
// ==================================================

procedure test_drop_length_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e1_2: int;
  var e2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@129.3--129.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[-1..]| == 5 -- 0400.vpr@131.3--131.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[-1..]| == 5 might not hold. (0400.vpr@131.10--131.24) [205050]"}
      Seq#Length(Seq#Drop(a_2, -1)) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 < -1 -- 0400.vpr@133.23--133.30
    assume e1_2 < -1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[e1..]| == 5 -- 0400.vpr@134.3--134.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[e1..]| == 5 might not hold. (0400.vpr@134.10--134.24) [205051]"}
      Seq#Length(Seq#Drop(a_2, e1_2)) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[6..]| == 0 -- 0400.vpr@136.3--136.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[6..]| == 0 might not hold. (0400.vpr@136.10--136.23) [205052]"}
      Seq#Length(Seq#Drop(a_2, 6)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 6 < e2 -- 0400.vpr@138.23--138.29
    assume 6 < e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[e2..]| == 0 -- 0400.vpr@139.3--139.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[e2..]| == 0 might not hold. (0400.vpr@139.10--139.24) [205053]"}
      Seq#Length(Seq#Drop(a_2, e2_1)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0400.vpr@142.3--142.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0400.vpr@142.10--142.15) [205054]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_drop_index_01
// ==================================================

procedure test_drop_index_01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@147.3--147.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[0..][3] == 7 -- 0400.vpr@149.3--149.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a[0..][3] == 7
      assert {:msg "  Assert might fail. Index a[0..][3] into a[0..] might exceed sequence length. (0400.vpr@149.10--149.24) [205055]"}
        3 < Seq#Length(Seq#Drop(a_2, 0));
    assert {:msg "  Assert might fail. Assertion a[0..][3] == 7 might not hold. (0400.vpr@149.10--149.24) [205056]"}
      Seq#Index(Seq#Drop(a_2, 0), 3) == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[-1..][3] == 7 -- 0400.vpr@150.3--150.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a[-1..][3] == 7
      assert {:msg "  Assert might fail. Index a[-1..][3] into a[-1..] might exceed sequence length. (0400.vpr@150.10--150.25) [205057]"}
        3 < Seq#Length(Seq#Drop(a_2, -1));
    assert {:msg "  Assert might fail. Assertion a[-1..][3] == 7 might not hold. (0400.vpr@150.10--150.25) [205058]"}
      Seq#Index(Seq#Drop(a_2, -1), 3) == 7;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_drop_02
// ==================================================

procedure test_take_drop_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e2_1: int;
  var e1_2: int;
  var e4: int;
  var e3_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@159.3--159.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[2..2] == Seq[Int]() -- 0400.vpr@161.3--161.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[2..2] == Seq[Int]() might not hold. (0400.vpr@161.10--161.26) [205059]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 2), 2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[3..2] == Seq[Int]() -- 0400.vpr@162.3--162.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[3..2] == Seq[Int]() might not hold. (0400.vpr@162.10--162.26) [205060]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 2), 3), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= e2 -- 0400.vpr@166.10--166.17
    assume 0 <= e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e2 <= e1 -- 0400.vpr@166.21--166.29
    assume e2_1 <= e1_2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 <= |a| -- 0400.vpr@166.33--166.42
    assume e1_2 <= Seq#Length(a_2);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[e1..e2] == Seq[Int]() -- 0400.vpr@168.3--168.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[e1..e2] == Seq[Int]() might not hold. (0400.vpr@168.10--168.28) [205061]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, e2_1), e1_2), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e4 <= e3 -- 0400.vpr@172.10--172.18
    assume e4 <= e3_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[e3..e4] == Seq[Int]() -- 0400.vpr@174.3--174.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[e3..e4] == Seq[Int]() might not hold. (0400.vpr@174.10--174.28) [205062]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, e4), e3_1), (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_take_drop_length_02
// ==================================================

procedure test_take_drop_length_02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var e2_1: int;
  var e1_2: int;
  var e4: int;
  var e3_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@179.3--179.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[2..2]| == 0 -- 0400.vpr@181.3--181.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[2..2]| == 0 might not hold. (0400.vpr@181.10--181.24) [205063]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 2), 2)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[3..2]| == 0 -- 0400.vpr@182.3--182.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[3..2]| == 0 might not hold. (0400.vpr@182.10--182.24) [205064]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, 2), 3)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= e2 -- 0400.vpr@186.10--186.17
    assume 0 <= e2_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e2 <= e1 -- 0400.vpr@186.21--186.29
    assume e2_1 <= e1_2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e1 <= 5 -- 0400.vpr@186.33--186.40
    assume e1_2 <= 5;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[e1..e2]| == 0 -- 0400.vpr@188.3--188.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[e1..e2]| == 0 might not hold. (0400.vpr@188.10--188.26) [205065]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, e2_1), e1_2)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale e4 <= e3 -- 0400.vpr@192.10--192.18
    assume e4 <= e3_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[e3..e4]| == 0 -- 0400.vpr@194.3--194.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |a[e3..e4]| == 0 might not hold. (0400.vpr@194.10--194.26) [205066]"}
      Seq#Length(Seq#Drop(Seq#Take(a_2, e4), e3_1)) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method reported_example
// ==================================================

procedure reported_example() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := Seq(1, 4, 5, 7, 8) -- 0400.vpr@199.3--199.26
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(7)), Seq#Singleton(8));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[-1..1] == a[0..1] -- 0400.vpr@200.3--200.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a[-1..1] == a[0..1] might not hold. (0400.vpr@200.10--200.29) [205067]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 1), -1), Seq#Drop(Seq#Take(a_2, 1), 0));
    assume state(Heap, Mask);
}