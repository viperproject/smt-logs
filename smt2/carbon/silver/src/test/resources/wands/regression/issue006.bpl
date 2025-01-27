// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:49:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue006.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue006-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: sum
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: bool, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 0
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: Ref, arg6_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of domain Foo
// ==================================================

// The type for domain Foo
type FooDomainType;

// Translation of domain function atMost
function  atMost(x_37: int, y_2: int): bool;

// Translation of domain axiom atMost_def
axiom (forall x: int, y: int ::
  { (atMost(x, y): bool) }
  (atMost(x, y): bool) == (x <= y)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum_1(Heap: HeapType, xs: (Seq int)): int;
function  sum'(Heap: HeapType, xs: (Seq int)): int;
axiom (forall Heap: HeapType, xs: (Seq int) ::
  { sum_1(Heap, xs) }
  sum_1(Heap, xs) == sum'(Heap, xs) && dummyFunction(sum#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Seq int) ::
  { sum'(Heap, xs) }
  dummyFunction(sum#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq int) ::
  { state(Heap, Mask), sum_1(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum_1(Heap, xs) == (if Seq#Length(xs) == 0 then 0 else Seq#Index(xs, 0) + sum'(Heap, Seq#Drop(xs, 1)))
);

// Framing axioms
function  sum#frame(frame: FrameType, xs: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Seq int) ::
  { state(Heap, Mask), sum'(Heap, xs) }
  state(Heap, Mask) ==> sum'(Heap, xs) == sum#frame(EmptyFrame, xs)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, xs: (Seq int)): bool;

// State-independent trigger function
function  sum#triggerStateless(xs: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(xs: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (|xs| == 0 ? 0 : xs[0] + sum(xs[1..]))
      if (Seq#Length(xs) == 0) {
      } else {
        assert {:msg "  Function might not be well-formed. Index xs[0] into xs might exceed sequence length. (issue006.vpr@64.1--67.2) [217079]"}
          0 < Seq#Length(xs);
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum#trigger(EmptyFrame, Seq#Drop(xs, 1));
        }
      }
  
  // -- Translate function body
    Result := (if Seq#Length(xs) == 0 then 0 else Seq#Index(xs, 0) + sum_1(Heap, Seq#Drop(xs, 1)));
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: Ref;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: y := x -- issue006.vpr@7.3--7.18
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* x == x {
  // } -- issue006.vpr@9.3--9.26
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      b_1_1 := b_1_1;
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- issue006.vpr@9.11--9.26
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationx == x
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    assert {:msg "  Packaging wand might fail. Assertion x == x might not hold. (issue006.vpr@9.3--9.26) [217080]"}
      (b_1_1 && b_1_1) && b_2_1 ==> x == x;
    Mask := Mask[null, wand(true, x == x):=Mask[null, wand(true, x == x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* x == y -- issue006.vpr@10.3--10.26
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@10.3--10.26) [217081]"}
        FullPerm <= Mask[null, wand(true, x == y)];
      Mask := Mask[null, wand(true, x == y):=Mask[null, wand(true, x == y)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume x == y;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: bool;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: b := true -- issue006.vpr@15.3--15.12
    b_24 := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: package b --* true {
  // } -- issue006.vpr@17.3--17.21
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      b_4 := b_4 && b_24;
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- issue006.vpr@17.11--17.21
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    Mask := Mask[null, wand(b_24, true):=Mask[null, wand(b_24, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := !b -- issue006.vpr@18.3--18.10
    b_24 := !b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply !b --* true -- issue006.vpr@19.3--19.20
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@19.3--19.20) [217084]"}
        FullPerm <= Mask[null, wand(!b_24, true)];
      Mask := Mask[null, wand(!b_24, true):=Mask[null, wand(!b_24, true)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Applying wand might fail. Assertion !b might not hold. (issue006.vpr@19.3--19.20) [217085]"}
        !b_24;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: int;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_7: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_8: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_10: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_9: bool;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_11: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: a := x -- issue006.vpr@23.3--23.18
    a_2 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: package x == a --* true {
  // } -- issue006.vpr@25.3--25.26
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_6 := b_6 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      b_7 := b_7 && x == a_2;
    }
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- issue006.vpr@25.11--25.26
      lhs7:
      Labellhs7Heap := Ops_5Heap;
      Labellhs7Mask := Ops_5Mask;
      b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_8 := b_8 && state(Used_5Heap, Used_5Mask);
    Mask := Mask[null, wand(x == a_2, true):=Mask[null, wand(x == a_2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := a + 1 -- issue006.vpr@26.3--26.13
    a_2 := a_2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply x == a - 1 --* true -- issue006.vpr@27.3--27.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@27.3--27.28) [217087]"}
        FullPerm <= Mask[null, wand(x == a_2 - 1, true)];
      Mask := Mask[null, wand(x == a_2 - 1, true):=Mask[null, wand(x == a_2 - 1, true)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Applying wand might fail. Assertion x == a - 1 might not hold. (issue006.vpr@27.3--27.28) [217088]"}
        x == a_2 - 1;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package x == a --* true {
  // } -- issue006.vpr@29.3--29.26
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_9 := b_9 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      b_10 := b_10 && x == a_2;
    }
    b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs10 -- issue006.vpr@29.11--29.26
      lhs10:
      Labellhs10Heap := Ops_7Heap;
      Labellhs10Mask := Ops_7Mask;
      b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_11 := b_11 && state(Used_7Heap, Used_7Mask);
    Mask := Mask[null, wand(x == a_2, true):=Mask[null, wand(x == a_2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := a + 2 -- issue006.vpr@30.3--30.13
    a_2 := a_2 + 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply x == a - 1 --* true -- issue006.vpr@32.3--32.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@32.3--32.28) [217090]"}
        FullPerm <= Mask[null, wand(x == a_2 - 1, true)];
      Mask := Mask[null, wand(x == a_2 - 1, true):=Mask[null, wand(x == a_2 - 1, true)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Applying wand might fail. Assertion x == a - 1 might not hold. (issue006.vpr@32.3--32.28) [217091]"}
        x == a_2 - 1;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: int;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_13: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_12: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_4: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_14: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_15: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume l_1 != null;
    Mask := Mask[l_1, val:=Mask[l_1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := l.val -- issue006.vpr@38.3--38.22
    
    // -- Check definedness of l.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access l.val (issue006.vpr@38.3--38.22) [217092]"}
        HasDirectPerm(Mask, l_1, val);
    x := Heap[l_1, val];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(l.val, write) && l.val == old(l.val) --* acc(l.val, write) {
  // } -- issue006.vpr@40.3--40.59
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_12 := b_12 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      if (b_13) {
        perm := FullPerm;
        b_13 := b_13 && l_1 != null;
        Ops_9Mask := Ops_9Mask[l_1, val:=Ops_9Mask[l_1, val] + perm];
        b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
      }
      if (b_13) {
        if (b_13) {
          
          // -- Check definedness of l.val == old(l.val)
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@40.3--40.59) [217093]"}
              HasDirectPerm(Ops_9Mask, l_1, val);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@40.3--40.59) [217094]"}
              HasDirectPerm(oldMask, l_1, val);
        }
        b_13 := b_13 && Ops_9Heap[l_1, val] == oldHeap[l_1, val];
      }
    }
    b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs13 -- issue006.vpr@40.11--40.59
      lhs13:
      Labellhs13Heap := Ops_9Heap;
      Labellhs13Mask := Ops_9Mask;
      b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operationacc(l.val, write)
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_14 := b_14 && state(Used_9Heap, Used_9Mask);
    
    // -- Transfer of acc(l.val, write)
      rcvLocal := l_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_9Mask[rcvLocal, val] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.val, write) might be negative. (issue006.vpr@40.3--40.59) [217095]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_9Mask := Used_9Mask[rcvLocal, val:=Used_9Mask[rcvLocal, val] + takeTransfer];
            b_14 := b_14 && state(Used_9Heap, Used_9Mask);
            b_14 := b_14 && Ops_9Heap[rcvLocal, val] == Used_9Heap[rcvLocal, val];
            Ops_9Mask := Ops_9Mask[rcvLocal, val:=Ops_9Mask[rcvLocal, val] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_9Mask := Used_9Mask[rcvLocal, val:=Used_9Mask[rcvLocal, val] + takeTransfer];
            b_14 := b_14 && state(Used_9Heap, Used_9Mask);
            b_14 := b_14 && Heap[rcvLocal, val] == Used_9Heap[rcvLocal, val];
            Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
            Heap := Heap[null, wand_1#sm(l_1, FullPerm, l_1, oldHeap[l_1, val], l_1, FullPerm):=Heap[null, wand_1#sm(l_1, FullPerm, l_1, oldHeap[l_1, val], l_1, FullPerm)][l_1, val:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@40.3--40.59) [217096]"}
        (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, val] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_13 && b_14;
        b_15 := b_15 && state(ResultHeap, ResultMask);
        b_15 := b_15 && sumMask(ResultMask, Ops_9Mask, Used_9Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_9Heap, ResultHeap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, ResultHeap, Used_9Mask);
        b_15 := b_15 && state(ResultHeap, ResultMask);
      b_13 := b_13 && b_15;
    Mask := Mask[null, wand_1(l_1, FullPerm, l_1, oldHeap[l_1, val], l_1, FullPerm):=Mask[null, wand_1(l_1, FullPerm, l_1, oldHeap[l_1, val], l_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(l.val, write) && l.val == x --* acc(l.val, write) -- issue006.vpr@42.3--42.59
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@42.3--42.59) [217097]"}
        FullPerm <= Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm)];
      Mask := Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm):=Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.val (issue006.vpr@42.3--42.59) [217099]"}
          perm <= Mask[l_1, val];
      }
      Mask := Mask[l_1, val:=Mask[l_1, val] - perm];
      assert {:msg "  Applying wand might fail. Assertion l.val == x might not hold. (issue006.vpr@42.3--42.59) [217100]"}
        Heap[l_1, val] == x;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume l_1 != null;
      Mask := Mask[l_1, val:=Mask[l_1, val] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: int;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_17: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_16: bool;
  var Labellhs16Heap: HeapType;
  var Labellhs16Mask: MaskType;
  var boolCur_5: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_18: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_19: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume l_1 != null;
    Mask := Mask[l_1, val:=Mask[l_1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := l.val -- issue006.vpr@48.3--48.22
    
    // -- Check definedness of l.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access l.val (issue006.vpr@48.3--48.22) [217102]"}
        HasDirectPerm(Mask, l_1, val);
    x := Heap[l_1, val];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(l.val, write) && l.val == l.val --* acc(l.val, write) {
  // } -- issue006.vpr@50.3--50.54
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_17 := b_17 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_16 := b_16 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      if (b_17) {
        perm := FullPerm;
        b_17 := b_17 && l_1 != null;
        Ops_11Mask := Ops_11Mask[l_1, val:=Ops_11Mask[l_1, val] + perm];
        b_17 := b_17 && state(Ops_11Heap, Ops_11Mask);
      }
      if (b_17) {
        if (b_17) {
          
          // -- Check definedness of l.val == l.val
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@50.3--50.54) [217103]"}
              HasDirectPerm(Ops_11Mask, l_1, val);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@50.3--50.54) [217104]"}
              HasDirectPerm(Ops_11Mask, l_1, val);
        }
        b_17 := b_17 && Ops_11Heap[l_1, val] == Ops_11Heap[l_1, val];
      }
    }
    b_17 := b_17 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs16 -- issue006.vpr@50.11--50.54
      lhs16:
      Labellhs16Heap := Ops_11Heap;
      Labellhs16Mask := Ops_11Mask;
      b_17 := b_17 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationacc(l.val, write)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_18 := b_18 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(l.val, write)
      rcvLocal := l_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, val] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.val, write) might be negative. (issue006.vpr@50.3--50.54) [217105]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, val:=Used_11Mask[rcvLocal, val] + takeTransfer];
            b_18 := b_18 && state(Used_11Heap, Used_11Mask);
            b_18 := b_18 && Ops_11Heap[rcvLocal, val] == Used_11Heap[rcvLocal, val];
            Ops_11Mask := Ops_11Mask[rcvLocal, val:=Ops_11Mask[rcvLocal, val] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, val:=Used_11Mask[rcvLocal, val] + takeTransfer];
            b_18 := b_18 && state(Used_11Heap, Used_11Mask);
            b_18 := b_18 && Heap[rcvLocal, val] == Used_11Heap[rcvLocal, val];
            Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
            Heap := Heap[null, wand_2#sm(l_1, FullPerm, l_1, l_1, l_1, FullPerm):=Heap[null, wand_2#sm(l_1, FullPerm, l_1, l_1, l_1, FullPerm)][l_1, val:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.val (issue006.vpr@50.3--50.54) [217106]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, val] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_19 := b_17 && b_18;
        b_19 := b_19 && state(Result_1Heap, Result_1Mask);
        b_19 := b_19 && sumMask(Result_1Mask, Ops_11Mask, Used_11Mask);
        b_19 := (b_19 && IdenticalOnKnownLocations(Ops_11Heap, Result_1Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_1Heap, Used_11Mask);
        b_19 := b_19 && state(Result_1Heap, Result_1Mask);
      b_17 := b_17 && b_19;
    Mask := Mask[null, wand_2(l_1, FullPerm, l_1, l_1, l_1, FullPerm):=Mask[null, wand_2(l_1, FullPerm, l_1, l_1, l_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(l.val, write) && l.val == x --* acc(l.val, write) -- issue006.vpr@53.3--53.54
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@53.3--53.54) [217107]"}
        FullPerm <= Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm)];
      Mask := Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm):=Mask[null, wand_1(l_1, FullPerm, l_1, x, l_1, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.val (issue006.vpr@53.3--53.54) [217109]"}
          perm <= Mask[l_1, val];
      }
      Mask := Mask[l_1, val:=Mask[l_1, val] - perm];
      assert {:msg "  Applying wand might fail. Assertion l.val == x might not hold. (issue006.vpr@53.3--53.54) [217110]"}
        Heap[l_1, val] == x;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume l_1 != null;
      Mask := Mask[l_1, val:=Mask[l_1, val] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(xs: (Seq int), n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_21: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_20: bool;
  var Labellhs19Heap: HeapType;
  var Labellhs19Mask: MaskType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_22: bool;
  var ys: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Seq#Length(xs) == n;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* |xs| == n {
  // } -- issue006.vpr@59.3--59.29
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_21 := b_21 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_20 := b_20 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_21) {
      b_21 := b_21;
    }
    b_21 := b_21 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs19 -- issue006.vpr@59.11--59.29
      lhs19:
      Labellhs19Heap := Ops_13Heap;
      Labellhs19Mask := Ops_13Mask;
      b_21 := b_21 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operation|xs| == n
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_22 := b_22 && state(Used_13Heap, Used_13Mask);
    assert {:msg "  Packaging wand might fail. Assertion |xs| == n might not hold. (issue006.vpr@59.3--59.29) [217112]"}
      (b_21 && b_21) && b_22 ==> Seq#Length(xs) == n;
    Mask := Mask[null, wand(true, Seq#Length(xs) == n):=Mask[null, wand(true, Seq#Length(xs) == n)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: ys := xs ++ Seq(n) -- issue006.vpr@60.3--60.35
    ys := Seq#Append(xs, Seq#Singleton(n));
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* |ys| == n + 1 -- issue006.vpr@61.3--61.31
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@61.3--61.31) [217113]"}
        FullPerm <= Mask[null, wand(true, Seq#Length(ys) == n + 1)];
      Mask := Mask[null, wand(true, Seq#Length(ys) == n + 1):=Mask[null, wand(true, Seq#Length(ys) == n + 1)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume Seq#Length(ys) == n + 1;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(xs: (Seq int), n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_24_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_23: bool;
  var Labellhs22Heap: HeapType;
  var Labellhs22Mask: MaskType;
  var boolCur_7: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_25_1: bool;
  var ys: (Seq int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of sum(xs) == n
      if (*) {
        // Stop execution
        assume false;
      }
    assume sum_1(Heap, xs) == n;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* sum(xs) == n {
  // } -- issue006.vpr@72.3--72.32
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_23 := b_23 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      b_24_1 := b_24_1;
    }
    b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs22 -- issue006.vpr@72.11--72.32
      lhs22:
      Labellhs22Heap := Ops_15Heap;
      Labellhs22Mask := Ops_15Mask;
      b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    // Translating exec of non-ghost operationsum(xs) == n
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_25_1 := b_25_1 && state(Used_15Heap, Used_15Mask);
    if ((b_24_1 && b_24_1) && b_25_1) {
      if (b_24_1) {
        
        // -- Check definedness of sum(xs) == n
          if (*) {
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum(xs) == n might not hold. (issue006.vpr@72.3--72.32) [217115]"}
      (b_24_1 && b_24_1) && b_25_1 ==> sum_1(Ops_15Heap, xs) == n;
    assume state(Heap, Mask);
    Mask := Mask[null, wand(true, sum_1(Heap, xs) == n):=Mask[null, wand(true, sum_1(Heap, xs) == n)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: ys := Seq(n) ++ xs -- issue006.vpr@73.3--73.35
    ys := Seq#Append(Seq#Singleton(n), xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert xs == ys[1..] -- issue006.vpr@74.3--74.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion xs == ys[1..] might not hold. (issue006.vpr@74.10--74.23) [217116]"}
      Seq#Equal(xs, Seq#Drop(ys, 1));
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* sum(ys) == 2 * n -- issue006.vpr@75.3--75.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@75.3--75.32) [217117]"}
        FullPerm <= Mask[null, wand(true, sum_1(Heap, ys) == 2 * n)];
      Mask := Mask[null, wand(true, sum_1(Heap, ys) == 2 * n):=Mask[null, wand(true, sum_1(Heap, ys) == 2 * n)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume state(Heap, Mask);
      assume sum_1(Heap, ys) == 2 * n;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08a
// ==================================================

procedure test08a() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_27_1: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_26_1: bool;
  var x: int;
  var y: int;
  var Labellhs25Heap: HeapType;
  var Labellhs25Mask: MaskType;
  var boolCur_8: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_28_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package x < y --* atMost(x, y) {
  // } -- issue006.vpr@90.3--90.33
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_27_1 := b_27_1 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_26_1 := b_26_1 && state(Used_16Heap, Used_16Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_27_1) {
      b_27_1 := b_27_1 && x < y;
    }
    b_27_1 := b_27_1 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs25 -- issue006.vpr@90.11--90.33
      lhs25:
      Labellhs25Heap := Ops_17Heap;
      Labellhs25Mask := Ops_17Mask;
      b_27_1 := b_27_1 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationatMost(x, y)
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_28_1 := b_28_1 && state(Used_17Heap, Used_17Mask);
    assert {:msg "  Packaging wand might fail. Assertion atMost(x, y) might not hold. (issue006.vpr@90.3--90.33) [217119]"}
      (b_27_1 && b_27_1) && b_28_1 ==> (atMost(x, y): bool);
    Mask := Mask[null, wand(x < y, (atMost(x, y): bool)):=Mask[null, wand(x < y, (atMost(x, y): bool))] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply x < y --* atMost(x, y) -- issue006.vpr@92.3--92.31
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@92.3--92.31) [217120]"}
        FullPerm <= Mask[null, wand(x < y, (atMost(x, y): bool))];
      Mask := Mask[null, wand(x < y, (atMost(x, y): bool)):=Mask[null, wand(x < y, (atMost(x, y): bool))] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Applying wand might fail. Assertion x < y might not hold. (issue006.vpr@92.3--92.31) [217121]"}
        x < y;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume (atMost(x, y): bool);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08b
// ==================================================

procedure test08b() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_30_1: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_29_1: bool;
  var x: int;
  var y: int;
  var Labellhs28Heap: HeapType;
  var Labellhs28Mask: MaskType;
  var boolCur_9: bool;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_31_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package x <= y --* atMost(x, y) {
  // } -- issue006.vpr@99.3--99.34
    havoc Ops_19Heap;
    Ops_19Mask := ZeroMask;
    b_30_1 := b_30_1 && state(Ops_19Heap, Ops_19Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_29_1 := b_29_1 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_30_1) {
      b_30_1 := b_30_1 && x <= y;
    }
    b_30_1 := b_30_1 && state(Ops_19Heap, Ops_19Mask);
    
    // -- Translating statement: label lhs28 -- issue006.vpr@99.11--99.34
      lhs28:
      Labellhs28Heap := Ops_19Heap;
      Labellhs28Mask := Ops_19Mask;
      b_30_1 := b_30_1 && state(Ops_19Heap, Ops_19Mask);
    boolCur_9 := true;
    // Translating exec of non-ghost operationatMost(x, y)
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_31_1 := b_31_1 && state(Used_19Heap, Used_19Mask);
    assert {:msg "  Packaging wand might fail. Assertion atMost(x, y) might not hold. (issue006.vpr@99.3--99.34) [217122]"}
      (b_30_1 && b_30_1) && b_31_1 ==> (atMost(x, y): bool);
    Mask := Mask[null, wand(x <= y, (atMost(x, y): bool)):=Mask[null, wand(x <= y, (atMost(x, y): bool))] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x < y -- issue006.vpr@100.10--100.15
    assume x < y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := x + 1 -- issue006.vpr@101.3--101.13
    x := x + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply x <= y --* atMost(x, y) -- issue006.vpr@102.3--102.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue006.vpr@102.3--102.32) [217123]"}
        FullPerm <= Mask[null, wand(x <= y, (atMost(x, y): bool))];
      Mask := Mask[null, wand(x <= y, (atMost(x, y): bool)):=Mask[null, wand(x <= y, (atMost(x, y): bool))] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Applying wand might fail. Assertion x <= y might not hold. (issue006.vpr@102.3--102.32) [217124]"}
        x <= y;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume (atMost(x, y): bool);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}