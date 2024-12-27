// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:18:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/tutorial/predicates-lseg.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/tutorial/predicates-lseg-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique elem_1: Field NormalField int;
axiom !IsPredicateField(elem_1);
axiom !IsWandField(elem_1);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(first_1: Ref, last: Ref, values: (Seq int)): Field PredicateType_lseg FrameType;
function  lseg#sm(first_1: Ref, last: Ref, values: (Seq int)): Field PredicateType_lseg PMaskType;
axiom (forall first_1: Ref, last: Ref, values: (Seq int) ::
  { PredicateMaskField(lseg(first_1, last, values)) }
  PredicateMaskField(lseg(first_1, last, values)) == lseg#sm(first_1, last, values)
);
axiom (forall first_1: Ref, last: Ref, values: (Seq int) ::
  { lseg(first_1, last, values) }
  IsPredicateField(lseg(first_1, last, values))
);
axiom (forall first_1: Ref, last: Ref, values: (Seq int) ::
  { lseg(first_1, last, values) }
  getPredWandId(lseg(first_1, last, values)) == 0
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall first_1: Ref, last: Ref, values: (Seq int), first2: Ref, last2: Ref, values2: (Seq int) ::
  { lseg(first_1, last, values), lseg(first2, last2, values2) }
  lseg(first_1, last, values) == lseg(first2, last2, values2) ==> first_1 == first2 && (last == last2 && values == values2)
);
axiom (forall first_1: Ref, last: Ref, values: (Seq int), first2: Ref, last2: Ref, values2: (Seq int) ::
  { lseg#sm(first_1, last, values), lseg#sm(first2, last2, values2) }
  lseg#sm(first_1, last, values) == lseg#sm(first2, last2, values2) ==> first_1 == first2 && (last == last2 && values == values2)
);

axiom (forall Heap: HeapType, first_1: Ref, last: Ref, values: (Seq int) ::
  { lseg#trigger(Heap, lseg(first_1, last, values)) }
  lseg#everUsed(lseg(first_1, last, values))
);

procedure lseg#definedness(first_1: Ref, last: Ref, values: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[first_1, $allocated];
      assume Heap[last, $allocated];
    if (first_1 != last) {
      perm := FullPerm;
      assume first_1 != null;
      Mask := Mask[first_1, elem_1:=Mask[first_1, elem_1] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume first_1 != null;
      Mask := Mask[first_1, next:=Mask[first_1, next] + perm];
      assume state(Heap, Mask);
      assume 0 < Seq#Length(values);
      
      // -- Check definedness of first.elem == values[0]
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access first.elem (predicates-lseg.vpr@7.1--14.2) [119988]"}
          HasDirectPerm(Mask, first_1, elem_1);
        assert {:msg "  Predicate might not be well-formed. Index values[0] into values might exceed sequence length. (predicates-lseg.vpr@7.1--14.2) [119989]"}
          0 < Seq#Length(values);
      assume Heap[first_1, elem_1] == Seq#Index(values, 0);
      
      // -- Check definedness of acc(lseg(first.next, last, values[1..]), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access first.next (predicates-lseg.vpr@7.1--14.2) [119990]"}
          HasDirectPerm(Mask, first_1, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1)):=Mask[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1))] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method findFirst
// ==================================================

procedure findFirst(first_1: Ref, last: Ref, values: (Seq int)) returns (value_1: int, second_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[first_1, $allocated];
    assume Heap[last, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(first_1, last, values):=Mask[null, lseg(first_1, last, values)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume first_1 != last;
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
    PostMask := PostMask[null, lseg(second_1, last, Seq#Drop(values, 1)):=PostMask[null, lseg(second_1, last, Seq#Drop(values, 1))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(lseg(first, last, values), write) -- predicates-lseg.vpr@22.3--22.35
    assume lseg#trigger(Heap, lseg(first_1, last, values));
    assume Heap[null, lseg(first_1, last, values)] == FrameFragment((if first_1 != last then CombineFrames(FrameFragment(Heap[first_1, elem_1]), CombineFrames(FrameFragment(Heap[first_1, next]), Heap[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1))])) else EmptyFrame));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(first, last, values) might fail. There might be insufficient permission to access lseg(first, last, values) (predicates-lseg.vpr@22.3--22.35) [119993]"}
        perm <= Mask[null, lseg(first_1, last, values)];
    }
    Mask := Mask[null, lseg(first_1, last, values):=Mask[null, lseg(first_1, last, values)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(first_1, last, values))) {
        havoc newVersion;
        Heap := Heap[null, lseg(first_1, last, values):=newVersion];
      }
    if (first_1 != last) {
      perm := FullPerm;
      assume first_1 != null;
      Mask := Mask[first_1, elem_1:=Mask[first_1, elem_1] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume first_1 != null;
      Mask := Mask[first_1, next:=Mask[first_1, next] + perm];
      assume state(Heap, Mask);
      assume 0 < Seq#Length(values);
      assume Heap[first_1, elem_1] == Seq#Index(values, 0);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1)):=Mask[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1))] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(first_1, last, values), Heap[null, lseg(first_1, last, values)], lseg(Heap[first_1, next], last, Seq#Drop(values, 1)), Heap[null, lseg(Heap[first_1, next], last, Seq#Drop(values, 1))]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: value := first.elem -- predicates-lseg.vpr@24.3--24.22
    
    // -- Check definedness of first.elem
      assert {:msg "  Assignment might fail. There might be insufficient permission to access first.elem (predicates-lseg.vpr@24.3--24.22) [119997]"}
        HasDirectPerm(Mask, first_1, elem_1);
    value_1 := Heap[first_1, elem_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: second := first.next -- predicates-lseg.vpr@25.3--25.23
    
    // -- Check definedness of first.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access first.next (predicates-lseg.vpr@25.3--25.23) [119998]"}
        HasDirectPerm(Mask, first_1, next);
    second_1 := Heap[first_1, next];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of findFirst might not hold. There might be insufficient permission to access lseg(second, last, values[1..]) (predicates-lseg.vpr@20.12--20.43) [119999]"}
        perm <= Mask[null, lseg(second_1, last, Seq#Drop(values, 1))];
    }
    Mask := Mask[null, lseg(second_1, last, Seq#Drop(values, 1)):=Mask[null, lseg(second_1, last, Seq#Drop(values, 1))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method prependFails
// ==================================================

procedure prependFails(first_1: Ref, last: Ref, values: (Seq int), toAdd: int) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[first_1, $allocated];
    assume Heap[last, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(first_1, last, values):=Mask[null, lseg(first_1, last, values)] + perm];
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
    PostMask := PostMask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=PostMask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r := new(elem, next) -- predicates-lseg.vpr@32.7--32.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    r_1 := freshObj;
    Mask := Mask[r_1, elem_1:=Mask[r_1, elem_1] + FullPerm];
    Mask := Mask[r_1, next:=Mask[r_1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: r.elem := toAdd -- predicates-lseg.vpr@33.7--33.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.elem (predicates-lseg.vpr@33.7--33.22) [120000]"}
      FullPerm == Mask[r_1, elem_1];
    Heap := Heap[r_1, elem_1:=toAdd];
    assume state(Heap, Mask);
  
  // -- Translating statement: r.next := first -- predicates-lseg.vpr@34.7--34.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (predicates-lseg.vpr@34.7--34.22) [120001]"}
      FullPerm == Mask[r_1, next];
    Heap := Heap[r_1, next:=first_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(r, last, Seq(toAdd) ++ values), write) -- predicates-lseg.vpr@37.7--37.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (r_1 != last) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access r.elem (predicates-lseg.vpr@37.7--37.45) [120004]"}
          perm <= Mask[r_1, elem_1];
      }
      Mask := Mask[r_1, elem_1:=Mask[r_1, elem_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access r.next (predicates-lseg.vpr@37.7--37.45) [120006]"}
          perm <= Mask[r_1, next];
      }
      Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
      assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. Assertion 0 < |Seq(toAdd) ++ values| might not hold. (predicates-lseg.vpr@37.7--37.45) [120007]"}
        0 < Seq#Length(Seq#Append(Seq#Singleton(toAdd), values));
      assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. Assertion r.elem == (Seq(toAdd) ++ values)[0] might not hold. (predicates-lseg.vpr@37.7--37.45) [120008]"}
        Heap[r_1, elem_1] == Seq#Index(Seq#Append(Seq#Singleton(toAdd), values), 0);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access lseg(r.next, last, Seq(toAdd) ++ values[1..]) (predicates-lseg.vpr@37.7--37.45) [120010]"}
          perm <= Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))];
      }
      Mask := Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1)):=Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)), Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))], lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1)), Heap[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)));
    assume Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] == FrameFragment((if r_1 != last then CombineFrames(FrameFragment(Heap[r_1, elem_1]), CombineFrames(FrameFragment(Heap[r_1, next]), Heap[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)))) {
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=freshVersion];
    }
    if (r_1 != last) {
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][r_1, elem_1:=true]];
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][r_1, next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
        { newPMask[o_15, f_20] }
        Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][o_15, f_20] || Heap[null, lseg#sm(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))][o_15, f_20] ==> newPMask[o_15, f_20]
      );
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of prependFails might not hold. There might be insufficient permission to access lseg(r, last, Seq(toAdd) ++ values) (predicates-lseg.vpr@30.11--30.46) [120012]"}
        perm <= Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))];
    }
    Mask := Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method prepend
