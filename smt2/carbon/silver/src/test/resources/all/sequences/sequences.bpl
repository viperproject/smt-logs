// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:33:41
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/sequences/sequences.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/sequences/sequences-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: trivial
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
// Translation of function trivial
// ==================================================

// Uninterpreted function definitions
function  trivial(Heap: HeapType, i: int): bool;
function  trivial'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { trivial(Heap, i) }
  trivial(Heap, i) == trivial'(Heap, i) && dummyFunction(trivial#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { trivial'(Heap, i) }
  dummyFunction(trivial#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), trivial(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> trivial(Heap, i)
);

// Framing axioms
function  trivial#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), trivial'(Heap, i) }
  state(Heap, Mask) ==> trivial'(Heap, i) == trivial#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  trivial#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  trivial#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure trivial#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(x: int, xs: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var n: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: n := Seq[Int]() -- sequences.vpr@5.5--5.34
    n := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |n| == 0 -- sequences.vpr@6.5--6.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |n| == 0 might not hold. (sequences.vpr@6.12--6.20) [183572]"}
      Seq#Length(n) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert n != Seq(x) -- sequences.vpr@7.5--7.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion n != Seq(x) might not hold. (sequences.vpr@7.12--7.23) [183573]"}
      !Seq#Equal(n, Seq#Singleton(x));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |Seq(1)| == 1 -- sequences.vpr@8.5--8.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |Seq(1)| == 1 might not hold. (sequences.vpr@8.12--8.25) [183574]"}
      Seq#Length(Seq#Singleton(1)) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |Seq(0)| == 0 -- sequences.vpr@10.5--10.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |Seq(0)| == 0 might not hold. (sequences.vpr@10.12--10.25) [183575]"}
      Seq#Length(Seq#Singleton(0)) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_2: (Seq int);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (1 in Seq(1, 2, 3)) -- sequences.vpr@14.5--14.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion (1 in Seq(1, 2, 3)) might not hold. (sequences.vpr@14.12--14.27) [183576]"}
      Seq#Contains(Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(2)), Seq#Singleton(3)), 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |[-1..10)| == 11 -- sequences.vpr@15.5--15.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |[-1..10)| == 11 might not hold. (sequences.vpr@15.12--15.28) [183577]"}
      Seq#Length(Seq#Range(-1, 10)) == 11;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(1) ++ Seq(2) == Seq(1, 2) -- sequences.vpr@16.5--16.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Seq(1) ++ Seq(2) == Seq(1, 2) might not hold. (sequences.vpr@16.12--16.40) [183578]"}
      Seq#Equal(Seq#Append(Seq#Singleton(1), Seq#Singleton(2)), Seq#Append(Seq#Singleton(1), Seq#Singleton(2)));
    assume state(Heap, Mask);
  
  // -- Translating statement: a := Seq(0, 1, -11, 22) -- sequences.vpr@18.5--18.39
    a_2 := Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), Seq#Singleton(-11)), Seq#Singleton(22));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[2] == -11 -- sequences.vpr@19.5--19.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a[2] == -11
      assert {:msg "  Assert might fail. Index a[2] into a might exceed sequence length. (sequences.vpr@19.12--19.23) [183579]"}
        2 < Seq#Length(a_2);
    assert {:msg "  Assert might fail. Assertion a[2] == -11 might not hold. (sequences.vpr@19.12--19.23) [183580]"}
      Seq#Index(a_2, 2) == -11;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[..1] == Seq(0) -- sequences.vpr@21.5--21.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a[..1] == Seq(0) might not hold. (sequences.vpr@21.12--21.28) [183581]"}
      Seq#Equal(Seq#Take(a_2, 1), Seq#Singleton(0));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1..] == Seq(1, -11, 22) -- sequences.vpr@22.5--22.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a[1..] == Seq(1, -11, 22) might not hold. (sequences.vpr@22.12--22.35) [183582]"}
      Seq#Equal(Seq#Drop(a_2, 1), Seq#Append(Seq#Append(Seq#Singleton(1), Seq#Singleton(-11)), Seq#Singleton(22)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1..2] == Seq(1) -- sequences.vpr@23.5--23.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a[1..2] == Seq(1) might not hold. (sequences.vpr@23.12--23.29) [183583]"}
      Seq#Equal(Seq#Drop(Seq#Take(a_2, 2), 1), Seq#Singleton(1));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1 := 22] == a[1 := -1][1 := 22] -- sequences.vpr@25.5--25.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a[1 := 22] == a[1 := -1][1 := 22] might not hold. (sequences.vpr@25.12--25.47) [183584]"}
      Seq#Equal(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))), Seq#Append(Seq#Take(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(-1), Seq#Drop(a_2, 2))), 1), Seq#Append(Seq#Singleton(22), Seq#Drop(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(-1), Seq#Drop(a_2, 2))), 2))));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1 := 22] == Seq(0, 22, -11, 22) -- sequences.vpr@26.5--26.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a[1 := 22] == Seq(0, 22, -11, 22) might not hold. (sequences.vpr@26.12--26.42) [183585]"}
      Seq#Equal(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))), Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(22)), Seq#Singleton(-11)), Seq#Singleton(22)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |a[1 := 22]| == 4 -- sequences.vpr@27.5--27.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |a[1 := 22]| == 4 might not hold. (sequences.vpr@27.12--27.29) [183586]"}
      Seq#Length(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2)))) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1 := 22][1] == 22 -- sequences.vpr@28.5--28.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a[1 := 22][1] == 22
      assert {:msg "  Assert might fail. Index a[1 := 22][1] into a[1 := 22] might exceed sequence length. (sequences.vpr@28.12--28.31) [183587]"}
        1 < Seq#Length(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))));
    assert {:msg "  Assert might fail. Assertion a[1 := 22][1] == 22 might not hold. (sequences.vpr@28.12--28.31) [183588]"}
      Seq#Index(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))), 1) == 22;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1 := 22][2] == -11 -- sequences.vpr@29.5--29.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a[1 := 22][2] == -11
      assert {:msg "  Assert might fail. Index a[1 := 22][2] into a[1 := 22] might exceed sequence length. (sequences.vpr@29.12--29.32) [183589]"}
        2 < Seq#Length(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))));
    assert {:msg "  Assert might fail. Assertion a[1 := 22][2] == -11 might not hold. (sequences.vpr@29.12--29.32) [183590]"}
      Seq#Index(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))), 2) == -11;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a[1 := 22][0] == 22 -- sequences.vpr@31.5--31.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a[1 := 22][0] == 22
      assert {:msg "  Assert might fail. Index a[1 := 22][0] into a[1 := 22] might exceed sequence length. (sequences.vpr@31.12--31.31) [183591]"}
        0 < Seq#Length(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))));
    assert {:msg "  Assert might fail. Assertion a[1 := 22][0] == 22 might not hold. (sequences.vpr@31.12--31.31) [183592]"}
      Seq#Index(Seq#Append(Seq#Take(a_2, 1), Seq#Append(Seq#Singleton(22), Seq#Drop(a_2, 2))), 0) == 22;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var xs: (Seq int);
  var bs: (Seq bool);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xs := Seq(0, 1, 2, 3, 4, 5, 6, 7) -- sequences.vpr@35.3--35.50
    xs := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(0), Seq#Singleton(1)), Seq#Singleton(2)), Seq#Singleton(3)), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), Seq#Singleton(7));
    assume state(Heap, Mask);
  
  // -- Translating statement: bs := Seq(true, true, false, true) ++ Seq(false, true) -- sequences.vpr@36.3--36.72
    bs := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(true), Seq#Singleton(true)), Seq#Singleton(false)), Seq#Singleton(true)), Seq#Append(Seq#Singleton(false), Seq#Singleton(true)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |xs[1..][..6]| == |bs| -- sequences.vpr@38.3--38.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |xs[1..][..6]| == |bs| might not hold. (sequences.vpr@38.10--38.32) [183593]"}
      Seq#Length(Seq#Take(Seq#Drop(xs, 1), 6)) == Seq#Length(bs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |xs[1..]| == |xs| -- sequences.vpr@40.3--40.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |xs[1..]| == |xs| might not hold. (sequences.vpr@40.10--40.27) [183594]"}
      Seq#Length(Seq#Drop(xs, 1)) == Seq#Length(xs);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(s_2: (Seq int), i: int, j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume state(Heap, Mask);
    assume i <= j_9;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert s == s[..i] ++ s[i..] -- sequences.vpr@47.3--47.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion s == s[..i] ++ s[i..] might not hold. (sequences.vpr@47.10--47.31) [183595]"}
      Seq#Equal(s_2, Seq#Append(Seq#Take(s_2, i), Seq#Drop(s_2, i)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert s == s[..i] ++ s[i..j] ++ s[j..] -- sequences.vpr@48.3--48.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion s == s[..i] ++ s[i..j] ++ s[j..] might not hold. (sequences.vpr@48.10--48.42) [183596]"}
      Seq#Equal(s_2, Seq#Append(Seq#Append(Seq#Take(s_2, i), Seq#Drop(Seq#Take(s_2, j_9), i)), Seq#Drop(s_2, j_9)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert s[..i] ++ s[i..j] ++ s[j..] == s[..i] ++ (s[i..j] ++ s[j..]) -- sequences.vpr@49.3--49.72
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion s[..i] ++ s[i..j] ++ s[j..] == s[..i] ++ (s[i..j] ++ s[j..]) might not hold. (sequences.vpr@49.10--49.72) [183597]"}
      Seq#Equal(Seq#Append(Seq#Append(Seq#Take(s_2, i), Seq#Drop(Seq#Take(s_2, j_9), i)), Seq#Drop(s_2, j_9)), Seq#Append(Seq#Take(s_2, i), Seq#Append(Seq#Drop(Seq#Take(s_2, j_9), i), Seq#Drop(s_2, j_9))));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |s[j..]| == |s| - j -- sequences.vpr@51.3--51.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion |s[j..]| == |s| - j might not hold. (sequences.vpr@51.10--51.29) [183598]"}
      Seq#Length(Seq#Drop(s_2, j_9)) == Seq#Length(s_2) - j_9;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(s_2: (Seq int), i: int, j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert s == s[..i] ++ s[i..] -- sequences.vpr@56.3--56.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion s == s[..i] ++ s[i..] might not hold. (sequences.vpr@56.10--56.31) [183599]"}
      Seq#Equal(s_2, Seq#Append(Seq#Take(s_2, i), Seq#Drop(s_2, i)));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert Seq(3, 4, 5, 6)[0] == 3 -- sequences.vpr@60.3--60.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Seq(3, 4, 5, 6)[0] == 3
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[0] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@60.10--60.30) [183600]"}
        0 < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
    assert {:msg "  Assert might fail. Assertion Seq(3, 4, 5, 6)[0] == 3 might not hold. (sequences.vpr@60.10--60.30) [183601]"}
      Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), 0) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(3, 4, 5, 6)[1] == 4 -- sequences.vpr@61.3--61.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Seq(3, 4, 5, 6)[1] == 4
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[1] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@61.10--61.30) [183602]"}
        1 < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
    assert {:msg "  Assert might fail. Assertion Seq(3, 4, 5, 6)[1] == 4 might not hold. (sequences.vpr@61.10--61.30) [183603]"}
      Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), 1) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(3, 4, 5, 6)[2] == 5 -- sequences.vpr@62.3--62.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Seq(3, 4, 5, 6)[2] == 5
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[2] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@62.10--62.30) [183604]"}
        2 < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
    assert {:msg "  Assert might fail. Assertion Seq(3, 4, 5, 6)[2] == 5 might not hold. (sequences.vpr@62.10--62.30) [183605]"}
      Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), 2) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(3, 4, 5, 6)[3] == 6 -- sequences.vpr@63.3--63.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Seq(3, 4, 5, 6)[3] == 6
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[3] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@63.10--63.30) [183606]"}
        3 < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
    assert {:msg "  Assert might fail. Assertion Seq(3, 4, 5, 6)[3] == 6 might not hold. (sequences.vpr@63.10--63.30) [183607]"}
      Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), 3) == 6;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Seq(3, 4, 5, 6)[3] == 5 -- sequences.vpr@65.3--65.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Seq(3, 4, 5, 6)[3] == 5
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[3] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@65.10--65.30) [183608]"}
        3 < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
    assert {:msg "  Assert might fail. Assertion Seq(3, 4, 5, 6)[3] == 5 might not hold. (sequences.vpr@65.10--65.30) [183609]"}
      Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), 3) == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_index_definedness_small
