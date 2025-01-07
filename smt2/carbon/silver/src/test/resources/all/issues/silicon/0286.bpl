// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:31:33
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0286.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0286-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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
// - height 1: elems
// - height 0: lsegelems
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function elems
// ==================================================

// Uninterpreted function definitions
function  elems_1(Heap: HeapType, start: Ref): Seq int;
function  elems'(Heap: HeapType, start: Ref): Seq int;
axiom (forall Heap: HeapType, start: Ref ::
  { elems_1(Heap, start) }
  elems_1(Heap, start) == elems'(Heap, start) && dummyFunction(elems#triggerStateless(start))
);
axiom (forall Heap: HeapType, start: Ref ::
  { elems'(Heap, start) }
  dummyFunction(elems#triggerStateless(start))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref ::
  { state(Heap, Mask), elems_1(Heap, start) } { state(Heap, Mask), elems#triggerStateless(start), list#trigger(Heap, list(start)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> elems_1(Heap, start) == (if Heap[start, next] == null then Seq#Singleton(Heap[start, val]) else Seq#Append(Seq#Singleton(Heap[start, val]), elems'(Heap, Heap[start, next])))
);

// Framing axioms
function  elems#frame(frame: FrameType, start: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref ::
  { state(Heap, Mask), elems'(Heap, start) } { state(Heap, Mask), elems#triggerStateless(start), list#trigger(Heap, list(start)) }
  state(Heap, Mask) ==> elems'(Heap, start) == elems#frame(Heap[null, list(start)], start)
);

// Trigger function (controlling recursive postconditions)
function  elems#trigger(frame: FrameType, start: Ref): bool;

// State-independent trigger function
function  elems#triggerStateless(start: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure elems#definedness(start: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[start, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(start):=Mask[null, list(start)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(start), write) in (start.next == null ? Seq(start.val) : Seq(start.val) ++ elems(start.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(start));
      assume UnfoldingHeap[null, list(start)] == CombineFrames(FrameFragment(UnfoldingHeap[start, val]), CombineFrames(FrameFragment(UnfoldingHeap[start, next]), FrameFragment((if UnfoldingHeap[start, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[start, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(start) (0286.vpr@13.1--22.2) [209057]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(start)];
      perm := FullPerm;
      assume start != null;
      UnfoldingMask := UnfoldingMask[start, val:=UnfoldingMask[start, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume start != null;
      UnfoldingMask := UnfoldingMask[start, next:=UnfoldingMask[start, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[start, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[start, next]):=UnfoldingMask[null, list(UnfoldingHeap[start, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(start), UnfoldingHeap[null, list(start)], list(UnfoldingHeap[start, next]), UnfoldingHeap[null, list(UnfoldingHeap[start, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@13.1--22.2) [209058]"}
        HasDirectPerm(UnfoldingMask, start, next);
      if (UnfoldingHeap[start, next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@13.1--22.2) [209059]"}
          HasDirectPerm(UnfoldingMask, start, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@13.1--22.2) [209060]"}
          HasDirectPerm(UnfoldingMask, start, val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@13.1--22.2) [209061]"}
          HasDirectPerm(UnfoldingMask, start, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(start.next) (0286.vpr@19.25--19.42) [209062]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[start, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume elems#trigger(UnfoldingHeap[null, list(UnfoldingHeap[start, next])], UnfoldingHeap[start, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(start):=Heap[null, list#sm(start)][start, val:=true]];
        Heap := Heap[null, list#sm(start):=Heap[null, list#sm(start)][start, next:=true]];
        if (Heap[start, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, list#sm(start)][o_15, f_20] || Heap[null, list#sm(Heap[start, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, list#sm(start):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start, next] == null then Seq#Singleton(Heap[start, val]) else Seq#Append(Seq#Singleton(Heap[start, val]), elems_1(Heap, Heap[start, next])));
}

// ==================================================
// Translation of function lsegelems
// ==================================================

// Uninterpreted function definitions
function  lsegelems(Heap: HeapType, start: Ref, end: Ref): Seq int;
function  lsegelems'(Heap: HeapType, start: Ref, end: Ref): Seq int;
axiom (forall Heap: HeapType, start: Ref, end: Ref ::
  { lsegelems(Heap, start, end) }
  lsegelems(Heap, start, end) == lsegelems'(Heap, start, end) && dummyFunction(lsegelems#triggerStateless(start, end))
);
axiom (forall Heap: HeapType, start: Ref, end: Ref ::
  { lsegelems'(Heap, start, end) }
  dummyFunction(lsegelems#triggerStateless(start, end))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref, end: Ref ::
  { state(Heap, Mask), lsegelems(Heap, start, end) } { state(Heap, Mask), lsegelems#triggerStateless(start, end), lseg#trigger(Heap, lseg(start, end)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> lsegelems(Heap, start, end) == (if Heap[start, next] == end then Seq#Singleton(Heap[start, val]) else Seq#Append(Seq#Singleton(Heap[start, val]), lsegelems'(Heap, Heap[start, next], end)))
);

// Framing axioms
function  lsegelems#frame(frame: FrameType, start: Ref, end: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, start: Ref, end: Ref ::
  { state(Heap, Mask), lsegelems'(Heap, start, end) } { state(Heap, Mask), lsegelems#triggerStateless(start, end), lseg#trigger(Heap, lseg(start, end)) }
  state(Heap, Mask) ==> lsegelems'(Heap, start, end) == lsegelems#frame(Heap[null, lseg(start, end)], start, end)
);

// Trigger function (controlling recursive postconditions)
function  lsegelems#trigger(frame: FrameType, start: Ref, end: Ref): bool;

// State-independent trigger function
function  lsegelems#triggerStateless(start: Ref, end: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure lsegelems#definedness(start: Ref, end: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[start, $allocated];
    assume Heap[end, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(start, end):=Mask[null, lseg(start, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(start, end), write) in (start.next == end ? Seq(start.val) : Seq(start.val) ++ lsegelems(start.next, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(start, end));
      assume UnfoldingHeap[null, lseg(start, end)] == CombineFrames(FrameFragment(UnfoldingHeap[start, val]), CombineFrames(FrameFragment(UnfoldingHeap[start, next]), FrameFragment((if UnfoldingHeap[start, next] != end then UnfoldingHeap[null, lseg(UnfoldingHeap[start, next], end)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(start, end) (0286.vpr@30.1--39.2) [209063]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(start, end)];
      perm := FullPerm;
      assume start != null;
      UnfoldingMask := UnfoldingMask[start, val:=UnfoldingMask[start, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume start != null;
      UnfoldingMask := UnfoldingMask[start, next:=UnfoldingMask[start, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[start, next] != end) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[start, next], end):=UnfoldingMask[null, lseg(UnfoldingHeap[start, next], end)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(start, end), UnfoldingHeap[null, lseg(start, end)], lseg(UnfoldingHeap[start, next], end), UnfoldingHeap[null, lseg(UnfoldingHeap[start, next], end)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@30.1--39.2) [209064]"}
        HasDirectPerm(UnfoldingMask, start, next);
      if (UnfoldingHeap[start, next] == end) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@30.1--39.2) [209065]"}
          HasDirectPerm(UnfoldingMask, start, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.val (0286.vpr@30.1--39.2) [209066]"}
          HasDirectPerm(UnfoldingMask, start, val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@30.1--39.2) [209067]"}
          HasDirectPerm(UnfoldingMask, start, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(start.next, end) (0286.vpr@36.25--36.50) [209068]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[start, next], end)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume lsegelems#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[start, next], end)], UnfoldingHeap[start, next], end);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(start, end):=Heap[null, lseg#sm(start, end)][start, val:=true]];
        Heap := Heap[null, lseg#sm(start, end):=Heap[null, lseg#sm(start, end)][start, next:=true]];
        if (Heap[start, next] != end) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, lseg#sm(start, end)][o_16, f_21] || Heap[null, lseg#sm(Heap[start, next], end)][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, lseg#sm(start, end):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[start, next] == end then Seq#Singleton(Heap[start, val]) else Seq#Append(Seq#Singleton(Heap[start, val]), lsegelems(Heap, Heap[start, next], end)));
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(start: Ref): Field PredicateType_list FrameType;
function  list#sm(start: Ref): Field PredicateType_list PMaskType;
axiom (forall start: Ref ::
  { PredicateMaskField(list(start)) }
  PredicateMaskField(list(start)) == list#sm(start)
);
axiom (forall start: Ref ::
  { list(start) }
  IsPredicateField(list(start))
);
axiom (forall start: Ref ::
  { list(start) }
  getPredWandId(list(start)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start: Ref, start2: Ref ::
  { list(start), list(start2) }
  list(start) == list(start2) ==> start == start2
);
axiom (forall start: Ref, start2: Ref ::
  { list#sm(start), list#sm(start2) }
  list#sm(start) == list#sm(start2) ==> start == start2
);

axiom (forall Heap: HeapType, start: Ref ::
  { list#trigger(Heap, list(start)) }
  list#everUsed(list(start))
);

procedure list#definedness(start: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start, $allocated];
    perm := FullPerm;
    assume start != null;
    Mask := Mask[start, val:=Mask[start, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume start != null;
    Mask := Mask[start, next:=Mask[start, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of start.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@7.1--11.2) [209069]"}
        HasDirectPerm(Mask, start, next);
    if (Heap[start, next] != null) {
      
      // -- Check definedness of acc(list(start.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@7.1--11.2) [209070]"}
          HasDirectPerm(Mask, start, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[start, next]):=Mask[null, list(Heap[start, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(start: Ref, end: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(start: Ref, end: Ref): Field PredicateType_lseg PMaskType;
axiom (forall start: Ref, end: Ref ::
  { PredicateMaskField(lseg(start, end)) }
  PredicateMaskField(lseg(start, end)) == lseg#sm(start, end)
);
axiom (forall start: Ref, end: Ref ::
  { lseg(start, end) }
  IsPredicateField(lseg(start, end))
);
axiom (forall start: Ref, end: Ref ::
  { lseg(start, end) }
  getPredWandId(lseg(start, end)) == 1
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall start: Ref, end: Ref, start2: Ref, end2: Ref ::
  { lseg(start, end), lseg(start2, end2) }
  lseg(start, end) == lseg(start2, end2) ==> start == start2 && end == end2
);
axiom (forall start: Ref, end: Ref, start2: Ref, end2: Ref ::
  { lseg#sm(start, end), lseg#sm(start2, end2) }
  lseg#sm(start, end) == lseg#sm(start2, end2) ==> start == start2 && end == end2
);

axiom (forall Heap: HeapType, start: Ref, end: Ref ::
  { lseg#trigger(Heap, lseg(start, end)) }
  lseg#everUsed(lseg(start, end))
);

procedure lseg#definedness(start: Ref, end: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[start, $allocated];
      assume Heap[end, $allocated];
    perm := FullPerm;
    assume start != null;
    Mask := Mask[start, val:=Mask[start, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume start != null;
    Mask := Mask[start, next:=Mask[start, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of start.next != end
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@24.1--28.2) [209071]"}
        HasDirectPerm(Mask, start, next);
    if (Heap[start, next] != end) {
      
      // -- Check definedness of acc(lseg(start.next, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access start.next (0286.vpr@24.1--28.2) [209072]"}
          HasDirectPerm(Mask, start, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[start, next], end):=Mask[null, lseg(Heap[start, next], end)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method addAtEnd
// ==================================================

procedure addAtEnd(l1_3: Ref, l2_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var end: Ref;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l1_3, $allocated];
    assume Heap[l2_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(l1_3, l2_2):=Mask[null, lseg(l1_3, l2_2)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l2_2 != null;
    Mask := Mask[l2_2, val:=Mask[l2_2, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l2_2 != null;
    Mask := Mask[l2_2, next:=Mask[l2_2, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(list(l2.next), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@43.10--43.69) [209073]"}
        HasDirectPerm(Mask, l2_2, next);
    perm := FullPerm;
    Mask := Mask[null, list(Heap[l2_2, next]):=Mask[null, list(Heap[l2_2, next])] + perm];
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
    
    // -- Check definedness of acc(lseg(l1, old(l2.next)), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [209074]"}
        HasDirectPerm(oldMask, l2_2, next);
    perm := FullPerm;
    PostMask := PostMask[null, lseg(l1_3, oldHeap[l2_2, next]):=PostMask[null, lseg(l1_3, oldHeap[l2_2, next])] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(list(old(l2.next)), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [209075]"}
        HasDirectPerm(oldMask, l2_2, next);
    perm := FullPerm;
    PostMask := PostMask[null, list(oldHeap[l2_2, next]):=PostMask[null, list(oldHeap[l2_2, next])] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(old(l2.next)) == old(elems(l2.next))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [209076]"}
        HasDirectPerm(oldMask, l2_2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(old(l2.next)) (0286.vpr@44.56--44.75) [209077]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(oldHeap[l2_2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [209078]"}
        HasDirectPerm(oldMask, l2_2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(l2.next) (0286.vpr@44.81--44.95) [209079]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(oldHeap[l2_2, next])];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems_1(PostHeap, oldHeap[l2_2, next]), elems_1(oldHeap, oldHeap[l2_2, next]));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.next (0286.vpr@44.9--44.171) [209080]"}
        HasDirectPerm(oldMask, l2_2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@44.100--44.126) [209081]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(l1_3, oldHeap[l2_2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@44.134--44.150) [209082]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(l1_3, l2_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l2.val (0286.vpr@44.9--44.171) [209083]"}
        HasDirectPerm(oldMask, l2_2, val);
    assume Seq#Equal(lsegelems(PostHeap, l1_3, oldHeap[l2_2, next]), Seq#Append(lsegelems(oldHeap, l1_3, l2_2), Seq#Singleton(oldHeap[l2_2, val])));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[end, $allocated];
  
  // -- Translating statement: unfold acc(lseg(l1, l2), write) -- 0286.vpr@46.1--46.20
    assume lseg#trigger(Heap, lseg(l1_3, l2_2));
    assume Heap[null, lseg(l1_3, l2_2)] == CombineFrames(FrameFragment(Heap[l1_3, val]), CombineFrames(FrameFragment(Heap[l1_3, next]), FrameFragment((if Heap[l1_3, next] != l2_2 then Heap[null, lseg(Heap[l1_3, next], l2_2)] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(l1, l2) might fail. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@46.1--46.20) [209086]"}
        perm <= Mask[null, lseg(l1_3, l2_2)];
    }
    Mask := Mask[null, lseg(l1_3, l2_2):=Mask[null, lseg(l1_3, l2_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(l1_3, l2_2))) {
        havoc newVersion;
        Heap := Heap[null, lseg(l1_3, l2_2):=newVersion];
      }
    perm := FullPerm;
    assume l1_3 != null;
    Mask := Mask[l1_3, val:=Mask[l1_3, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume l1_3 != null;
    Mask := Mask[l1_3, next:=Mask[l1_3, next] + perm];
    assume state(Heap, Mask);
    if (Heap[l1_3, next] != l2_2) {
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[l1_3, next], l2_2):=Mask[null, lseg(Heap[l1_3, next], l2_2)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(l1_3, l2_2), Heap[null, lseg(l1_3, l2_2)], lseg(Heap[l1_3, next], l2_2), Heap[null, lseg(Heap[l1_3, next], l2_2)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: end := l2.next -- 0286.vpr@48.1--48.24
    
    // -- Check definedness of l2.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access l2.next (0286.vpr@48.1--48.24) [209090]"}
        HasDirectPerm(Mask, l2_2, next);
    end := Heap[l2_2, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(end), write) -- 0286.vpr@49.1--49.17
    assume list#trigger(Heap, list(end));
    assume Heap[null, list(end)] == CombineFrames(FrameFragment(Heap[end, val]), CombineFrames(FrameFragment(Heap[end, next]), FrameFragment((if Heap[end, next] != null then Heap[null, list(Heap[end, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(end) might fail. There might be insufficient permission to access list(end) (0286.vpr@49.1--49.17) [209093]"}
        perm <= Mask[null, list(end)];
    }
    Mask := Mask[null, list(end):=Mask[null, list(end)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(end))) {
        havoc newVersion;
        Heap := Heap[null, list(end):=newVersion];
      }
    perm := FullPerm;
    assume end != null;
    Mask := Mask[end, val:=Mask[end, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume end != null;
    Mask := Mask[end, next:=Mask[end, next] + perm];
    assume state(Heap, Mask);
    if (Heap[end, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[end, next]):=Mask[null, list(Heap[end, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(end), Heap[null, list(end)], list(Heap[end, next]), Heap[null, list(Heap[end, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale l1.next == l2 -- 0286.vpr@52.9--52.22
    
    // -- Check definedness of l1.next == l2
      assert {:msg "  Inhale might fail. There might be insufficient permission to access l1.next (0286.vpr@52.9--52.22) [209097]"}
        HasDirectPerm(Mask, l1_3, next);
    assume Heap[l1_3, next] == l2_2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(l2, end), write) -- 0286.vpr@53.1--53.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access l2.val (0286.vpr@53.1--53.19) [209100]"}
        perm <= Mask[l2_2, val];
    }
    Mask := Mask[l2_2, val:=Mask[l2_2, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access l2.next (0286.vpr@53.1--53.19) [209102]"}
        perm <= Mask[l2_2, next];
    }
    Mask := Mask[l2_2, next:=Mask[l2_2, next] - perm];
    if (Heap[l2_2, next] != end) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(l2, end) might fail. There might be insufficient permission to access lseg(l2.next, end) (0286.vpr@53.1--53.19) [209104]"}
          perm <= Mask[null, lseg(Heap[l2_2, next], end)];
      }
      Mask := Mask[null, lseg(Heap[l2_2, next], end):=Mask[null, lseg(Heap[l2_2, next], end)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(l2_2, end), Heap[null, lseg(l2_2, end)], lseg(Heap[l2_2, next], end), Heap[null, lseg(Heap[l2_2, next], end)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(l2_2, end):=Mask[null, lseg(l2_2, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(l2_2, end));
    assume Heap[null, lseg(l2_2, end)] == CombineFrames(FrameFragment(Heap[l2_2, val]), CombineFrames(FrameFragment(Heap[l2_2, next]), FrameFragment((if Heap[l2_2, next] != end then Heap[null, lseg(Heap[l2_2, next], end)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(l2_2, end))) {
      Heap := Heap[null, lseg#sm(l2_2, end):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(l2_2, end):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(l2_2, end):=Heap[null, lseg#sm(l2_2, end)][l2_2, val:=true]];
    Heap := Heap[null, lseg#sm(l2_2, end):=Heap[null, lseg#sm(l2_2, end)][l2_2, next:=true]];
    if (Heap[l2_2, next] != end) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, lseg#sm(l2_2, end)][o_52, f_55] || Heap[null, lseg#sm(Heap[l2_2, next], end)][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, lseg#sm(l2_2, end):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(l1, end), write) -- 0286.vpr@54.1--54.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access l1.val (0286.vpr@54.1--54.19) [209108]"}
        perm <= Mask[l1_3, val];
    }
    Mask := Mask[l1_3, val:=Mask[l1_3, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access l1.next (0286.vpr@54.1--54.19) [209110]"}
        perm <= Mask[l1_3, next];
    }
    Mask := Mask[l1_3, next:=Mask[l1_3, next] - perm];
    if (Heap[l1_3, next] != end) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(l1, end) might fail. There might be insufficient permission to access lseg(l1.next, end) (0286.vpr@54.1--54.19) [209112]"}
          perm <= Mask[null, lseg(Heap[l1_3, next], end)];
      }
      Mask := Mask[null, lseg(Heap[l1_3, next], end):=Mask[null, lseg(Heap[l1_3, next], end)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(l1_3, end), Heap[null, lseg(l1_3, end)], lseg(Heap[l1_3, next], end), Heap[null, lseg(Heap[l1_3, next], end)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(l1_3, end):=Mask[null, lseg(l1_3, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(l1_3, end));
    assume Heap[null, lseg(l1_3, end)] == CombineFrames(FrameFragment(Heap[l1_3, val]), CombineFrames(FrameFragment(Heap[l1_3, next]), FrameFragment((if Heap[l1_3, next] != end then Heap[null, lseg(Heap[l1_3, next], end)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(l1_3, end))) {
      Heap := Heap[null, lseg#sm(l1_3, end):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(l1_3, end):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(l1_3, end):=Heap[null, lseg#sm(l1_3, end)][l1_3, val:=true]];
    Heap := Heap[null, lseg#sm(l1_3, end):=Heap[null, lseg#sm(l1_3, end)][l1_3, next:=true]];
    if (Heap[l1_3, next] != end) {
      havoc newPMask;
      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
        { newPMask[o_53, f_56] }
        Heap[null, lseg#sm(l1_3, end)][o_53, f_56] || Heap[null, lseg#sm(Heap[l1_3, next], end)][o_53, f_56] ==> newPMask[o_53, f_56]
      );
      Heap := Heap[null, lseg#sm(l1_3, end):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(end), write) -- 0286.vpr@55.1--55.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access end.val (0286.vpr@55.1--55.15) [209116]"}
        perm <= Mask[end, val];
    }
    Mask := Mask[end, val:=Mask[end, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access end.next (0286.vpr@55.1--55.15) [209118]"}
        perm <= Mask[end, next];
    }
    Mask := Mask[end, next:=Mask[end, next] - perm];
    if (Heap[end, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(end) might fail. There might be insufficient permission to access list(end.next) (0286.vpr@55.1--55.15) [209120]"}
          perm <= Mask[null, list(Heap[end, next])];
      }
      Mask := Mask[null, list(Heap[end, next]):=Mask[null, list(Heap[end, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(end), Heap[null, list(end)], list(Heap[end, next]), Heap[null, list(Heap[end, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(end):=Mask[null, list(end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(end));
    assume Heap[null, list(end)] == CombineFrames(FrameFragment(Heap[end, val]), CombineFrames(FrameFragment(Heap[end, next]), FrameFragment((if Heap[end, next] != null then Heap[null, list(Heap[end, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(end))) {
      Heap := Heap[null, list#sm(end):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(end):=freshVersion];
    }
    Heap := Heap[null, list#sm(end):=Heap[null, list#sm(end)][end, val:=true]];
    Heap := Heap[null, list#sm(end):=Heap[null, list#sm(end)][end, next:=true]];
    if (Heap[end, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
        { newPMask[o_26, f_29] }
        Heap[null, list#sm(end)][o_26, f_29] || Heap[null, list#sm(Heap[end, next])][o_26, f_29] ==> newPMask[o_26, f_29]
      );
      Heap := Heap[null, list#sm(end):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert lsegelems(l1, old(l2.next)) ==
  //   old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) -- 0286.vpr@58.1--58.79
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val))
      assert {:msg "  Assert might fail. There might be insufficient permission to access l2.next (0286.vpr@58.8--58.79) [209122]"}
        HasDirectPerm(oldMask, l2_2, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@58.8--58.34) [209123]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(l1_3, oldHeap[l2_2, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function lsegelems might not hold. There might be insufficient permission to access lseg(l1, l2) (0286.vpr@58.42--58.58) [209124]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(l1_3, l2_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access l2.val (0286.vpr@58.8--58.79) [209125]"}
        HasDirectPerm(oldMask, l2_2, val);
    assert {:msg "  Assert might fail. Assertion lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) might not hold. (0286.vpr@58.8--58.79) [209126]"}
      Seq#Equal(lsegelems(Heap, l1_3, oldHeap[l2_2, next]), Seq#Append(lsegelems(oldHeap, l1_3, l2_2), Seq#Singleton(oldHeap[l2_2, val])));
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access lseg(l1, old(l2.next)) (0286.vpr@44.9--44.171) [209127]"}
        perm <= Mask[null, lseg(l1_3, oldHeap[l2_2, next])];
    }
    Mask := Mask[null, lseg(l1_3, oldHeap[l2_2, next]):=Mask[null, lseg(l1_3, oldHeap[l2_2, next])] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access list(old(l2.next)) (0286.vpr@44.9--44.171) [209128]"}
        perm <= Mask[null, list(oldHeap[l2_2, next])];
    }
    Mask := Mask[null, list(oldHeap[l2_2, next]):=Mask[null, list(oldHeap[l2_2, next])] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion elems(old(l2.next)) == old(elems(l2.next)) might not hold. (0286.vpr@44.9--44.171) [209129]"}
      Seq#Equal(elems_1(Heap, oldHeap[l2_2, next]), elems_1(oldHeap, oldHeap[l2_2, next]));
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion lsegelems(l1, old(l2.next)) == old(lsegelems(l1, l2)) ++ Seq(old(l2.val)) might not hold. (0286.vpr@44.9--44.171) [209130]"}
      Seq#Equal(lsegelems(Heap, l1_3, oldHeap[l2_2, next]), Seq#Append(lsegelems(oldHeap, l1_3, l2_2), Seq#Singleton(oldHeap[l2_2, val])));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}