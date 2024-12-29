// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:24:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples/list_insert_tmp.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples/list_insert_tmp-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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
// - height 1: head
// - height 0: elems
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
function  wand(arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int)): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int)): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int)): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: (Seq int), arg4: Ref, arg5: Ref, arg6: (Seq int), arg1_2: Ref, arg2_2: Ref, arg3_2: (Seq int), arg4_2: Ref, arg5_2: Ref, arg6_2: (Seq int) ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function elems
// ==================================================

// Uninterpreted function definitions
function  elems_1(Heap: HeapType, xs: Ref): Seq int;
function  elems'(Heap: HeapType, xs: Ref): Seq int;
axiom (forall Heap: HeapType, xs: Ref ::
  { elems_1(Heap, xs) }
  elems_1(Heap, xs) == elems'(Heap, xs) && dummyFunction(elems#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { elems'(Heap, xs) }
  dummyFunction(elems#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), elems_1(Heap, xs) } { state(Heap, Mask), elems#triggerStateless(xs), List#trigger(Heap, List(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> elems_1(Heap, xs) == Seq#Append(Seq#Singleton(Heap[xs, val]), (if Heap[xs, next] == null then (Seq#Empty(): Seq int) else elems'(Heap, Heap[xs, next])))
);

// Framing axioms
function  elems#frame(frame: FrameType, xs: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), elems'(Heap, xs) } { state(Heap, Mask), elems#triggerStateless(xs), List#trigger(Heap, List(xs)) }
  state(Heap, Mask) ==> elems'(Heap, xs) == elems#frame(Heap[null, List(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  elems#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  elems#triggerStateless(xs: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure elems#definedness(xs: Ref) returns (Result: (Seq int))
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
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(xs), write) in Seq(xs.val) ++ (xs.next == null ? Seq[Int]() : elems(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(xs));
      assume UnfoldingHeap[null, List(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, List(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@27.1--29.89) [134621]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[xs, next]):=UnfoldingMask[null, List(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(xs), UnfoldingHeap[null, List(xs)], List(UnfoldingHeap[xs, next]), UnfoldingHeap[null, List(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (list_insert_tmp.vpr@27.1--29.89) [134622]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (list_insert_tmp.vpr@27.1--29.89) [134623]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (list_insert_tmp.vpr@27.1--29.89) [134624]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs.next) (list_insert_tmp.vpr@29.72--29.86) [134625]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[xs, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume elems#trigger(UnfoldingHeap[null, List(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(xs):=Heap[null, List#sm(xs)][xs, val:=true]];
        Heap := Heap[null, List#sm(xs):=Heap[null, List#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, List#sm(xs)][o_15, f_20] || Heap[null, List#sm(Heap[xs, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, List#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Seq#Append(Seq#Singleton(Heap[xs, val]), (if Heap[xs, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[xs, next])));
}

// ==================================================
// Translation of function head
// ==================================================

// Uninterpreted function definitions
function  head_3(Heap: HeapType, xs: Ref): int;
function  head'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { head_3(Heap, xs) }
  head_3(Heap, xs) == head'(Heap, xs) && dummyFunction(head#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { head'(Heap, xs) }
  dummyFunction(head#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), head_3(Heap, xs) } { state(Heap, Mask), head#triggerStateless(xs), List#trigger(Heap, List(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> head_3(Heap, xs) == Heap[xs, val]
);

// Framing axioms
function  head#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), head'(Heap, xs) }
  state(Heap, Mask) ==> head'(Heap, xs) == head#frame(Heap[null, List(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  head#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  head#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure head#definedness(xs: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(xs), write) in xs.val)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(xs));
      assume UnfoldingHeap[null, List(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, List(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@32.1--34.33) [134626]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[xs, next]):=UnfoldingMask[null, List(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(xs), UnfoldingHeap[null, List(xs)], List(UnfoldingHeap[xs, next]), UnfoldingHeap[null, List(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (list_insert_tmp.vpr@32.1--34.33) [134627]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(xs):=Heap[null, List#sm(xs)][xs, val:=true]];
        Heap := Heap[null, List#sm(xs):=Heap[null, List#sm(xs)][xs, next:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, List#sm(xs)][o_16, f_21] || Heap[null, List#sm(Heap[xs, next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, List#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[xs, val];
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(xs: Ref): Field PredicateType_List FrameType;
function  List#sm(xs: Ref): Field PredicateType_List PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(List(xs)) }
  PredicateMaskField(List(xs)) == List#sm(xs)
);
axiom (forall xs: Ref ::
  { List(xs) }
  IsPredicateField(List(xs))
);
axiom (forall xs: Ref ::
  { List(xs) }
  getPredWandId(List(xs)) == 0
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { List(xs), List(xs2) }
  List(xs) == List(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { List#sm(xs), List#sm(xs2) }
  List#sm(xs) == List#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { List#trigger(Heap, List(xs)) }
  List#everUsed(List(xs))
);

procedure List#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (list_insert_tmp.vpr@22.1--24.2) [134628]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(List(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (list_insert_tmp.vpr@22.1--24.2) [134629]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[xs, next]):=Mask[null, List(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(xs: Ref, x: int) returns (i: int)
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
  var crt: Ref;
  var nxt: Ref;
  var node: Ref;
  var crtElems: (Seq int);
  var newVersion: FrameType;
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
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var prev: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var oElems: (Seq int);
  var oi: int;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var arg_1_1: Ref;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_10: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var freshVersion: FrameType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_11: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var b_12: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_13: bool;
  var arg_2: Ref;
  var b_14: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_15: bool;
  var arg_3: Ref;
  var b_16: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var freshObj: Ref;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of head(xs) < x
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@41.12--41.20) [134630]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume head_3(Heap, xs) < x;
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
    PostMask := PostMask[null, List(xs):=PostMask[null, List(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(xs) == old(elems(xs))[0..i + 1] ++ Seq(x) ++ old(elems(xs))[i + 1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@43.11--43.20) [134631]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List(xs)];
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
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@43.28--43.37) [134632]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@43.64--43.73) [134633]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems_1(PostHeap, xs), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i + 1), 0), Seq#Singleton(x)), Seq#Drop(elems_1(oldHeap, xs), i + 1)));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[crt, $allocated];
    assume Heap[nxt, $allocated];
    assume Heap[node, $allocated];
  
  // -- Translating statement: i := 0 -- list_insert_tmp.vpr@48.3--48.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: crtElems := elems(xs) -- list_insert_tmp.vpr@53.13--53.34
    
    // -- Check definedness of elems(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@53.25--53.34) [134634]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    crtElems := elems_1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List(xs), write) -- list_insert_tmp.vpr@54.3--54.18
    assume List#trigger(Heap, List(xs));
    assume Heap[null, List(xs)] == CombineFrames(FrameFragment(Heap[xs, val]), CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, List(Heap[xs, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(xs) might fail. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@54.3--54.18) [134637]"}
        perm <= Mask[null, List(xs)];
    }
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List(xs))) {
        havoc newVersion;
        Heap := Heap[null, List(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, List(Heap[xs, next]):=Mask[null, List(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List(xs), Heap[null, List(xs)], List(Heap[xs, next]), Heap[null, List(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: crt := xs -- list_insert_tmp.vpr@55.3--55.12
    crt := xs;
    assume state(Heap, Mask);
  
  // -- Translating statement: nxt := xs.next -- list_insert_tmp.vpr@56.3--56.17
    
    // -- Check definedness of xs.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (list_insert_tmp.vpr@56.3--56.17) [134641]"}
        HasDirectPerm(Mask, xs, next);
    nxt := Heap[xs, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --*
  // acc(List(xs), write) &&
  // elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) {
  // } -- list_insert_tmp.vpr@58.3--58.18
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, List(crt):=Ops_1Mask[null, List(crt)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (b_1_1) {
          
          // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Ops_1Heap;
              ExhaleWellDef0Mask := Ops_1Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@58.11--58.12) [134642]"}
                NoPerm < perm ==> NoPerm < Ops_1Mask[null, List(crt)];
              // Finish exhale
              havoc ExhaleHeap;
              b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
              Ops_1Heap := ExhaleHeap;
              // Stop execution
              b_1_1 := false;
            }
        }
        b_1_1 := b_1_1 && Seq#Equal(elems_1(Ops_1Heap, crt), Seq#Append(Seq#Singleton(x), crtElems));
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- list_insert_tmp.vpr@58.11--58.18
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(List(xs), write)
      arg_1 := xs;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[null, List(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List(xs), write) might be negative. (list_insert_tmp.vpr@58.3--58.18) [134643]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, List(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[null, List(arg_1):=Used_1Mask[null, List(arg_1)] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            TempMask := ZeroMask[null, List(arg_1):=FullPerm];
            b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, List(arg_1):=Ops_1Mask[null, List(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, List(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[null, List(arg_1):=Used_1Mask[null, List(arg_1)] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            TempMask := ZeroMask[null, List(arg_1):=FullPerm];
            b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
            Mask := Mask[null, List(arg_1):=Mask[null, List(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][o_52, f_55] || Heap[null, List#sm(xs)][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@58.3--58.18) [134644]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, List(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := ResultHeap;
            ExhaleWellDef0Mask := ResultMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@58.17--58.18) [134645]"}
              NoPerm < perm ==> NoPerm < ResultMask[null, List(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ResultHeap, ExhaleHeap, ResultMask);
            ResultHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@58.17--58.18) [134646]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) might not hold. (list_insert_tmp.vpr@58.3--58.18) [134647]"}
      (b_1_1 && b_1_1) && b_2_1 ==> Seq#Equal(elems_1(ResultHeap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
    assume state(Heap, Mask);
    Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (nxt != null && head(nxt) < x) -- list_insert_tmp.vpr@64.3--93.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < |old(elems(xs))| might not hold on entry. Assertion 0 <= i might not hold. (list_insert_tmp.vpr@65.15--65.45) [134648]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < |old(elems(xs))| might not hold on entry. Assertion i < |old(elems(xs))| might not hold. (list_insert_tmp.vpr@65.15--65.45) [134649]"}
          i < Seq#Length(elems_1(oldHeap, xs));
        if (nxt == null) {
          assert {:msg "  Loop invariant nxt == null ==> i == |old(elems(xs))| - 1 might not hold on entry. Assertion i == |old(elems(xs))| - 1 might not hold. (list_insert_tmp.vpr@66.15--66.56) [134650]"}
            i == Seq#Length(elems_1(oldHeap, xs)) - 1;
        }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(crt.val, write) && acc(crt.next, write) might not hold on entry. There might be insufficient permission to access crt.val (list_insert_tmp.vpr@67.15--67.44) [134651]"}
            perm <= Mask[crt, val];
        }
        Mask := Mask[crt, val:=Mask[crt, val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(crt.val, write) && acc(crt.next, write) might not hold on entry. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@67.15--67.44) [134652]"}
            perm <= Mask[crt, next];
        }
        Mask := Mask[crt, next:=Mask[crt, next] - perm];
        assert {:msg "  Loop invariant nxt == crt.next might not hold on entry. Assertion nxt == crt.next might not hold. (list_insert_tmp.vpr@68.15--68.30) [134653]"}
          nxt == Heap[crt, next];
        assert {:msg "  Loop invariant crt.val == old(elems(xs))[i] might not hold on entry. Assertion crt.val == old(elems(xs))[i] might not hold. (list_insert_tmp.vpr@69.15--69.43) [134654]"}
          Heap[crt, val] == Seq#Index(elems_1(oldHeap, xs), i);
        if (nxt != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant nxt != null ==> acc(List(nxt), write) && elems(nxt) == old(elems(xs))[i + 1..] might not hold on entry. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@70.15--70.86) [134655]"}
              perm <= Mask[null, List(nxt)];
          }
          Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] - perm];
          assert {:msg "  Loop invariant nxt != null ==> acc(List(nxt), write) && elems(nxt) == old(elems(xs))[i + 1..] might not hold on entry. Assertion elems(nxt) == old(elems(xs))[i + 1..] might not hold. (list_insert_tmp.vpr@70.15--70.86) [134656]"}
            Seq#Equal(elems_1(Heap, nxt), Seq#Drop(elems_1(oldHeap, xs), i + 1));
        }
        // permLe
        assert {:msg "  Loop invariant acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) might not hold on entry. Magic wand instance not found. (list_insert_tmp.vpr@71.15--71.22) [134657]"}
          FullPerm <= Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))];
        Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] - FullPerm];
        assert {:msg "  Loop invariant crtElems == Seq(crt.val) ++ (crt.next == null ? Seq[Int]() : elems(crt.next)) might not hold on entry. Assertion crtElems == Seq(crt.val) ++ (crt.next == null ? Seq[Int]() : elems(crt.next)) might not hold. (list_insert_tmp.vpr@72.15--72.92) [134658]"}
          Seq#Equal(crtElems, Seq#Append(Seq#Singleton(Heap[crt, val]), (if Heap[crt, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[crt, next]))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, nxt, crt, crtElems;
      assume Heap[nxt, $allocated];
      assume Heap[crt, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume state(Heap, Mask);
        
        // -- Check definedness of i < |old(elems(xs))|
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@65.34--65.43) [134659]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume i < Seq#Length(elems_1(oldHeap, xs));
        assume state(Heap, Mask);
        if (nxt == null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of i == |old(elems(xs))| - 1
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@66.41--66.50) [134660]"}
                NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          assume i == Seq#Length(elems_1(oldHeap, xs)) - 1;
        }
        assume state(Heap, Mask);
        perm := FullPerm;
        assume crt != null;
        Mask := Mask[crt, val:=Mask[crt, val] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume crt != null;
        Mask := Mask[crt, next:=Mask[crt, next] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of nxt == crt.next
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@68.15--68.30) [134661]"}
            HasDirectPerm(Mask, crt, next);
        assume nxt == Heap[crt, next];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of crt.val == old(elems(xs))[i]
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access crt.val (list_insert_tmp.vpr@69.15--69.43) [134662]"}
            HasDirectPerm(Mask, crt, val);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@69.30--69.39) [134663]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. Index old(elems(xs))[i] into old(elems(xs)) might be negative. (list_insert_tmp.vpr@69.15--69.43) [134664]"}
            i >= 0;
          assert {:msg "  Contract might not be well-formed. Index old(elems(xs))[i] into old(elems(xs)) might exceed sequence length. (list_insert_tmp.vpr@69.15--69.43) [134665]"}
            i < Seq#Length(elems_1(oldHeap, xs));
        assume Heap[crt, val] == Seq#Index(elems_1(oldHeap, xs), i);
        assume state(Heap, Mask);
        if (nxt != null) {
          perm := FullPerm;
          Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Check definedness of elems(nxt) == old(elems(xs))[i + 1..]
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@70.50--70.60) [134666]"}
                NoPerm < perm ==> NoPerm < Mask[null, List(nxt)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@70.68--70.77) [134667]"}
                NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          assume Seq#Equal(elems_1(Heap, nxt), Seq#Drop(elems_1(oldHeap, xs), i + 1));
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, List(crt):=WandDefLHSMask[null, List(crt)] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := WandDefLHSHeap;
                ExhaleWellDef0Mask := WandDefLHSMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@71.15--71.16) [134668]"}
                  NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(crt)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                WandDefLHSHeap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(elems_1(WandDefLHSHeap, crt), Seq#Append(Seq#Singleton(x), crtElems));
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- list_insert_tmp.vpr@71.15--71.22
              lhs3:
              Labellhs3Heap := WandDefLHSHeap;
              Labellhs3Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, List(xs):=WandDefRHSMask[null, List(xs)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            
            // -- Check definedness of elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := WandDefRHSHeap;
                ExhaleWellDef0Mask := WandDefRHSMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@71.21--71.22) [134669]"}
                  NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(xs)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                WandDefRHSHeap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@71.21--71.22) [134670]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assume Seq#Equal(elems_1(WandDefRHSHeap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of crtElems == Seq(crt.val) ++ (crt.next == null ? Seq[Int]() : elems(crt.next))
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access crt.val (list_insert_tmp.vpr@72.15--72.92) [134671]"}
            HasDirectPerm(Mask, crt, val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@72.15--72.92) [134672]"}
            HasDirectPerm(Mask, crt, next);
          if (Heap[crt, next] == null) {
          } else {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@72.15--72.92) [134673]"}
              HasDirectPerm(Mask, crt, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt.next) (list_insert_tmp.vpr@72.76--72.91) [134674]"}
                NoPerm < perm ==> NoPerm < Mask[null, List(Heap[crt, next])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume Seq#Equal(crtElems, Seq#Append(Seq#Singleton(Heap[crt, val]), (if Heap[crt, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[crt, next]))));
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
        assume 0 <= i;
        assume state(Heap, Mask);
        assume i < Seq#Length(elems_1(oldHeap, xs));
        if (nxt == null) {
          assume state(Heap, Mask);
          assume i == Seq#Length(elems_1(oldHeap, xs)) - 1;
        }
        perm := FullPerm;
        assume crt != null;
        Mask := Mask[crt, val:=Mask[crt, val] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume crt != null;
        Mask := Mask[crt, next:=Mask[crt, next] + perm];
        assume state(Heap, Mask);
        assume nxt == Heap[crt, next];
        assume state(Heap, Mask);
        assume Heap[crt, val] == Seq#Index(elems_1(oldHeap, xs), i);
        if (nxt != null) {
          perm := FullPerm;
          Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(elems_1(Heap, nxt), Seq#Drop(elems_1(oldHeap, xs), i + 1));
        }
        assume state(Heap, Mask);
        Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Seq#Equal(crtElems, Seq#Append(Seq#Singleton(Heap[crt, val]), (if Heap[crt, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[crt, next]))));
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of nxt != null && head(nxt) < x
          if (nxt != null) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@64.25--64.34) [134675]"}
                NoPerm < perm ==> NoPerm < Mask[null, List(nxt)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume nxt != null && head_3(Heap, nxt) < x;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[prev, $allocated];
          
          // -- Translating statement: assert old(elems(xs))[i + 1] == elems(nxt)[0] -- list_insert_tmp.vpr@74.5--74.48
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of old(elems(xs))[i + 1] == elems(nxt)[0]
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@74.16--74.25) [134676]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              assert {:msg "  Assert might fail. Index old(elems(xs))[i + 1] into old(elems(xs)) might be negative. (list_insert_tmp.vpr@74.12--74.48) [134677]"}
                i + 1 >= 0;
              assert {:msg "  Assert might fail. Index old(elems(xs))[i + 1] into old(elems(xs)) might exceed sequence length. (list_insert_tmp.vpr@74.12--74.48) [134678]"}
                i + 1 < Seq#Length(elems_1(oldHeap, xs));
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@74.35--74.45) [134679]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(nxt)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                ExhaleWellDef0Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Assert might fail. Index elems(nxt)[0] into elems(nxt) might exceed sequence length. (list_insert_tmp.vpr@74.12--74.48) [134680]"}
                0 < Seq#Length(elems_1(Heap, nxt));
            assert {:msg "  Assert might fail. Assertion old(elems(xs))[i + 1] == elems(nxt)[0] might not hold. (list_insert_tmp.vpr@74.12--74.48) [134681]"}
              Seq#Index(elems_1(oldHeap, xs), i + 1) == Seq#Index(elems_1(Heap, nxt), 0);
            assume state(Heap, Mask);
          
          // -- Translating statement: prev := crt -- list_insert_tmp.vpr@76.5--76.25
            prev := crt;
            assume state(Heap, Mask);
          
          // -- Translating statement: oElems := crtElems -- list_insert_tmp.vpr@77.5--77.37
            oElems := crtElems;
            assume state(Heap, Mask);
          
          // -- Translating statement: oi := i -- list_insert_tmp.vpr@78.5--78.21
            oi := i;
            assume state(Heap, Mask);
          
          // -- Translating statement: crtElems := elems(nxt) -- list_insert_tmp.vpr@80.15--80.37
            
            // -- Check definedness of elems(nxt)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@80.27--80.37) [134682]"}
                  NoPerm < perm ==> NoPerm < Mask[null, List(nxt)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            crtElems := elems_1(Heap, nxt);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(List(nxt), write) -- list_insert_tmp.vpr@82.5--82.21
            assume List#trigger(Heap, List(nxt));
            assume Heap[null, List(nxt)] == CombineFrames(FrameFragment(Heap[nxt, val]), CombineFrames(FrameFragment(Heap[nxt, next]), FrameFragment((if Heap[nxt, next] != null then Heap[null, List(Heap[nxt, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding List(nxt) might fail. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@82.5--82.21) [134683]"}
                perm <= Mask[null, List(nxt)];
            }
            Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, List(nxt))) {
                havoc newVersion;
                Heap := Heap[null, List(nxt):=newVersion];
              }
            perm := FullPerm;
            assume nxt != null;
            Mask := Mask[nxt, val:=Mask[nxt, val] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume nxt != null;
            Mask := Mask[nxt, next:=Mask[nxt, next] + perm];
            assume state(Heap, Mask);
            if (Heap[nxt, next] != null) {
              perm := FullPerm;
              Mask := Mask[null, List(Heap[nxt, next]):=Mask[null, List(Heap[nxt, next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(List(nxt), Heap[null, List(nxt)], List(Heap[nxt, next]), Heap[null, List(Heap[nxt, next])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: crt := nxt -- list_insert_tmp.vpr@83.5--83.15
            crt := nxt;
            assume state(Heap, Mask);
          
          // -- Translating statement: nxt := nxt.next -- list_insert_tmp.vpr@84.5--84.20
            
            // -- Check definedness of nxt.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access nxt.next (list_insert_tmp.vpr@84.5--84.20) [134684]"}
                HasDirectPerm(Mask, nxt, next);
            nxt := Heap[nxt, next];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- list_insert_tmp.vpr@85.5--85.15
            i := i + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: package acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --*
  // acc(List(xs), write) &&
  // elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) {
  //   fold acc(List(prev), write)
  //   apply acc(List(prev), write) && elems(prev) == Seq(x) ++ oElems --*
  //     acc(List(xs), write) &&
  //     elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems)
  // } -- list_insert_tmp.vpr@87.5--92.6
            havoc Ops_3Heap;
            Ops_3Mask := ZeroMask;
            b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            havoc Used_2Heap;
            Used_2Mask := ZeroMask;
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            // Inhaling left hand side of current wand into hypothetical state
            if (b_5) {
              if (b_5) {
                perm := FullPerm;
                b_5 := b_5;
                Ops_3Mask := Ops_3Mask[null, List(crt):=Ops_3Mask[null, List(crt)] + perm];
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
              }
              if (b_5) {
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                if (b_5) {
                  
                  // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Ops_3Heap;
                      ExhaleWellDef0Mask := Ops_3Mask;
                      perm := FullPerm;
                      assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@87.14--87.15) [134685]"}
                        NoPerm < perm ==> NoPerm < Ops_3Mask[null, List(crt)];
                      // Finish exhale
                      havoc ExhaleHeap;
                      b_5 := b_5 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                      Ops_3Heap := ExhaleHeap;
                      // Stop execution
                      b_5 := false;
                    }
                }
                b_5 := b_5 && Seq#Equal(elems_1(Ops_3Heap, crt), Seq#Append(Seq#Singleton(x), crtElems));
              }
            }
            b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            
            // -- Translating statement: label lhs4 -- list_insert_tmp.vpr@87.13--87.22
              lhs4:
              Labellhs4Heap := Ops_3Heap;
              Labellhs4Mask := Ops_3Mask;
              b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            boolCur_1 := true;
            if (b_5) {
              
              // -- Translating statement: fold acc(List(prev), write) -- list_insert_tmp.vpr@88.9--88.24
                ExhaleWellDef0Heap := Ops_3Heap;
                ExhaleWellDef0Mask := Ops_3Mask;
                havoc Used_3Heap;
                Used_3Mask := ZeroMask;
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                
                // -- Transfer of acc(prev.val, write)
                  rcvLocal := prev;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, val] + neededTransfer;
                  assert {:msg "  Folding List(prev) might fail. Fraction acc(prev.val, write) might be negative. (list_insert_tmp.vpr@88.9--88.24) [134686]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, val];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
                        Ops_3Mask := Ops_3Mask[rcvLocal, val:=Ops_3Mask[rcvLocal, val] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, val];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
                        Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                        Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][prev, val:=true]];
                      }
                    }
                  assert {:msg "  Folding List(prev) might fail. There might be insufficient permission to access prev.val (list_insert_tmp.vpr@88.9--88.24) [134687]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, val] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_7 := b_5 && b_6;
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                    b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
                    b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
                    b_7 := b_7 && state(Result_1Heap, Result_1Mask);
                  b_5 := b_5 && b_7;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                
                // -- Transfer of acc(prev.next, write)
                  rcvLocal := prev;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[rcvLocal, next] + neededTransfer;
                  assert {:msg "  Folding List(prev) might fail. Fraction acc(prev.next, write) might be negative. (list_insert_tmp.vpr@88.9--88.24) [134688]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[rcvLocal, next];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Ops_3Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
                        Ops_3Mask := Ops_3Mask[rcvLocal, next:=Ops_3Mask[rcvLocal, next] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[rcvLocal, next];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
                        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                        b_6 := b_6 && Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
                        Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                        Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][prev, next:=true]];
                      }
                    }
                  assert {:msg "  Folding List(prev) might fail. There might be insufficient permission to access prev.next (list_insert_tmp.vpr@88.9--88.24) [134689]"}
                    b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, next] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_8 := b_5 && b_6;
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                    b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
                    b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
                    b_8 := b_8 && state(Result_2Heap, Result_2Mask);
                  b_5 := b_5 && b_8;
                b_5 := b_5 && b_6;
                b_5 := b_5 && Used_3Heap == Ops_3Heap;
                if (b_5 ==> Result_2Heap[prev, next] != null) {
                  
                  // -- Transfer of acc(List(prev.next), write)
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_6) {
                        if (b_5) {
                          
                          // -- Check definedness of acc(List(prev.next), write)
                            assert {:msg "  Folding List(prev) might fail. There might be insufficient permission to access prev.next (list_insert_tmp.vpr@88.9--88.24) [134690]"}
                              HasDirectPerm(Result_2Mask, prev, next);
                        }
                      }
                    arg_1_1 := Result_2Heap[prev, next];
                    neededTransfer := FullPerm;
                    initNeededTransfer := Used_3Mask[null, List(arg_1_1)] + neededTransfer;
                    assert {:msg "  Folding List(prev) might fail. Fraction acc(List(prev.next), write) might be negative. (list_insert_tmp.vpr@88.9--88.24) [134691]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, List(arg_1_1)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_1):=Used_3Mask[null, List(arg_1_1)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                          Ops_3Mask := Ops_3Mask[null, List(arg_1_1):=Ops_3Mask[null, List(arg_1_1)] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, List(arg_1_1)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_3Mask := Used_3Mask[null, List(arg_1_1):=Used_3Mask[null, List(arg_1_1)] + takeTransfer];
                          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                          TempMask := ZeroMask[null, List(arg_1_1):=FullPerm];
                          b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                          Mask := Mask[null, List(arg_1_1):=Mask[null, List(arg_1_1)] - takeTransfer];
                          havoc newPMask;
                          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                            { newPMask[o_53, f_56] }
                            Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][o_53, f_56] || Heap[null, List#sm(Heap[prev, next])][o_53, f_56] ==> newPMask[o_53, f_56]
                          );
                          Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=newPMask];
                        }
                      }
                    assert {:msg "  Folding List(prev) might fail. There might be insufficient permission to access List(prev.next) (list_insert_tmp.vpr@88.9--88.24) [134692]"}
                      b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, List(arg_1_1)] == initNeededTransfer;
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_9 := b_5 && b_6;
                      b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                      b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
                      b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
                      b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                    b_5 := b_5 && b_9;
                  b_5 := b_5 && b_6;
                  b_5 := b_5 && Used_3Heap == Ops_3Heap;
                }
                
                // -- Creating state which is the sum of the two previously built up states
                  b_10 := b_5 && b_6;
                  b_10 := b_10 && state(Result_4Heap, Result_4Mask);
                  b_10 := b_10 && sumMask(Result_4Mask, Ops_3Mask, Used_3Mask);
                  b_10 := (b_10 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_4Heap, Used_3Mask);
                  b_10 := b_10 && state(Result_4Heap, Result_4Mask);
                b_5 := b_5 && b_10;
                perm := FullPerm;
                b_5 := b_5;
                Ops_3Mask := Ops_3Mask[null, List(prev):=Ops_3Mask[null, List(prev)] + perm];
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                assume List#trigger(Ops_3Heap, List(prev));
                assume Ops_3Heap[null, List(prev)] == CombineFrames(FrameFragment(Ops_3Heap[prev, val]), CombineFrames(FrameFragment(Ops_3Heap[prev, next]), FrameFragment((if Ops_3Heap[prev, next] != null then Ops_3Heap[null, List(Ops_3Heap[prev, next])] else EmptyFrame))));
                if (!HasDirectPerm(Ops_3Mask, null, List(prev))) {
                  Ops_3Heap := Ops_3Heap[null, List#sm(prev):=ZeroPMask];
                  havoc freshVersion;
                  Ops_3Heap := Ops_3Heap[null, List(prev):=freshVersion];
                }
                Ops_3Heap := Ops_3Heap[null, List#sm(prev):=Ops_3Heap[null, List#sm(prev)][prev, val:=true]];
                Ops_3Heap := Ops_3Heap[null, List#sm(prev):=Ops_3Heap[null, List#sm(prev)][prev, next:=true]];
                if (Ops_3Heap[prev, next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                    { newPMask[o_26, f_29] }
                    Ops_3Heap[null, List#sm(prev)][o_26, f_29] || Ops_3Heap[null, List#sm(Ops_3Heap[prev, next])][o_26, f_29] ==> newPMask[o_26, f_29]
                  );
                  Ops_3Heap := Ops_3Heap[null, List#sm(prev):=newPMask];
                }
                assume state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            }
            if (b_5) {
              
              // -- Translating statement: apply acc(List(prev), write) && elems(prev) == Seq(x) ++ oElems --*
  //   acc(List(xs), write) &&
  //   elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems) -- list_insert_tmp.vpr@91.9--91.148
                
                // -- check if wand is held and remove an instance
                  ExhaleWellDef0Heap := Ops_3Heap;
                  ExhaleWellDef0Mask := Ops_3Mask;
                  havoc Used_4Heap;
                  Used_4Mask := ZeroMask;
                  b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                  
                  // -- Transfer of acc(List(prev), write) && elems(prev) == Seq(x) ++ oElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems)
                    
                    // -- checking if access predicate defined in used state
                      if (b_5 && b_11) {
                        if (b_5) {
                          
                          // -- Check definedness of acc(List(prev), write) && elems(prev) == Seq(x) ++ oElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems)
                            if (*) {
                              havoc WandDefLHSHeap;
                              WandDefLHSMask := ZeroMask;
                              perm := FullPerm;
                              WandDefLHSMask := WandDefLHSMask[null, List(prev):=WandDefLHSMask[null, List(prev)] + perm];
                              assume state(WandDefLHSHeap, WandDefLHSMask);
                              assume state(WandDefLHSHeap, WandDefLHSMask);
                              
                              // -- Check definedness of elems(prev) == Seq(x) ++ oElems
                                if (*) {
                                  // Exhale precondition of function application
                                  ExhaleWellDef1Heap := WandDefLHSHeap;
                                  ExhaleWellDef1Mask := WandDefLHSMask;
                                  perm := FullPerm;
                                  assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(prev) (list_insert_tmp.vpr@91.35--91.46) [134693]"}
                                    NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(prev)];
                                  // Finish exhale
                                  havoc ExhaleHeap;
                                  assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                  WandDefLHSHeap := ExhaleHeap;
                                  // Stop execution
                                  assume false;
                                }
                              assume Seq#Equal(elems_1(WandDefLHSHeap, prev), Seq#Append(Seq#Singleton(x), oElems));
                              assume state(WandDefLHSHeap, WandDefLHSMask);
                              
                              // -- Translating statement: label lhs7 -- list_insert_tmp.vpr@91.15--91.148
                                lhs7:
                                Labellhs7Heap := WandDefLHSHeap;
                                Labellhs7Mask := WandDefLHSMask;
                                assume state(WandDefLHSHeap, WandDefLHSMask);
                              havoc WandDefRHSHeap;
                              WandDefRHSMask := ZeroMask;
                              perm := FullPerm;
                              WandDefRHSMask := WandDefRHSMask[null, List(xs):=WandDefRHSMask[null, List(xs)] + perm];
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              
                              // -- Check definedness of elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems)
                                if (*) {
                                  // Exhale precondition of function application
                                  ExhaleWellDef1Heap := WandDefRHSHeap;
                                  ExhaleWellDef1Mask := WandDefRHSMask;
                                  perm := FullPerm;
                                  assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@91.91--91.100) [134694]"}
                                    NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(xs)];
                                  // Finish exhale
                                  havoc ExhaleHeap;
                                  assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
                                  WandDefRHSHeap := ExhaleHeap;
                                  // Stop execution
                                  assume false;
                                }
                                if (*) {
                                  // Exhale precondition of function application
                                  ExhaleWellDef1Heap := oldHeap;
                                  ExhaleWellDef1Mask := oldMask;
                                  perm := FullPerm;
                                  assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@91.108--91.117) [134695]"}
                                    NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
                                  // Finish exhale
                                  // Stop execution
                                  assume false;
                                }
                              assume Seq#Equal(elems_1(WandDefRHSHeap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)));
                              assume state(WandDefRHSHeap, WandDefRHSMask);
                              assume false;
                            }
                        }
                      }
                    neededTransfer := 1.000000000;
                    initNeededTransfer := Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] + neededTransfer;
                    assert {:msg "  Applying wand might fail. Fraction acc(List(prev), write) && elems(prev) == Seq(x) ++ oElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..oi] ++ (Seq(x) ++ oElems) might be negative. (list_insert_tmp.vpr@91.9--91.148) [134696]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems))):=Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Ops_3Mask := Ops_3Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems))):=Ops_3Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_4Mask := Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems))):=Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] + takeTransfer];
                          b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                          Mask := Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems))):=Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] - takeTransfer];
                        }
                      }
                    assert {:msg "  Applying wand might fail. Magic wand instance not found. (list_insert_tmp.vpr@91.9--91.148) [134697]"}
                      b_5 && b_11 ==> neededTransfer == 0.000000000 && Used_4Mask[null, wand(prev, prev, Seq#Append(Seq#Singleton(x), oElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)))] == initNeededTransfer;
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_12 := b_5 && b_11;
                      b_12 := b_12 && state(Result_5Heap, Result_5Mask);
                      b_12 := b_12 && sumMask(Result_5Mask, Ops_3Mask, Used_4Mask);
                      b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_5Heap, Used_4Mask);
                      b_12 := b_12 && state(Result_5Heap, Result_5Mask);
                    b_5 := b_5 && b_12;
                  b_5 := b_5 && b_11;
                  b_5 := b_5 && Used_4Heap == Ops_3Heap;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                
                // -- check if LHS holds and remove permissions 
                  ExhaleWellDef0Heap := Ops_3Heap;
                  ExhaleWellDef0Mask := Ops_3Mask;
                  havoc Used_5Heap;
                  Used_5Mask := ZeroMask;
                  b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                  
                  // -- Transfer of acc(List(prev), write)
                    arg_2 := prev;
                    neededTransfer := FullPerm;
                    initNeededTransfer := Used_5Mask[null, List(arg_2)] + neededTransfer;
                    assert {:msg "  Applying wand might fail. Fraction acc(List(prev), write) might be negative. (list_insert_tmp.vpr@91.9--91.148) [134698]"}
                      neededTransfer >= 0.000000000;
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Ops_3Mask[null, List(arg_2)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_5Mask := Used_5Mask[null, List(arg_2):=Used_5Mask[null, List(arg_2)] + takeTransfer];
                          b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                          TempMask := ZeroMask[null, List(arg_2):=FullPerm];
                          b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_5Heap, TempMask);
                          Ops_3Mask := Ops_3Mask[null, List(arg_2):=Ops_3Mask[null, List(arg_2)] - takeTransfer];
                        }
                      }
                    
                    // -- transfer code for top state of stack
                      // accumulate constraints which need to be satisfied for transfer to occur
                      accVar2 := true;
                      // actual code for the transfer from current state on stack
                      if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                        maskTransfer := Mask[null, List(arg_2)];
                        if (neededTransfer <= maskTransfer) {
                          takeTransfer := neededTransfer;
                        } else {
                          takeTransfer := maskTransfer;
                        }
                        if (takeTransfer > 0.000000000) {
                          neededTransfer := neededTransfer - takeTransfer;
                          Used_5Mask := Used_5Mask[null, List(arg_2):=Used_5Mask[null, List(arg_2)] + takeTransfer];
                          b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                          TempMask := ZeroMask[null, List(arg_2):=FullPerm];
                          b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                          Mask := Mask[null, List(arg_2):=Mask[null, List(arg_2)] - takeTransfer];
                          havoc newPMask;
                          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                            { newPMask[o, f_85] }
                            Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][o, f_85] || Heap[null, List#sm(prev)][o, f_85] ==> newPMask[o, f_85]
                          );
                          Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=newPMask];
                        }
                      }
                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(prev) (list_insert_tmp.vpr@91.9--91.148) [134699]"}
                      b_5 && b_13 ==> neededTransfer == 0.000000000 && Used_5Mask[null, List(arg_2)] == initNeededTransfer;
                    
                    // -- Creating state which is the sum of the two previously built up states
                      b_14 := b_5 && b_13;
                      b_14 := b_14 && state(Result_6Heap, Result_6Mask);
                      b_14 := b_14 && sumMask(Result_6Mask, Ops_3Mask, Used_5Mask);
                      b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_6Heap, Used_5Mask);
                      b_14 := b_14 && state(Result_6Heap, Result_6Mask);
                    b_5 := b_5 && b_14;
                  b_5 := b_5 && b_13;
                  b_5 := b_5 && Used_5Heap == Ops_3Heap;
                  if (b_5 && b_13) {
                    if (b_5) {
                      
                      // -- Check definedness of elems(prev) == Seq(x) ++ oElems
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef1Heap := Result_6Heap;
                          ExhaleWellDef1Mask := Result_6Mask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(prev) (list_insert_tmp.vpr@91.35--91.46) [134700]"}
                            NoPerm < perm ==> NoPerm < Result_6Mask[null, List(prev)];
                          // Finish exhale
                          havoc ExhaleHeap;
                          assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                          Result_6Heap := ExhaleHeap;
                          // Stop execution
                          assume false;
                        }
                    }
                  }
                  assert {:msg "  Applying wand might fail. Assertion elems(prev) == Seq(x) ++ oElems might not hold. (list_insert_tmp.vpr@91.9--91.148) [134701]"}
                    b_5 && b_13 ==> Seq#Equal(elems_1(Result_6Heap, prev), Seq#Append(Seq#Singleton(x), oElems));
                  b_5 := b_5 && b_13;
                  b_5 := b_5 && Used_5Heap == Ops_3Heap;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                
                // -- inhale the RHS of the wand
                  perm := FullPerm;
                  b_5 := b_5;
                  Ops_3Mask := Ops_3Mask[null, List(xs):=Ops_3Mask[null, List(xs)] + perm];
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  b_5 := b_5 && Seq#Equal(elems_1(Ops_3Heap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), oi), 0), Seq#Append(Seq#Singleton(x), oElems)));
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                Ops_3Heap := ExhaleHeap;
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
            }
            // Translating exec of non-ghost operationacc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
            havoc Used_6Heap;
            Used_6Mask := ZeroMask;
            b_15 := b_15 && state(Used_6Heap, Used_6Mask);
            
            // -- Transfer of acc(List(xs), write)
              arg_3 := xs;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_6Mask[null, List(arg_3)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(List(xs), write) might be negative. (list_insert_tmp.vpr@87.5--92.6) [134702]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_15) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[null, List(arg_3)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3):=Used_6Mask[null, List(arg_3)] + takeTransfer];
                    b_15 := b_15 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3):=FullPerm];
                    b_15 := b_15 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                    Ops_3Mask := Ops_3Mask[null, List(arg_3):=Ops_3Mask[null, List(arg_3)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_5 && b_5) && b_15) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, List(arg_3)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[null, List(arg_3):=Used_6Mask[null, List(arg_3)] + takeTransfer];
                    b_15 := b_15 && state(Used_6Heap, Used_6Mask);
                    TempMask := ZeroMask[null, List(arg_3):=FullPerm];
                    b_15 := b_15 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                    Mask := Mask[null, List(arg_3):=Mask[null, List(arg_3)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
                      { newPMask[o_11, f_3] }
                      Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))][o_11, f_3] || Heap[null, List#sm(xs)][o_11, f_3] ==> newPMask[o_11, f_3]
                    );
                    Heap := Heap[null, wand#sm(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@87.5--92.6) [134703]"}
                (b_5 && b_5) && b_15 ==> neededTransfer == 0.000000000 && Used_6Mask[null, List(arg_3)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_16 := b_5 && b_15;
                b_16 := b_16 && state(Result_7Heap, Result_7Mask);
                b_16 := b_16 && sumMask(Result_7Mask, Ops_3Mask, Used_6Mask);
                b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_7Heap, Used_6Mask);
                b_16 := b_16 && state(Result_7Heap, Result_7Mask);
              b_5 := b_5 && b_16;
            if ((b_5 && b_5) && b_15) {
              if (b_5) {
                
                // -- Check definedness of elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Result_7Heap;
                    ExhaleWellDef0Mask := Result_7Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@87.21--87.22) [134704]"}
                      NoPerm < perm ==> NoPerm < Result_7Mask[null, List(xs)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Result_7Heap, ExhaleHeap, Result_7Mask);
                    Result_7Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := oldHeap;
                    ExhaleWellDef0Mask := oldMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@87.21--87.22) [134705]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
              }
            }
            assert {:msg "  Packaging wand might fail. Assertion elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) might not hold. (list_insert_tmp.vpr@87.5--92.6) [134706]"}
              (b_5 && b_5) && b_15 ==> Seq#Equal(elems_1(Result_7Heap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
            assume state(Heap, Mask);
            Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < |old(elems(xs))| might not be preserved. Assertion 0 <= i might not hold. (list_insert_tmp.vpr@65.15--65.45) [134707]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < |old(elems(xs))| might not be preserved. Assertion i < |old(elems(xs))| might not hold. (list_insert_tmp.vpr@65.15--65.45) [134708]"}
          i < Seq#Length(elems_1(oldHeap, xs));
        if (nxt == null) {
          assert {:msg "  Loop invariant nxt == null ==> i == |old(elems(xs))| - 1 might not be preserved. Assertion i == |old(elems(xs))| - 1 might not hold. (list_insert_tmp.vpr@66.15--66.56) [134709]"}
            i == Seq#Length(elems_1(oldHeap, xs)) - 1;
        }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(crt.val, write) && acc(crt.next, write) might not be preserved. There might be insufficient permission to access crt.val (list_insert_tmp.vpr@67.15--67.44) [134710]"}
            perm <= Mask[crt, val];
        }
        Mask := Mask[crt, val:=Mask[crt, val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(crt.val, write) && acc(crt.next, write) might not be preserved. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@67.15--67.44) [134711]"}
            perm <= Mask[crt, next];
        }
        Mask := Mask[crt, next:=Mask[crt, next] - perm];
        assert {:msg "  Loop invariant nxt == crt.next might not be preserved. Assertion nxt == crt.next might not hold. (list_insert_tmp.vpr@68.15--68.30) [134712]"}
          nxt == Heap[crt, next];
        assert {:msg "  Loop invariant crt.val == old(elems(xs))[i] might not be preserved. Assertion crt.val == old(elems(xs))[i] might not hold. (list_insert_tmp.vpr@69.15--69.43) [134713]"}
          Heap[crt, val] == Seq#Index(elems_1(oldHeap, xs), i);
        if (nxt != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant nxt != null ==> acc(List(nxt), write) && elems(nxt) == old(elems(xs))[i + 1..] might not be preserved. There might be insufficient permission to access List(nxt) (list_insert_tmp.vpr@70.15--70.86) [134714]"}
              perm <= Mask[null, List(nxt)];
          }
          Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] - perm];
          assert {:msg "  Loop invariant nxt != null ==> acc(List(nxt), write) && elems(nxt) == old(elems(xs))[i + 1..] might not be preserved. Assertion elems(nxt) == old(elems(xs))[i + 1..] might not hold. (list_insert_tmp.vpr@70.15--70.86) [134715]"}
            Seq#Equal(elems_1(Heap, nxt), Seq#Drop(elems_1(oldHeap, xs), i + 1));
        }
        // permLe
        assert {:msg "  Loop invariant acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) might not be preserved. Magic wand instance not found. (list_insert_tmp.vpr@71.15--71.22) [134716]"}
          FullPerm <= Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))];
        Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] - FullPerm];
        assert {:msg "  Loop invariant crtElems == Seq(crt.val) ++ (crt.next == null ? Seq[Int]() : elems(crt.next)) might not be preserved. Assertion crtElems == Seq(crt.val) ++ (crt.next == null ? Seq[Int]() : elems(crt.next)) might not hold. (list_insert_tmp.vpr@72.15--72.92) [134717]"}
          Seq#Equal(crtElems, Seq#Append(Seq#Singleton(Heap[crt, val]), (if Heap[crt, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[crt, next]))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(nxt != null && head_3(Heap, nxt) < x);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume state(Heap, Mask);
      assume i < Seq#Length(elems_1(oldHeap, xs));
      if (nxt == null) {
        assume state(Heap, Mask);
        assume i == Seq#Length(elems_1(oldHeap, xs)) - 1;
      }
      perm := FullPerm;
      assume crt != null;
      Mask := Mask[crt, val:=Mask[crt, val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume crt != null;
      Mask := Mask[crt, next:=Mask[crt, next] + perm];
      assume state(Heap, Mask);
      assume nxt == Heap[crt, next];
      assume state(Heap, Mask);
      assume Heap[crt, val] == Seq#Index(elems_1(oldHeap, xs), i);
      if (nxt != null) {
        perm := FullPerm;
        Mask := Mask[null, List(nxt):=Mask[null, List(nxt)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Seq#Equal(elems_1(Heap, nxt), Seq#Drop(elems_1(oldHeap, xs), i + 1));
      }
      assume state(Heap, Mask);
      Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(crtElems, Seq#Append(Seq#Singleton(Heap[crt, val]), (if Heap[crt, next] == null then (Seq#Empty(): Seq int) else elems_1(Heap, Heap[crt, next]))));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --*
  //   acc(List(xs), write) &&
  //   elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) -- list_insert_tmp.vpr@95.3--98.79
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, List(crt):=WandDefLHSMask[null, List(crt)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := WandDefLHSHeap;
            ExhaleWellDef1Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@96.22--96.32) [134718]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(crt)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(elems_1(WandDefLHSHeap, crt), Seq#Append(Seq#Singleton(x), crtElems));
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs8 -- list_insert_tmp.vpr@96.5--98.79
          lhs8:
          Labellhs8Heap := WandDefLHSHeap;
          Labellhs8Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, List(xs):=WandDefRHSMask[null, List(xs)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := WandDefRHSHeap;
            ExhaleWellDef1Mask := WandDefRHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@98.22--98.31) [134719]"}
              NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
            WandDefRHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@98.39--98.48) [134720]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume Seq#Equal(elems_1(WandDefRHSHeap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (list_insert_tmp.vpr@96.5--98.79) [134721]"}
      FullPerm <= AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))];
    AssertMask := AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: node := new(val, next) -- list_insert_tmp.vpr@102.3--102.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    node := freshObj;
    Mask := Mask[node, val:=Mask[node, val] + FullPerm];
    Mask := Mask[node, next:=Mask[node, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: node.val := x -- list_insert_tmp.vpr@103.3--103.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access node.val (list_insert_tmp.vpr@103.3--103.16) [134722]"}
      FullPerm == Mask[node, val];
    Heap := Heap[node, val:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: node.next := nxt -- list_insert_tmp.vpr@104.3--104.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access node.next (list_insert_tmp.vpr@104.3--104.19) [134723]"}
      FullPerm == Mask[node, next];
    Heap := Heap[node, next:=nxt];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(node), write) -- list_insert_tmp.vpr@106.3--106.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(node) might fail. There might be insufficient permission to access node.val (list_insert_tmp.vpr@106.3--106.18) [134726]"}
        perm <= Mask[node, val];
    }
    Mask := Mask[node, val:=Mask[node, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(node) might fail. There might be insufficient permission to access node.next (list_insert_tmp.vpr@106.3--106.18) [134728]"}
        perm <= Mask[node, next];
    }
    Mask := Mask[node, next:=Mask[node, next] - perm];
    if (Heap[node, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List(node) might fail. There might be insufficient permission to access List(node.next) (list_insert_tmp.vpr@106.3--106.18) [134730]"}
          perm <= Mask[null, List(Heap[node, next])];
      }
      Mask := Mask[null, List(Heap[node, next]):=Mask[null, List(Heap[node, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(List(node), Heap[null, List(node)], List(Heap[node, next]), Heap[null, List(Heap[node, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, List(node):=Mask[null, List(node)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List#trigger(Heap, List(node));
    assume Heap[null, List(node)] == CombineFrames(FrameFragment(Heap[node, val]), CombineFrames(FrameFragment(Heap[node, next]), FrameFragment((if Heap[node, next] != null then Heap[null, List(Heap[node, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, List(node))) {
      Heap := Heap[null, List#sm(node):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List(node):=freshVersion];
    }
    Heap := Heap[null, List#sm(node):=Heap[null, List#sm(node)][node, val:=true]];
    Heap := Heap[null, List#sm(node):=Heap[null, List#sm(node)][node, next:=true]];
    if (Heap[node, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
        { newPMask[o_35, f_17] }
        Heap[null, List#sm(node)][o_35, f_17] || Heap[null, List#sm(Heap[node, next])][o_35, f_17] ==> newPMask[o_35, f_17]
      );
      Heap := Heap[null, List#sm(node):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert elems(node) == Seq(x) ++ old(elems(xs))[i + 1..] -- list_insert_tmp.vpr@112.3--112.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of elems(node) == Seq(x) ++ old(elems(xs))[i + 1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(node) (list_insert_tmp.vpr@112.10--112.21) [134732]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(node)];
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
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@112.39--112.48) [134733]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion elems(node) == Seq(x) ++ old(elems(xs))[i + 1..] might not hold. (list_insert_tmp.vpr@112.10--112.56) [134734]"}
      Seq#Equal(elems_1(Heap, node), Seq#Append(Seq#Singleton(x), Seq#Drop(elems_1(oldHeap, xs), i + 1)));
    assume state(Heap, Mask);
  
  // -- Translating statement: crt.next := node -- list_insert_tmp.vpr@116.3--116.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@116.3--116.19) [134735]"}
      FullPerm == Mask[crt, next];
    Heap := Heap[crt, next:=node];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(crt), write) -- list_insert_tmp.vpr@117.3--117.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(crt) might fail. There might be insufficient permission to access crt.val (list_insert_tmp.vpr@117.3--117.17) [134738]"}
        perm <= Mask[crt, val];
    }
    Mask := Mask[crt, val:=Mask[crt, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(crt) might fail. There might be insufficient permission to access crt.next (list_insert_tmp.vpr@117.3--117.17) [134740]"}
        perm <= Mask[crt, next];
    }
    Mask := Mask[crt, next:=Mask[crt, next] - perm];
    if (Heap[crt, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List(crt) might fail. There might be insufficient permission to access List(crt.next) (list_insert_tmp.vpr@117.3--117.17) [134742]"}
          perm <= Mask[null, List(Heap[crt, next])];
      }
      Mask := Mask[null, List(Heap[crt, next]):=Mask[null, List(Heap[crt, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(List(crt), Heap[null, List(crt)], List(Heap[crt, next]), Heap[null, List(Heap[crt, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, List(crt):=Mask[null, List(crt)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List#trigger(Heap, List(crt));
    assume Heap[null, List(crt)] == CombineFrames(FrameFragment(Heap[crt, val]), CombineFrames(FrameFragment(Heap[crt, next]), FrameFragment((if Heap[crt, next] != null then Heap[null, List(Heap[crt, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, List(crt))) {
      Heap := Heap[null, List#sm(crt):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List(crt):=freshVersion];
    }
    Heap := Heap[null, List#sm(crt):=Heap[null, List#sm(crt)][crt, val:=true]];
    Heap := Heap[null, List#sm(crt):=Heap[null, List#sm(crt)][crt, next:=true]];
    if (Heap[crt, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
        { newPMask[o_1, f_11] }
        Heap[null, List#sm(crt)][o_1, f_11] || Heap[null, List#sm(Heap[crt, next])][o_1, f_11] ==> newPMask[o_1, f_11]
      );
      Heap := Heap[null, List#sm(crt):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --*
  //   acc(List(xs), write) &&
  //   elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) -- list_insert_tmp.vpr@127.3--130.79
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --* acc(List(xs), write) && elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, List(crt):=WandDefLHSMask[null, List(crt)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := WandDefLHSHeap;
            ExhaleWellDef1Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@128.22--128.32) [134744]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, List(crt)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(elems_1(WandDefLHSHeap, crt), Seq#Append(Seq#Singleton(x), crtElems));
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- list_insert_tmp.vpr@128.5--130.79
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, List(xs):=WandDefRHSMask[null, List(xs)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := WandDefRHSHeap;
            ExhaleWellDef1Mask := WandDefRHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@130.22--130.31) [134745]"}
              NoPerm < perm ==> NoPerm < WandDefRHSMask[null, List(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
            WandDefRHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@130.39--130.48) [134746]"}
              NoPerm < perm ==> NoPerm < oldMask[null, List(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume Seq#Equal(elems_1(WandDefRHSHeap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (list_insert_tmp.vpr@128.5--130.79) [134747]"}
      FullPerm <= AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))];
    AssertMask := AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=AssertMask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems -- list_insert_tmp.vpr@133.3--133.59
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@133.10--133.59) [134749]"}
        perm <= AssertMask[null, List(crt)];
    }
    AssertMask := AssertMask[null, List(crt):=AssertMask[null, List(crt)] - perm];
    
    // -- Check definedness of elems(crt) == Seq(x) ++ crtElems
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@133.27--133.37) [134750]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(crt)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion elems(crt) == Seq(x) ++ crtElems might not hold. (list_insert_tmp.vpr@133.10--133.59) [134751]"}
      Seq#Equal(elems_1(AssertHeap, crt), Seq#Append(Seq#Singleton(x), crtElems));
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(List(crt), write) && elems(crt) == Seq(x) ++ crtElems --*
  //   acc(List(xs), write) &&
  //   elems(xs) == old(elems(xs))[0..i] ++ (Seq(x) ++ crtElems) -- list_insert_tmp.vpr@135.3--138.79
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (list_insert_tmp.vpr@135.3--138.79) [134752]"}
        FullPerm <= Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))];
      Mask := Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems))):=Mask[null, wand(crt, crt, Seq#Append(Seq#Singleton(x), crtElems), xs, xs, Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)))] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(crt) (list_insert_tmp.vpr@135.3--138.79) [134754]"}
          perm <= Mask[null, List(crt)];
      }
      Mask := Mask[null, List(crt):=Mask[null, List(crt)] - perm];
      assert {:msg "  Applying wand might fail. Assertion elems(crt) == Seq(x) ++ crtElems might not hold. (list_insert_tmp.vpr@135.3--138.79) [134755]"}
        Seq#Equal(elems_1(Heap, crt), Seq#Append(Seq#Singleton(x), crtElems));
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, List(xs):=Mask[null, List(xs)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(elems_1(Heap, xs), Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i), 0), Seq#Append(Seq#Singleton(x), crtElems)));
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access List(xs) (list_insert_tmp.vpr@42.11--42.24) [134757]"}
        perm <= Mask[null, List(xs)];
    }
    Mask := Mask[null, List(xs):=Mask[null, List(xs)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion elems(xs) == old(elems(xs))[0..i + 1] ++ Seq(x) ++ old(elems(xs))[i + 1..] might not hold. (list_insert_tmp.vpr@43.11--43.81) [134758]"}
      Seq#Equal(elems_1(Heap, xs), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(elems_1(oldHeap, xs), i + 1), 0), Seq#Singleton(x)), Seq#Drop(elems_1(oldHeap, xs), i + 1)));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}