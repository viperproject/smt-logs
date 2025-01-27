// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/linkedlists.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/linkedlists-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_25: Ref, f_33: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_25, f_33] }
  Heap[o_25, $allocated] ==> Heap[Heap[o_25, f_33], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_57: Ref, f_69: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_57, f_69] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_57, f_69) ==> Heap[o_57, f_69] == ExhaleHeap[o_57, f_69]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29), ExhaleHeap[null, PredicateMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> Heap[null, PredicateMaskField(pm_f_29)] == ExhaleHeap[null, PredicateMaskField(pm_f_29)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_69: (Field A B) ::
    { ExhaleHeap[o2_29, f_69] }
    Heap[null, PredicateMaskField(pm_f_29)][o2_29, f_69] ==> Heap[o2_29, f_69] == ExhaleHeap[o2_29, f_69]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29), ExhaleHeap[null, WandMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> Heap[null, WandMaskField(pm_f_29)] == ExhaleHeap[null, WandMaskField(pm_f_29)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_69: (Field A B) ::
    { ExhaleHeap[o2_29, f_69] }
    Heap[null, WandMaskField(pm_f_29)][o2_29, f_69] ==> Heap[o2_29, f_69] == ExhaleHeap[o2_29, f_69]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_57: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_57, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_57, $allocated] ==> ExhaleHeap[o_57, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_25: Ref, f_56: (Field A B), v: B ::
  { Heap[o_25, f_56:=v] }
  succHeap(Heap, Heap[o_25, f_56:=v])
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
// - height 8: length
// - height 7: head
// - height 6: elems
// - height 5: contains
// - height 4: tail
// - height 3: get
// - height 2: ascending
// - height 1: sum
// - height 0: last
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
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, xs: Ref): int;
function  length'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { length_1(Heap, xs) }
  length_1(Heap, xs) == length'(Heap, xs) && dummyFunction(length#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { length'(Heap, xs) }
  dummyFunction(length#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length_1(Heap, xs) } { state(Heap, Mask), length#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> xs != null ==> length_1(Heap, xs) == 1 + (if Heap[xs, next] == null then 0 else length'(Heap, Heap[xs, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length'(Heap, xs) } { state(Heap, Mask), length#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> length'(Heap, xs) == length#frame(Heap[null, list(xs)], xs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), length'(Heap, xs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 8 || length#trigger(Heap[null, list(xs)], xs)) ==> xs != null ==> length'(Heap, xs) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(xs: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in 1 + (xs.next == null ? 0 : length(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@22.1--25.75) [50665]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@22.1--25.75) [50666]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@22.1--25.75) [50667]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@25.57--25.72) [50668]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function length might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@25.57--25.72) [50669]"}
            UnfoldingHeap[xs, next] != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, list#sm(xs)][o_5, f_11] || Heap[null, list#sm(Heap[xs, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[xs, next] == null then 0 else length_1(Heap, Heap[xs, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (linkedlists.vpr@24.11--24.21) [50670]"}
      Result > 0;
}

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum_1(Heap: HeapType, xs: Ref): int;
function  sum'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { sum_1(Heap, xs) }
  sum_1(Heap, xs) == sum'(Heap, xs) && dummyFunction(sum#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { sum'(Heap, xs) }
  dummyFunction(sum#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), sum_1(Heap, xs) } { state(Heap, Mask), sum#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> xs != null ==> sum_1(Heap, xs) == Heap[xs, val] + (if Heap[xs, next] == null then 0 else sum'(Heap, Heap[xs, next]))
);

// Framing axioms
function  sum#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), sum'(Heap, xs) } { state(Heap, Mask), sum#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> sum'(Heap, xs) == sum#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(xs: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in xs.val + (xs.next == null ? 0 : sum(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@27.1--29.77) [50671]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@27.1--29.77) [50672]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@27.1--29.77) [50673]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@27.1--29.77) [50674]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@29.62--29.74) [50675]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function sum might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@29.62--29.74) [50676]"}
            UnfoldingHeap[xs, next] != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, list#sm(xs)][o_6, f_12] || Heap[null, list#sm(Heap[xs, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[xs, val] + (if Heap[xs, next] == null then 0 else sum_1(Heap, Heap[xs, next]));
}

// ==================================================
// Translation of function head
// ==================================================

// Uninterpreted function definitions
function  head_2(Heap: HeapType, xs: Ref): int;
function  head'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { head_2(Heap, xs) }
  head_2(Heap, xs) == head'(Heap, xs) && dummyFunction(head#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { head'(Heap, xs) }
  dummyFunction(head#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), head_2(Heap, xs) } { state(Heap, Mask), head#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> xs != null ==> head_2(Heap, xs) == Heap[xs, val]
);

// Framing axioms
function  head#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), head'(Heap, xs) }
  state(Heap, Mask) ==> head'(Heap, xs) == head#frame(Heap[null, list(xs)], xs)
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
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in xs.val)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@31.1--33.38) [50677]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@31.1--33.38) [50678]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, list#sm(xs)][o_40, f_52] || Heap[null, list#sm(Heap[xs, next])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[xs, val];
}

// ==================================================
// Translation of function tail
// ==================================================

// Uninterpreted function definitions
function  tail_2(Heap: HeapType, xs: Ref): Ref;
function  tail'(Heap: HeapType, xs: Ref): Ref;
axiom (forall Heap: HeapType, xs: Ref ::
  { tail_2(Heap, xs) }
  tail_2(Heap, xs) == tail'(Heap, xs) && dummyFunction(tail#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { tail'(Heap, xs) }
  dummyFunction(tail#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), tail_2(Heap, xs) } { state(Heap, Mask), tail#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> xs != null ==> tail_2(Heap, xs) == Heap[xs, next]
);

// Framing axioms
function  tail#frame(frame: FrameType, xs: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), tail'(Heap, xs) }
  state(Heap, Mask) ==> tail'(Heap, xs) == tail#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  tail#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  tail#triggerStateless(xs: Ref): Ref;

// Check contract well-formedness and postcondition
procedure tail#definedness(xs: Ref) returns (Result: Ref)
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
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in xs.next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@35.1--37.39) [50679]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@35.1--37.39) [50680]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
            { newPMask[o_42, f_55] }
            Heap[null, list#sm(xs)][o_42, f_55] || Heap[null, list#sm(Heap[xs, next])][o_42, f_55] ==> newPMask[o_42, f_55]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[xs, next];
}

// ==================================================
// Translation of function last
// ==================================================

// Uninterpreted function definitions
function  last_1(Heap: HeapType, xs: Ref): int;
function  last'(Heap: HeapType, xs: Ref): int;
axiom (forall Heap: HeapType, xs: Ref ::
  { last_1(Heap, xs) }
  last_1(Heap, xs) == last'(Heap, xs) && dummyFunction(last#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { last'(Heap, xs) }
  dummyFunction(last#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), last_1(Heap, xs) } { state(Heap, Mask), last#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> xs != null ==> last_1(Heap, xs) == (if Heap[xs, next] == null then Heap[xs, val] else last'(Heap, Heap[xs, next]))
);

// Framing axioms
function  last#frame(frame: FrameType, xs: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), last'(Heap, xs) } { state(Heap, Mask), last#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> last'(Heap, xs) == last#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  last#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  last#triggerStateless(xs: Ref): int;