// ==================================================

procedure test_index_definedness_small(i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i < 4;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert trivial(Seq(3, 4, 5, 6)[i]) -- sequences.vpr@74.3--74.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of trivial(Seq(3, 4, 5, 6)[i])
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[i] into Seq(3, 4, 5, 6) might be negative. (sequences.vpr@74.10--74.34) [183610]"}
        i >= 0;
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[i] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@74.10--74.34) [183611]"}
        i < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion trivial(Seq(3, 4, 5, 6)[i]) might not hold. (sequences.vpr@74.10--74.34) [183612]"}
      trivial(Heap, Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_index_definedness_large
// ==================================================

procedure test_index_definedness_large(i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert trivial(Seq(3, 4, 5, 6)[i]) -- sequences.vpr@81.3--81.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of trivial(Seq(3, 4, 5, 6)[i])
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[i] into Seq(3, 4, 5, 6) might be negative. (sequences.vpr@81.10--81.34) [183613]"}
        i >= 0;
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[i] into Seq(3, 4, 5, 6) might exceed sequence length. (sequences.vpr@81.10--81.34) [183614]"}
        i < Seq#Length(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)));
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion trivial(Seq(3, 4, 5, 6)[i]) might not hold. (sequences.vpr@81.10--81.34) [183615]"}
      trivial(Heap, Seq#Index(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_build_index_definedness_small
// ==================================================

procedure test_build_index_definedness_small(i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i < 4;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert trivial(Seq(3, 4, 5, 6)[i := 3][0]) -- sequences.vpr@89.3--89.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of trivial(Seq(3, 4, 5, 6)[i := 3][0])
      assert {:msg "  Assert might fail. Index Seq(3, 4, 5, 6)[i := 3][0] into Seq(3, 4, 5, 6)[i := 3] might exceed sequence length. (sequences.vpr@89.10--89.42) [183616]"}
        0 < Seq#Length(Seq#Append(Seq#Take(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i), Seq#Append(Seq#Singleton(3), Seq#Drop(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i + 1))));
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion trivial(Seq(3, 4, 5, 6)[i := 3][0]) might not hold. (sequences.vpr@89.10--89.42) [183617]"}
      trivial(Heap, Seq#Index(Seq#Append(Seq#Take(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i), Seq#Append(Seq#Singleton(3), Seq#Drop(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i + 1))), 0));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_build_index_definedness_large
// ==================================================

procedure test_build_index_definedness_large(i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var s_2: (Seq int);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: s := Seq(3, 4, 5, 6)[i := 3] -- sequences.vpr@97.3--97.43
    s_2 := Seq#Append(Seq#Take(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i), Seq#Append(Seq#Singleton(3), Seq#Drop(Seq#Append(Seq#Append(Seq#Append(Seq#Singleton(3), Seq#Singleton(4)), Seq#Singleton(5)), Seq#Singleton(6)), i + 1)));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert trivial(s[0]) -- sequences.vpr@98.3--98.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of trivial(s[0])
      assert {:msg "  Assert might fail. Index s[0] into s might exceed sequence length. (sequences.vpr@98.10--98.23) [183618]"}
        0 < Seq#Length(s_2);
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion trivial(s[0]) might not hold. (sequences.vpr@98.10--98.23) [183619]"}
      trivial(Heap, Seq#Index(s_2, 0));
    assume state(Heap, Mask);
}