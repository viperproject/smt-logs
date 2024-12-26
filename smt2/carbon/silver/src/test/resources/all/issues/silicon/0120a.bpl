// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:21:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0120a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0120a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: Nodevals$
// - height 0: Nodereverse_vals$
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
// Translation of domain GlobalKPermission
// ==================================================

// The type for domain GlobalKPermission
type GlobalKPermissionDomainType;

// Translation of domain unique function globalK$
const unique globalK$: Perm;

// Translation of domain axiom globalKReadOnly
axiom NoPerm < globalK$ && globalK$ < FullPerm;

// ==================================================
// Translation of all fields
// ==================================================

const unique old$methodPermission: Field NormalField Perm;
axiom !IsPredicateField(old$methodPermission);
axiom !IsWandField(old$methodPermission);
const unique joinable$: Field NormalField bool;
axiom !IsPredicateField(joinable$);
axiom !IsWandField(joinable$);
const unique Nodenext$: Field NormalField Ref;
axiom !IsPredicateField(Nodenext$);
axiom !IsWandField(Nodenext$);
const unique Nodeval$: Field NormalField int;
axiom !IsPredicateField(Nodeval$);
axiom !IsWandField(Nodeval$);
const unique old$Nodereverse_in_place$0: Field NormalField (Seq int);
axiom !IsPredicateField(old$Nodereverse_in_place$0);
axiom !IsWandField(old$Nodereverse_in_place$0);
const unique par$Nodereverse_in_place$this$_4: Field NormalField Ref;
axiom !IsPredicateField(par$Nodereverse_in_place$this$_4);
axiom !IsWandField(par$Nodereverse_in_place$this$_4);
const unique par$Nodereverse_in_place$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Nodereverse_in_place$k$);
axiom !IsWandField(par$Nodereverse_in_place$k$);

// ==================================================
// Translation of function Nodevals$
// ==================================================