// Check contract well-formedness and postcondition
procedure last#definedness(xs: Ref) returns (Result: int)
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
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in (xs.next == null ? xs.val : last(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@39.1--41.72) [50681]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@39.1--41.72) [50682]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@39.1--41.72) [50683]"}
          HasDirectPerm(UnfoldingMask, xs, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@39.1--41.72) [50684]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@41.57--41.70) [50685]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function last might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@41.57--41.70) [50686]"}
            UnfoldingHeap[xs, next] != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume last#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, list#sm(xs)][o_46, f_60] || Heap[null, list#sm(Heap[xs, next])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[xs, next] == null then Heap[xs, val] else last_1(Heap, Heap[xs, next]));
}

// ==================================================
// Translation of function contains
// ==================================================

// Uninterpreted function definitions
function  contains(Heap: HeapType, xs: Ref, x: int): bool;
function  contains'(Heap: HeapType, xs: Ref, x: int): bool;
axiom (forall Heap: HeapType, xs: Ref, x: int ::
  { contains(Heap, xs, x) }
  contains(Heap, xs, x) == contains'(Heap, xs, x) && dummyFunction(contains#triggerStateless(xs, x))
);
axiom (forall Heap: HeapType, xs: Ref, x: int ::
  { contains'(Heap, xs, x) }
  dummyFunction(contains#triggerStateless(xs, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, x: int ::
  { state(Heap, Mask), contains(Heap, xs, x) } { state(Heap, Mask), contains#triggerStateless(xs, x), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> xs != null ==> contains(Heap, xs, x) == (x == Heap[xs, val] || (Heap[xs, next] != null && contains'(Heap, Heap[xs, next], x)))
);

// Framing axioms
function  contains#frame(frame: FrameType, xs: Ref, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, x: int ::
  { state(Heap, Mask), contains'(Heap, xs, x) } { state(Heap, Mask), contains#triggerStateless(xs, x), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> contains'(Heap, xs, x) == contains#frame(Heap[null, list(xs)], xs, x)
);

// Trigger function (controlling recursive postconditions)
function  contains#trigger(frame: FrameType, xs: Ref, x: int): bool;

// State-independent trigger function
function  contains#triggerStateless(xs: Ref, x: int): bool;

// Check contract well-formedness and postcondition
procedure contains#definedness(xs: Ref, x: int) returns (Result: bool)
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
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in x == xs.val || xs.next != null && contains(xs.next, x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@43.1--45.88) [50687]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@43.1--45.88) [50688]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      if (!(x == UnfoldingHeap[xs, val])) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@43.1--45.88) [50689]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (UnfoldingHeap[xs, next] != null) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@43.1--45.88) [50690]"}
            HasDirectPerm(UnfoldingMask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function contains might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@45.65--45.85) [50691]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
            assert {:msg "  Precondition of function contains might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@45.65--45.85) [50692]"}
              UnfoldingHeap[xs, next] != null;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume contains#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next], x);
          }
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, list#sm(xs)][o, f_61] || Heap[null, list#sm(Heap[xs, next])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := x == Heap[xs, val] || (Heap[xs, next] != null && contains(Heap, Heap[xs, next], x));
}

// ==================================================
// Translation of function elems
// ==================================================

// Uninterpreted function definitions
function  elems(Heap: HeapType, xs: Ref): Seq int;
function  elems'(Heap: HeapType, xs: Ref): Seq int;
axiom (forall Heap: HeapType, xs: Ref ::
  { elems(Heap, xs) }
  elems(Heap, xs) == elems'(Heap, xs) && dummyFunction(elems#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { elems'(Heap, xs) }
  dummyFunction(elems#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), elems(Heap, xs) } { state(Heap, Mask), elems#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> xs != null ==> elems(Heap, xs) == Seq#Append(Seq#Singleton(Heap[xs, val]), (if Heap[xs, next] == null then (Seq#Empty(): Seq int) else elems'(Heap, Heap[xs, next])))
);

