// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:43:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_vector_add_pvl.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_vector_add_pvl-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique Ref__a: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__a);
axiom !IsWandField(Ref__a);
const unique Ref__b: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__b);
axiom !IsWandField(Ref__b);
const unique Ref__c: Field NormalField (Seq Ref);
axiom !IsPredicateField(Ref__c);
axiom !IsWandField(Ref__c);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__main_main
// ==================================================

procedure Ref__main_main(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_1: Ref;
  var __flatten_3: Ref;
  var __flatten_4: Ref;
  var __last_barrier: int;
  var __flatten_2: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume 0 <= lid;
    assume state(Heap, Mask);
    assume lid < gsize;
    assume state(Heap, Mask);
    assume 0 <= gid;
    assume state(Heap, Mask);
    assume tid == lid + gid * gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@22.12--22.34) [180009]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@24.12--24.34) [180010]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@26.12--26.34) [180011]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@27.12--27.58) [180012]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@27.12--27.58) [180013]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@27.12--27.58) [180014]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(Heap[diz, Ref__a], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@28.12--28.58) [180015]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@28.12--28.58) [180016]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@28.12--28.58) [180017]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@28.12--28.58) [180018]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@29.12--29.58) [180019]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@29.12--29.58) [180020]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@29.12--29.58) [180021]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@29.12--29.58) [180022]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume 0 <= lid;
    assume state(PostHeap, PostMask);
    assume lid < gsize;
    assume state(PostHeap, PostMask);
    assume 0 <= gid;
    assume state(PostHeap, PostMask);
    assume tid == lid + gid * gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@37.11--37.33) [180023]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@39.11--39.33) [180024]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@41.11--41.33) [180025]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@42.11--42.40) [180026]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@42.11--42.40) [180027]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@43.11--43.40) [180028]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@43.11--43.40) [180029]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@44.11--44.40) [180030]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@44.11--44.40) [180031]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@45.11--45.57) [180032]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@45.11--45.57) [180033]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@45.11--45.57) [180034]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
    perm := FullPerm;
    assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@46.11--46.57) [180035]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@46.11--46.57) [180036]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@46.11--46.57) [180037]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@46.11--46.57) [180038]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@47.11--47.57) [180039]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@47.11--47.57) [180040]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@47.11--47.57) [180041]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@47.11--47.57) [180042]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
    PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@48.11--48.88) [180043]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@48.11--48.88) [180044]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@48.11--48.88) [180045]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_vector_add_pvl.vpr@48.11--48.88) [180046]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@48.11--48.88) [180047]"}
        HasDirectPerm(oldMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@48.11--48.88) [180048]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@48.11--48.88) [180049]"}
        tid < Seq#Length(oldHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_vector_add_pvl.vpr@48.11--48.88) [180050]"}
        HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c[tid].Ref__Integer_value == old(diz.Ref__c[tid].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@49.11--49.88) [180051]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@49.11--49.88) [180052]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@49.11--49.88) [180053]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_vector_add_pvl.vpr@49.11--49.88) [180054]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@49.11--49.88) [180055]"}
        HasDirectPerm(oldMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@49.11--49.88) [180056]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@49.11--49.88) [180057]"}
        tid < Seq#Length(oldHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_vector_add_pvl.vpr@49.11--49.88) [180058]"}
        HasDirectPerm(oldMask, Seq#Index(oldHeap[diz, Ref__c], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__c], tid), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a[tid].Ref__Integer_value == diz.Ref__b[tid].Ref__Integer_value + diz.Ref__c[tid].Ref__Integer_value
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@50.11--50.120) [180059]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@50.11--50.120) [180060]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@50.11--50.120) [180061]"}
        tid < Seq#Length(PostHeap[diz, Ref__a]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_vector_add_pvl.vpr@50.11--50.120) [180062]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@50.11--50.120) [180063]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@50.11--50.120) [180064]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@50.11--50.120) [180065]"}
        tid < Seq#Length(PostHeap[diz, Ref__b]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_vector_add_pvl.vpr@50.11--50.120) [180066]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@50.11--50.120) [180067]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@50.11--50.120) [180068]"}
        tid >= 0;
      assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@50.11--50.120) [180069]"}
        tid < Seq#Length(PostHeap[diz, Ref__c]);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_vector_add_pvl.vpr@50.11--50.120) [180070]"}
        HasDirectPerm(PostMask, Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value);
    assume PostHeap[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] == PostHeap[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + PostHeap[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_4, $allocated];
  
  // -- Translating statement: __last_barrier := 0 -- test_vector_add_pvl.vpr@57.3--57.22
    __last_barrier := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := diz.Ref__a[tid] -- test_vector_add_pvl.vpr@58.3--58.33
    
    // -- Check definedness of diz.Ref__a[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@58.3--58.33) [180071]"}
        HasDirectPerm(Mask, diz, Ref__a);
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@58.3--58.33) [180072]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@58.3--58.33) [180073]"}
        tid < Seq#Length(Heap[diz, Ref__a]);
    __flatten_1 := Seq#Index(Heap[diz, Ref__a], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := diz.Ref__b[tid] -- test_vector_add_pvl.vpr@59.3--59.33
    
    // -- Check definedness of diz.Ref__b[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@59.3--59.33) [180074]"}
        HasDirectPerm(Mask, diz, Ref__b);
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@59.3--59.33) [180075]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@59.3--59.33) [180076]"}
        tid < Seq#Length(Heap[diz, Ref__b]);
    __flatten_3 := Seq#Index(Heap[diz, Ref__b], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := diz.Ref__c[tid] -- test_vector_add_pvl.vpr@60.3--60.33
    
    // -- Check definedness of diz.Ref__c[tid]
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@60.3--60.33) [180077]"}
        HasDirectPerm(Mask, diz, Ref__c);
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@60.3--60.33) [180078]"}
        tid >= 0;
      assert {:msg "  Assignment might fail. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@60.3--60.33) [180079]"}
        tid < Seq#Length(Heap[diz, Ref__c]);
    __flatten_4 := Seq#Index(Heap[diz, Ref__c], tid);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := __flatten_3.Ref__Integer_value +
  //   __flatten_4.Ref__Integer_value -- test_vector_add_pvl.vpr@61.3--61.81
    
    // -- Check definedness of __flatten_3.Ref__Integer_value + __flatten_4.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_3.Ref__Integer_value (test_vector_add_pvl.vpr@61.3--61.81) [180080]"}
        HasDirectPerm(Mask, __flatten_3, Ref__Integer_value);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_vector_add_pvl.vpr@61.3--61.81) [180081]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
    __flatten_2 := Heap[__flatten_3, Ref__Integer_value] + Heap[__flatten_4, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1.Ref__Integer_value := __flatten_2 -- test_vector_add_pvl.vpr@62.3--62.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_1.Ref__Integer_value (test_vector_add_pvl.vpr@62.3--62.48) [180082]"}
      FullPerm == Mask[__flatten_1, Ref__Integer_value];
    Heap := Heap[__flatten_1, Ref__Integer_value:=__flatten_2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= tid might not hold. (test_vector_add_pvl.vpr@30.11--30.19) [180083]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid < tcount might not hold. (test_vector_add_pvl.vpr@31.11--31.23) [180084]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= lid might not hold. (test_vector_add_pvl.vpr@32.11--32.19) [180085]"}
      0 <= lid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion lid < gsize might not hold. (test_vector_add_pvl.vpr@33.11--33.22) [180086]"}
      lid < gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion 0 <= gid might not hold. (test_vector_add_pvl.vpr@34.11--34.19) [180087]"}
      0 <= gid;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion tid == lid + gid * gsize might not hold. (test_vector_add_pvl.vpr@35.11--35.35) [180088]"}
      tid == lid + gid * gsize;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@36.11--36.36) [180089]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_vector_add_pvl.vpr@37.11--37.33) [180090]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@38.11--38.36) [180091]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_vector_add_pvl.vpr@39.11--39.33) [180092]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@40.11--40.36) [180093]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_vector_add_pvl.vpr@41.11--41.33) [180094]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_vector_add_pvl.vpr@42.11--42.40) [180095]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_vector_add_pvl.vpr@43.11--43.40) [180096]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_vector_add_pvl.vpr@44.11--44.40) [180097]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_vector_add_pvl.vpr@45.11--45.57) [180098]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@46.11--46.57) [180099]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_vector_add_pvl.vpr@46.11--46.57) [180100]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__main_main might not hold. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@47.11--47.57) [180101]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__main_main might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_vector_add_pvl.vpr@47.11--47.57) [180102]"}
        perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__b[tid].Ref__Integer_value == old(diz.Ref__b[tid].Ref__Integer_value) might not hold. (test_vector_add_pvl.vpr@48.11--48.88) [180103]"}
      Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__b], tid), Ref__Integer_value];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__c[tid].Ref__Integer_value == old(diz.Ref__c[tid].Ref__Integer_value) might not hold. (test_vector_add_pvl.vpr@49.11--49.88) [180104]"}
      Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] == oldHeap[Seq#Index(oldHeap[diz, Ref__c], tid), Ref__Integer_value];
    assert {:msg "  Postcondition of Ref__main_main might not hold. Assertion diz.Ref__a[tid].Ref__Integer_value == diz.Ref__b[tid].Ref__Integer_value + diz.Ref__c[tid].Ref__Integer_value might not hold. (test_vector_add_pvl.vpr@50.11--50.120) [180105]"}
      Heap[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] == Heap[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + Heap[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__main_barrier
// ==================================================

procedure Ref__main_barrier(diz: Ref, current_thread_id: int, tcount: int, gsize: int, tid: int, gid: int, lid: int, this_barrier: int, last_barrier: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume 0 <= tid;
    assume state(Heap, Mask);
    assume tid < tcount;
    assume state(Heap, Mask);
    assume 0 <= lid;
    assume state(Heap, Mask);
    assume lid < gsize;
    assume state(Heap, Mask);
    assume 0 <= gid;
    assume state(Heap, Mask);
    assume tid == lid + gid * gsize;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@75.12--75.34) [180106]"}
        HasDirectPerm(Mask, diz, Ref__a);
    assume Seq#Length(Heap[diz, Ref__a]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@77.12--77.34) [180107]"}
        HasDirectPerm(Mask, diz, Ref__b);
    assume Seq#Length(Heap[diz, Ref__b]) == tcount;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@79.12--79.34) [180108]"}
        HasDirectPerm(Mask, diz, Ref__c);
    assume Seq#Length(Heap[diz, Ref__c]) == tcount;
    assume state(Heap, Mask);
    if (last_barrier == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@80.12--80.182) [180109]"}
          HasDirectPerm(Mask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@80.12--80.182) [180110]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@80.12--80.182) [180111]"}
          tid < Seq#Length(Heap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(Heap[diz, Ref__a], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@80.12--80.182) [180112]"}
          HasDirectPerm(Mask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@80.12--80.182) [180113]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@80.12--80.182) [180114]"}
          tid < Seq#Length(Heap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@80.12--80.182) [180115]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__b], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@80.12--80.182) [180116]"}
          HasDirectPerm(Mask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@80.12--80.182) [180117]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@80.12--80.182) [180118]"}
          tid < Seq#Length(Heap[diz, Ref__c]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@80.12--80.182) [180119]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(Heap[diz, Ref__c], tid) != null;
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(Heap, Mask);
    }
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
    assume 0 <= tid;
    assume state(PostHeap, PostMask);
    assume tid < tcount;
    assume state(PostHeap, PostMask);
    assume 0 <= lid;
    assume state(PostHeap, PostMask);
    assume lid < gsize;
    assume state(PostHeap, PostMask);
    assume 0 <= gid;
    assume state(PostHeap, PostMask);
    assume tid == lid + gid * gsize;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__a:=PostMask[diz, Ref__a] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__a| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@88.11--88.33) [180120]"}
        HasDirectPerm(PostMask, diz, Ref__a);
    assume Seq#Length(PostHeap[diz, Ref__a]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__b:=PostMask[diz, Ref__b] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__b| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@90.11--90.33) [180121]"}
        HasDirectPerm(PostMask, diz, Ref__b);
    assume Seq#Length(PostHeap[diz, Ref__b]) == tcount;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Ref__c:=PostMask[diz, Ref__c] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of |diz.Ref__c| == tcount
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@92.11--92.33) [180122]"}
        HasDirectPerm(PostMask, diz, Ref__c);
    assume Seq#Length(PostHeap[diz, Ref__c]) == tcount;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__a == old(diz.Ref__a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@93.11--93.40) [180123]"}
        HasDirectPerm(PostMask, diz, Ref__a);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@93.11--93.40) [180124]"}
        HasDirectPerm(oldMask, diz, Ref__a);
    assume Seq#Equal(PostHeap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__b == old(diz.Ref__b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@94.11--94.40) [180125]"}
        HasDirectPerm(PostMask, diz, Ref__b);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@94.11--94.40) [180126]"}
        HasDirectPerm(oldMask, diz, Ref__b);
    assume Seq#Equal(PostHeap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__c == old(diz.Ref__c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@95.11--95.40) [180127]"}
        HasDirectPerm(PostMask, diz, Ref__c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@95.11--95.40) [180128]"}
        HasDirectPerm(oldMask, diz, Ref__c);
    assume Seq#Equal(PostHeap[diz, Ref__c], oldHeap[diz, Ref__c]);
    assume state(PostHeap, PostMask);
    if (sys__result == 0) {
      
      // -- Check definedness of acc(diz.Ref__a[tid].Ref__Integer_value, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@96.11--96.180) [180129]"}
          HasDirectPerm(PostMask, diz, Ref__a);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180130]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__a[tid] into diz.Ref__a might exceed sequence length. (test_vector_add_pvl.vpr@96.11--96.180) [180131]"}
          tid < Seq#Length(PostHeap[diz, Ref__a]);
      perm := FullPerm;
      assume Seq#Index(PostHeap[diz, Ref__a], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__a], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__b[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@96.11--96.180) [180132]"}
          HasDirectPerm(PostMask, diz, Ref__b);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180133]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__b[tid] into diz.Ref__b might exceed sequence length. (test_vector_add_pvl.vpr@96.11--96.180) [180134]"}
          tid < Seq#Length(PostHeap[diz, Ref__b]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180135]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__b], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__b], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of acc(diz.Ref__c[tid].Ref__Integer_value, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@96.11--96.180) [180136]"}
          HasDirectPerm(PostMask, diz, Ref__c);
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180137]"}
          tid >= 0;
        assert {:msg "  Contract might not be well-formed. Index diz.Ref__c[tid] into diz.Ref__c might exceed sequence length. (test_vector_add_pvl.vpr@96.11--96.180) [180138]"}
          tid < Seq#Length(PostHeap[diz, Ref__c]);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180139]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Seq#Index(PostHeap[diz, Ref__c], tid) != null;
      PostMask := PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value:=PostMask[Seq#Index(PostHeap[diz, Ref__c], tid), Ref__Integer_value] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume sys__result == this_barrier;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_vector_add_pvl.vpr@99.3--99.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion 0 <= tid might not hold. (test_vector_add_pvl.vpr@81.11--81.19) [180140]"}
      0 <= tid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid < tcount might not hold. (test_vector_add_pvl.vpr@82.11--82.23) [180141]"}
      tid < tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion 0 <= lid might not hold. (test_vector_add_pvl.vpr@83.11--83.19) [180142]"}
      0 <= lid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion lid < gsize might not hold. (test_vector_add_pvl.vpr@84.11--84.22) [180143]"}
      lid < gsize;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion 0 <= gid might not hold. (test_vector_add_pvl.vpr@85.11--85.19) [180144]"}
      0 <= gid;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion tid == lid + gid * gsize might not hold. (test_vector_add_pvl.vpr@86.11--86.35) [180145]"}
      tid == lid + gid * gsize;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a (test_vector_add_pvl.vpr@87.11--87.36) [180146]"}
      Mask[diz, Ref__a] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__a];
    Mask := Mask[diz, Ref__a:=Mask[diz, Ref__a] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__a| == tcount might not hold. (test_vector_add_pvl.vpr@88.11--88.33) [180147]"}
      Seq#Length(Heap[diz, Ref__a]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b (test_vector_add_pvl.vpr@89.11--89.36) [180148]"}
      Mask[diz, Ref__b] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__b];
    Mask := Mask[diz, Ref__b:=Mask[diz, Ref__b] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__b| == tcount might not hold. (test_vector_add_pvl.vpr@90.11--90.33) [180149]"}
      Seq#Length(Heap[diz, Ref__b]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c (test_vector_add_pvl.vpr@91.11--91.36) [180150]"}
      Mask[diz, Ref__c] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Ref__c];
    Mask := Mask[diz, Ref__c:=Mask[diz, Ref__c] - wildcard];
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion |diz.Ref__c| == tcount might not hold. (test_vector_add_pvl.vpr@92.11--92.33) [180151]"}
      Seq#Length(Heap[diz, Ref__c]) == tcount;
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__a == old(diz.Ref__a) might not hold. (test_vector_add_pvl.vpr@93.11--93.40) [180152]"}
      Seq#Equal(Heap[diz, Ref__a], oldHeap[diz, Ref__a]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__b == old(diz.Ref__b) might not hold. (test_vector_add_pvl.vpr@94.11--94.40) [180153]"}
      Seq#Equal(Heap[diz, Ref__b], oldHeap[diz, Ref__b]);
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion diz.Ref__c == old(diz.Ref__c) might not hold. (test_vector_add_pvl.vpr@95.11--95.40) [180154]"}
      Seq#Equal(Heap[diz, Ref__c], oldHeap[diz, Ref__c]);
    if (sys__result == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__a[tid].Ref__Integer_value (test_vector_add_pvl.vpr@96.11--96.180) [180155]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__a], tid), Ref__Integer_value] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180156]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__b[tid].Ref__Integer_value (test_vector_add_pvl.vpr@96.11--96.180) [180157]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__b], tid), Ref__Integer_value] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of Ref__main_barrier might not hold. Fraction 1 / 2 might be negative. (test_vector_add_pvl.vpr@96.11--96.180) [180158]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Ref__main_barrier might not hold. There might be insufficient permission to access diz.Ref__c[tid].Ref__Integer_value (test_vector_add_pvl.vpr@96.11--96.180) [180159]"}
          perm <= Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value];
      }
      Mask := Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value:=Mask[Seq#Index(Heap[diz, Ref__c], tid), Ref__Integer_value] - perm];
    }
    assert {:msg "  Postcondition of Ref__main_barrier might not hold. Assertion sys__result == this_barrier might not hold. (test_vector_add_pvl.vpr@97.11--97.38) [180160]"}
      sys__result == this_barrier;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}