// Uninterpreted function definitions
function  Nodevals$(Heap: HeapType, this$_2: Ref): Seq int;
function  Nodevals$'(Heap: HeapType, this$_2: Ref): Seq int;
axiom (forall Heap: HeapType, this$_2: Ref ::
  { Nodevals$(Heap, this$_2) }
  Nodevals$(Heap, this$_2) == Nodevals$'(Heap, this$_2) && dummyFunction(Nodevals$#triggerStateless(this$_2))
);
axiom (forall Heap: HeapType, this$_2: Ref ::
  { Nodevals$'(Heap, this$_2) }
  dummyFunction(Nodevals$#triggerStateless(this$_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref ::
  { state(Heap, Mask), Nodevals$(Heap, this$_2) } { state(Heap, Mask), Nodevals$#triggerStateless(this$_2), Nodelist$#trigger(Heap, Nodelist$(this$_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this$_2 != null ==> Nodevals$(Heap, this$_2) == (if Heap[this$_2, Nodenext$] == null then Seq#Singleton(Heap[this$_2, Nodeval$]) else Seq#Append(Seq#Singleton(Heap[this$_2, Nodeval$]), Nodevals$'(Heap, Heap[this$_2, Nodenext$])))
);

// Framing axioms
function  Nodevals$#frame(frame: FrameType, this$_2: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this$_2: Ref ::
  { state(Heap, Mask), Nodevals$'(Heap, this$_2) } { state(Heap, Mask), Nodevals$#triggerStateless(this$_2), Nodelist$#trigger(Heap, Nodelist$(this$_2)) }
  state(Heap, Mask) ==> Nodevals$'(Heap, this$_2) == Nodevals$#frame(Heap[null, Nodelist$(this$_2)], this$_2)
);

// Trigger function (controlling recursive postconditions)
function  Nodevals$#trigger(frame: FrameType, this$_2: Ref): bool;

// State-independent trigger function
function  Nodevals$#triggerStateless(this$_2: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Nodevals$#definedness(this$_2: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[this$_2, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this$_2 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodelist$(this$_2):=Mask[null, Nodelist$(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodelist$(this$_2), wildcard) in (this$_2.Nodenext$ == null ? Seq(this$_2.Nodeval$) : Seq(this$_2.Nodeval$) ++ Nodevals$(this$_2.Nodenext$)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodelist$#trigger(UnfoldingHeap, Nodelist$(this$_2));
      assume UnfoldingHeap[null, Nodelist$(this$_2)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_2, Nodeval$]), FrameFragment((if UnfoldingHeap[this$_2, Nodenext$] != null then UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodelist$(this$_2) (0120a.vpr@27.1--32.2) [201820]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodelist$(this$_2)];
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Nodenext$:=UnfoldingMask[this$_2, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_2 != null;
      UnfoldingMask := UnfoldingMask[this$_2, Nodeval$:=UnfoldingMask[this$_2, Nodeval$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_2, Nodenext$] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$]):=UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodelist$(this$_2), UnfoldingHeap[null, Nodelist$(this$_2)], Nodelist$(UnfoldingHeap[this$_2, Nodenext$]), UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Nodenext$ (0120a.vpr@27.1--32.2) [201821]"}
        HasDirectPerm(UnfoldingMask, this$_2, Nodenext$);
      if (UnfoldingHeap[this$_2, Nodenext$] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Nodeval$ (0120a.vpr@27.1--32.2) [201822]"}
          HasDirectPerm(UnfoldingMask, this$_2, Nodeval$);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Nodeval$ (0120a.vpr@27.1--32.2) [201823]"}
          HasDirectPerm(UnfoldingMask, this$_2, Nodeval$);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_2.Nodenext$ (0120a.vpr@27.1--32.2) [201824]"}
          HasDirectPerm(UnfoldingMask, this$_2, Nodenext$);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function Nodevals$ might not hold. Assertion this$_2.Nodenext$ != null might not hold. (0120a.vpr@31.129--31.157) [201825]"}
            UnfoldingHeap[this$_2, Nodenext$] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodevals$ might not hold. There might be insufficient permission to access Nodelist$(this$_2.Nodenext$) (0120a.vpr@31.129--31.157) [201826]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Nodevals$#trigger(UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_2, Nodenext$])], UnfoldingHeap[this$_2, Nodenext$]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodelist$#sm(this$_2):=Heap[null, Nodelist$#sm(this$_2)][this$_2, Nodenext$:=true]];
        Heap := Heap[null, Nodelist$#sm(this$_2):=Heap[null, Nodelist$#sm(this$_2)][this$_2, Nodeval$:=true]];
        if (Heap[this$_2, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Nodelist$#sm(this$_2)][o_15, f_20] || Heap[null, Nodelist$#sm(Heap[this$_2, Nodenext$])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Nodelist$#sm(this$_2):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this$_2, Nodenext$] == null then Seq#Singleton(Heap[this$_2, Nodeval$]) else Seq#Append(Seq#Singleton(Heap[this$_2, Nodeval$]), Nodevals$(Heap, Heap[this$_2, Nodenext$])));
}

// ==================================================
// Translation of function Nodereverse_vals$
// ==================================================

// Uninterpreted function definitions
function  Nodereverse_vals$(Heap: HeapType, this$_3: Ref): Seq int;
function  Nodereverse_vals$'(Heap: HeapType, this$_3: Ref): Seq int;
axiom (forall Heap: HeapType, this$_3: Ref ::
  { Nodereverse_vals$(Heap, this$_3) }
  Nodereverse_vals$(Heap, this$_3) == Nodereverse_vals$'(Heap, this$_3) && dummyFunction(Nodereverse_vals$#triggerStateless(this$_3))
);
axiom (forall Heap: HeapType, this$_3: Ref ::
  { Nodereverse_vals$'(Heap, this$_3) }
  dummyFunction(Nodereverse_vals$#triggerStateless(this$_3))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), Nodereverse_vals$(Heap, this$_3) } { state(Heap, Mask), Nodereverse_vals$#triggerStateless(this$_3), Nodelist$#trigger(Heap, Nodelist$(this$_3)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this$_3 != null ==> Nodereverse_vals$(Heap, this$_3) == (if Heap[this$_3, Nodenext$] == null then Seq#Singleton(Heap[this$_3, Nodeval$]) else Seq#Append(Nodereverse_vals$'(Heap, Heap[this$_3, Nodenext$]), Seq#Singleton(Heap[this$_3, Nodeval$])))
);

// Framing axioms
function  Nodereverse_vals$#frame(frame: FrameType, this$_3: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this$_3: Ref ::
  { state(Heap, Mask), Nodereverse_vals$'(Heap, this$_3) } { state(Heap, Mask), Nodereverse_vals$#triggerStateless(this$_3), Nodelist$#trigger(Heap, Nodelist$(this$_3)) }
  state(Heap, Mask) ==> Nodereverse_vals$'(Heap, this$_3) == Nodereverse_vals$#frame(Heap[null, Nodelist$(this$_3)], this$_3)
);

// Trigger function (controlling recursive postconditions)
function  Nodereverse_vals$#trigger(frame: FrameType, this$_3: Ref): bool;

// State-independent trigger function
function  Nodereverse_vals$#triggerStateless(this$_3: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Nodereverse_vals$#definedness(this$_3: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[this$_3, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this$_3 != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Nodelist$(this$_3):=Mask[null, Nodelist$(this$_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Nodelist$(this$_3), wildcard) in (this$_3.Nodenext$ == null ? Seq(this$_3.Nodeval$) : Nodereverse_vals$(this$_3.Nodenext$) ++ Seq(this$_3.Nodeval$)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Nodelist$#trigger(UnfoldingHeap, Nodelist$(this$_3));
      assume UnfoldingHeap[null, Nodelist$(this$_3)] == CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Nodenext$]), CombineFrames(FrameFragment(UnfoldingHeap[this$_3, Nodeval$]), FrameFragment((if UnfoldingHeap[this$_3, Nodenext$] != null then UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Nodelist$(this$_3) (0120a.vpr@34.1--39.2) [201827]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodelist$(this$_3)];
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Nodenext$:=UnfoldingMask[this$_3, Nodenext$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this$_3 != null;
      UnfoldingMask := UnfoldingMask[this$_3, Nodeval$:=UnfoldingMask[this$_3, Nodeval$] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this$_3, Nodenext$] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$]):=UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Nodelist$(this$_3), UnfoldingHeap[null, Nodelist$(this$_3)], Nodelist$(UnfoldingHeap[this$_3, Nodenext$]), UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodenext$ (0120a.vpr@34.1--39.2) [201828]"}
        HasDirectPerm(UnfoldingMask, this$_3, Nodenext$);
      if (UnfoldingHeap[this$_3, Nodenext$] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodeval$ (0120a.vpr@34.1--39.2) [201829]"}
          HasDirectPerm(UnfoldingMask, this$_3, Nodeval$);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodenext$ (0120a.vpr@34.1--39.2) [201830]"}
          HasDirectPerm(UnfoldingMask, this$_3, Nodenext$);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. Assertion this$_3.Nodenext$ != null might not hold. (0120a.vpr@38.104--38.140) [201831]"}
            UnfoldingHeap[this$_3, Nodenext$] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. There might be insufficient permission to access Nodelist$(this$_3.Nodenext$) (0120a.vpr@38.104--38.140) [201832]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Nodereverse_vals$#trigger(UnfoldingHeap[null, Nodelist$(UnfoldingHeap[this$_3, Nodenext$])], UnfoldingHeap[this$_3, Nodenext$]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this$_3.Nodeval$ (0120a.vpr@34.1--39.2) [201833]"}
          HasDirectPerm(UnfoldingMask, this$_3, Nodeval$);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Nodelist$#sm(this$_3):=Heap[null, Nodelist$#sm(this$_3)][this$_3, Nodenext$:=true]];
        Heap := Heap[null, Nodelist$#sm(this$_3):=Heap[null, Nodelist$#sm(this$_3)][this$_3, Nodeval$:=true]];
        if (Heap[this$_3, Nodenext$] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Nodelist$#sm(this$_3)][o_16, f_21] || Heap[null, Nodelist$#sm(Heap[this$_3, Nodenext$])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Nodelist$#sm(this$_3):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this$_3, Nodenext$] == null then Seq#Singleton(Heap[this$_3, Nodeval$]) else Seq#Append(Nodereverse_vals$(Heap, Heap[this$_3, Nodenext$]), Seq#Singleton(Heap[this$_3, Nodeval$])));
}

// ==================================================
// Translation of predicate Node$MonitorInvariant
// ==================================================

type PredicateType_Node$MonitorInvariant;
function  Node$MonitorInvariant(this$: Ref): Field PredicateType_Node$MonitorInvariant FrameType;
function  Node$MonitorInvariant#sm(this$: Ref): Field PredicateType_Node$MonitorInvariant PMaskType;
axiom (forall this$: Ref ::
  { PredicateMaskField(Node$MonitorInvariant(this$)) }
  PredicateMaskField(Node$MonitorInvariant(this$)) == Node$MonitorInvariant#sm(this$)
);
axiom (forall this$: Ref ::
  { Node$MonitorInvariant(this$) }
  IsPredicateField(Node$MonitorInvariant(this$))
);
axiom (forall this$: Ref ::
  { Node$MonitorInvariant(this$) }
  getPredWandId(Node$MonitorInvariant(this$)) == 0
);
function  Node$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$: Ref, this$2: Ref ::
  { Node$MonitorInvariant(this$), Node$MonitorInvariant(this$2) }
  Node$MonitorInvariant(this$) == Node$MonitorInvariant(this$2) ==> this$ == this$2
);
axiom (forall this$: Ref, this$2: Ref ::
  { Node$MonitorInvariant#sm(this$), Node$MonitorInvariant#sm(this$2) }
  Node$MonitorInvariant#sm(this$) == Node$MonitorInvariant#sm(this$2) ==> this$ == this$2
);

axiom (forall Heap: HeapType, this$: Ref ::
  { Node$MonitorInvariant#trigger(Heap, Node$MonitorInvariant(this$)) }
  Node$MonitorInvariant#everUsed(Node$MonitorInvariant(this$))
);

procedure Node$MonitorInvariant#definedness(this$: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Node$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Nodelist$
// ==================================================

type PredicateType_Nodelist$;
function  Nodelist$(this$_1: Ref): Field PredicateType_Nodelist$ FrameType;
function  Nodelist$#sm(this$_1: Ref): Field PredicateType_Nodelist$ PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(Nodelist$(this$_1)) }
  PredicateMaskField(Nodelist$(this$_1)) == Nodelist$#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { Nodelist$(this$_1) }
  IsPredicateField(Nodelist$(this$_1))
);
axiom (forall this$_1: Ref ::
  { Nodelist$(this$_1) }
  getPredWandId(Nodelist$(this$_1)) == 1
);
function  Nodelist$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Nodelist$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Nodelist$(this$_1), Nodelist$(this$_12) }
  Nodelist$(this$_1) == Nodelist$(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Nodelist$#sm(this$_1), Nodelist$#sm(this$_12) }
  Nodelist$#sm(this$_1) == Nodelist$#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { Nodelist$#trigger(Heap, Nodelist$(this$_1)) }
  Nodelist$#everUsed(Nodelist$(this$_1))
);

procedure Nodelist$#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Nodelist$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Nodenext$:=Mask[this$_1, Nodenext$] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Nodeval$:=Mask[this$_1, Nodeval$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this$_1.Nodenext$ != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_1.Nodenext$ (0120a.vpr@45.1--47.2) [201834]"}
        HasDirectPerm(Mask, this$_1, Nodenext$);
    if (Heap[this$_1, Nodenext$] != null) {
      
      // -- Check definedness of acc(Nodelist$(this$_1.Nodenext$), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this$_1.Nodenext$ (0120a.vpr@45.1--47.2) [201835]"}
          HasDirectPerm(Mask, this$_1, Nodenext$);
      perm := FullPerm;
      Mask := Mask[null, Nodelist$(Heap[this$_1, Nodenext$]):=Mask[null, Nodelist$(Heap[this$_1, Nodenext$])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Nodereverse_in_place$
// ==================================================

procedure Nodereverse_in_place$(this$_4: Ref, k$: Perm) returns (r_1: Ref)
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
  var n$: Ref;
  var a$: Ref;
  var b$: Ref;
  var c$: Ref;
  var l_2: Ref;
  var y: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this$_4, $allocated];
  
  // -- Checked inhaling of precondition
    assume this$_4 != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Nodelist$(this$_4):=Mask[null, Nodelist$(this$_4)] + perm];
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
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, Nodelist$(r_1):=PostMask[null, Nodelist$(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Nodevals$(r) == old(Nodereverse_vals$(this$_4))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Nodevals$ might not hold. Assertion r != null might not hold. (0120a.vpr@55.11--55.23) [201836]"}
          r_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodevals$ might not hold. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@55.11--55.23) [201837]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Nodelist$(r_1)];
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
        assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. Assertion this$_4 != null might not hold. (0120a.vpr@55.31--55.57) [201838]"}
          this$_4 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. There might be insufficient permission to access Nodelist$(this$_4) (0120a.vpr@55.31--55.57) [201839]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Nodelist$(this$_4)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Nodevals$(PostHeap, r_1), Nodereverse_vals$(oldHeap, this$_4));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n$, $allocated];
    assume Heap[a$, $allocated];
    assume Heap[b$, $allocated];
    assume Heap[c$, $allocated];
    assume Heap[l_2, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: l := this$_4 -- 0120a.vpr@63.3--63.15
    l_2 := this$_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: r := null -- 0120a.vpr@64.3--64.12
    r_1 := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (l != null) -- 0120a.vpr@65.3--84.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (l_2 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant l != null ==> acc(Nodelist$(l), write) might not hold on entry. There might be insufficient permission to access Nodelist$(l) (0120a.vpr@66.15--66.55) [201840]"}
              perm <= Mask[null, Nodelist$(l_2)];
          }
          Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] - perm];
        }
        if (r_1 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant r != null ==> acc(Nodelist$(r), write) might not hold on entry. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@67.15--67.55) [201841]"}
              perm <= Mask[null, Nodelist$(r_1)];
          }
          Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] - perm];
        }
        assert {:msg "  Loop invariant old(Nodereverse_vals$(this$_4)) == (l == null ? Seq[Int]() : Nodereverse_vals$(l)) ++ (r == null ? Seq[Int]() : Nodevals$(r)) might not hold on entry. Assertion old(Nodereverse_vals$(this$_4)) == (l == null ? Seq[Int]() : Nodereverse_vals$(l)) ++ (r == null ? Seq[Int]() : Nodevals$(r)) might not hold. (0120a.vpr@68.15--68.140) [201842]"}
          Seq#Equal(Nodereverse_vals$(oldHeap, this$_4), Seq#Append((if l_2 == null then (Seq#Empty(): Seq int) else Nodereverse_vals$(Heap, l_2)), (if r_1 == null then (Seq#Empty(): Seq int) else Nodevals$(Heap, r_1))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc l_2, r_1, y;
      assume Heap[l_2, $allocated];
      assume Heap[r_1, $allocated];
      assume Heap[y, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        if (l_2 != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        if (r_1 != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of old(Nodereverse_vals$(this$_4)) == (l == null ? Seq[Int]() : Nodereverse_vals$(l)) ++ (r == null ? Seq[Int]() : Nodevals$(r))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. Assertion this$_4 != null might not hold. (0120a.vpr@68.19--68.45) [201843]"}
              this$_4 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. There might be insufficient permission to access Nodelist$(this$_4) (0120a.vpr@68.19--68.45) [201844]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Nodelist$(this$_4)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (l_2 == null) {
          } else {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. Assertion l != null might not hold. (0120a.vpr@68.76--68.96) [201845]"}
                l_2 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function Nodereverse_vals$ might not hold. There might be insufficient permission to access Nodelist$(l) (0120a.vpr@68.76--68.96) [201846]"}
                NoPerm < perm ==> NoPerm < Mask[null, Nodelist$(l_2)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
          if (r_1 == null) {
          } else {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  Precondition of function Nodevals$ might not hold. Assertion r != null might not hold. (0120a.vpr@68.127--68.139) [201847]"}
                r_1 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function Nodevals$ might not hold. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@68.127--68.139) [201848]"}
                NoPerm < perm ==> NoPerm < Mask[null, Nodelist$(r_1)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume Seq#Equal(Nodereverse_vals$(oldHeap, this$_4), Seq#Append((if l_2 == null then (Seq#Empty(): Seq int) else Nodereverse_vals$(Heap, l_2)), (if r_1 == null then (Seq#Empty(): Seq int) else Nodevals$(Heap, r_1))));
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
        if (l_2 != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] + perm];
          assume state(Heap, Mask);
        }
        if (r_1 != null) {
          perm := FullPerm;
          Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume Seq#Equal(Nodereverse_vals$(oldHeap, this$_4), Seq#Append((if l_2 == null then (Seq#Empty(): Seq int) else Nodereverse_vals$(Heap, l_2)), (if r_1 == null then (Seq#Empty(): Seq int) else Nodevals$(Heap, r_1))));
        assume state(Heap, Mask);
        // Check and assume guard
        assume l_2 != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (r != null) -- 0120a.vpr@70.5--73.6
            if (r_1 != null) {
              
              // -- Translating statement: unfold acc(Nodelist$(r), write) -- 0120a.vpr@71.7--71.38
                assume Nodelist$#trigger(Heap, Nodelist$(r_1));
                assume Heap[null, Nodelist$(r_1)] == CombineFrames(FrameFragment(Heap[r_1, Nodenext$]), CombineFrames(FrameFragment(Heap[r_1, Nodeval$]), FrameFragment((if Heap[r_1, Nodenext$] != null then Heap[null, Nodelist$(Heap[r_1, Nodenext$])] else EmptyFrame))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Nodelist$(r) might fail. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@71.7--71.38) [201849]"}
                    perm <= Mask[null, Nodelist$(r_1)];
                }
                Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, Nodelist$(r_1))) {
                    havoc newVersion;
                    Heap := Heap[null, Nodelist$(r_1):=newVersion];
                  }
                perm := FullPerm;
                assume r_1 != null;
                Mask := Mask[r_1, Nodenext$:=Mask[r_1, Nodenext$] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume r_1 != null;
                Mask := Mask[r_1, Nodeval$:=Mask[r_1, Nodeval$] + perm];
                assume state(Heap, Mask);
                if (Heap[r_1, Nodenext$] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, Nodelist$(Heap[r_1, Nodenext$]):=Mask[null, Nodelist$(Heap[r_1, Nodenext$])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Nodelist$(r_1), Heap[null, Nodelist$(r_1)], Nodelist$(Heap[r_1, Nodenext$]), Heap[null, Nodelist$(Heap[r_1, Nodenext$])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: fold acc(Nodelist$(r), write) -- 0120a.vpr@72.7--72.36
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access r.Nodenext$ (0120a.vpr@72.7--72.36) [201850]"}
                    perm <= Mask[r_1, Nodenext$];
                }
                Mask := Mask[r_1, Nodenext$:=Mask[r_1, Nodenext$] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access r.Nodeval$ (0120a.vpr@72.7--72.36) [201851]"}
                    perm <= Mask[r_1, Nodeval$];
                }
                Mask := Mask[r_1, Nodeval$:=Mask[r_1, Nodeval$] - perm];
                if (Heap[r_1, Nodenext$] != null) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access Nodelist$(r.Nodenext$) (0120a.vpr@72.7--72.36) [201852]"}
                      perm <= Mask[null, Nodelist$(Heap[r_1, Nodenext$])];
                  }
                  Mask := Mask[null, Nodelist$(Heap[r_1, Nodenext$]):=Mask[null, Nodelist$(Heap[r_1, Nodenext$])] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(Nodelist$(r_1), Heap[null, Nodelist$(r_1)], Nodelist$(Heap[r_1, Nodenext$]), Heap[null, Nodelist$(Heap[r_1, Nodenext$])]);
                }
                perm := FullPerm;
                Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume Nodelist$#trigger(Heap, Nodelist$(r_1));
                assume Heap[null, Nodelist$(r_1)] == CombineFrames(FrameFragment(Heap[r_1, Nodenext$]), CombineFrames(FrameFragment(Heap[r_1, Nodeval$]), FrameFragment((if Heap[r_1, Nodenext$] != null then Heap[null, Nodelist$(Heap[r_1, Nodenext$])] else EmptyFrame))));
                if (!HasDirectPerm(Mask, null, Nodelist$(r_1))) {
                  Heap := Heap[null, Nodelist$#sm(r_1):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, Nodelist$(r_1):=freshVersion];
                }
                Heap := Heap[null, Nodelist$#sm(r_1):=Heap[null, Nodelist$#sm(r_1)][r_1, Nodenext$:=true]];
                Heap := Heap[null, Nodelist$#sm(r_1):=Heap[null, Nodelist$#sm(r_1)][r_1, Nodeval$:=true]];
                if (Heap[r_1, Nodenext$] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                    { newPMask[o_52, f_55] }
                    Heap[null, Nodelist$#sm(r_1)][o_52, f_55] || Heap[null, Nodelist$#sm(Heap[r_1, Nodenext$])][o_52, f_55] ==> newPMask[o_52, f_55]
                  );
                  Heap := Heap[null, Nodelist$#sm(r_1):=newPMask];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(Nodelist$(l), write) -- 0120a.vpr@74.5--74.36
            assume Nodelist$#trigger(Heap, Nodelist$(l_2));
            assume Heap[null, Nodelist$(l_2)] == CombineFrames(FrameFragment(Heap[l_2, Nodenext$]), CombineFrames(FrameFragment(Heap[l_2, Nodeval$]), FrameFragment((if Heap[l_2, Nodenext$] != null then Heap[null, Nodelist$(Heap[l_2, Nodenext$])] else EmptyFrame))));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Nodelist$(l) might fail. There might be insufficient permission to access Nodelist$(l) (0120a.vpr@74.5--74.36) [201853]"}
                perm <= Mask[null, Nodelist$(l_2)];
            }
            Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Nodelist$(l_2))) {
                havoc newVersion;
                Heap := Heap[null, Nodelist$(l_2):=newVersion];
              }
            perm := FullPerm;
            assume l_2 != null;
            Mask := Mask[l_2, Nodenext$:=Mask[l_2, Nodenext$] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume l_2 != null;
            Mask := Mask[l_2, Nodeval$:=Mask[l_2, Nodeval$] + perm];
            assume state(Heap, Mask);
            if (Heap[l_2, Nodenext$] != null) {
              perm := FullPerm;
              Mask := Mask[null, Nodelist$(Heap[l_2, Nodenext$]):=Mask[null, Nodelist$(Heap[l_2, Nodenext$])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(Nodelist$(l_2), Heap[null, Nodelist$(l_2)], Nodelist$(Heap[l_2, Nodenext$]), Heap[null, Nodelist$(Heap[l_2, Nodenext$])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (l.Nodenext$ != null) -- 0120a.vpr@75.5--78.6
            
            // -- Check definedness of l.Nodenext$ != null
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access l.Nodenext$ (0120a.vpr@75.9--75.28) [201854]"}
                HasDirectPerm(Mask, l_2, Nodenext$);
            if (Heap[l_2, Nodenext$] != null) {
              
              // -- Translating statement: unfold acc(Nodelist$(l.Nodenext$), write) -- 0120a.vpr@76.7--76.48
                
                // -- Check definedness of acc(Nodelist$(l.Nodenext$), write)
                  assert {:msg "  Unfolding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access l.Nodenext$ (0120a.vpr@76.7--76.48) [201855]"}
                    HasDirectPerm(Mask, l_2, Nodenext$);
                assume Nodelist$#trigger(Heap, Nodelist$(Heap[l_2, Nodenext$]));
                assume Heap[null, Nodelist$(Heap[l_2, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[l_2, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[l_2, Nodenext$], Nodeval$]), FrameFragment((if Heap[Heap[l_2, Nodenext$], Nodenext$] != null then Heap[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])] else EmptyFrame))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access Nodelist$(l.Nodenext$) (0120a.vpr@76.7--76.48) [201856]"}
                    perm <= Mask[null, Nodelist$(Heap[l_2, Nodenext$])];
                }
                Mask := Mask[null, Nodelist$(Heap[l_2, Nodenext$]):=Mask[null, Nodelist$(Heap[l_2, Nodenext$])] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, Nodelist$(Heap[l_2, Nodenext$]))) {
                    havoc newVersion;
                    Heap := Heap[null, Nodelist$(Heap[l_2, Nodenext$]):=newVersion];
                  }
                perm := FullPerm;
                assume Heap[l_2, Nodenext$] != null;
                Mask := Mask[Heap[l_2, Nodenext$], Nodenext$:=Mask[Heap[l_2, Nodenext$], Nodenext$] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume Heap[l_2, Nodenext$] != null;
                Mask := Mask[Heap[l_2, Nodenext$], Nodeval$:=Mask[Heap[l_2, Nodenext$], Nodeval$] + perm];
                assume state(Heap, Mask);
                if (Heap[Heap[l_2, Nodenext$], Nodenext$] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$]):=Mask[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Nodelist$(Heap[l_2, Nodenext$]), Heap[null, Nodelist$(Heap[l_2, Nodenext$])], Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$]), Heap[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: fold acc(Nodelist$(l.Nodenext$), write) -- 0120a.vpr@77.7--77.46
                
                // -- Check definedness of acc(Nodelist$(l.Nodenext$), write)
                  assert {:msg "  Folding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access l.Nodenext$ (0120a.vpr@77.7--77.46) [201857]"}
                    HasDirectPerm(Mask, l_2, Nodenext$);
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access l.Nodenext$.Nodenext$ (0120a.vpr@77.7--77.46) [201858]"}
                    perm <= Mask[Heap[l_2, Nodenext$], Nodenext$];
                }
                Mask := Mask[Heap[l_2, Nodenext$], Nodenext$:=Mask[Heap[l_2, Nodenext$], Nodenext$] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access l.Nodenext$.Nodeval$ (0120a.vpr@77.7--77.46) [201859]"}
                    perm <= Mask[Heap[l_2, Nodenext$], Nodeval$];
                }
                Mask := Mask[Heap[l_2, Nodenext$], Nodeval$:=Mask[Heap[l_2, Nodenext$], Nodeval$] - perm];
                if (Heap[Heap[l_2, Nodenext$], Nodenext$] != null) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding Nodelist$(l.Nodenext$) might fail. There might be insufficient permission to access Nodelist$(l.Nodenext$.Nodenext$) (0120a.vpr@77.7--77.46) [201860]"}
                      perm <= Mask[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])];
                  }
                  Mask := Mask[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$]):=Mask[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(Nodelist$(Heap[l_2, Nodenext$]), Heap[null, Nodelist$(Heap[l_2, Nodenext$])], Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$]), Heap[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])]);
                }
                perm := FullPerm;
                Mask := Mask[null, Nodelist$(Heap[l_2, Nodenext$]):=Mask[null, Nodelist$(Heap[l_2, Nodenext$])] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume Nodelist$#trigger(Heap, Nodelist$(Heap[l_2, Nodenext$]));
                assume Heap[null, Nodelist$(Heap[l_2, Nodenext$])] == CombineFrames(FrameFragment(Heap[Heap[l_2, Nodenext$], Nodenext$]), CombineFrames(FrameFragment(Heap[Heap[l_2, Nodenext$], Nodeval$]), FrameFragment((if Heap[Heap[l_2, Nodenext$], Nodenext$] != null then Heap[null, Nodelist$(Heap[Heap[l_2, Nodenext$], Nodenext$])] else EmptyFrame))));
                if (!HasDirectPerm(Mask, null, Nodelist$(Heap[l_2, Nodenext$]))) {
                  Heap := Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$]):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, Nodelist$(Heap[l_2, Nodenext$]):=freshVersion];
                }
                Heap := Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$]):=Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$])][Heap[l_2, Nodenext$], Nodenext$:=true]];
                Heap := Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$]):=Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$])][Heap[l_2, Nodenext$], Nodeval$:=true]];
                if (Heap[Heap[l_2, Nodenext$], Nodenext$] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                    { newPMask[o_53, f_56] }
                    Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$])][o_53, f_56] || Heap[null, Nodelist$#sm(Heap[Heap[l_2, Nodenext$], Nodenext$])][o_53, f_56] ==> newPMask[o_53, f_56]
                  );
                  Heap := Heap[null, Nodelist$#sm(Heap[l_2, Nodenext$]):=newPMask];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: y := l.Nodenext$ -- 0120a.vpr@79.5--79.21
            
            // -- Check definedness of l.Nodenext$
              assert {:msg "  Assignment might fail. There might be insufficient permission to access l.Nodenext$ (0120a.vpr@79.5--79.21) [201861]"}
                HasDirectPerm(Mask, l_2, Nodenext$);
            y := Heap[l_2, Nodenext$];
            assume state(Heap, Mask);
          
          // -- Translating statement: l.Nodenext$ := r -- 0120a.vpr@80.5--80.21
            assert {:msg "  Assignment might fail. There might be insufficient permission to access l.Nodenext$ (0120a.vpr@80.5--80.21) [201862]"}
              FullPerm == Mask[l_2, Nodenext$];
            Heap := Heap[l_2, Nodenext$:=r_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: r := l -- 0120a.vpr@81.5--81.11
            r_1 := l_2;
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(Nodelist$(r), write) -- 0120a.vpr@82.5--82.34
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access r.Nodenext$ (0120a.vpr@82.5--82.34) [201863]"}
                perm <= Mask[r_1, Nodenext$];
            }
            Mask := Mask[r_1, Nodenext$:=Mask[r_1, Nodenext$] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access r.Nodeval$ (0120a.vpr@82.5--82.34) [201864]"}
                perm <= Mask[r_1, Nodeval$];
            }
            Mask := Mask[r_1, Nodeval$:=Mask[r_1, Nodeval$] - perm];
            if (Heap[r_1, Nodenext$] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding Nodelist$(r) might fail. There might be insufficient permission to access Nodelist$(r.Nodenext$) (0120a.vpr@82.5--82.34) [201865]"}
                  perm <= Mask[null, Nodelist$(Heap[r_1, Nodenext$])];
              }
              Mask := Mask[null, Nodelist$(Heap[r_1, Nodenext$]):=Mask[null, Nodelist$(Heap[r_1, Nodenext$])] - perm];
              
              // -- Record predicate instance information
                assume InsidePredicate(Nodelist$(r_1), Heap[null, Nodelist$(r_1)], Nodelist$(Heap[r_1, Nodenext$]), Heap[null, Nodelist$(Heap[r_1, Nodenext$])]);
            }
            perm := FullPerm;
            Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Nodelist$#trigger(Heap, Nodelist$(r_1));
            assume Heap[null, Nodelist$(r_1)] == CombineFrames(FrameFragment(Heap[r_1, Nodenext$]), CombineFrames(FrameFragment(Heap[r_1, Nodeval$]), FrameFragment((if Heap[r_1, Nodenext$] != null then Heap[null, Nodelist$(Heap[r_1, Nodenext$])] else EmptyFrame))));
            if (!HasDirectPerm(Mask, null, Nodelist$(r_1))) {
              Heap := Heap[null, Nodelist$#sm(r_1):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Nodelist$(r_1):=freshVersion];
            }
            Heap := Heap[null, Nodelist$#sm(r_1):=Heap[null, Nodelist$#sm(r_1)][r_1, Nodenext$:=true]];
            Heap := Heap[null, Nodelist$#sm(r_1):=Heap[null, Nodelist$#sm(r_1)][r_1, Nodeval$:=true]];
            if (Heap[r_1, Nodenext$] != null) {
              havoc newPMask;
              assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                { newPMask[o_26, f_29] }
                Heap[null, Nodelist$#sm(r_1)][o_26, f_29] || Heap[null, Nodelist$#sm(Heap[r_1, Nodenext$])][o_26, f_29] ==> newPMask[o_26, f_29]
              );
              Heap := Heap[null, Nodelist$#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: l := y -- 0120a.vpr@83.5--83.11
            l_2 := y;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (l_2 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant l != null ==> acc(Nodelist$(l), write) might not be preserved. There might be insufficient permission to access Nodelist$(l) (0120a.vpr@66.15--66.55) [201866]"}
              perm <= Mask[null, Nodelist$(l_2)];
          }
          Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] - perm];
        }
        if (r_1 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant r != null ==> acc(Nodelist$(r), write) might not be preserved. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@67.15--67.55) [201867]"}
              perm <= Mask[null, Nodelist$(r_1)];
          }
          Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] - perm];
        }
        assert {:msg "  Loop invariant old(Nodereverse_vals$(this$_4)) == (l == null ? Seq[Int]() : Nodereverse_vals$(l)) ++ (r == null ? Seq[Int]() : Nodevals$(r)) might not be preserved. Assertion old(Nodereverse_vals$(this$_4)) == (l == null ? Seq[Int]() : Nodereverse_vals$(l)) ++ (r == null ? Seq[Int]() : Nodevals$(r)) might not hold. (0120a.vpr@68.15--68.140) [201868]"}
          Seq#Equal(Nodereverse_vals$(oldHeap, this$_4), Seq#Append((if l_2 == null then (Seq#Empty(): Seq int) else Nodereverse_vals$(Heap, l_2)), (if r_1 == null then (Seq#Empty(): Seq int) else Nodevals$(Heap, r_1))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(l_2 != null);
      assume state(Heap, Mask);
      if (l_2 != null) {
        perm := FullPerm;
        Mask := Mask[null, Nodelist$(l_2):=Mask[null, Nodelist$(l_2)] + perm];
        assume state(Heap, Mask);
      }
      if (r_1 != null) {
        perm := FullPerm;
        Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
      assume Seq#Equal(Nodereverse_vals$(oldHeap, this$_4), Seq#Append((if l_2 == null then (Seq#Empty(): Seq int) else Nodereverse_vals$(Heap, l_2)), (if r_1 == null then (Seq#Empty(): Seq int) else Nodevals$(Heap, r_1))));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Nodereverse_in_place$ might not hold. Assertion r != null might not hold. (0120a.vpr@54.11--54.50) [201869]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Nodereverse_in_place$ might not hold. There might be insufficient permission to access Nodelist$(r) (0120a.vpr@54.11--54.50) [201870]"}
        perm <= Mask[null, Nodelist$(r_1)];
    }
    Mask := Mask[null, Nodelist$(r_1):=Mask[null, Nodelist$(r_1)] - perm];
    assert {:msg "  Postcondition of Nodereverse_in_place$ might not hold. Assertion Nodevals$(r) == old(Nodereverse_vals$(this$_4)) might not hold. (0120a.vpr@55.11--55.58) [201871]"}
      Seq#Equal(Nodevals$(Heap, r_1), Nodereverse_vals$(oldHeap, this$_4));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}