// ==================================================

procedure prepend(first_1: Ref, last: Ref, values: (Seq int), toAdd: int) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[first_1, $allocated];
    assume Heap[last, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(first_1, last, values):=Mask[null, lseg(first_1, last, values)] + perm];
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
    PostMask := PostMask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=PostMask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r := new(elem, next) -- predicates-lseg.vpr@44.7--44.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    r_1 := freshObj;
    Mask := Mask[r_1, elem_1:=Mask[r_1, elem_1] + FullPerm];
    Mask := Mask[r_1, next:=Mask[r_1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: r.elem := toAdd -- predicates-lseg.vpr@45.7--45.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.elem (predicates-lseg.vpr@45.7--45.22) [120013]"}
      FullPerm == Mask[r_1, elem_1];
    Heap := Heap[r_1, elem_1:=toAdd];
    assume state(Heap, Mask);
  
  // -- Translating statement: r.next := first -- predicates-lseg.vpr@46.7--46.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (predicates-lseg.vpr@46.7--46.22) [120014]"}
      FullPerm == Mask[r_1, next];
    Heap := Heap[r_1, next:=first_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(toAdd) ++ values[1..] == values -- predicates-lseg.vpr@47.7--47.51
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(toAdd) ++ values[1..] == values might not hold. (predicates-lseg.vpr@47.14--47.51) [120015]"}
      Seq#Equal(Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1), values);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(r, last, Seq(toAdd) ++ values), write) -- predicates-lseg.vpr@48.7--48.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (r_1 != last) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access r.elem (predicates-lseg.vpr@48.7--48.45) [120018]"}
          perm <= Mask[r_1, elem_1];
      }
      Mask := Mask[r_1, elem_1:=Mask[r_1, elem_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access r.next (predicates-lseg.vpr@48.7--48.45) [120020]"}
          perm <= Mask[r_1, next];
      }
      Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
      assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. Assertion 0 < |Seq(toAdd) ++ values| might not hold. (predicates-lseg.vpr@48.7--48.45) [120021]"}
        0 < Seq#Length(Seq#Append(Seq#Singleton(toAdd), values));
      assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. Assertion r.elem == (Seq(toAdd) ++ values)[0] might not hold. (predicates-lseg.vpr@48.7--48.45) [120022]"}
        Heap[r_1, elem_1] == Seq#Index(Seq#Append(Seq#Singleton(toAdd), values), 0);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(r, last, Seq(toAdd) ++ values) might fail. There might be insufficient permission to access lseg(r.next, last, Seq(toAdd) ++ values[1..]) (predicates-lseg.vpr@48.7--48.45) [120024]"}
          perm <= Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))];
      }
      Mask := Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1)):=Mask[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)), Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))], lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1)), Heap[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)));
    assume Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] == FrameFragment((if r_1 != last then CombineFrames(FrameFragment(Heap[r_1, elem_1]), CombineFrames(FrameFragment(Heap[r_1, next]), Heap[null, lseg(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)))) {
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=freshVersion];
    }
    if (r_1 != last) {
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][r_1, elem_1:=true]];
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][r_1, next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))][o_16, f_21] || Heap[null, lseg#sm(Heap[r_1, next], last, Seq#Drop(Seq#Append(Seq#Singleton(toAdd), values), 1))][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, lseg#sm(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of prepend might not hold. There might be insufficient permission to access lseg(r, last, Seq(toAdd) ++ values) (predicates-lseg.vpr@42.11--42.46) [120026]"}
        perm <= Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))];
    }
    Mask := Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values)):=Mask[null, lseg(r_1, last, Seq#Append(Seq#Singleton(toAdd), values))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}