// Framing axioms
function  elems#frame(frame: FrameType, xs: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), elems'(Heap, xs) } { state(Heap, Mask), elems#triggerStateless(xs), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> elems'(Heap, xs) == elems#frame(Heap[null, list(xs)], xs)
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
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in Seq(xs.val) ++ (xs.next == null ? Seq[Int]() : elems(xs.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@47.1--49.94) [50693]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@47.1--49.94) [50694]"}
        HasDirectPerm(UnfoldingMask, xs, val);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@47.1--49.94) [50695]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (UnfoldingHeap[xs, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@47.1--49.94) [50696]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@49.77--49.91) [50697]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function elems might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@49.77--49.91) [50698]"}
            UnfoldingHeap[xs, next] != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume elems#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, list#sm(xs)][o_14, f_3] || Heap[null, list#sm(Heap[xs, next])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Seq#Append(Seq#Singleton(Heap[xs, val]), (if Heap[xs, next] == null then (Seq#Empty(): Seq int) else elems(Heap, Heap[xs, next])));
}

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, xs: Ref, index: int): int;
function  get'(Heap: HeapType, xs: Ref, index: int): int;
axiom (forall Heap: HeapType, xs: Ref, index: int ::
  { get(Heap, xs, index) }
  get(Heap, xs, index) == get'(Heap, xs, index) && dummyFunction(get#triggerStateless(xs, index))
);
axiom (forall Heap: HeapType, xs: Ref, index: int ::
  { get'(Heap, xs, index) }
  dummyFunction(get#triggerStateless(xs, index))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, index: int ::
  { state(Heap, Mask), get(Heap, xs, index) } { state(Heap, Mask), get#triggerStateless(xs, index), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> xs != null && (0 <= index && index < length_1(Heap, xs)) ==> get(Heap, xs, index) == (if index == 0 then Heap[xs, val] else get'(Heap, Heap[xs, next], index - 1))
);

// Framing axioms
function  get#frame(frame: FrameType, xs: Ref, index: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, index: int ::
  { state(Heap, Mask), get'(Heap, xs, index) } { state(Heap, Mask), get#triggerStateless(xs, index), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> get'(Heap, xs, index) == get#frame(Heap[null, list(xs)], xs, index)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, xs: Ref, index: int): bool;

// State-independent trigger function
function  get#triggerStateless(xs: Ref, index: int): int;

// Check contract well-formedness and postcondition
procedure get#definedness(xs: Ref, index: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
    assume 0 <= index;
    assume state(Heap, Mask);
    
    // -- Check definedness of index < length(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@53.34--53.44) [50699]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@53.34--53.44) [50700]"}
          xs != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume index < length_1(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in (index == 0 ? xs.val : get(xs.next, index - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@51.1--54.77) [50701]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (index == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@51.1--54.77) [50702]"}
          HasDirectPerm(UnfoldingMask, xs, val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@51.1--54.77) [50703]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@54.52--54.75) [50704]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function get might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@54.52--54.75) [50705]"}
            UnfoldingHeap[xs, next] != null;
          assert {:msg "  Precondition of function get might not hold. Assertion 0 <= index - 1 might not hold. (linkedlists.vpr@54.52--54.75) [50706]"}
            0 <= index - 1;
          assert {:msg "  Precondition of function get might not hold. Assertion index - 1 < length(xs.next) might not hold. (linkedlists.vpr@54.52--54.75) [50707]"}
            index - 1 < length_1(UnfoldingHeap, UnfoldingHeap[xs, next]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume get#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next], index - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
            { newPMask[o_3, f_24] }
            Heap[null, list#sm(xs)][o_3, f_24] || Heap[null, list#sm(Heap[xs, next])][o_3, f_24] ==> newPMask[o_3, f_24]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if index == 0 then Heap[xs, val] else get(Heap, Heap[xs, next], index - 1));
}

// ==================================================
// Translation of function ascending
// ==================================================

// Uninterpreted function definitions
function  ascending(Heap: HeapType, xs: Ref): bool;
function  ascending'(Heap: HeapType, xs: Ref): bool;
axiom (forall Heap: HeapType, xs: Ref ::
  { ascending(Heap, xs) }
  ascending(Heap, xs) == ascending'(Heap, xs) && dummyFunction(ascending#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { ascending'(Heap, xs) }
  dummyFunction(ascending#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), ascending(Heap, xs) } { state(Heap, Mask), ascending#triggerStateless(xs), list#trigger(Heap, list(xs)), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> xs != null ==> ascending(Heap, xs) == (Heap[xs, next] == null || (Heap[xs, val] <= head_2(Heap, Heap[xs, next]) && ascending'(Heap, Heap[xs, next])))
);

// Framing axioms
function  ascending#frame(frame: FrameType, xs: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), ascending'(Heap, xs) } { state(Heap, Mask), ascending#triggerStateless(xs), list#trigger(Heap, list(xs)), list#trigger(Heap, list(xs)) }
  state(Heap, Mask) ==> ascending'(Heap, xs) == ascending#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  ascending#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  ascending#triggerStateless(xs: Ref): bool;

// Check contract well-formedness and postcondition
procedure ascending#definedness(xs: Ref) returns (Result: bool)
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
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(list(xs), write) in xs.next == null || xs.val <= head(xs.next) && ascending(xs.next))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume list#trigger(UnfoldingHeap, list(xs));
      assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(xs) (linkedlists.vpr@94.1--96.100) [50708]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(xs)];
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume xs != null;
      UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[xs, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[xs, next] != null;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@94.1--96.100) [50709]"}
        HasDirectPerm(UnfoldingMask, xs, next);
      if (!(UnfoldingHeap[xs, next] == null)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.val (linkedlists.vpr@94.1--96.100) [50710]"}
          HasDirectPerm(UnfoldingMask, xs, val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@94.1--96.100) [50711]"}
          HasDirectPerm(UnfoldingMask, xs, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@96.61--96.74) [50712]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
          assert {:msg "  Precondition of function head might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@96.61--96.74) [50713]"}
            UnfoldingHeap[xs, next] != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (UnfoldingHeap[xs, val] <= head_2(UnfoldingHeap, UnfoldingHeap[xs, next])) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@94.1--96.100) [50714]"}
            HasDirectPerm(UnfoldingMask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@96.78--96.96) [50715]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
            assert {:msg "  Precondition of function ascending might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@96.78--96.96) [50716]"}
              UnfoldingHeap[xs, next] != null;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume ascending#trigger(UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], UnfoldingHeap[xs, next]);
          }
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
        Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
        if (Heap[xs, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
            { newPMask[o_1, f_10] }
            Heap[null, list#sm(xs)][o_1, f_10] || Heap[null, list#sm(Heap[xs, next])][o_1, f_10] ==> newPMask[o_1, f_10]
          );
          Heap := Heap[null, list#sm(xs):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[xs, next] == null || (Heap[xs, val] <= head_2(Heap, Heap[xs, next]) && ascending(Heap, Heap[xs, next]));
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(xs: Ref): Field PredicateType_list FrameType;
function  list#sm(xs: Ref): Field PredicateType_list PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(list(xs)) }
  PredicateMaskField(list(xs)) == list#sm(xs)
);
axiom (forall xs: Ref ::
  { list(xs) }
  IsPredicateField(list(xs))
);
axiom (forall xs: Ref ::
  { list(xs) }
  getPredWandId(list(xs)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { list(xs), list(xs2) }
  list(xs) == list(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { list#sm(xs), list#sm(xs2) }
  list#sm(xs) == list#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { list#trigger(Heap, list(xs)) }
  list#everUsed(list(xs))
);

procedure list#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@18.1--20.2) [50717]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(list(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@18.1--20.2) [50718]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of xs.next != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (linkedlists.vpr@18.1--20.2) [50719]"}
          HasDirectPerm(Mask, xs, next);
      assume Heap[xs, next] != null;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method prepend
// ==================================================

procedure prepend(xs: Ref, y: int) returns (ys: Ref)
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
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
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
    PostMask := PostMask[null, list(ys):=PostMask[null, list(ys)] + perm];
    assume state(PostHeap, PostMask);
    assume ys != null;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(ys) == old(length(xs)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@59.11--59.21) [50720]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
        assert {:msg "  Precondition of function length might not hold. Assertion ys != null might not hold. (linkedlists.vpr@59.11--59.21) [50721]"}
          ys != null;
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@59.29--59.39) [50722]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@59.29--59.39) [50723]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, ys) == length_1(oldHeap, xs) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(ys) == Seq(y) ++ old(elems(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@60.11--60.20) [50724]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
        assert {:msg "  Precondition of function elems might not hold. Assertion ys != null might not hold. (linkedlists.vpr@60.11--60.20) [50725]"}
          ys != null;
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
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@60.38--60.47) [50726]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@60.38--60.47) [50727]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems(PostHeap, ys), Seq#Append(Seq#Singleton(y), elems(oldHeap, xs)));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of head(ys) == y
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@61.11--61.19) [50728]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
        assert {:msg "  Precondition of function head might not hold. Assertion ys != null might not hold. (linkedlists.vpr@61.11--61.19) [50729]"}
          ys != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume head_2(PostHeap, ys) == y;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(y <= head(xs) && ascending(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@62.20--62.28) [50730]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@62.20--62.28) [50731]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (y <= head_2(oldHeap, xs)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := oldHeap;
          ExhaleWellDef0Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@62.32--62.45) [50732]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          assert {:msg "  Precondition of function ascending might not hold. Assertion xs != null might not hold. (linkedlists.vpr@62.32--62.45) [50733]"}
            xs != null;
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
    if (y <= head_2(oldHeap, xs) && ascending(oldHeap, xs)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of ascending(ys)
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@62.51--62.64) [50734]"}
            NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
          assert {:msg "  Precondition of function ascending might not hold. Assertion ys != null might not hold. (linkedlists.vpr@62.51--62.64) [50735]"}
            ys != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume ascending(PostHeap, ys);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: ys := new(val, next) -- linkedlists.vpr@64.3--64.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    ys := freshObj;
    Mask := Mask[ys, val:=Mask[ys, val] + FullPerm];
    Mask := Mask[ys, next:=Mask[ys, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: ys.val := y -- linkedlists.vpr@65.3--65.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@65.3--65.14) [50736]"}
      FullPerm == Mask[ys, val];
    Heap := Heap[ys, val:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: ys.next := xs -- linkedlists.vpr@66.3--66.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@66.3--66.16) [50737]"}
      FullPerm == Mask[ys, next];
    Heap := Heap[ys, next:=xs];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(ys), write) -- linkedlists.vpr@67.3--67.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@67.3--67.21) [50740]"}
        perm <= Mask[ys, next];
    }
    Mask := Mask[ys, next:=Mask[ys, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@67.3--67.21) [50742]"}
        perm <= Mask[ys, val];
    }
    Mask := Mask[ys, val:=Mask[ys, val] - perm];
    if (Heap[ys, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access list(ys.next) (linkedlists.vpr@67.3--67.21) [50744]"}
          perm <= Mask[null, list(Heap[ys, next])];
      }
      Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
      assert {:msg "  Folding list(ys) might fail. Assertion ys.next != null might not hold. (linkedlists.vpr@67.3--67.21) [50745]"}
        Heap[ys, next] != null;
    }
    perm := FullPerm;
    Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(ys));
    assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), CombineFrames(FrameFragment(Heap[ys, val]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(ys))) {
      Heap := Heap[null, list#sm(ys):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(ys):=freshVersion];
    }
    Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, next:=true]];
    Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, val:=true]];
    if (Heap[ys, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
        { newPMask[o_15, f_51] }
        Heap[null, list#sm(ys)][o_15, f_51] || Heap[null, list#sm(Heap[ys, next])][o_15, f_51] ==> newPMask[o_15, f_51]
      );
      Heap := Heap[null, list#sm(ys):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of prepend might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@58.11--58.38) [50747]"}
        perm <= Mask[null, list(ys)];
    }
    Mask := Mask[null, list(ys):=Mask[null, list(ys)] - perm];
    assert {:msg "  Postcondition of prepend might not hold. Assertion ys != null might not hold. (linkedlists.vpr@58.11--58.38) [50748]"}
      ys != null;
    assert {:msg "  Postcondition of prepend might not hold. Assertion length(ys) == old(length(xs)) + 1 might not hold. (linkedlists.vpr@59.11--59.44) [50749]"}
      length_1(Heap, ys) == length_1(oldHeap, xs) + 1;
    assert {:msg "  Postcondition of prepend might not hold. Assertion elems(ys) == Seq(y) ++ old(elems(xs)) might not hold. (linkedlists.vpr@60.11--60.48) [50750]"}
      Seq#Equal(elems(Heap, ys), Seq#Append(Seq#Singleton(y), elems(oldHeap, xs)));
    assert {:msg "  Postcondition of prepend might not hold. Assertion head(ys) == y might not hold. (linkedlists.vpr@61.11--61.24) [50751]"}
      head_2(Heap, ys) == y;
    if (y <= head_2(oldHeap, xs) && ascending(oldHeap, xs)) {
      assert {:msg "  Postcondition of prepend might not hold. Assertion ascending(ys) might not hold. (linkedlists.vpr@62.11--62.64) [50752]"}
        ascending(Heap, ys);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method append
// ==================================================

procedure append(xs: Ref, y: int) returns ()
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
  var ys: Ref;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_xs: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
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
    PostMask := PostMask[null, list(xs):=PostMask[null, list(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume xs != null;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(xs) == old(length(xs)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@73.11--73.21) [50753]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@73.11--73.21) [50754]"}
          xs != null;
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@73.29--73.39) [50755]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@73.29--73.39) [50756]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, xs) == length_1(oldHeap, xs) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(xs) == old(elems(xs)) ++ Seq(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@74.11--74.20) [50757]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(xs)];
        assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@74.11--74.20) [50758]"}
          xs != null;
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
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@74.28--74.37) [50759]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@74.28--74.37) [50760]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems(PostHeap, xs), Seq#Append(elems(oldHeap, xs), Seq#Singleton(y)));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of head(xs) == old(head(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@75.11--75.19) [50761]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(xs)];
        assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@75.11--75.19) [50762]"}
          xs != null;
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
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@75.27--75.35) [50763]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@75.27--75.35) [50764]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume head_2(PostHeap, xs) == head_2(oldHeap, xs);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(y >= last(xs) && ascending(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@76.20--76.28) [50765]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function last might not hold. Assertion xs != null might not hold. (linkedlists.vpr@76.20--76.28) [50766]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (y >= last_1(oldHeap, xs)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := oldHeap;
          ExhaleWellDef0Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@76.32--76.45) [50767]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          assert {:msg "  Precondition of function ascending might not hold. Assertion xs != null might not hold. (linkedlists.vpr@76.32--76.45) [50768]"}
            xs != null;
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
    if (y >= last_1(oldHeap, xs) && ascending(oldHeap, xs)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of ascending(xs)
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@76.51--76.64) [50769]"}
            NoPerm < perm ==> NoPerm < PostMask[null, list(xs)];
          assert {:msg "  Precondition of function ascending might not hold. Assertion xs != null might not hold. (linkedlists.vpr@76.51--76.64) [50770]"}
            xs != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume ascending(PostHeap, xs);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(list(xs), write) -- linkedlists.vpr@78.3--78.23
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), CombineFrames(FrameFragment(Heap[xs, val]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (linkedlists.vpr@78.3--78.23) [50773]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
      assume Heap[xs, next] != null;
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next == null) -- linkedlists.vpr@80.3--89.4
    
    // -- Check definedness of xs.next == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@80.7--80.22) [50777]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] == null) {
      
      // -- Assumptions about local variables
        assume Heap[ys, $allocated];
      
      // -- Translating statement: ys := new(val, next) -- linkedlists.vpr@82.5--82.25
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        ys := freshObj;
        Mask := Mask[ys, val:=Mask[ys, val] + FullPerm];
        Mask := Mask[ys, next:=Mask[ys, next] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: ys.val := y -- linkedlists.vpr@83.5--83.16
        assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@83.5--83.16) [50778]"}
          FullPerm == Mask[ys, val];
        Heap := Heap[ys, val:=y];
        assume state(Heap, Mask);
      
      // -- Translating statement: ys.next := null -- linkedlists.vpr@84.5--84.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@84.5--84.20) [50779]"}
          FullPerm == Mask[ys, next];
        Heap := Heap[ys, next:=null];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(list(ys), write) -- linkedlists.vpr@85.5--85.23
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@85.5--85.23) [50782]"}
            perm <= Mask[ys, next];
        }
        Mask := Mask[ys, next:=Mask[ys, next] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@85.5--85.23) [50784]"}
            perm <= Mask[ys, val];
        }
        Mask := Mask[ys, val:=Mask[ys, val] - perm];
        if (Heap[ys, next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access list(ys.next) (linkedlists.vpr@85.5--85.23) [50786]"}
              perm <= Mask[null, list(Heap[ys, next])];
          }
          Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
          assert {:msg "  Folding list(ys) might fail. Assertion ys.next != null might not hold. (linkedlists.vpr@85.5--85.23) [50787]"}
            Heap[ys, next] != null;
        }
        perm := FullPerm;
        Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume list#trigger(Heap, list(ys));
        assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), CombineFrames(FrameFragment(Heap[ys, val]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame))));
        if (!HasDirectPerm(Mask, null, list(ys))) {
          Heap := Heap[null, list#sm(ys):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, list(ys):=freshVersion];
        }
        Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, next:=true]];
        Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, val:=true]];
        if (Heap[ys, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
            { newPMask[o_4, f_54] }
            Heap[null, list#sm(ys)][o_4, f_54] || Heap[null, list#sm(Heap[ys, next])][o_4, f_54] ==> newPMask[o_4, f_54]
          );
          Heap := Heap[null, list#sm(ys):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: xs.next := ys -- linkedlists.vpr@86.5--86.18
        assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@86.5--86.18) [50789]"}
          FullPerm == Mask[xs, next];
        Heap := Heap[xs, next:=ys];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: append(xs.next, y) -- linkedlists.vpr@88.5--88.23
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of xs.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@88.5--88.23) [50790]"}
            HasDirectPerm(Mask, xs, next);
        arg_xs := Heap[xs, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method append might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@88.5--88.23) [50791]"}
              perm <= Mask[null, list(arg_xs)];
          }
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] - perm];
          assert {:msg "  The precondition of method append might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@88.5--88.23) [50792]"}
            arg_xs != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] + perm];
          assume state(Heap, Mask);
          assume arg_xs != null;
          assume state(Heap, Mask);
          assume length_1(Heap, arg_xs) == length_1(PreCallHeap, arg_xs) + 1;
          assume state(Heap, Mask);
          assume Seq#Equal(elems(Heap, arg_xs), Seq#Append(elems(PreCallHeap, arg_xs), Seq#Singleton(y)));
          assume state(Heap, Mask);
          assume head_2(Heap, arg_xs) == head_2(PreCallHeap, arg_xs);
          if (y >= last_1(PreCallHeap, arg_xs) && ascending(PreCallHeap, arg_xs)) {
            assume state(Heap, Mask);
            assume ascending(Heap, arg_xs);
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), write) -- linkedlists.vpr@91.3--91.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@91.3--91.21) [50795]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.val (linkedlists.vpr@91.3--91.21) [50797]"}
        perm <= Mask[xs, val];
    }
    Mask := Mask[xs, val:=Mask[xs, val] - perm];
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@91.3--91.21) [50799]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assert {:msg "  Folding list(xs) might fail. Assertion xs.next != null might not hold. (linkedlists.vpr@91.3--91.21) [50800]"}
        Heap[xs, next] != null;
    }
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), CombineFrames(FrameFragment(Heap[xs, val]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
        { newPMask[o_12, f_25] }
        Heap[null, list#sm(xs)][o_12, f_25] || Heap[null, list#sm(Heap[xs, next])][o_12, f_25] ==> newPMask[o_12, f_25]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of append might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@72.11--72.38) [50802]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    assert {:msg "  Postcondition of append might not hold. Assertion xs != null might not hold. (linkedlists.vpr@72.11--72.38) [50803]"}
      xs != null;
    assert {:msg "  Postcondition of append might not hold. Assertion length(xs) == old(length(xs)) + 1 might not hold. (linkedlists.vpr@73.11--73.44) [50804]"}
      length_1(Heap, xs) == length_1(oldHeap, xs) + 1;
    assert {:msg "  Postcondition of append might not hold. Assertion elems(xs) == old(elems(xs)) ++ Seq(y) might not hold. (linkedlists.vpr@74.11--74.48) [50805]"}
      Seq#Equal(elems(Heap, xs), Seq#Append(elems(oldHeap, xs), Seq#Singleton(y)));
    assert {:msg "  Postcondition of append might not hold. Assertion head(xs) == old(head(xs)) might not hold. (linkedlists.vpr@75.11--75.36) [50806]"}
      head_2(Heap, xs) == head_2(oldHeap, xs);
    if (y >= last_1(oldHeap, xs) && ascending(oldHeap, xs)) {
      assert {:msg "  Postcondition of append might not hold. Assertion ascending(xs) might not hold. (linkedlists.vpr@76.11--76.64) [50807]"}
        ascending(Heap, xs);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(xs: Ref, y: int) returns (ys: Ref, i: int)
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
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var arg_xs: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
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
    PostMask := PostMask[null, list(ys):=PostMask[null, list(ys)] + perm];
    assume state(PostHeap, PostMask);
    assume ys != null;
    assume state(PostHeap, PostMask);
    assume 0 <= i;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of i <= old(length(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@101.30--101.40) [50808]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@101.30--101.40) [50809]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume i <= length_1(oldHeap, xs);
    assume state(PostHeap, PostMask);
    if (i > 0) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of head(ys) == old(head(xs))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@102.22--102.30) [50810]"}
            NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
          assert {:msg "  Precondition of function head might not hold. Assertion ys != null might not hold. (linkedlists.vpr@102.22--102.30) [50811]"}
            ys != null;
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
          assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@102.38--102.46) [50812]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@102.38--102.46) [50813]"}
            xs != null;
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume head_2(PostHeap, ys) == head_2(oldHeap, xs);
    }
    if (i == 0) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of head(ys) == y
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@102.64--102.72) [50814]"}
            NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
          assert {:msg "  Precondition of function head might not hold. Assertion ys != null might not hold. (linkedlists.vpr@102.64--102.72) [50815]"}
            ys != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume head_2(PostHeap, ys) == y;
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(ys) == old(length(xs)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@103.11--103.21) [50816]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
        assert {:msg "  Precondition of function length might not hold. Assertion ys != null might not hold. (linkedlists.vpr@103.11--103.21) [50817]"}
          ys != null;
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@103.29--103.39) [50818]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@103.29--103.39) [50819]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, ys) == length_1(oldHeap, xs) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of elems(ys) == old(elems(xs))[0..i] ++ Seq(y) ++ old(elems(xs))[i..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@104.11--104.20) [50820]"}
          NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
        assert {:msg "  Precondition of function elems might not hold. Assertion ys != null might not hold. (linkedlists.vpr@104.11--104.20) [50821]"}
          ys != null;
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
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@104.28--104.37) [50822]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@104.28--104.37) [50823]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@104.62--104.71) [50824]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@104.62--104.71) [50825]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(elems(PostHeap, ys), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(elems(oldHeap, xs), i), 0), Seq#Singleton(y)), Seq#Drop(elems(oldHeap, xs), i)));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(ascending(xs))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@105.15--105.28) [50826]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        assert {:msg "  Precondition of function ascending might not hold. Assertion xs != null might not hold. (linkedlists.vpr@105.15--105.28) [50827]"}
          xs != null;
        // Finish exhale
        // Stop execution
        assume false;
      }
    if (ascending(oldHeap, xs)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of ascending(ys)
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@105.34--105.47) [50828]"}
            NoPerm < perm ==> NoPerm < PostMask[null, list(ys)];
          assert {:msg "  Precondition of function ascending might not hold. Assertion ys != null might not hold. (linkedlists.vpr@105.34--105.47) [50829]"}
            ys != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume ascending(PostHeap, ys);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (y <= head(xs)) -- linkedlists.vpr@107.3--135.4
    
    // -- Check definedness of y <= head(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@107.12--107.20) [50830]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@107.12--107.20) [50831]"}
          xs != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (y <= head_2(Heap, xs)) {
      
      // -- Translating statement: ys := prepend(xs, y) -- linkedlists.vpr@108.5--108.25
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method prepend might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@108.5--108.25) [50832]"}
              perm <= Mask[null, list(xs)];
          }
          Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
          assert {:msg "  The precondition of method prepend might not hold. Assertion xs != null might not hold. (linkedlists.vpr@108.5--108.25) [50833]"}
            xs != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc ys;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
          assume state(Heap, Mask);
          assume ys != null;
          assume state(Heap, Mask);
          assume length_1(Heap, ys) == length_1(PreCallHeap, xs) + 1;
          assume state(Heap, Mask);
          assume Seq#Equal(elems(Heap, ys), Seq#Append(Seq#Singleton(y), elems(PreCallHeap, xs)));
          assume state(Heap, Mask);
          assume head_2(Heap, ys) == y;
          if (y <= head_2(PreCallHeap, xs) && ascending(PreCallHeap, xs)) {
            assume state(Heap, Mask);
            assume ascending(Heap, ys);
          }
          assume state(Heap, Mask);
        assume Heap[ys, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: i := 0 -- linkedlists.vpr@109.5--109.11
        i := 0;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (tail(xs) == null) -- linkedlists.vpr@110.5--135.4
        
        // -- Check definedness of tail(xs) == null
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function tail might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@110.13--110.21) [50834]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
            assert {:msg "  Precondition of function tail might not hold. Assertion xs != null might not hold. (linkedlists.vpr@110.13--110.21) [50835]"}
              xs != null;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        if (tail_2(Heap, xs) == null) {
          
          // -- Translating statement: inhale head(xs) == last(xs) -- linkedlists.vpr@111.12--111.32
            assume state(Heap, Mask);
            
            // -- Check definedness of head(xs) == last(xs)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function head might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@111.12--111.20) [50836]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
                assert {:msg "  Precondition of function head might not hold. Assertion xs != null might not hold. (linkedlists.vpr@111.12--111.20) [50837]"}
                  xs != null;
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
                assert {:msg "  Precondition of function last might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@111.24--111.32) [50838]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
                assert {:msg "  Precondition of function last might not hold. Assertion xs != null might not hold. (linkedlists.vpr@111.24--111.32) [50839]"}
                  xs != null;
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume head_2(Heap, xs) == last_1(Heap, xs);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale |elems(xs)| == 1 -- linkedlists.vpr@112.12--112.28
            assume state(Heap, Mask);
            
            // -- Check definedness of |elems(xs)| == 1
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function elems might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@112.13--112.22) [50840]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
                assert {:msg "  Precondition of function elems might not hold. Assertion xs != null might not hold. (linkedlists.vpr@112.13--112.22) [50841]"}
                  xs != null;
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Length(elems(Heap, xs)) == 1;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: append(xs, y) -- linkedlists.vpr@113.5--113.18
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method append might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@113.5--113.18) [50842]"}
                  perm <= Mask[null, list(xs)];
              }
              Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
              assert {:msg "  The precondition of method append might not hold. Assertion xs != null might not hold. (linkedlists.vpr@113.5--113.18) [50843]"}
                xs != null;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
              assume state(Heap, Mask);
              assume xs != null;
              assume state(Heap, Mask);
              assume length_1(Heap, xs) == length_1(PreCallHeap, xs) + 1;
              assume state(Heap, Mask);
              assume Seq#Equal(elems(Heap, xs), Seq#Append(elems(PreCallHeap, xs), Seq#Singleton(y)));
              assume state(Heap, Mask);
              assume head_2(Heap, xs) == head_2(PreCallHeap, xs);
              if (y >= last_1(PreCallHeap, xs) && ascending(PreCallHeap, xs)) {
                assume state(Heap, Mask);
                assume ascending(Heap, xs);
              }
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: ys := xs -- linkedlists.vpr@114.5--114.13
            ys := xs;
            assume state(Heap, Mask);
          
          // -- Translating statement: i := 1 -- linkedlists.vpr@115.5--115.11
            i := 1;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: unfold acc(list(xs), write) -- linkedlists.vpr@117.5--117.25
            assume list#trigger(Heap, list(xs));
            assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), CombineFrames(FrameFragment(Heap[xs, val]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (linkedlists.vpr@117.5--117.25) [50846]"}
                perm <= Mask[null, list(xs)];
            }
            Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, list(xs))) {
                havoc newVersion;
                Heap := Heap[null, list(xs):=newVersion];
              }
            perm := FullPerm;
            assume xs != null;
            Mask := Mask[xs, next:=Mask[xs, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume xs != null;
            Mask := Mask[xs, val:=Mask[xs, val] + perm];
            assume state(Heap, Mask);
            if (Heap[xs, next] != null) {
              perm := FullPerm;
              Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
              assume state(Heap, Mask);
              assume Heap[xs, next] != null;
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (y <= (unfolding acc(list(xs.next), write) in xs.next.val)) -- linkedlists.vpr@119.5--132.6
            
            // -- Check definedness of y <= (unfolding acc(list(xs.next), write) in xs.next.val)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume list#trigger(UnfoldingHeap, list(UnfoldingHeap[xs, next]));
              assume UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[xs, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[xs, next], val]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[xs, next], next] != null then UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[xs, next], next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@119.9--119.57) [50850]"}
                  perm <= UnfoldingMask[null, list(UnfoldingHeap[xs, next])];
              }
              UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] - perm];
              perm := FullPerm;
              assume UnfoldingHeap[xs, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[xs, next], next:=UnfoldingMask[UnfoldingHeap[xs, next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[xs, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[xs, next], val:=UnfoldingMask[UnfoldingHeap[xs, next], val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[UnfoldingHeap[xs, next], next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[xs, next], next]):=UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[xs, next], next])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])], list(UnfoldingHeap[UnfoldingHeap[xs, next], next]), UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[xs, next], next])]);
                assume state(UnfoldingHeap, UnfoldingMask);
                assume UnfoldingHeap[UnfoldingHeap[xs, next], next] != null;
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@119.9--119.57) [50851]"}
                HasDirectPerm(UnfoldingMask, xs, next);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@119.9--119.57) [50852]"}
                HasDirectPerm(UnfoldingMask, xs, next);
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next.val (linkedlists.vpr@119.9--119.57) [50853]"}
                HasDirectPerm(UnfoldingMask, UnfoldingHeap[xs, next], val);
              
              // -- Free assumptions (exp module)
                Heap := Heap[null, list#sm(Heap[xs, next]):=Heap[null, list#sm(Heap[xs, next])][Heap[xs, next], next:=true]];
                Heap := Heap[null, list#sm(Heap[xs, next]):=Heap[null, list#sm(Heap[xs, next])][Heap[xs, next], val:=true]];
                if (Heap[Heap[xs, next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                    { newPMask[o_41, f_21] }
                    Heap[null, list#sm(Heap[xs, next])][o_41, f_21] || Heap[null, list#sm(Heap[Heap[xs, next], next])][o_41, f_21] ==> newPMask[o_41, f_21]
                  );
                  Heap := Heap[null, list#sm(Heap[xs, next]):=newPMask];
                }
                assume state(Heap, Mask);
              
              // -- Free assumptions (exp module)
                Heap := Heap[null, list#sm(Heap[xs, next]):=Heap[null, list#sm(Heap[xs, next])][Heap[xs, next], next:=true]];
                Heap := Heap[null, list#sm(Heap[xs, next]):=Heap[null, list#sm(Heap[xs, next])][Heap[xs, next], val:=true]];
                if (Heap[Heap[xs, next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                    { newPMask[o_23, f_13] }
                    Heap[null, list#sm(Heap[xs, next])][o_23, f_13] || Heap[null, list#sm(Heap[Heap[xs, next], next])][o_23, f_13] ==> newPMask[o_23, f_13]
                  );
                  Heap := Heap[null, list#sm(Heap[xs, next]):=newPMask];
                }
                assume state(Heap, Mask);
            if (y <= Heap[Heap[xs, next], val]) {
              
              // -- Translating statement: ys := new(val, next) -- linkedlists.vpr@120.7--120.27
                havoc freshObj;
                assume freshObj != null && !Heap[freshObj, $allocated];
                Heap := Heap[freshObj, $allocated:=true];
                ys := freshObj;
                Mask := Mask[ys, val:=Mask[ys, val] + FullPerm];
                Mask := Mask[ys, next:=Mask[ys, next] + FullPerm];
                assume state(Heap, Mask);
              
              // -- Translating statement: ys.val := y -- linkedlists.vpr@121.7--121.18
                assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@121.7--121.18) [50854]"}
                  FullPerm == Mask[ys, val];
                Heap := Heap[ys, val:=y];
                assume state(Heap, Mask);
              
              // -- Translating statement: ys.next := xs.next -- linkedlists.vpr@122.7--122.25
                
                // -- Check definedness of xs.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@122.7--122.25) [50855]"}
                    HasDirectPerm(Mask, xs, next);
                assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@122.7--122.25) [50856]"}
                  FullPerm == Mask[ys, next];
                Heap := Heap[ys, next:=Heap[xs, next]];
                assume state(Heap, Mask);
              
              // -- Translating statement: fold acc(list(ys), write) -- linkedlists.vpr@123.7--123.25
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@123.7--123.25) [50859]"}
                    perm <= Mask[ys, next];
                }
                Mask := Mask[ys, next:=Mask[ys, next] - perm];
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@123.7--123.25) [50861]"}
                    perm <= Mask[ys, val];
                }
                Mask := Mask[ys, val:=Mask[ys, val] - perm];
                if (Heap[ys, next] != null) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access list(ys.next) (linkedlists.vpr@123.7--123.25) [50863]"}
                      perm <= Mask[null, list(Heap[ys, next])];
                  }
                  Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
                  assert {:msg "  Folding list(ys) might fail. Assertion ys.next != null might not hold. (linkedlists.vpr@123.7--123.25) [50864]"}
                    Heap[ys, next] != null;
                }
                perm := FullPerm;
                Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume list#trigger(Heap, list(ys));
                assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), CombineFrames(FrameFragment(Heap[ys, val]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame))));
                if (!HasDirectPerm(Mask, null, list(ys))) {
                  Heap := Heap[null, list#sm(ys):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, list(ys):=freshVersion];
                }
                Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, next:=true]];
                Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, val:=true]];
                if (Heap[ys, next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                    { newPMask[o_13, f_65] }
                    Heap[null, list#sm(ys)][o_13, f_65] || Heap[null, list#sm(Heap[ys, next])][o_13, f_65] ==> newPMask[o_13, f_65]
                  );
                  Heap := Heap[null, list#sm(ys):=newPMask];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: xs.next := ys -- linkedlists.vpr@124.7--124.20
                assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@124.7--124.20) [50866]"}
                  FullPerm == Mask[xs, next];
                Heap := Heap[xs, next:=ys];
                assume state(Heap, Mask);
              
              // -- Translating statement: ys := xs -- linkedlists.vpr@125.7--125.15
                ys := xs;
                assume state(Heap, Mask);
              
              // -- Translating statement: i := 1 -- linkedlists.vpr@126.7--126.13
                i := 1;
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: ys, i := insert(xs.next, y) -- linkedlists.vpr@128.7--128.34
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of xs.next
                  assert {:msg "  Method call might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@128.7--128.34) [50867]"}
                    HasDirectPerm(Mask, xs, next);
                arg_xs := Heap[xs, next];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method insert might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@128.7--128.34) [50868]"}
                      perm <= Mask[null, list(arg_xs)];
                  }
                  Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] - perm];
                  assert {:msg "  The precondition of method insert might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@128.7--128.34) [50869]"}
                    arg_xs != null;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc ys, i;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
                  assume state(Heap, Mask);
                  assume ys != null;
                  assume 0 <= i;
                  assume state(Heap, Mask);
                  assume i <= length_1(PreCallHeap, arg_xs);
                  if (i > 0) {
                    assume state(Heap, Mask);
                    assume head_2(Heap, ys) == head_2(PreCallHeap, arg_xs);
                  }
                  if (i == 0) {
                    assume state(Heap, Mask);
                    assume head_2(Heap, ys) == y;
                  }
                  assume state(Heap, Mask);
                  assume length_1(Heap, ys) == length_1(PreCallHeap, arg_xs) + 1;
                  assume state(Heap, Mask);
                  assume Seq#Equal(elems(Heap, ys), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(elems(PreCallHeap, arg_xs), i), 0), Seq#Singleton(y)), Seq#Drop(elems(PreCallHeap, arg_xs), i)));
                  if (ascending(PreCallHeap, arg_xs)) {
                    assume state(Heap, Mask);
                    assume ascending(Heap, ys);
                  }
                  assume state(Heap, Mask);
                assume Heap[ys, $allocated];
                assume state(Heap, Mask);
              
              // -- Translating statement: xs.next := ys -- linkedlists.vpr@129.7--129.20
                assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@129.7--129.20) [50870]"}
                  FullPerm == Mask[xs, next];
                Heap := Heap[xs, next:=ys];
                assume state(Heap, Mask);
              
              // -- Translating statement: ys := xs -- linkedlists.vpr@130.7--130.15
                ys := xs;
                assume state(Heap, Mask);
              
              // -- Translating statement: i := i + 1 -- linkedlists.vpr@131.7--131.17
                i := i + 1;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(list(ys), write) -- linkedlists.vpr@134.5--134.23
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.next (linkedlists.vpr@134.5--134.23) [50873]"}
                perm <= Mask[ys, next];
            }
            Mask := Mask[ys, next:=Mask[ys, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access ys.val (linkedlists.vpr@134.5--134.23) [50875]"}
                perm <= Mask[ys, val];
            }
            Mask := Mask[ys, val:=Mask[ys, val] - perm];
            if (Heap[ys, next] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding list(ys) might fail. There might be insufficient permission to access list(ys.next) (linkedlists.vpr@134.5--134.23) [50877]"}
                  perm <= Mask[null, list(Heap[ys, next])];
              }
              Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
              
              // -- Record predicate instance information
                assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
              assert {:msg "  Folding list(ys) might fail. Assertion ys.next != null might not hold. (linkedlists.vpr@134.5--134.23) [50878]"}
                Heap[ys, next] != null;
            }
            perm := FullPerm;
            Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume list#trigger(Heap, list(ys));
            assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), CombineFrames(FrameFragment(Heap[ys, val]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame))));
            if (!HasDirectPerm(Mask, null, list(ys))) {
              Heap := Heap[null, list#sm(ys):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, list(ys):=freshVersion];
            }
            Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, next:=true]];
            Heap := Heap[null, list#sm(ys):=Heap[null, list#sm(ys)][ys, val:=true]];
            if (Heap[ys, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                { newPMask[o_51, f_66] }
                Heap[null, list#sm(ys)][o_51, f_66] || Heap[null, list#sm(Heap[ys, next])][o_51, f_66] ==> newPMask[o_51, f_66]
              );
              Heap := Heap[null, list#sm(ys):=newPMask];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@100.11--100.38) [50880]"}
        perm <= Mask[null, list(ys)];
    }
    Mask := Mask[null, list(ys):=Mask[null, list(ys)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion ys != null might not hold. (linkedlists.vpr@100.11--100.38) [50881]"}
      ys != null;
    assert {:msg "  Postcondition of insert might not hold. Assertion 0 <= i might not hold. (linkedlists.vpr@101.11--101.41) [50882]"}
      0 <= i;
    assert {:msg "  Postcondition of insert might not hold. Assertion i <= old(length(xs)) might not hold. (linkedlists.vpr@101.11--101.41) [50883]"}
      i <= length_1(oldHeap, xs);
    if (i > 0) {
      assert {:msg "  Postcondition of insert might not hold. Assertion head(ys) == old(head(xs)) might not hold. (linkedlists.vpr@102.11--102.78) [50884]"}
        head_2(Heap, ys) == head_2(oldHeap, xs);
    }
    if (i == 0) {
      assert {:msg "  Postcondition of insert might not hold. Assertion head(ys) == y might not hold. (linkedlists.vpr@102.11--102.78) [50885]"}
        head_2(Heap, ys) == y;
    }
    assert {:msg "  Postcondition of insert might not hold. Assertion length(ys) == old(length(xs)) + 1 might not hold. (linkedlists.vpr@103.11--103.44) [50886]"}
      length_1(Heap, ys) == length_1(oldHeap, xs) + 1;
    assert {:msg "  Postcondition of insert might not hold. Assertion elems(ys) == old(elems(xs))[0..i] ++ Seq(y) ++ old(elems(xs))[i..] might not hold. (linkedlists.vpr@104.11--104.77) [50887]"}
      Seq#Equal(elems(Heap, ys), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(elems(oldHeap, xs), i), 0), Seq#Singleton(y)), Seq#Drop(elems(oldHeap, xs), i)));
    if (ascending(oldHeap, xs)) {
      assert {:msg "  Postcondition of insert might not hold. Assertion ascending(ys) might not hold. (linkedlists.vpr@105.11--105.47) [50888]"}
        ascending(Heap, ys);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var newVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume xs != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of ascending(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@144.43--144.56) [50889]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        assert {:msg "  Precondition of function ascending might not hold. Assertion xs != null might not hold. (linkedlists.vpr@144.43--144.56) [50890]"}
          xs != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume ascending(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(list(xs), write) -- linkedlists.vpr@146.3--146.23
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), CombineFrames(FrameFragment(Heap[xs, val]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (linkedlists.vpr@146.3--146.23) [50893]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
      assume Heap[xs, next] != null;
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale xs.next != null -- linkedlists.vpr@147.10--147.25
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@147.10--147.25) [50897]"}
        HasDirectPerm(Mask, xs, next);
    assume Heap[xs, next] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ascending(xs.next) -- linkedlists.vpr@149.3--149.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of ascending(xs.next)
      assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@149.10--149.28) [50898]"}
        HasDirectPerm(ExhaleWellDef0Mask, xs, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function ascending might not hold. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@149.10--149.28) [50899]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
        assert {:msg "  Precondition of function ascending might not hold. Assertion xs.next != null might not hold. (linkedlists.vpr@149.10--149.28) [50900]"}
          ExhaleWellDef0Heap[xs, next] != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion ascending(xs.next) might not hold. (linkedlists.vpr@149.10--149.28) [50901]"}
      ascending(Heap, Heap[xs, next]);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: Ref, x: int, ys: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_20: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var i_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
    assume Heap[ys, $allocated];
  
  // -- Checked inhaling of precondition
    assume ys != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, list(ys):=Mask[null, list(ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, val:=Mask[xs, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: xs.val := x -- linkedlists.vpr@158.3--158.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.val (linkedlists.vpr@158.3--158.14) [50902]"}
      FullPerm == Mask[xs, val];
    Heap := Heap[xs, val:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: xs.next := ys -- linkedlists.vpr@159.3--159.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@159.3--159.16) [50903]"}
      FullPerm == Mask[xs, next];
    Heap := Heap[xs, next:=ys];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), write) -- linkedlists.vpr@161.3--161.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (linkedlists.vpr@161.3--161.21) [50906]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.val (linkedlists.vpr@161.3--161.21) [50908]"}
        perm <= Mask[xs, val];
    }
    Mask := Mask[xs, val:=Mask[xs, val] - perm];
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (linkedlists.vpr@161.3--161.21) [50910]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assert {:msg "  Folding list(xs) might fail. Assertion xs.next != null might not hold. (linkedlists.vpr@161.3--161.21) [50911]"}
        Heap[xs, next] != null;
    }
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), CombineFrames(FrameFragment(Heap[xs, val]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
        { newPMask[o_52, f_14] }
        Heap[null, list#sm(xs)][o_52, f_14] || Heap[null, list#sm(Heap[xs, next])][o_52, f_14] ==> newPMask[o_52, f_14]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { (i in [1..length(xs))) }
  //     { get(xs, i) }
  //     (i in [1..length(xs))) ==>
  //     get(xs, i) == (unfolding acc(list(xs), write) in get(ys, i - 1))) -- linkedlists.vpr@162.3--162.114
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { (i in [1..length(xs))) } { get(xs, i) } (i in [1..length(xs))) ==> get(xs, i) == (unfolding acc(list(xs), write) in get(ys, i - 1)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@162.36--162.46) [50913]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
          assert {:msg "  Precondition of function length might not hold. Assertion xs != null might not hold. (linkedlists.vpr@162.36--162.46) [50914]"}
            xs != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (Seq#Contains(Seq#Range(1, length_1(Heap, xs)), i_20)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access list(xs) (linkedlists.vpr@162.52--162.62) [50915]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
            assert {:msg "  Precondition of function get might not hold. Assertion xs != null might not hold. (linkedlists.vpr@162.52--162.62) [50916]"}
              xs != null;
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i might not hold. (linkedlists.vpr@162.52--162.62) [50917]"}
              0 <= i_20;
            assert {:msg "  Precondition of function get might not hold. Assertion i < length(xs) might not hold. (linkedlists.vpr@162.52--162.62) [50918]"}
              i_20 < length_1(ExhaleWellDef0Heap, xs);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume list#trigger(UnfoldingHeap, list(xs));
          assume UnfoldingHeap[null, list(xs)] == CombineFrames(FrameFragment(UnfoldingHeap[xs, next]), CombineFrames(FrameFragment(UnfoldingHeap[xs, val]), FrameFragment((if UnfoldingHeap[xs, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[xs, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access list(xs) (linkedlists.vpr@162.10--162.114) [50919]"}
              perm <= UnfoldingMask[null, list(xs)];
          }
          UnfoldingMask := UnfoldingMask[null, list(xs):=UnfoldingMask[null, list(xs)] - perm];
          perm := FullPerm;
          assume xs != null;
          UnfoldingMask := UnfoldingMask[xs, next:=UnfoldingMask[xs, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume xs != null;
          UnfoldingMask := UnfoldingMask[xs, val:=UnfoldingMask[xs, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[xs, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[xs, next]):=UnfoldingMask[null, list(UnfoldingHeap[xs, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(xs), UnfoldingHeap[null, list(xs)], list(UnfoldingHeap[xs, next]), UnfoldingHeap[null, list(UnfoldingHeap[xs, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume UnfoldingHeap[xs, next] != null;
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access list(ys) (linkedlists.vpr@162.100--162.114) [50920]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(ys)];
            assert {:msg "  Precondition of function get might not hold. Assertion ys != null might not hold. (linkedlists.vpr@162.100--162.114) [50921]"}
              ys != null;
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i - 1 might not hold. (linkedlists.vpr@162.100--162.114) [50922]"}
              0 <= i_20 - 1;
            assert {:msg "  Precondition of function get might not hold. Assertion i - 1 < length(ys) might not hold. (linkedlists.vpr@162.100--162.114) [50923]"}
              i_20 - 1 < length_1(UnfoldingHeap, ys);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
            Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
            if (Heap[xs, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
                { newPMask[o_20, f_50] }
                Heap[null, list#sm(xs)][o_20, f_50] || Heap[null, list#sm(Heap[xs, next])][o_20, f_50] ==> newPMask[o_20, f_50]
              );
              Heap := Heap[null, list#sm(xs):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
            Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, val:=true]];
            if (Heap[xs, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                { newPMask[o_58, f_30] }
                Heap[null, list#sm(xs)][o_58, f_30] || Heap[null, list#sm(Heap[xs, next])][o_58, f_30] ==> newPMask[o_58, f_30]
              );
              Heap := Heap[null, list#sm(xs):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (Seq#Contains(Seq#Range(1, length_1(Heap, xs)), i_1)) {
        assert {:msg "  Assert might fail. Assertion get(xs, i) == (unfolding acc(list(xs), write) in get(ys, i - 1)) might not hold. (linkedlists.vpr@162.10--162.114) [50924]"}
          get(Heap, xs, i_1) == get(Heap, ys, i_1 - 1);
      }
      assume false;
    }
    assume (forall i_2_1: int ::
      { Seq#ContainsTrigger(Seq#Range(1, length#frame(Heap[null, list(xs)], xs)), i_2_1) } { Seq#Contains(Seq#Range(1, length#frame(Heap[null, list(xs)], xs)), i_2_1) } { get#frame(Heap[null, list(xs)], xs, i_2_1) }
      Seq#Contains(Seq#Range(1, length_1(Heap, xs)), i_2_1) ==> get(Heap, xs, i_2_1) == get(Heap, ys, i_2_1 - 1)
    );
    assume state(Heap, Mask);
}