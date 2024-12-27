// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:56:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/soundness_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/soundness_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain SimpleList
// ==================================================

// The type for domain SimpleList
type SimpleListDomainType;

// Translation of domain function SimpleNil
function  SimpleNil(): SimpleListDomainType;

// Translation of domain function SimpleCons
function  SimpleCons(value_2: int, tail: SimpleListDomainType): SimpleListDomainType;

// Translation of domain function get_SimpleList_value
function  get_SimpleList_value(t_9: SimpleListDomainType): int;

// Translation of domain function get_SimpleList_tail
function  get_SimpleList_tail(t_9: SimpleListDomainType): SimpleListDomainType;

// Translation of domain function SimpleList_tag
function  SimpleList_tag(t_9: SimpleListDomainType): int;

// Translation of anonymous domain axiom
axiom (forall value_1: int, tail_1: SimpleListDomainType ::
  { (SimpleCons(value_1, tail_1): SimpleListDomainType) }
  value_1 == (get_SimpleList_value((SimpleCons(value_1, tail_1): SimpleListDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall value_1: int, tail_1: SimpleListDomainType ::
  { (SimpleCons(value_1, tail_1): SimpleListDomainType) }
  tail_1 == (get_SimpleList_tail((SimpleCons(value_1, tail_1): SimpleListDomainType)): SimpleListDomainType)
);

// Translation of anonymous domain axiom
axiom (SimpleList_tag((SimpleNil(): SimpleListDomainType)): int) == 1;

// Translation of anonymous domain axiom
axiom (forall value_1: int, tail_1: SimpleListDomainType ::
  { (SimpleCons(value_1, tail_1): SimpleListDomainType) }
  (SimpleList_tag((SimpleCons(value_1, tail_1): SimpleListDomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: SimpleListDomainType ::
  { (SimpleList_tag(t_2): int) } { (get_SimpleList_value(t_2): int) } { (get_SimpleList_tail(t_2): SimpleListDomainType) }
  t_2 == (SimpleNil(): SimpleListDomainType) || t_2 == (SimpleCons((get_SimpleList_value(t_2): int), (get_SimpleList_tail(t_2): SimpleListDomainType)): SimpleListDomainType)
);

// ==================================================
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType T;

// Translation of domain function Nil
function  Nil<T>(): ListDomainType T;

// Translation of domain function Cons
function  Cons<T>(value_2: T, tail: (ListDomainType T)): ListDomainType T;

// Translation of domain function get_List_value
function  get_List_value<T>(t_9: (ListDomainType T)): T;

// Translation of domain function get_List_tail
function  get_List_tail<T>(t_9: (ListDomainType T)): ListDomainType T;

// Translation of domain function List_tag
function  List_tag<T>(t_9: (ListDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  value_1 == (get_List_value((Cons(value_1, tail_1): ListDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  tail_1 == (get_List_tail((Cons(value_1, tail_1): ListDomainType T)): ListDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (List_tag((Nil(): ListDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  (List_tag((Cons(value_1, tail_1): ListDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (ListDomainType T) ::
  { (List_tag(t_2): int) } { (get_List_value(t_2): T) } { (get_List_tail(t_2): ListDomainType T) }
  t_2 == (Nil(): ListDomainType T) || t_2 == (Cons((get_List_value(t_2): T), (get_List_tail(t_2): ListDomainType T)): ListDomainType T)
);

// ==================================================
// Translation of domain Tree
// ==================================================

// The type for domain Tree
type TreeDomainType T;

// Translation of domain function Leaf
function  Leaf<T>(): TreeDomainType T;

// Translation of domain function Node
function  Node_1<T>(value_2: T, left_2: (TreeDomainType T), right_2: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function get_Tree_value
function  get_Tree_value<T>(t_9: (TreeDomainType T)): T;

// Translation of domain function get_Tree_left
function  get_Tree_left<T>(t_9: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function get_Tree_right
function  get_Tree_right<T>(t_9: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function Tree_tag
function  Tree_tag<T>(t_9: (TreeDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  value_1 == (get_Tree_value((Node_1(value_1, left_1, right): TreeDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  left_1 == (get_Tree_left((Node_1(value_1, left_1, right): TreeDomainType T)): TreeDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  right == (get_Tree_right((Node_1(value_1, left_1, right): TreeDomainType T)): TreeDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (Tree_tag((Leaf(): TreeDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  (Tree_tag((Node_1(value_1, left_1, right): TreeDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (TreeDomainType T) ::
  { (Tree_tag(t_2): int) } { (get_Tree_value(t_2): T) } { (get_Tree_left(t_2): TreeDomainType T) } { (get_Tree_right(t_2): TreeDomainType T) }
  t_2 == (Leaf(): TreeDomainType T) || t_2 == (Node_1((get_Tree_value(t_2): T), (get_Tree_left(t_2): TreeDomainType T), (get_Tree_right(t_2): TreeDomainType T)): TreeDomainType T)
);

// ==================================================
// Translation of domain Tree3
// ==================================================

// The type for domain Tree3
type Tree3DomainType T;

// Translation of domain function Leaf3
function  Leaf3<T>(): Tree3DomainType T;

// Translation of domain function Node3
function  Node3<T>(value_2: T, left_2: (Tree3DomainType T), middle_1: (Tree3DomainType T), right_2: (Tree3DomainType T)): Tree3DomainType T;

// Translation of domain function get_Tree3_value
function  get_Tree3_value<T>(t_9: (Tree3DomainType T)): T;

// Translation of domain function get_Tree3_left
function  get_Tree3_left<T>(t_9: (Tree3DomainType T)): Tree3DomainType T;

// Translation of domain function get_Tree3_middle
function  get_Tree3_middle<T>(t_9: (Tree3DomainType T)): Tree3DomainType T;

// Translation of domain function get_Tree3_right
function  get_Tree3_right<T>(t_9: (Tree3DomainType T)): Tree3DomainType T;

// Translation of domain function Tree3_tag
function  Tree3_tag<T>(t_9: (Tree3DomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (Tree3DomainType T), middle: (Tree3DomainType T), right: (Tree3DomainType T) ::
  { (Node3(value_1, left_1, middle, right): Tree3DomainType T) }
  value_1 == (get_Tree3_value((Node3(value_1, left_1, middle, right): Tree3DomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (Tree3DomainType T), middle: (Tree3DomainType T), right: (Tree3DomainType T) ::
  { (Node3(value_1, left_1, middle, right): Tree3DomainType T) }
  left_1 == (get_Tree3_left((Node3(value_1, left_1, middle, right): Tree3DomainType T)): Tree3DomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (Tree3DomainType T), middle: (Tree3DomainType T), right: (Tree3DomainType T) ::
  { (Node3(value_1, left_1, middle, right): Tree3DomainType T) }
  middle == (get_Tree3_middle((Node3(value_1, left_1, middle, right): Tree3DomainType T)): Tree3DomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (Tree3DomainType T), middle: (Tree3DomainType T), right: (Tree3DomainType T) ::
  { (Node3(value_1, left_1, middle, right): Tree3DomainType T) }
  right == (get_Tree3_right((Node3(value_1, left_1, middle, right): Tree3DomainType T)): Tree3DomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (Tree3_tag((Leaf3(): Tree3DomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (Tree3DomainType T), middle: (Tree3DomainType T), right: (Tree3DomainType T) ::
  { (Node3(value_1, left_1, middle, right): Tree3DomainType T) }
  (Tree3_tag((Node3(value_1, left_1, middle, right): Tree3DomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (Tree3DomainType T) ::
  { (Tree3_tag(t_2): int) } { (get_Tree3_value(t_2): T) } { (get_Tree3_left(t_2): Tree3DomainType T) } { (get_Tree3_middle(t_2): Tree3DomainType T) } { (get_Tree3_right(t_2): Tree3DomainType T) }
  t_2 == (Leaf3(): Tree3DomainType T) || t_2 == (Node3((get_Tree3_value(t_2): T), (get_Tree3_left(t_2): Tree3DomainType T), (get_Tree3_middle(t_2): Tree3DomainType T), (get_Tree3_right(t_2): Tree3DomainType T)): Tree3DomainType T)
);

// ==================================================
// Translation of domain SpecialList
// ==================================================

// The type for domain SpecialList
type SpecialListDomainType T S;

// Translation of domain function SpecialNil
function  SpecialNil<T, S>(): SpecialListDomainType T S;

// Translation of domain function TCons
function  TCons<T, S>(elemT: T, tailT: (SpecialListDomainType T S)): SpecialListDomainType T S;

// Translation of domain function SCons
function  SCons<S, T>(elemS: S, tailS: (SpecialListDomainType T S)): SpecialListDomainType T S;

// Translation of domain function get_SpecialList_elemT
function  get_SpecialList_elemT<T, S>(t_9: (SpecialListDomainType T S)): T;

// Translation of domain function get_SpecialList_tailT
function  get_SpecialList_tailT<T, S>(t_9: (SpecialListDomainType T S)): SpecialListDomainType T S;

// Translation of domain function get_SpecialList_elemS
function  get_SpecialList_elemS<T, S>(t_9: (SpecialListDomainType T S)): S;

// Translation of domain function get_SpecialList_tailS
function  get_SpecialList_tailS<T, S>(t_9: (SpecialListDomainType T S)): SpecialListDomainType T S;

// Translation of domain function SpecialList_tag
function  SpecialList_tag<T, S>(t_9: (SpecialListDomainType T S)): int;

// Translation of anonymous domain axiom
axiom (forall <T, S> elemT_1: T, tailT_1: (SpecialListDomainType T S) ::
  { (TCons(elemT_1, tailT_1): SpecialListDomainType T S) }
  elemT_1 == (get_SpecialList_elemT((TCons(elemT_1, tailT_1): SpecialListDomainType T S)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T, S> elemT_1: T, tailT_1: (SpecialListDomainType T S) ::
  { (TCons(elemT_1, tailT_1): SpecialListDomainType T S) }
  tailT_1 == (get_SpecialList_tailT((TCons(elemT_1, tailT_1): SpecialListDomainType T S)): SpecialListDomainType T S)
);

// Translation of anonymous domain axiom
axiom (forall <S, T> elemS_1: S, tailS_1: (SpecialListDomainType T S) ::
  { (SCons(elemS_1, tailS_1): SpecialListDomainType T S) }
  elemS_1 == (get_SpecialList_elemS((SCons(elemS_1, tailS_1): SpecialListDomainType T S)): S)
);

// Translation of anonymous domain axiom
axiom (forall <S, T> elemS_1: S, tailS_1: (SpecialListDomainType T S) ::
  { (SCons(elemS_1, tailS_1): SpecialListDomainType T S) }
  tailS_1 == (get_SpecialList_tailS((SCons(elemS_1, tailS_1): SpecialListDomainType T S)): SpecialListDomainType T S)
);

// Translation of anonymous domain axiom
axiom (forall <T, S>  ::
  
  (SpecialList_tag((SpecialNil(): SpecialListDomainType T S)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T, S> elemT_1: T, tailT_1: (SpecialListDomainType T S) ::
  { (TCons(elemT_1, tailT_1): SpecialListDomainType T S) }
  (SpecialList_tag((TCons(elemT_1, tailT_1): SpecialListDomainType T S)): int) == 2
);

// Translation of anonymous domain axiom
axiom (forall <S, T> elemS_1: S, tailS_1: (SpecialListDomainType T S) ::
  { (SCons(elemS_1, tailS_1): SpecialListDomainType T S) }
  (SpecialList_tag((SCons(elemS_1, tailS_1): SpecialListDomainType T S)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t_2: (SpecialListDomainType T S) ::
  { (SpecialList_tag(t_2): int) } { (get_SpecialList_elemS(t_2): S) } { (get_SpecialList_tailS(t_2): SpecialListDomainType T S) }
  (t_2 == (SpecialNil(): SpecialListDomainType T S) || t_2 == (TCons((get_SpecialList_elemT(t_2): T), (get_SpecialList_tailT(t_2): SpecialListDomainType T S)): SpecialListDomainType T S)) || t_2 == (SCons((get_SpecialList_elemS(t_2): S), (get_SpecialList_tailS(t_2): SpecialListDomainType T S)): SpecialListDomainType T S)
);

// ==================================================
// Translation of domain kTree
// ==================================================

// The type for domain kTree
type kTreeDomainType T;

// Translation of domain function kLeaf
function  kLeaf<T>(): kTreeDomainType T;

// Translation of domain function kNode
function  kNode<T>(value_2: T, children: (Seq (kTreeDomainType T))): kTreeDomainType T;

// Translation of domain function get_kTree_value
function  get_kTree_value<T>(t_9: (kTreeDomainType T)): T;

// Translation of domain function get_kTree_children
function  get_kTree_children<T>(t_9: (kTreeDomainType T)): Seq (kTreeDomainType T);

// Translation of domain function kTree_tag
function  kTree_tag<T>(t_9: (kTreeDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, children_1: (Seq (kTreeDomainType T)) ::
  { (kNode(value_1, children_1): kTreeDomainType T) }
  value_1 == (get_kTree_value((kNode(value_1, children_1): kTreeDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, children_1: (Seq (kTreeDomainType T)) ::
  { (kNode(value_1, children_1): kTreeDomainType T) }
  Seq#Equal(children_1, (get_kTree_children((kNode(value_1, children_1): kTreeDomainType T)): Seq (kTreeDomainType T)))
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (kTree_tag((kLeaf(): kTreeDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, children_1: (Seq (kTreeDomainType T)) ::
  { (kNode(value_1, children_1): kTreeDomainType T) }
  (kTree_tag((kNode(value_1, children_1): kTreeDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (kTreeDomainType T) ::
  { (kTree_tag(t_2): int) } { (get_kTree_value(t_2): T) } { (get_kTree_children(t_2): Seq (kTreeDomainType T)) }
  t_2 == (kLeaf(): kTreeDomainType T) || t_2 == (kNode((get_kTree_value(t_2): T), (get_kTree_children(t_2): Seq (kTreeDomainType T))): kTreeDomainType T)
);

// ==================================================
// Translation of domain Mixed
// ==================================================

// The type for domain Mixed
type MixedDomainType T S;

// Translation of domain function Entity1
function  Entity1<S, T>(sl: SimpleListDomainType, ls_1: (ListDomainType S), lt: (ListDomainType T)): MixedDomainType T S;

// Translation of domain function Entity2
function  Entity2<T, S>(t3_3: (Tree3DomainType T), spl1: (SpecialListDomainType T S), spl2: (SpecialListDomainType S T), kt: (kTreeDomainType T)): MixedDomainType T S;

// Translation of domain function get_Mixed_sl
function  get_Mixed_sl<T, S>(t_9: (MixedDomainType T S)): SimpleListDomainType;

// Translation of domain function get_Mixed_ls
function  get_Mixed_ls<T, S>(t_9: (MixedDomainType T S)): ListDomainType S;

// Translation of domain function get_Mixed_lt
function  get_Mixed_lt<T, S>(t_9: (MixedDomainType T S)): ListDomainType T;

// Translation of domain function get_Mixed_t3
function  get_Mixed_t3<T, S>(t_9: (MixedDomainType T S)): Tree3DomainType T;

// Translation of domain function get_Mixed_spl1
function  get_Mixed_spl1<T, S>(t_9: (MixedDomainType T S)): SpecialListDomainType T S;

// Translation of domain function get_Mixed_spl2
function  get_Mixed_spl2<T, S>(t_9: (MixedDomainType T S)): SpecialListDomainType S T;

// Translation of domain function get_Mixed_kt
function  get_Mixed_kt<T, S>(t_9: (MixedDomainType T S)): kTreeDomainType T;

// Translation of domain function Mixed_tag
function  Mixed_tag<T, S>(t_9: (MixedDomainType T S)): int;

// Translation of anonymous domain axiom
axiom (forall <S, T> sl_1: SimpleListDomainType, ls: (ListDomainType S), lt_1: (ListDomainType T) ::
  { (Entity1(sl_1, ls, lt_1): MixedDomainType T S) }
  sl_1 == (get_Mixed_sl((Entity1(sl_1, ls, lt_1): MixedDomainType T S)): SimpleListDomainType)
);

// Translation of anonymous domain axiom
axiom (forall <S, T> sl_1: SimpleListDomainType, ls: (ListDomainType S), lt_1: (ListDomainType T) ::
  { (Entity1(sl_1, ls, lt_1): MixedDomainType T S) }
  ls == (get_Mixed_ls((Entity1(sl_1, ls, lt_1): MixedDomainType T S)): ListDomainType S)
);

// Translation of anonymous domain axiom
axiom (forall <S, T> sl_1: SimpleListDomainType, ls: (ListDomainType S), lt_1: (ListDomainType T) ::
  { (Entity1(sl_1, ls, lt_1): MixedDomainType T S) }
  lt_1 == (get_Mixed_lt((Entity1(sl_1, ls, lt_1): MixedDomainType T S)): ListDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t3_4: (Tree3DomainType T), spl1_1: (SpecialListDomainType T S), spl2_1: (SpecialListDomainType S T), kt_1: (kTreeDomainType T) ::
  { (Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S) }
  t3_4 == (get_Mixed_t3((Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S)): Tree3DomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t3_4: (Tree3DomainType T), spl1_1: (SpecialListDomainType T S), spl2_1: (SpecialListDomainType S T), kt_1: (kTreeDomainType T) ::
  { (Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S) }
  spl1_1 == (get_Mixed_spl1((Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S)): SpecialListDomainType T S)
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t3_4: (Tree3DomainType T), spl1_1: (SpecialListDomainType T S), spl2_1: (SpecialListDomainType S T), kt_1: (kTreeDomainType T) ::
  { (Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S) }
  spl2_1 == (get_Mixed_spl2((Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S)): SpecialListDomainType S T)
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t3_4: (Tree3DomainType T), spl1_1: (SpecialListDomainType T S), spl2_1: (SpecialListDomainType S T), kt_1: (kTreeDomainType T) ::
  { (Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S) }
  kt_1 == (get_Mixed_kt((Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S)): kTreeDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <S, T> sl_1: SimpleListDomainType, ls: (ListDomainType S), lt_1: (ListDomainType T) ::
  { (Entity1(sl_1, ls, lt_1): MixedDomainType T S) }
  (Mixed_tag((Entity1(sl_1, ls, lt_1): MixedDomainType T S)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t3_4: (Tree3DomainType T), spl1_1: (SpecialListDomainType T S), spl2_1: (SpecialListDomainType S T), kt_1: (kTreeDomainType T) ::
  { (Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S) }
  (Mixed_tag((Entity2(t3_4, spl1_1, spl2_1, kt_1): MixedDomainType T S)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T, S> t_2: (MixedDomainType T S) ::
  { (Mixed_tag(t_2): int) } { (get_Mixed_t3(t_2): Tree3DomainType T) } { (get_Mixed_spl1(t_2): SpecialListDomainType T S) } { (get_Mixed_spl2(t_2): SpecialListDomainType S T) } { (get_Mixed_kt(t_2): kTreeDomainType T) }
  t_2 == (Entity1((get_Mixed_sl(t_2): SimpleListDomainType), (get_Mixed_ls(t_2): ListDomainType S), (get_Mixed_lt(t_2): ListDomainType T)): MixedDomainType T S) || t_2 == (Entity2((get_Mixed_t3(t_2): Tree3DomainType T), (get_Mixed_spl1(t_2): SpecialListDomainType T S), (get_Mixed_spl2(t_2): SpecialListDomainType S T), (get_Mixed_kt(t_2): kTreeDomainType T)): MixedDomainType T S)
);

// ==================================================
// Translation of method soundness_1
// ==================================================

procedure soundness_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert false -- soundness_1.vpr@40.5--40.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (soundness_1.vpr@40.12--40.17) [222869]"}
      false;
    assume state(Heap, Mask);
}