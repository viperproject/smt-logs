// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:12:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testListAppend.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testListAppend-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_29: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_29] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_29], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_18: Ref, f_26: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_18, f_26] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_18, f_26) ==> Heap[o_18, f_26] == ExhaleHeap[o_18, f_26]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_8, f_26] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_26] ==> Heap[o2_8, f_26] == ExhaleHeap[o2_8, f_26]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_8, f_26] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_26] ==> Heap[o2_8, f_26] == ExhaleHeap[o2_8, f_26]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_18: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_18, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_18, $allocated] ==> ExhaleHeap[o_18, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_30: (Field A B), v: B ::
  { Heap[o_20, f_30:=v] }
  succHeap(Heap, Heap[o_20, f_30:=v])
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
// - height 5: Wand_list_for_list__get_out_1_0
// - height 4: Wand_list_for_list__get_out_1
// - height 3: List__contents
// - height 2: Wand_list_for_list__get_in_1
// - height 1: List__get_next
// - height 0: Wand_list_for_list__get_in_1_0
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

const unique Wand_list_for_list__lemma: Field NormalField int;
axiom !IsPredicateField(Wand_list_for_list__lemma);
axiom !IsWandField(Wand_list_for_list__lemma);
const unique Wand_list_for_list__in_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__in_1);
axiom !IsWandField(Wand_list_for_list__in_1);
const unique Wand_list_for_list__in_1_0: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__in_1_0);
axiom !IsWandField(Wand_list_for_list__in_1_0);
const unique Wand_list_for_list__out_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__out_1);
axiom !IsWandField(Wand_list_for_list__out_1);
const unique Wand_list_for_list__out_1_0: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__out_1_0);
axiom !IsWandField(Wand_list_for_list__out_1_0);
const unique Wand_list_for_list__this_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__this_1);
axiom !IsWandField(Wand_list_for_list__this_1);
const unique Wand_list_for_list__L2_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__L2_1);
axiom !IsWandField(Wand_list_for_list__L2_1);
const unique Wand_list_for_list__tmp_suffix_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__tmp_suffix_1);
axiom !IsWandField(Wand_list_for_list__tmp_suffix_1);
const unique Wand_list_for_list__L1_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__L1_1);
axiom !IsWandField(Wand_list_for_list__L1_1);
const unique Wand_list_for_list__tmp_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__tmp_1);
axiom !IsWandField(Wand_list_for_list__tmp_1);
const unique Wand_list_for_list__suffix_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__suffix_1);
axiom !IsWandField(Wand_list_for_list__suffix_1);
const unique Wand_list_for_list__cursor_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__cursor_1);
axiom !IsWandField(Wand_list_for_list__cursor_1);
const unique Wand_list_for_list__wand_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__wand_1);
axiom !IsWandField(Wand_list_for_list__wand_1);
const unique Wand_list_for_list__this_2: Field NormalField Ref;
axiom !IsPredicateField(Wand_list_for_list__this_2);
axiom !IsWandField(Wand_list_for_list__this_2);
const unique Wand_list_for_list__L2_2: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__L2_2);
axiom !IsWandField(Wand_list_for_list__L2_2);
const unique Wand_list_for_list__L1_2: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_list_for_list__L1_2);
axiom !IsWandField(Wand_list_for_list__L1_2);
const unique List__val: Field NormalField int;
axiom !IsPredicateField(List__val);
axiom !IsWandField(List__val);
const unique List__next: Field NormalField Ref;
axiom !IsPredicateField(List__next);
axiom !IsWandField(List__next);

// ==================================================
// Translation of function Wand_list_for_list__get_in_1
// ==================================================

// Uninterpreted function definitions
function  Wand_list_for_list__get_in_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_list_for_list__get_in_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_in_1(Heap, diz) }
  Wand_list_for_list__get_in_1(Heap, diz) == Wand_list_for_list__get_in_1'(Heap, diz) && dummyFunction(Wand_list_for_list__get_in_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_in_1'(Heap, diz) }
  dummyFunction(Wand_list_for_list__get_in_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_in_1(Heap, diz) } { state(Heap, Mask), Wand_list_for_list__get_in_1#triggerStateless(diz), Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> diz != null ==> Wand_list_for_list__get_in_1(Heap, diz) == Heap[diz, Wand_list_for_list__in_1]
);

// Framing axioms
function  Wand_list_for_list__get_in_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_in_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_list_for_list__get_in_1'(Heap, diz) == Wand_list_for_list__get_in_1#frame(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_in_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Wand_list_for_list__get_in_1#trigger(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)) ==> diz != null ==> Wand_list_for_list__get_in_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_list_for_list__get_in_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_list_for_list__get_in_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_list_for_list__get_in_1#definedness(diz: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_list_for_list__valid_wand(diz), write) in diz.Wand_list_for_list__in_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_list_for_list__valid_wand#trigger(UnfoldingHeap, Wand_list_for_list__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_2]), FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@40.1--46.2) [42066]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_list_for_list__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__lemma:=UnfoldingMask[diz, Wand_list_for_list__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_list_for_list__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1:=UnfoldingMask[diz, Wand_list_for_list__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1_0:=UnfoldingMask[diz, Wand_list_for_list__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1:=UnfoldingMask[diz, Wand_list_for_list__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1_0:=UnfoldingMask[diz, Wand_list_for_list__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_1:=UnfoldingMask[diz, Wand_list_for_list__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_1:=UnfoldingMask[diz, Wand_list_for_list__L2_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_1:=UnfoldingMask[diz, Wand_list_for_list__L1_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__suffix_1:=UnfoldingMask[diz, Wand_list_for_list__suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__cursor_1:=UnfoldingMask[diz, Wand_list_for_list__cursor_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__wand_1:=UnfoldingMask[diz, Wand_list_for_list__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_1] != null;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), UnfoldingHeap[diz, Wand_list_for_list__suffix_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]):=UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_list_for_list__valid_wand(diz), UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)], Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__tmp_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_2:=UnfoldingMask[diz, Wand_list_for_list__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_2:=UnfoldingMask[diz, Wand_list_for_list__L2_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_2:=UnfoldingMask[diz, Wand_list_for_list__L1_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_2] != null;
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
      }
      assume UnfoldingHeap[diz, Wand_list_for_list__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@40.1--46.2) [42067]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_list_for_list__in_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__lemma:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__cursor_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__wand_1:=true]];
        if (Heap[diz, Wand_list_for_list__lemma] == 1) {
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__val:=true]];
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_5, f_11] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_list_for_list__in_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_list_for_list__get_in_1 might not hold. Assertion result != null might not hold. (testListAppend.vpr@43.11--43.25) [42068]"}
      Result != null;
}

// ==================================================
// Translation of function Wand_list_for_list__get_in_1_0
// ==================================================

// Uninterpreted function definitions
function  Wand_list_for_list__get_in_1_0(Heap: HeapType, diz: Ref): Seq int;
function  Wand_list_for_list__get_in_1_0'(Heap: HeapType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_in_1_0(Heap, diz) }
  Wand_list_for_list__get_in_1_0(Heap, diz) == Wand_list_for_list__get_in_1_0'(Heap, diz) && dummyFunction(Wand_list_for_list__get_in_1_0#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_in_1_0'(Heap, diz) }
  dummyFunction(Wand_list_for_list__get_in_1_0#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_in_1_0(Heap, diz) } { state(Heap, Mask), Wand_list_for_list__get_in_1_0#triggerStateless(diz), Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> diz != null ==> Wand_list_for_list__get_in_1_0(Heap, diz) == Heap[diz, Wand_list_for_list__in_1_0]
);

// Framing axioms
function  Wand_list_for_list__get_in_1_0#frame(frame: FrameType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_in_1_0'(Heap, diz) }
  state(Heap, Mask) ==> Wand_list_for_list__get_in_1_0'(Heap, diz) == Wand_list_for_list__get_in_1_0#frame(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  Wand_list_for_list__get_in_1_0#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_list_for_list__get_in_1_0#triggerStateless(diz: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Wand_list_for_list__get_in_1_0#definedness(diz: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_list_for_list__valid_wand(diz), write) in diz.Wand_list_for_list__in_1_0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_list_for_list__valid_wand#trigger(UnfoldingHeap, Wand_list_for_list__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_2]), FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@48.1--53.2) [42069]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_list_for_list__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__lemma:=UnfoldingMask[diz, Wand_list_for_list__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_list_for_list__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1:=UnfoldingMask[diz, Wand_list_for_list__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1_0:=UnfoldingMask[diz, Wand_list_for_list__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1:=UnfoldingMask[diz, Wand_list_for_list__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1_0:=UnfoldingMask[diz, Wand_list_for_list__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_1:=UnfoldingMask[diz, Wand_list_for_list__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_1:=UnfoldingMask[diz, Wand_list_for_list__L2_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_1:=UnfoldingMask[diz, Wand_list_for_list__L1_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__suffix_1:=UnfoldingMask[diz, Wand_list_for_list__suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__cursor_1:=UnfoldingMask[diz, Wand_list_for_list__cursor_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__wand_1:=UnfoldingMask[diz, Wand_list_for_list__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_1] != null;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), UnfoldingHeap[diz, Wand_list_for_list__suffix_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]):=UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_list_for_list__valid_wand(diz), UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)], Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__tmp_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_2:=UnfoldingMask[diz, Wand_list_for_list__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_2:=UnfoldingMask[diz, Wand_list_for_list__L2_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_2:=UnfoldingMask[diz, Wand_list_for_list__L1_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_2] != null;
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
      }
      assume UnfoldingHeap[diz, Wand_list_for_list__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@48.1--53.2) [42070]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_list_for_list__in_1_0);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__lemma:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__cursor_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__wand_1:=true]];
        if (Heap[diz, Wand_list_for_list__lemma] == 1) {
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__val:=true]];
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_6, f_12] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_list_for_list__in_1_0];
}

// ==================================================
// Translation of function Wand_list_for_list__get_out_1
// ==================================================

// Uninterpreted function definitions
function  Wand_list_for_list__get_out_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_list_for_list__get_out_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_out_1(Heap, diz) }
  Wand_list_for_list__get_out_1(Heap, diz) == Wand_list_for_list__get_out_1'(Heap, diz) && dummyFunction(Wand_list_for_list__get_out_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_out_1'(Heap, diz) }
  dummyFunction(Wand_list_for_list__get_out_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_out_1(Heap, diz) } { state(Heap, Mask), Wand_list_for_list__get_out_1#triggerStateless(diz), Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> diz != null ==> Wand_list_for_list__get_out_1(Heap, diz) == Heap[diz, Wand_list_for_list__out_1]
);

// Framing axioms
function  Wand_list_for_list__get_out_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_out_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_list_for_list__get_out_1'(Heap, diz) == Wand_list_for_list__get_out_1#frame(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_out_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || Wand_list_for_list__get_out_1#trigger(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)) ==> diz != null ==> Wand_list_for_list__get_out_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_list_for_list__get_out_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_list_for_list__get_out_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_list_for_list__get_out_1#definedness(diz: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_list_for_list__valid_wand(diz), write) in diz.Wand_list_for_list__out_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_list_for_list__valid_wand#trigger(UnfoldingHeap, Wand_list_for_list__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_2]), FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@55.1--61.2) [42071]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_list_for_list__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__lemma:=UnfoldingMask[diz, Wand_list_for_list__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_list_for_list__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1:=UnfoldingMask[diz, Wand_list_for_list__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1_0:=UnfoldingMask[diz, Wand_list_for_list__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1:=UnfoldingMask[diz, Wand_list_for_list__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1_0:=UnfoldingMask[diz, Wand_list_for_list__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_1:=UnfoldingMask[diz, Wand_list_for_list__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_1:=UnfoldingMask[diz, Wand_list_for_list__L2_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_1:=UnfoldingMask[diz, Wand_list_for_list__L1_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__suffix_1:=UnfoldingMask[diz, Wand_list_for_list__suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__cursor_1:=UnfoldingMask[diz, Wand_list_for_list__cursor_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__wand_1:=UnfoldingMask[diz, Wand_list_for_list__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_1] != null;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), UnfoldingHeap[diz, Wand_list_for_list__suffix_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]):=UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_list_for_list__valid_wand(diz), UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)], Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__tmp_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_2:=UnfoldingMask[diz, Wand_list_for_list__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_2:=UnfoldingMask[diz, Wand_list_for_list__L2_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_2:=UnfoldingMask[diz, Wand_list_for_list__L1_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_2] != null;
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
      }
      assume UnfoldingHeap[diz, Wand_list_for_list__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@55.1--61.2) [42072]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_list_for_list__out_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__lemma:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__cursor_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__wand_1:=true]];
        if (Heap[diz, Wand_list_for_list__lemma] == 1) {
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__val:=true]];
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_40, f_52] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_list_for_list__out_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_list_for_list__get_out_1 might not hold. Assertion result != null might not hold. (testListAppend.vpr@58.11--58.25) [42073]"}
      Result != null;
}

// ==================================================
// Translation of function Wand_list_for_list__get_out_1_0
// ==================================================

// Uninterpreted function definitions
function  Wand_list_for_list__get_out_1_0(Heap: HeapType, diz: Ref): Seq int;
function  Wand_list_for_list__get_out_1_0'(Heap: HeapType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_out_1_0(Heap, diz) }
  Wand_list_for_list__get_out_1_0(Heap, diz) == Wand_list_for_list__get_out_1_0'(Heap, diz) && dummyFunction(Wand_list_for_list__get_out_1_0#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__get_out_1_0'(Heap, diz) }
  dummyFunction(Wand_list_for_list__get_out_1_0#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_out_1_0(Heap, diz) } { state(Heap, Mask), Wand_list_for_list__get_out_1_0#triggerStateless(diz), Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> diz != null ==> Wand_list_for_list__get_out_1_0(Heap, diz) == Heap[diz, Wand_list_for_list__out_1_0]
);

// Framing axioms
function  Wand_list_for_list__get_out_1_0#frame(frame: FrameType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_list_for_list__get_out_1_0'(Heap, diz) }
  state(Heap, Mask) ==> Wand_list_for_list__get_out_1_0'(Heap, diz) == Wand_list_for_list__get_out_1_0#frame(Heap[null, Wand_list_for_list__valid_wand(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  Wand_list_for_list__get_out_1_0#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_list_for_list__get_out_1_0#triggerStateless(diz: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Wand_list_for_list__get_out_1_0#definedness(diz: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_list_for_list__valid_wand(diz), write) in diz.Wand_list_for_list__out_1_0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_list_for_list__valid_wand#trigger(UnfoldingHeap, Wand_list_for_list__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_list_for_list__L1_2]), FrameFragment((if UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@63.1--68.2) [42074]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_list_for_list__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__lemma:=UnfoldingMask[diz, Wand_list_for_list__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_list_for_list__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1:=UnfoldingMask[diz, Wand_list_for_list__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__in_1_0:=UnfoldingMask[diz, Wand_list_for_list__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1:=UnfoldingMask[diz, Wand_list_for_list__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_list_for_list__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__out_1_0:=UnfoldingMask[diz, Wand_list_for_list__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_1:=UnfoldingMask[diz, Wand_list_for_list__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_1:=UnfoldingMask[diz, Wand_list_for_list__L2_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_1:=UnfoldingMask[diz, Wand_list_for_list__L1_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__tmp_1:=UnfoldingMask[diz, Wand_list_for_list__tmp_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__suffix_1:=UnfoldingMask[diz, Wand_list_for_list__suffix_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__cursor_1:=UnfoldingMask[diz, Wand_list_for_list__cursor_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__wand_1:=UnfoldingMask[diz, Wand_list_for_list__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_1] != null;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_list_for_list__tmp_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next:=UnfoldingMask[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__next] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_list_for_list__tmp_1], List__val]), UnfoldingHeap[diz, Wand_list_for_list__suffix_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]):=UnfoldingMask[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_list_for_list__valid_wand(diz), UnfoldingHeap[null, Wand_list_for_list__valid_wand(diz)], Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1]), UnfoldingHeap[null, Wand_list_for_list__valid_wand(UnfoldingHeap[diz, Wand_list_for_list__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__tmp_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__tmp_suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_list_for_list__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]) == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_list_for_list__wand_1]), Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__cursor_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__suffix_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_1], UnfoldingHeap[diz, Wand_list_for_list__L2_1]));
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__this_2:=UnfoldingMask[diz, Wand_list_for_list__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L2_2:=UnfoldingMask[diz, Wand_list_for_list__L2_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_list_for_list__L1_2:=UnfoldingMask[diz, Wand_list_for_list__L1_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_list_for_list__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_list_for_list__this_2] != null;
        assume UnfoldingHeap[diz, Wand_list_for_list__in_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__in_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
        assume UnfoldingHeap[diz, Wand_list_for_list__out_1] == UnfoldingHeap[diz, Wand_list_for_list__this_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_list_for_list__out_1_0], Seq#Append(UnfoldingHeap[diz, Wand_list_for_list__L1_2], UnfoldingHeap[diz, Wand_list_for_list__L2_2]));
      }
      assume UnfoldingHeap[diz, Wand_list_for_list__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@63.1--68.2) [42075]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_list_for_list__out_1_0);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__lemma:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__in_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__out_1_0:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__tmp_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__suffix_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__cursor_1:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__wand_1:=true]];
        if (Heap[diz, Wand_list_for_list__lemma] == 1) {
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__val:=true]];
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][Heap[diz, Wand_list_for_list__tmp_1], List__next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
            { newPMask[o_42, f_55] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_42, f_55] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_42, f_55] ==> newPMask[o_42, f_55]
          );
          Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__this_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L2_2:=true]];
        Heap := Heap[null, Wand_list_for_list__valid_wand#sm(diz):=Heap[null, Wand_list_for_list__valid_wand#sm(diz)][diz, Wand_list_for_list__L1_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_list_for_list__out_1_0];
}

// ==================================================
// Translation of function List__contents
// ==================================================

// Uninterpreted function definitions
function  List__contents(Heap: HeapType, diz: Ref): Seq int;
function  List__contents'(Heap: HeapType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, diz: Ref ::
  { List__contents(Heap, diz) }
  List__contents(Heap, diz) == List__contents'(Heap, diz) && dummyFunction(List__contents#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { List__contents'(Heap, diz) }
  dummyFunction(List__contents#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), List__contents(Heap, diz) } { state(Heap, Mask), List__contents#triggerStateless(diz), List__state#trigger(Heap, List__state(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> diz != null ==> List__contents(Heap, diz) == (if Heap[diz, List__next] == null then Seq#Singleton(Heap[diz, List__val]) else Seq#Append(Seq#Singleton(Heap[diz, List__val]), List__contents'(Heap, Heap[diz, List__next])))
);

// Framing axioms
function  List__contents#frame(frame: FrameType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), List__contents'(Heap, diz) } { state(Heap, Mask), List__contents#triggerStateless(diz), List__state#trigger(Heap, List__state(diz)) }
  state(Heap, Mask) ==> List__contents'(Heap, diz) == List__contents#frame(Heap[null, List__state(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  List__contents#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  List__contents#triggerStateless(diz: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure List__contents#definedness(diz: Ref) returns (Result: (Seq int))
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
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List__state(diz), write) in (diz.List__next == null ? Seq(diz.List__val) : Seq(diz.List__val) ++ List__contents(diz.List__next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List__state#trigger(UnfoldingHeap, List__state(diz));
      assume UnfoldingHeap[null, List__state(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, List__val]), CombineFrames(FrameFragment(UnfoldingHeap[diz, List__next]), FrameFragment((if UnfoldingHeap[diz, List__next] != null then UnfoldingHeap[null, List__state(UnfoldingHeap[diz, List__next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@70.1--75.2) [42076]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List__state(diz)];
      perm := FullPerm;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, List__val:=UnfoldingMask[diz, List__val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, List__next:=UnfoldingMask[diz, List__next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, List__next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List__state(UnfoldingHeap[diz, List__next]):=UnfoldingMask[null, List__state(UnfoldingHeap[diz, List__next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List__state(diz), UnfoldingHeap[null, List__state(diz)], List__state(UnfoldingHeap[diz, List__next]), UnfoldingHeap[null, List__state(UnfoldingHeap[diz, List__next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@70.1--75.2) [42077]"}
        HasDirectPerm(UnfoldingMask, diz, List__next);
      if (UnfoldingHeap[diz, List__next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__val (testListAppend.vpr@70.1--75.2) [42078]"}
          HasDirectPerm(UnfoldingMask, diz, List__val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__val (testListAppend.vpr@70.1--75.2) [42079]"}
          HasDirectPerm(UnfoldingMask, diz, List__val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@70.1--75.2) [42080]"}
          HasDirectPerm(UnfoldingMask, diz, List__next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function List__contents might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@74.115--74.145) [42081]"}
            UnfoldingHeap[diz, List__next] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@74.115--74.145) [42082]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List__state(UnfoldingHeap[diz, List__next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume List__contents#trigger(UnfoldingHeap[null, List__state(UnfoldingHeap[diz, List__next])], UnfoldingHeap[diz, List__next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__val:=true]];
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__next:=true]];
        if (Heap[diz, List__next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, List__state#sm(diz)][o_46, f_60] || Heap[null, List__state#sm(Heap[diz, List__next])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, List__state#sm(diz):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[diz, List__next] == null then Seq#Singleton(Heap[diz, List__val]) else Seq#Append(Seq#Singleton(Heap[diz, List__val]), List__contents(Heap, Heap[diz, List__next])));
}

// ==================================================
// Translation of function List__get_next
// ==================================================

// Uninterpreted function definitions
function  List__get_next(Heap: HeapType, diz: Ref): Ref;
function  List__get_next'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { List__get_next(Heap, diz) }
  List__get_next(Heap, diz) == List__get_next'(Heap, diz) && dummyFunction(List__get_next#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { List__get_next'(Heap, diz) }
  dummyFunction(List__get_next#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), List__get_next(Heap, diz) } { state(Heap, Mask), List__get_next#triggerStateless(diz), List__state#trigger(Heap, List__state(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> diz != null ==> List__get_next(Heap, diz) == Heap[diz, List__next]
);

// Framing axioms
function  List__get_next#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), List__get_next'(Heap, diz) }
  state(Heap, Mask) ==> List__get_next'(Heap, diz) == List__get_next#frame(Heap[null, List__state(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  List__get_next#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  List__get_next#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure List__get_next#definedness(diz: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List__state(diz), write) in diz.List__next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List__state#trigger(UnfoldingHeap, List__state(diz));
      assume UnfoldingHeap[null, List__state(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, List__val]), CombineFrames(FrameFragment(UnfoldingHeap[diz, List__next]), FrameFragment((if UnfoldingHeap[diz, List__next] != null then UnfoldingHeap[null, List__state(UnfoldingHeap[diz, List__next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@77.1--82.2) [42083]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List__state(diz)];
      perm := FullPerm;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, List__val:=UnfoldingMask[diz, List__val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, List__next:=UnfoldingMask[diz, List__next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, List__next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List__state(UnfoldingHeap[diz, List__next]):=UnfoldingMask[null, List__state(UnfoldingHeap[diz, List__next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List__state(diz), UnfoldingHeap[null, List__state(diz)], List__state(UnfoldingHeap[diz, List__next]), UnfoldingHeap[null, List__state(UnfoldingHeap[diz, List__next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@77.1--82.2) [42084]"}
        HasDirectPerm(UnfoldingMask, diz, List__next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__val:=true]];
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__next:=true]];
        if (Heap[diz, List__next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, List__state#sm(diz)][o, f_61] || Heap[null, List__state#sm(Heap[diz, List__next])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, List__state#sm(diz):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, List__next];
}

// ==================================================
// Translation of predicate Wand_list_for_list__valid_wand
// ==================================================

type PredicateType_Wand_list_for_list__valid_wand;
function  Wand_list_for_list__valid_wand(diz: Ref): Field PredicateType_Wand_list_for_list__valid_wand FrameType;
function  Wand_list_for_list__valid_wand#sm(diz: Ref): Field PredicateType_Wand_list_for_list__valid_wand PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Wand_list_for_list__valid_wand(diz)) }
  PredicateMaskField(Wand_list_for_list__valid_wand(diz)) == Wand_list_for_list__valid_wand#sm(diz)
);
axiom (forall diz: Ref ::
  { Wand_list_for_list__valid_wand(diz) }
  IsPredicateField(Wand_list_for_list__valid_wand(diz))
);
axiom (forall diz: Ref ::
  { Wand_list_for_list__valid_wand(diz) }
  getPredWandId(Wand_list_for_list__valid_wand(diz)) == 0
);
function  Wand_list_for_list__valid_wand#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Wand_list_for_list__valid_wand#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_list_for_list__valid_wand(diz), Wand_list_for_list__valid_wand(diz2) }
  Wand_list_for_list__valid_wand(diz) == Wand_list_for_list__valid_wand(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_list_for_list__valid_wand#sm(diz), Wand_list_for_list__valid_wand#sm(diz2) }
  Wand_list_for_list__valid_wand#sm(diz) == Wand_list_for_list__valid_wand#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz)) }
  Wand_list_for_list__valid_wand#everUsed(Wand_list_for_list__valid_wand(diz))
);

procedure Wand_list_for_list__valid_wand#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Wand_list_for_list__valid_wand
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__lemma:=Mask[diz, Wand_list_for_list__lemma] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 <= diz.Wand_list_for_list__lemma
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [42085]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    assume 1 <= Heap[diz, Wand_list_for_list__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__in_1:=Mask[diz, Wand_list_for_list__in_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_list_for_list__in_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [42086]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__in_1);
    assume Heap[diz, Wand_list_for_list__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__in_1_0:=Mask[diz, Wand_list_for_list__in_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__out_1:=Mask[diz, Wand_list_for_list__out_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_list_for_list__out_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [42087]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__out_1);
    assume Heap[diz, Wand_list_for_list__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__out_1_0:=Mask[diz, Wand_list_for_list__out_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__this_1:=Mask[diz, Wand_list_for_list__this_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L2_1:=Mask[diz, Wand_list_for_list__L2_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__tmp_suffix_1:=Mask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L1_1:=Mask[diz, Wand_list_for_list__L1_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__tmp_1:=Mask[diz, Wand_list_for_list__tmp_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__suffix_1:=Mask[diz, Wand_list_for_list__suffix_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__cursor_1:=Mask[diz, Wand_list_for_list__cursor_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__wand_1:=Mask[diz, Wand_list_for_list__wand_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_list_for_list__lemma == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [42088]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 1) {
      
      // -- Check definedness of diz.Wand_list_for_list__this_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [42089]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Heap[diz, Wand_list_for_list__this_1] != null;
      
      // -- Check definedness of acc(diz.Wand_list_for_list__tmp_1.List__val, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [42090]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_list_for_list__tmp_1.List__next, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [42091]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_list_for_list__tmp_1.List__next == diz.Wand_list_for_list__cursor_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [42092]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@84.1--86.2) [42093]"}
          HasDirectPerm(Mask, Heap[diz, Wand_list_for_list__tmp_1], List__next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@84.1--86.2) [42094]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__cursor_1);
      assume Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] == Heap[diz, Wand_list_for_list__cursor_1];
      
      // -- Check definedness of diz.Wand_list_for_list__tmp_suffix_1 == Seq(diz.Wand_list_for_list__tmp_1.List__val) ++ diz.Wand_list_for_list__suffix_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@84.1--86.2) [42095]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [42096]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@84.1--86.2) [42097]"}
          HasDirectPerm(Mask, Heap[diz, Wand_list_for_list__tmp_1], List__val);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@84.1--86.2) [42098]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__suffix_1);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__val]), Heap[diz, Wand_list_for_list__suffix_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__wand_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42099]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
      assume Heap[diz, Wand_list_for_list__wand_1] != null;
      
      // -- Check definedness of acc(Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42100]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
      perm := FullPerm;
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__tmp_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42101]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1296--85.1356) [42102]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1296--85.1356) [42103]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [42104]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      assume Wand_list_for_list__get_in_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__tmp_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_in_1_0(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__tmp_suffix_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42105]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1395--85.1457) [42106]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1395--85.1457) [42107]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@84.1--86.2) [42108]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [42109]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__tmp_suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_out_1(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42110]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1535--85.1596) [42111]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1535--85.1596) [42112]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [42113]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Wand_list_for_list__get_out_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__this_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_out_1_0(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__L1_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [42114]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1636--85.1699) [42115]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1636--85.1699) [42116]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@84.1--86.2) [42117]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [42118]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__L1_1], Heap[diz, Wand_list_for_list__L2_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__in_1 == diz.Wand_list_for_list__cursor_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [42119]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@84.1--86.2) [42120]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__cursor_1);
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__cursor_1];
      
      // -- Check definedness of diz.Wand_list_for_list__in_1_0 == diz.Wand_list_for_list__suffix_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@84.1--86.2) [42121]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@84.1--86.2) [42122]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [42123]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__out_1 == diz.Wand_list_for_list__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [42124]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [42125]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_1];
      
      // -- Check definedness of diz.Wand_list_for_list__out_1_0 == diz.Wand_list_for_list__L1_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@84.1--86.2) [42126]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@84.1--86.2) [42127]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [42128]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__out_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_1], Heap[diz, Wand_list_for_list__L2_1]));
    }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__this_2:=Mask[diz, Wand_list_for_list__this_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L2_2:=Mask[diz, Wand_list_for_list__L2_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L1_2:=Mask[diz, Wand_list_for_list__L1_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_list_for_list__lemma == 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [42129]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 2) {
      
      // -- Check definedness of diz.Wand_list_for_list__this_2 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [42130]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__this_2] != null;
      
      // -- Check definedness of diz.Wand_list_for_list__in_1 == diz.Wand_list_for_list__this_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [42131]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [42132]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__this_2];
      
      // -- Check definedness of diz.Wand_list_for_list__in_1_0 == diz.Wand_list_for_list__L1_2 ++ diz.Wand_list_for_list__L2_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@84.1--86.2) [42133]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@84.1--86.2) [42134]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@84.1--86.2) [42135]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_2);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
      
      // -- Check definedness of diz.Wand_list_for_list__out_1 == diz.Wand_list_for_list__this_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [42136]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [42137]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_2];
      
      // -- Check definedness of diz.Wand_list_for_list__out_1_0 == diz.Wand_list_for_list__L1_2 ++ diz.Wand_list_for_list__L2_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@84.1--86.2) [42138]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@84.1--86.2) [42139]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@84.1--86.2) [42140]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_2);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__out_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
    }
    
    // -- Check definedness of diz.Wand_list_for_list__lemma <= 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [42141]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    assume Heap[diz, Wand_list_for_list__lemma] <= 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate List__state
// ==================================================

type PredicateType_List__state;
function  List__state(diz: Ref): Field PredicateType_List__state FrameType;
function  List__state#sm(diz: Ref): Field PredicateType_List__state PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(List__state(diz)) }
  PredicateMaskField(List__state(diz)) == List__state#sm(diz)
);
axiom (forall diz: Ref ::
  { List__state(diz) }
  IsPredicateField(List__state(diz))
);
axiom (forall diz: Ref ::
  { List__state(diz) }
  getPredWandId(List__state(diz)) == 1
);
function  List__state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List__state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { List__state(diz), List__state(diz2) }
  List__state(diz) == List__state(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { List__state#sm(diz), List__state#sm(diz2) }
  List__state#sm(diz) == List__state#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { List__state#trigger(Heap, List__state(diz)) }
  List__state#everUsed(List__state(diz))
);

procedure List__state#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List__state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, List__val:=Mask[diz, List__val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, List__next:=Mask[diz, List__next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.List__next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@88.1--90.2) [42142]"}
        HasDirectPerm(Mask, diz, List__next);
    if (Heap[diz, List__next] != null) {
      
      // -- Check definedness of acc(List__state(diz.List__next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@88.1--90.2) [42143]"}
          HasDirectPerm(Mask, diz, List__next);
      perm := FullPerm;
      Mask := Mask[null, List__state(Heap[diz, List__next]):=Mask[null, List__state(Heap[diz, List__next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Wand_list_for_list___apply
// ==================================================

procedure Wand_list_for_list___apply(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_diz: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(List__state(Wand_list_for_list__get_in_1(diz)), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@96.28--96.61) [42144]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@96.28--96.61) [42145]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    Mask := Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, diz)):=Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, diz))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(Wand_list_for_list__get_in_1(diz)) == Wand_list_for_list__get_in_1_0(diz)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@97.27--97.60) [42146]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@97.27--97.60) [42147]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion Wand_list_for_list__get_in_1(diz) != null might not hold. (testListAppend.vpr@97.12--97.61) [42148]"}
          Wand_list_for_list__get_in_1(Heap, diz) != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(diz)) (testListAppend.vpr@97.12--97.61) [42149]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, diz))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@97.65--97.100) [42150]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@97.65--97.100) [42151]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, Wand_list_for_list__get_in_1(Heap, diz)), Wand_list_for_list__get_in_1_0(Heap, diz));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(diz) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@98.12--98.46) [42152]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@98.12--98.46) [42153]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_out_1(Heap, diz) != null;
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@99.31--99.65) [42154]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@99.31--99.65) [42155]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    PostMask := PostMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=PostMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@100.30--100.64) [42156]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@100.30--100.64) [42157]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@100.11--100.66) [42158]"}
          Wand_list_for_list__get_out_1(oldHeap, diz) != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@100.11--100.66) [42159]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
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
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@100.74--100.110) [42160]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@100.74--100.110) [42161]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(PostHeap, Wand_list_for_list__get_out_1(oldHeap, diz)), Wand_list_for_list__get_out_1_0(oldHeap, diz));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Wand_list_for_list__valid_wand(diz), write) -- testListAppend.vpr@102.3--102.57
    assume Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(diz));
    assume Heap[null, Wand_list_for_list__valid_wand(diz)] == CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if Heap[diz, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next]), Heap[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(Heap[diz, Wand_list_for_list__L1_2]), FrameFragment((if Heap[diz, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_list_for_list__valid_wand(diz) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@102.3--102.57) [42164]"}
        perm <= Mask[null, Wand_list_for_list__valid_wand(diz)];
    }
    Mask := Mask[null, Wand_list_for_list__valid_wand(diz):=Mask[null, Wand_list_for_list__valid_wand(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Wand_list_for_list__valid_wand(diz))) {
        havoc newVersion;
        Heap := Heap[null, Wand_list_for_list__valid_wand(diz):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__lemma:=Mask[diz, Wand_list_for_list__lemma] + perm];
    assume state(Heap, Mask);
    assume 1 <= Heap[diz, Wand_list_for_list__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__in_1:=Mask[diz, Wand_list_for_list__in_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_list_for_list__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__in_1_0:=Mask[diz, Wand_list_for_list__in_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__out_1:=Mask[diz, Wand_list_for_list__out_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_list_for_list__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__out_1_0:=Mask[diz, Wand_list_for_list__out_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__this_1:=Mask[diz, Wand_list_for_list__this_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L2_1:=Mask[diz, Wand_list_for_list__L2_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__tmp_suffix_1:=Mask[diz, Wand_list_for_list__tmp_suffix_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L1_1:=Mask[diz, Wand_list_for_list__L1_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__tmp_1:=Mask[diz, Wand_list_for_list__tmp_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__suffix_1:=Mask[diz, Wand_list_for_list__suffix_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__cursor_1:=Mask[diz, Wand_list_for_list__cursor_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__wand_1:=Mask[diz, Wand_list_for_list__wand_1] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, Wand_list_for_list__lemma] == 1) {
      assume Heap[diz, Wand_list_for_list__this_1] != null;
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
      assume state(Heap, Mask);
      assume Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] == Heap[diz, Wand_list_for_list__cursor_1];
      assume Seq#Equal(Heap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__val]), Heap[diz, Wand_list_for_list__suffix_1]));
      assume Heap[diz, Wand_list_for_list__wand_1] != null;
      perm := FullPerm;
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Wand_list_for_list__valid_wand(diz), Heap[null, Wand_list_for_list__valid_wand(diz)], Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1]), Heap[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_in_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__tmp_1];
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__tmp_suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_out_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__this_1];
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__L1_1], Heap[diz, Wand_list_for_list__L2_1]));
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__cursor_1];
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_1];
      assume Seq#Equal(Heap[diz, Wand_list_for_list__out_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_1], Heap[diz, Wand_list_for_list__L2_1]));
    }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__this_2:=Mask[diz, Wand_list_for_list__this_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L2_2:=Mask[diz, Wand_list_for_list__L2_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__L1_2:=Mask[diz, Wand_list_for_list__L1_2] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, Wand_list_for_list__lemma] == 2) {
      assume Heap[diz, Wand_list_for_list__this_2] != null;
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__this_2];
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_2];
      assume Seq#Equal(Heap[diz, Wand_list_for_list__out_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
    }
    assume Heap[diz, Wand_list_for_list__lemma] <= 2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (diz.Wand_list_for_list__lemma == 1) -- testListAppend.vpr@103.3--111.4
    
    // -- Check definedness of diz.Wand_list_for_list__lemma == 1
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@103.7--103.41) [42168]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 1) {
      
      // -- Translating statement: fold acc(List__state(diz.Wand_list_for_list__tmp_1), write) -- testListAppend.vpr@104.5--104.64
        
        // -- Check definedness of acc(List__state(diz.Wand_list_for_list__tmp_1), write)
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@104.5--104.64) [42169]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@104.5--104.64) [42172]"}
            perm <= Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val];
        }
        Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@104.5--104.64) [42174]"}
            perm <= Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next];
        }
        Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next] - perm];
        if (Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access List__state(diz.Wand_list_for_list__tmp_1.List__next) (testListAppend.vpr@104.5--104.64) [42176]"}
              perm <= Mask[null, List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])];
          }
          Mask := Mask[null, List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next]):=Mask[null, List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(List__state(Heap[diz, Wand_list_for_list__tmp_1]), Heap[null, List__state(Heap[diz, Wand_list_for_list__tmp_1])], List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next]), Heap[null, List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])]);
        }
        perm := FullPerm;
        Mask := Mask[null, List__state(Heap[diz, Wand_list_for_list__tmp_1]):=Mask[null, List__state(Heap[diz, Wand_list_for_list__tmp_1])] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume List__state#trigger(Heap, List__state(Heap[diz, Wand_list_for_list__tmp_1]));
        assume Heap[null, List__state(Heap[diz, Wand_list_for_list__tmp_1])] == CombineFrames(FrameFragment(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next]), FrameFragment((if Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] != null then Heap[null, List__state(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])] else EmptyFrame))));
        if (!HasDirectPerm(Mask, null, List__state(Heap[diz, Wand_list_for_list__tmp_1]))) {
          Heap := Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1]):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, List__state(Heap[diz, Wand_list_for_list__tmp_1]):=freshVersion];
        }
        Heap := Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1]):=Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1])][Heap[diz, Wand_list_for_list__tmp_1], List__val:=true]];
        Heap := Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1]):=Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1])][Heap[diz, Wand_list_for_list__tmp_1], List__next:=true]];
        if (Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1])][o_14, f_3] || Heap[null, List__state#sm(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1]):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_list_for_list___apply(diz.Wand_list_for_list__wand_1, current_thread_id) -- testListAppend.vpr@105.5--105.82
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Wand_list_for_list__wand_1
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@105.5--105.82) [42178]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        arg_diz := Heap[diz, Wand_list_for_list__wand_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@105.5--105.82) [42179]"}
            arg_diz != null;
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@105.5--105.82) [42180]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@105.5--105.82) [42181]"}
              perm <= Mask[null, Wand_list_for_list__valid_wand(arg_diz)];
          }
          Mask := Mask[null, Wand_list_for_list__valid_wand(arg_diz):=Mask[null, Wand_list_for_list__valid_wand(arg_diz)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1)) (testListAppend.vpr@105.5--105.82) [42182]"}
              perm <= Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz))];
          }
          Mask := Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz)):=Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz))] - perm];
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion List__contents(Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1)) == Wand_list_for_list__get_in_1_0(diz.Wand_list_for_list__wand_1) might not hold. (testListAppend.vpr@105.5--105.82) [42183]"}
            Seq#Equal(List__contents(Heap, Wand_list_for_list__get_in_1(Heap, arg_diz)), Wand_list_for_list__get_in_1_0(Heap, arg_diz));
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion Wand_list_for_list__get_out_1(diz.Wand_list_for_list__wand_1) != null might not hold. (testListAppend.vpr@105.5--105.82) [42184]"}
            Wand_list_for_list__get_out_1(Heap, arg_diz) != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, List__state(Wand_list_for_list__get_out_1(PreCallHeap, arg_diz)):=Mask[null, List__state(Wand_list_for_list__get_out_1(PreCallHeap, arg_diz))] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(List__contents(Heap, Wand_list_for_list__get_out_1(PreCallHeap, arg_diz)), Wand_list_for_list__get_out_1_0(PreCallHeap, arg_diz));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write) &&
  //   List__contents(old(Wand_list_for_list__get_out_1(diz))) ==
  //   old(Wand_list_for_list__get_out_1_0(diz)) -- testListAppend.vpr@106.5--106.182
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        
        // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.32--106.66) [42185]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.32--106.66) [42186]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@106.12--106.182) [42188]"}
            perm <= AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
        }
        AssertMask := AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
        
        // -- Check definedness of List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.100--106.134) [42189]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.100--106.134) [42190]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@106.81--106.136) [42191]"}
              Wand_list_for_list__get_out_1(oldHeap, diz) != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@106.81--106.136) [42192]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
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
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.144--106.180) [42193]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.144--106.180) [42194]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@106.12--106.182) [42195]"}
          Seq#Equal(List__contents(AssertHeap, Wand_list_for_list__get_out_1(oldHeap, diz)), Wand_list_for_list__get_out_1_0(oldHeap, diz));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testListAppend.vpr@107.5--107.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (diz.Wand_list_for_list__lemma == 2) -- testListAppend.vpr@108.5--111.4
        
        // -- Check definedness of diz.Wand_list_for_list__lemma == 2
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@108.13--108.47) [42196]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
        if (Heap[diz, Wand_list_for_list__lemma] == 2) {
          
          // -- Translating statement: assert acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write) &&
  //   List__contents(old(Wand_list_for_list__get_out_1(diz))) ==
  //   old(Wand_list_for_list__get_out_1_0(diz)) -- testListAppend.vpr@109.5--109.182
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Mask := AssertMask;
            ExhaleWellDef0Heap := AssertHeap;
            
            // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.32--109.66) [42197]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.32--109.66) [42198]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@109.12--109.182) [42200]"}
                perm <= AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
            }
            AssertMask := AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
            
            // -- Check definedness of List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.100--109.134) [42201]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.100--109.134) [42202]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@109.81--109.136) [42203]"}
                  Wand_list_for_list__get_out_1(oldHeap, diz) != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@109.81--109.136) [42204]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
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
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.144--109.180) [42205]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.144--109.180) [42206]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@109.12--109.182) [42207]"}
              Seq#Equal(List__contents(AssertHeap, Wand_list_for_list__get_out_1(oldHeap, diz)), Wand_list_for_list__get_out_1_0(oldHeap, diz));
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- testListAppend.vpr@110.5--110.17
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@99.11--99.75) [42208]"}
        perm <= Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
    }
    Mask := Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list___apply might not hold. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@100.11--100.111) [42209]"}
      Seq#Equal(List__contents(Heap, Wand_list_for_list__get_out_1(oldHeap, diz)), Wand_list_for_list__get_out_1_0(oldHeap, diz));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Wand_list_for_list__Wand_list_for_list
// ==================================================

procedure Wand_list_for_list__Wand_list_for_list(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_2: int;
  var __flatten_45: int;
  var __flatten_3: (Seq int);
  var __flatten_46: (Seq int);
  var __flatten_4: (Seq int);
  var __flatten_47: (Seq int);
  var __flatten_5: (Seq int);
  var __flatten_48: (Seq int);
  var __flatten_6: (Seq int);
  var __flatten_49: (Seq int);
  var __flatten_7: (Seq int);
  var __flatten_50: (Seq int);
  var __flatten_8: (Seq int);
  var __flatten_51: (Seq int);
  var __flatten_9: (Seq int);
  var __flatten_52: (Seq int);
  var __flatten_10: (Seq int);
  var __flatten_53: (Seq int);
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__lemma:=PostMask[sys__result, Wand_list_for_list__lemma] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__lemma == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@117.11--117.108) [42210]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__lemma);
    assume PostHeap[sys__result, Wand_list_for_list__lemma] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__in_1:=PostMask[sys__result, Wand_list_for_list__in_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@118.11--118.109) [42211]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__in_1);
    assume PostHeap[sys__result, Wand_list_for_list__in_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__in_1_0:=PostMask[sys__result, Wand_list_for_list__in_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@119.11--119.119) [42212]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__in_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__out_1:=PostMask[sys__result, Wand_list_for_list__out_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@120.11--120.111) [42213]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__out_1);
    assume PostHeap[sys__result, Wand_list_for_list__out_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__out_1_0:=PostMask[sys__result, Wand_list_for_list__out_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@121.11--121.121) [42214]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__out_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__this_1:=PostMask[sys__result, Wand_list_for_list__this_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@122.11--122.113) [42215]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__this_1);
    assume PostHeap[sys__result, Wand_list_for_list__this_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L2_1:=PostMask[sys__result, Wand_list_for_list__L2_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@123.11--123.115) [42216]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L2_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__tmp_suffix_1:=PostMask[sys__result, Wand_list_for_list__tmp_suffix_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@124.11--124.131) [42217]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__tmp_suffix_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L1_1:=PostMask[sys__result, Wand_list_for_list__L1_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@125.11--125.115) [42218]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L1_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__tmp_1:=PostMask[sys__result, Wand_list_for_list__tmp_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@126.11--126.111) [42219]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__tmp_1);
    assume PostHeap[sys__result, Wand_list_for_list__tmp_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__suffix_1:=PostMask[sys__result, Wand_list_for_list__suffix_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__suffix_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@127.11--127.123) [42220]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__suffix_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__cursor_1:=PostMask[sys__result, Wand_list_for_list__cursor_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__cursor_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@128.11--128.117) [42221]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__cursor_1);
    assume PostHeap[sys__result, Wand_list_for_list__cursor_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__wand_1:=PostMask[sys__result, Wand_list_for_list__wand_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__wand_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@129.11--129.113) [42222]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__wand_1);
    assume PostHeap[sys__result, Wand_list_for_list__wand_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__this_2:=PostMask[sys__result, Wand_list_for_list__this_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@130.11--130.113) [42223]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__this_2);
    assume PostHeap[sys__result, Wand_list_for_list__this_2] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L2_2:=PostMask[sys__result, Wand_list_for_list__L2_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@131.11--131.115) [42224]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L2_2);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L1_2:=PostMask[sys__result, Wand_list_for_list__L1_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@132.11--132.115) [42225]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L1_2);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Wand_list_for_list__lemma, Wand_list_for_list__in_1, Wand_list_for_list__in_1_0, Wand_list_for_list__out_1, Wand_list_for_list__out_1_0, Wand_list_for_list__this_1, Wand_list_for_list__L2_1, Wand_list_for_list__tmp_suffix_1, Wand_list_for_list__L1_1, Wand_list_for_list__tmp_1, Wand_list_for_list__suffix_1, Wand_list_for_list__cursor_1, Wand_list_for_list__wand_1, Wand_list_for_list__this_2, Wand_list_for_list__L2_2, Wand_list_for_list__L1_2) -- testListAppend.vpr@153.3--153.459
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Wand_list_for_list__lemma:=Mask[diz, Wand_list_for_list__lemma] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__in_1:=Mask[diz, Wand_list_for_list__in_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__in_1_0:=Mask[diz, Wand_list_for_list__in_1_0] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__out_1:=Mask[diz, Wand_list_for_list__out_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__out_1_0:=Mask[diz, Wand_list_for_list__out_1_0] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__this_1:=Mask[diz, Wand_list_for_list__this_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__L2_1:=Mask[diz, Wand_list_for_list__L2_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__tmp_suffix_1:=Mask[diz, Wand_list_for_list__tmp_suffix_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__L1_1:=Mask[diz, Wand_list_for_list__L1_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__tmp_1:=Mask[diz, Wand_list_for_list__tmp_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__suffix_1:=Mask[diz, Wand_list_for_list__suffix_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__cursor_1:=Mask[diz, Wand_list_for_list__cursor_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__wand_1:=Mask[diz, Wand_list_for_list__wand_1] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__this_2:=Mask[diz, Wand_list_for_list__this_2] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__L2_2:=Mask[diz, Wand_list_for_list__L2_2] + FullPerm];
    Mask := Mask[diz, Wand_list_for_list__L1_2:=Mask[diz, Wand_list_for_list__L1_2] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := 0 -- testListAppend.vpr@154.3--154.19
    __flatten_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_45 := __flatten_2 -- testListAppend.vpr@155.3--155.30
    __flatten_45 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__lemma := __flatten_45 -- testListAppend.vpr@156.3--156.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@156.3--156.48) [42226]"}
      FullPerm == Mask[diz, Wand_list_for_list__lemma];
    Heap := Heap[diz, Wand_list_for_list__lemma:=__flatten_45];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__in_1 := null -- testListAppend.vpr@157.3--157.39
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@157.3--157.39) [42227]"}
      FullPerm == Mask[diz, Wand_list_for_list__in_1];
    Heap := Heap[diz, Wand_list_for_list__in_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := Seq[Int]() -- testListAppend.vpr@158.3--158.28
    __flatten_3 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_46 := __flatten_3 -- testListAppend.vpr@159.3--159.30
    __flatten_46 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__in_1_0 := __flatten_46 -- testListAppend.vpr@160.3--160.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@160.3--160.49) [42228]"}
      FullPerm == Mask[diz, Wand_list_for_list__in_1_0];
    Heap := Heap[diz, Wand_list_for_list__in_1_0:=__flatten_46];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__out_1 := null -- testListAppend.vpr@161.3--161.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@161.3--161.40) [42229]"}
      FullPerm == Mask[diz, Wand_list_for_list__out_1];
    Heap := Heap[diz, Wand_list_for_list__out_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := Seq[Int]() -- testListAppend.vpr@162.3--162.28
    __flatten_4 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_47 := __flatten_4 -- testListAppend.vpr@163.3--163.30
    __flatten_47 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__out_1_0 := __flatten_47 -- testListAppend.vpr@164.3--164.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@164.3--164.50) [42230]"}
      FullPerm == Mask[diz, Wand_list_for_list__out_1_0];
    Heap := Heap[diz, Wand_list_for_list__out_1_0:=__flatten_47];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__this_1 := null -- testListAppend.vpr@165.3--165.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@165.3--165.41) [42231]"}
      FullPerm == Mask[diz, Wand_list_for_list__this_1];
    Heap := Heap[diz, Wand_list_for_list__this_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := Seq[Int]() -- testListAppend.vpr@166.3--166.28
    __flatten_5 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_48 := __flatten_5 -- testListAppend.vpr@167.3--167.30
    __flatten_48 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__L2_1 := __flatten_48 -- testListAppend.vpr@168.3--168.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@168.3--168.47) [42232]"}
      FullPerm == Mask[diz, Wand_list_for_list__L2_1];
    Heap := Heap[diz, Wand_list_for_list__L2_1:=__flatten_48];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := Seq[Int]() -- testListAppend.vpr@169.3--169.28
    __flatten_6 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_49 := __flatten_6 -- testListAppend.vpr@170.3--170.30
    __flatten_49 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__tmp_suffix_1 := __flatten_49 -- testListAppend.vpr@171.3--171.55
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@171.3--171.55) [42233]"}
      FullPerm == Mask[diz, Wand_list_for_list__tmp_suffix_1];
    Heap := Heap[diz, Wand_list_for_list__tmp_suffix_1:=__flatten_49];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := Seq[Int]() -- testListAppend.vpr@172.3--172.28
    __flatten_7 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_50 := __flatten_7 -- testListAppend.vpr@173.3--173.30
    __flatten_50 := __flatten_7;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__L1_1 := __flatten_50 -- testListAppend.vpr@174.3--174.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@174.3--174.47) [42234]"}
      FullPerm == Mask[diz, Wand_list_for_list__L1_1];
    Heap := Heap[diz, Wand_list_for_list__L1_1:=__flatten_50];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__tmp_1 := null -- testListAppend.vpr@175.3--175.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@175.3--175.40) [42235]"}
      FullPerm == Mask[diz, Wand_list_for_list__tmp_1];
    Heap := Heap[diz, Wand_list_for_list__tmp_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := Seq[Int]() -- testListAppend.vpr@176.3--176.28
    __flatten_8 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_51 := __flatten_8 -- testListAppend.vpr@177.3--177.30
    __flatten_51 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__suffix_1 := __flatten_51 -- testListAppend.vpr@178.3--178.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@178.3--178.51) [42236]"}
      FullPerm == Mask[diz, Wand_list_for_list__suffix_1];
    Heap := Heap[diz, Wand_list_for_list__suffix_1:=__flatten_51];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__cursor_1 := null -- testListAppend.vpr@179.3--179.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@179.3--179.43) [42237]"}
      FullPerm == Mask[diz, Wand_list_for_list__cursor_1];
    Heap := Heap[diz, Wand_list_for_list__cursor_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__wand_1 := null -- testListAppend.vpr@180.3--180.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@180.3--180.41) [42238]"}
      FullPerm == Mask[diz, Wand_list_for_list__wand_1];
    Heap := Heap[diz, Wand_list_for_list__wand_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__this_2 := null -- testListAppend.vpr@181.3--181.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@181.3--181.41) [42239]"}
      FullPerm == Mask[diz, Wand_list_for_list__this_2];
    Heap := Heap[diz, Wand_list_for_list__this_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_9 := Seq[Int]() -- testListAppend.vpr@182.3--182.28
    __flatten_9 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_52 := __flatten_9 -- testListAppend.vpr@183.3--183.30
    __flatten_52 := __flatten_9;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__L2_2 := __flatten_52 -- testListAppend.vpr@184.3--184.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@184.3--184.47) [42240]"}
      FullPerm == Mask[diz, Wand_list_for_list__L2_2];
    Heap := Heap[diz, Wand_list_for_list__L2_2:=__flatten_52];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := Seq[Int]() -- testListAppend.vpr@185.3--185.29
    __flatten_10 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_53 := __flatten_10 -- testListAppend.vpr@186.3--186.31
    __flatten_53 := __flatten_10;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__L1_2 := __flatten_53 -- testListAppend.vpr@187.3--187.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@187.3--187.47) [42241]"}
      FullPerm == Mask[diz, Wand_list_for_list__L1_2];
    Heap := Heap[diz, Wand_list_for_list__L1_2:=__flatten_53];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testListAppend.vpr@188.3--188.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Wand_list_for_list__lemma, write) &&
  //   sys__result.Wand_list_for_list__lemma == 0 &&
  //   (acc(sys__result.Wand_list_for_list__in_1, write) &&
  //   sys__result.Wand_list_for_list__in_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__in_1_0, write) &&
  //   sys__result.Wand_list_for_list__in_1_0 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__out_1, write) &&
  //   sys__result.Wand_list_for_list__out_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__out_1_0, write) &&
  //   sys__result.Wand_list_for_list__out_1_0 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__this_1, write) &&
  //   sys__result.Wand_list_for_list__this_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__L2_1, write) &&
  //   sys__result.Wand_list_for_list__L2_1 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__tmp_suffix_1, write) &&
  //   sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__L1_1, write) &&
  //   sys__result.Wand_list_for_list__L1_1 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__tmp_1, write) &&
  //   sys__result.Wand_list_for_list__tmp_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__suffix_1, write) &&
  //   sys__result.Wand_list_for_list__suffix_1 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__cursor_1, write) &&
  //   sys__result.Wand_list_for_list__cursor_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__wand_1, write) &&
  //   sys__result.Wand_list_for_list__wand_1 == null &&
  //   (acc(sys__result.Wand_list_for_list__this_2, write) &&
  //   sys__result.Wand_list_for_list__this_2 == null &&
  //   (acc(sys__result.Wand_list_for_list__L2_2, write) &&
  //   sys__result.Wand_list_for_list__L2_2 == Seq[Int]() &&
  //   (acc(sys__result.Wand_list_for_list__L1_2, write) &&
  //   sys__result.Wand_list_for_list__L1_2 == Seq[Int]())))))))))))))))) -- testListAppend.vpr@189.3--189.1800
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@189.10--189.1800) [42242]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@189.10--189.1800) [42244]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__lemma];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__lemma:=AssertMask[sys__result, Wand_list_for_list__lemma] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__lemma == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@189.10--189.1800) [42245]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__lemma);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__lemma == 0 might not hold. (testListAppend.vpr@189.10--189.1800) [42246]"}
      AssertHeap[sys__result, Wand_list_for_list__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@189.10--189.1800) [42248]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__in_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__in_1:=AssertMask[sys__result, Wand_list_for_list__in_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@189.10--189.1800) [42249]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__in_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__in_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42250]"}
      AssertHeap[sys__result, Wand_list_for_list__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@189.10--189.1800) [42252]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__in_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__in_1_0:=AssertMask[sys__result, Wand_list_for_list__in_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@189.10--189.1800) [42253]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__in_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__in_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42254]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@189.10--189.1800) [42256]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__out_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__out_1:=AssertMask[sys__result, Wand_list_for_list__out_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@189.10--189.1800) [42257]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__out_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__out_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42258]"}
      AssertHeap[sys__result, Wand_list_for_list__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@189.10--189.1800) [42260]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__out_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__out_1_0:=AssertMask[sys__result, Wand_list_for_list__out_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@189.10--189.1800) [42261]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__out_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__out_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42262]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@189.10--189.1800) [42264]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__this_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__this_1:=AssertMask[sys__result, Wand_list_for_list__this_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@189.10--189.1800) [42265]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__this_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__this_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42266]"}
      AssertHeap[sys__result, Wand_list_for_list__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@189.10--189.1800) [42268]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L2_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L2_1:=AssertMask[sys__result, Wand_list_for_list__L2_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@189.10--189.1800) [42269]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L2_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L2_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42270]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@189.10--189.1800) [42272]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1:=AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@189.10--189.1800) [42273]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__tmp_suffix_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42274]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@189.10--189.1800) [42276]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L1_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L1_1:=AssertMask[sys__result, Wand_list_for_list__L1_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@189.10--189.1800) [42277]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L1_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L1_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42278]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@189.10--189.1800) [42280]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__tmp_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__tmp_1:=AssertMask[sys__result, Wand_list_for_list__tmp_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@189.10--189.1800) [42281]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__tmp_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__tmp_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42282]"}
      AssertHeap[sys__result, Wand_list_for_list__tmp_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@189.10--189.1800) [42284]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__suffix_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__suffix_1:=AssertMask[sys__result, Wand_list_for_list__suffix_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__suffix_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@189.10--189.1800) [42285]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__suffix_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42286]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@189.10--189.1800) [42288]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__cursor_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__cursor_1:=AssertMask[sys__result, Wand_list_for_list__cursor_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__cursor_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@189.10--189.1800) [42289]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__cursor_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__cursor_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42290]"}
      AssertHeap[sys__result, Wand_list_for_list__cursor_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@189.10--189.1800) [42292]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__wand_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__wand_1:=AssertMask[sys__result, Wand_list_for_list__wand_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__wand_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@189.10--189.1800) [42293]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__wand_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__wand_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42294]"}
      AssertHeap[sys__result, Wand_list_for_list__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@189.10--189.1800) [42296]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__this_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__this_2:=AssertMask[sys__result, Wand_list_for_list__this_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@189.10--189.1800) [42297]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__this_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__this_2 == null might not hold. (testListAppend.vpr@189.10--189.1800) [42298]"}
      AssertHeap[sys__result, Wand_list_for_list__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@189.10--189.1800) [42300]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L2_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L2_2:=AssertMask[sys__result, Wand_list_for_list__L2_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@189.10--189.1800) [42301]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L2_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L2_2 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42302]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@189.10--189.1800) [42304]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L1_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L1_2:=AssertMask[sys__result, Wand_list_for_list__L1_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@189.10--189.1800) [42305]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L1_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L1_2 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [42306]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@190.3--190.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@116.11--116.30) [42307]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@117.11--117.108) [42308]"}
        perm <= Mask[sys__result, Wand_list_for_list__lemma];
    }
    Mask := Mask[sys__result, Wand_list_for_list__lemma:=Mask[sys__result, Wand_list_for_list__lemma] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__lemma == 0 might not hold. (testListAppend.vpr@117.11--117.108) [42309]"}
      Heap[sys__result, Wand_list_for_list__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@118.11--118.109) [42310]"}
        perm <= Mask[sys__result, Wand_list_for_list__in_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__in_1:=Mask[sys__result, Wand_list_for_list__in_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__in_1 == null might not hold. (testListAppend.vpr@118.11--118.109) [42311]"}
      Heap[sys__result, Wand_list_for_list__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@119.11--119.119) [42312]"}
        perm <= Mask[sys__result, Wand_list_for_list__in_1_0];
    }
    Mask := Mask[sys__result, Wand_list_for_list__in_1_0:=Mask[sys__result, Wand_list_for_list__in_1_0] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__in_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@119.11--119.119) [42313]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@120.11--120.111) [42314]"}
        perm <= Mask[sys__result, Wand_list_for_list__out_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__out_1:=Mask[sys__result, Wand_list_for_list__out_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__out_1 == null might not hold. (testListAppend.vpr@120.11--120.111) [42315]"}
      Heap[sys__result, Wand_list_for_list__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@121.11--121.121) [42316]"}
        perm <= Mask[sys__result, Wand_list_for_list__out_1_0];
    }
    Mask := Mask[sys__result, Wand_list_for_list__out_1_0:=Mask[sys__result, Wand_list_for_list__out_1_0] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__out_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@121.11--121.121) [42317]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@122.11--122.113) [42318]"}
        perm <= Mask[sys__result, Wand_list_for_list__this_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__this_1:=Mask[sys__result, Wand_list_for_list__this_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__this_1 == null might not hold. (testListAppend.vpr@122.11--122.113) [42319]"}
      Heap[sys__result, Wand_list_for_list__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@123.11--123.115) [42320]"}
        perm <= Mask[sys__result, Wand_list_for_list__L2_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L2_1:=Mask[sys__result, Wand_list_for_list__L2_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L2_1 == Seq[Int]() might not hold. (testListAppend.vpr@123.11--123.115) [42321]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@124.11--124.131) [42322]"}
        perm <= Mask[sys__result, Wand_list_for_list__tmp_suffix_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__tmp_suffix_1:=Mask[sys__result, Wand_list_for_list__tmp_suffix_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@124.11--124.131) [42323]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@125.11--125.115) [42324]"}
        perm <= Mask[sys__result, Wand_list_for_list__L1_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L1_1:=Mask[sys__result, Wand_list_for_list__L1_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L1_1 == Seq[Int]() might not hold. (testListAppend.vpr@125.11--125.115) [42325]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@126.11--126.111) [42326]"}
        perm <= Mask[sys__result, Wand_list_for_list__tmp_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__tmp_1:=Mask[sys__result, Wand_list_for_list__tmp_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__tmp_1 == null might not hold. (testListAppend.vpr@126.11--126.111) [42327]"}
      Heap[sys__result, Wand_list_for_list__tmp_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@127.11--127.123) [42328]"}
        perm <= Mask[sys__result, Wand_list_for_list__suffix_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__suffix_1:=Mask[sys__result, Wand_list_for_list__suffix_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@127.11--127.123) [42329]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@128.11--128.117) [42330]"}
        perm <= Mask[sys__result, Wand_list_for_list__cursor_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__cursor_1:=Mask[sys__result, Wand_list_for_list__cursor_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__cursor_1 == null might not hold. (testListAppend.vpr@128.11--128.117) [42331]"}
      Heap[sys__result, Wand_list_for_list__cursor_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@129.11--129.113) [42332]"}
        perm <= Mask[sys__result, Wand_list_for_list__wand_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__wand_1:=Mask[sys__result, Wand_list_for_list__wand_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__wand_1 == null might not hold. (testListAppend.vpr@129.11--129.113) [42333]"}
      Heap[sys__result, Wand_list_for_list__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@130.11--130.113) [42334]"}
        perm <= Mask[sys__result, Wand_list_for_list__this_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__this_2:=Mask[sys__result, Wand_list_for_list__this_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__this_2 == null might not hold. (testListAppend.vpr@130.11--130.113) [42335]"}
      Heap[sys__result, Wand_list_for_list__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@131.11--131.115) [42336]"}
        perm <= Mask[sys__result, Wand_list_for_list__L2_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L2_2:=Mask[sys__result, Wand_list_for_list__L2_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L2_2 == Seq[Int]() might not hold. (testListAppend.vpr@131.11--131.115) [42337]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@132.11--132.115) [42338]"}
        perm <= Mask[sys__result, Wand_list_for_list__L1_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L1_2:=Mask[sys__result, Wand_list_for_list__L1_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L1_2 == Seq[Int]() might not hold. (testListAppend.vpr@132.11--132.115) [42339]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__List
// ==================================================

procedure List__List(current_thread_id: int, v_2: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_11: int;
  var __flatten_54: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, List__state(sys__result):=PostMask[null, List__state(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(sys__result) == Seq(v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@197.11--197.38) [42340]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@197.11--197.38) [42341]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List__state(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(PostHeap, sys__result), Seq#Singleton(v_2));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(List__val, List__next) -- testListAppend.vpr@202.3--202.36
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, List__val:=Mask[diz, List__val] + FullPerm];
    Mask := Mask[diz, List__next:=Mask[diz, List__next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := v -- testListAppend.vpr@203.3--203.20
    __flatten_11 := v_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_54 := __flatten_11 -- testListAppend.vpr@204.3--204.31
    __flatten_54 := __flatten_11;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.List__val := __flatten_54 -- testListAppend.vpr@205.3--205.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@205.3--205.32) [42342]"}
      FullPerm == Mask[diz, List__val];
    Heap := Heap[diz, List__val:=__flatten_54];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.List__next := null -- testListAppend.vpr@206.3--206.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@206.3--206.25) [42343]"}
      FullPerm == Mask[diz, List__next];
    Heap := Heap[diz, List__next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List__state(diz), write) -- testListAppend.vpr@207.3--207.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@207.3--207.36) [42346]"}
        perm <= Mask[diz, List__val];
    }
    Mask := Mask[diz, List__val:=Mask[diz, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@207.3--207.36) [42348]"}
        perm <= Mask[diz, List__next];
    }
    Mask := Mask[diz, List__next:=Mask[diz, List__next] - perm];
    if (Heap[diz, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@207.3--207.36) [42350]"}
          perm <= Mask[null, List__state(Heap[diz, List__next])];
      }
      Mask := Mask[null, List__state(Heap[diz, List__next]):=Mask[null, List__state(Heap[diz, List__next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(List__state(diz), Heap[null, List__state(diz)], List__state(Heap[diz, List__next]), Heap[null, List__state(Heap[diz, List__next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List__state#trigger(Heap, List__state(diz));
    assume Heap[null, List__state(diz)] == CombineFrames(FrameFragment(Heap[diz, List__val]), CombineFrames(FrameFragment(Heap[diz, List__next]), FrameFragment((if Heap[diz, List__next] != null then Heap[null, List__state(Heap[diz, List__next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, List__state(diz))) {
      Heap := Heap[null, List__state#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List__state(diz):=freshVersion];
    }
    Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__val:=true]];
    Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__next:=true]];
    if (Heap[diz, List__next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
        { newPMask[o_3, f_24] }
        Heap[null, List__state#sm(diz)][o_3, f_24] || Heap[null, List__state#sm(Heap[diz, List__next])][o_3, f_24] ==> newPMask[o_3, f_24]
      );
      Heap := Heap[null, List__state#sm(diz):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testListAppend.vpr@208.3--208.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(List__state(sys__result), write) &&
  //   List__contents(sys__result) == Seq(v)) -- testListAppend.vpr@209.3--209.114
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@209.10--209.114) [42352]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@209.10--209.114) [42354]"}
        perm <= AssertMask[null, List__state(sys__result)];
    }
    AssertMask := AssertMask[null, List__state(sys__result):=AssertMask[null, List__state(sys__result)] - perm];
    
    // -- Check definedness of List__contents(sys__result) == Seq(v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@209.76--209.103) [42355]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@209.76--209.103) [42356]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List__state(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion List__contents(sys__result) == Seq(v) might not hold. (testListAppend.vpr@209.10--209.114) [42357]"}
      Seq#Equal(List__contents(AssertHeap, sys__result), Seq#Singleton(v_2));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@210.3--210.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of List__List might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@195.11--195.30) [42358]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__List might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@196.11--196.47) [42359]"}
        perm <= Mask[null, List__state(sys__result)];
    }
    Mask := Mask[null, List__state(sys__result):=Mask[null, List__state(sys__result)] - perm];
    assert {:msg "  Postcondition of List__List might not hold. Assertion List__contents(sys__result) == Seq(v) might not hold. (testListAppend.vpr@197.11--197.48) [42360]"}
      Seq#Equal(List__contents(Heap, sys__result), Seq#Singleton(v_2));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__append_rec
// ==================================================

procedure List__append_rec(diz: Ref, current_thread_id: int, l_1: Ref, L1: (Seq int), L2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_12: Ref;
  var __flatten_55: Ref;
  var newVersion: FrameType;
  var __flatten_56: (Seq int);
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_diz: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(diz) == L1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@217.12--217.31) [42361]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@217.12--217.31) [42362]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, diz), L1);
    assume state(Heap, Mask);
    assume l_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(l) == L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@220.12--220.29) [42363]"}
          l_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@220.12--220.29) [42364]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(l_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, l_1), L2);
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
    PostMask := PostMask[null, List__state(diz):=PostMask[null, List__state(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(diz) == L1 ++ L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@222.11--222.30) [42365]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@222.11--222.30) [42366]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List__state(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(PostHeap, diz), Seq#Append(L1, L2));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_12, $allocated];
    assume Heap[__flatten_55, $allocated];
  
  // -- Translating statement: unfold acc(List__state(diz), write) -- testListAppend.vpr@227.3--227.38
    assume List__state#trigger(Heap, List__state(diz));
    assume Heap[null, List__state(diz)] == CombineFrames(FrameFragment(Heap[diz, List__val]), CombineFrames(FrameFragment(Heap[diz, List__next]), FrameFragment((if Heap[diz, List__next] != null then Heap[null, List__state(Heap[diz, List__next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List__state(diz) might fail. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@227.3--227.38) [42369]"}
        perm <= Mask[null, List__state(diz)];
    }
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List__state(diz))) {
        havoc newVersion;
        Heap := Heap[null, List__state(diz):=newVersion];
      }
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, List__val:=Mask[diz, List__val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, List__next:=Mask[diz, List__next] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, List__next] != null) {
      perm := FullPerm;
      Mask := Mask[null, List__state(Heap[diz, List__next]):=Mask[null, List__state(Heap[diz, List__next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List__state(diz), Heap[null, List__state(diz)], List__state(Heap[diz, List__next]), Heap[null, List__state(Heap[diz, List__next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (diz.List__next == null) -- testListAppend.vpr@228.3--235.4
    
    // -- Check definedness of diz.List__next == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@228.7--228.29) [42373]"}
        HasDirectPerm(Mask, diz, List__next);
    if (Heap[diz, List__next] == null) {
      
      // -- Translating statement: __flatten_12 := l -- testListAppend.vpr@229.5--229.22
        __flatten_12 := l_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_55 := __flatten_12 -- testListAppend.vpr@230.5--230.33
        __flatten_55 := __flatten_12;
        assume state(Heap, Mask);
      
      // -- Translating statement: diz.List__next := __flatten_55 -- testListAppend.vpr@231.5--231.35
        assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@231.5--231.35) [42374]"}
          FullPerm == Mask[diz, List__next];
        Heap := Heap[diz, List__next:=__flatten_55];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_56 := List__contents(diz.List__next) -- testListAppend.vpr@233.5--233.51
        
        // -- Check definedness of List__contents(diz.List__next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@233.5--233.51) [42375]"}
            HasDirectPerm(Mask, diz, List__next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@233.21--233.51) [42376]"}
              Heap[diz, List__next] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@233.21--233.51) [42377]"}
              NoPerm < perm ==> NoPerm < Mask[null, List__state(Heap[diz, List__next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        __flatten_56 := List__contents(Heap, Heap[diz, List__next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: List__append_rec(diz.List__next, current_thread_id, l, __flatten_56, L2) -- testListAppend.vpr@234.5--234.77
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.List__next
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@234.5--234.77) [42378]"}
            HasDirectPerm(Mask, diz, List__next);
        arg_diz := Heap[diz, List__next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@234.5--234.77) [42379]"}
            arg_diz != null;
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@234.5--234.77) [42380]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method List__append_rec might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@234.5--234.77) [42381]"}
              perm <= Mask[null, List__state(arg_diz)];
          }
          Mask := Mask[null, List__state(arg_diz):=Mask[null, List__state(arg_diz)] - perm];
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion List__contents(diz.List__next) == __flatten_56 might not hold. (testListAppend.vpr@234.5--234.77) [42382]"}
            Seq#Equal(List__contents(Heap, arg_diz), __flatten_56);
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion l != null might not hold. (testListAppend.vpr@234.5--234.77) [42383]"}
            l_1 != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method List__append_rec might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@234.5--234.77) [42384]"}
              perm <= Mask[null, List__state(l_1)];
          }
          Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] - perm];
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@234.5--234.77) [42385]"}
            Seq#Equal(List__contents(Heap, l_1), L2);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, List__state(arg_diz):=Mask[null, List__state(arg_diz)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(List__contents(Heap, arg_diz), Seq#Append(__flatten_56, L2));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List__state(diz), write) -- testListAppend.vpr@236.3--236.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@236.3--236.36) [42388]"}
        perm <= Mask[diz, List__val];
    }
    Mask := Mask[diz, List__val:=Mask[diz, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@236.3--236.36) [42390]"}
        perm <= Mask[diz, List__next];
    }
    Mask := Mask[diz, List__next:=Mask[diz, List__next] - perm];
    if (Heap[diz, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@236.3--236.36) [42392]"}
          perm <= Mask[null, List__state(Heap[diz, List__next])];
      }
      Mask := Mask[null, List__state(Heap[diz, List__next]):=Mask[null, List__state(Heap[diz, List__next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(List__state(diz), Heap[null, List__state(diz)], List__state(Heap[diz, List__next]), Heap[null, List__state(Heap[diz, List__next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List__state#trigger(Heap, List__state(diz));
    assume Heap[null, List__state(diz)] == CombineFrames(FrameFragment(Heap[diz, List__val]), CombineFrames(FrameFragment(Heap[diz, List__next]), FrameFragment((if Heap[diz, List__next] != null then Heap[null, List__state(Heap[diz, List__next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, List__state(diz))) {
      Heap := Heap[null, List__state#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List__state(diz):=freshVersion];
    }
    Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__val:=true]];
    Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__next:=true]];
    if (Heap[diz, List__next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
        { newPMask[o_1, f_10] }
        Heap[null, List__state#sm(diz)][o_1, f_10] || Heap[null, List__state#sm(Heap[diz, List__next])][o_1, f_10] ==> newPMask[o_1, f_10]
      );
      Heap := Heap[null, List__state#sm(diz):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__append_rec might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@221.11--221.39) [42394]"}
        perm <= Mask[null, List__state(diz)];
    }
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] - perm];
    assert {:msg "  Postcondition of List__append_rec might not hold. Assertion List__contents(diz) == L1 ++ L2 might not hold. (testListAppend.vpr@222.11--222.42) [42395]"}
      Seq#Equal(List__contents(Heap, diz), Seq#Append(L1, L2));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__Wand_list_for_list_lemma_1
// ==================================================

procedure List__Wand_list_for_list_lemma_1(diz: Ref, current_thread_id: int, this_1: Ref, L2_1: (Seq int), tmp_suffix_1: (Seq int), L1_1: (Seq int), tmp_1: Ref, suffix_1: (Seq int), cursor_1: Ref, wand_1_1: Ref, in_1: Ref, in_1_0: (Seq int), out_1: Ref, out_1_0: (Seq int)) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var vwand: Ref;
  var __flatten_14: Ref;
  var __flatten_16: Ref;
  var __flatten_20: Ref;
  var __flatten_22: Ref;
  var __flatten_23: Ref;
  var __flatten_24: Ref;
  var __flatten_26: Ref;
  var __flatten_28: Ref;
  var __flatten_60: Ref;
  var __flatten_64: Ref;
  var __flatten_66: Ref;
  var __flatten_67: Ref;
  var __flatten_68: Ref;
  var __flatten_70: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_15: int;
  var __flatten_59: int;
  var __flatten_17: (Seq int);
  var __flatten_61: (Seq int);
  var __flatten_18: (Seq int);
  var __flatten_62: (Seq int);
  var __flatten_19: (Seq int);
  var __flatten_63: (Seq int);
  var __flatten_21: (Seq int);
  var __flatten_65: (Seq int);
  var __flatten_25: (Seq int);
  var __flatten_69: (Seq int);
  var __flatten_27: (Seq int);
  var __flatten_71: (Seq int);
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[this_1, $allocated];
    assume Heap[tmp_1, $allocated];
    assume Heap[cursor_1, $allocated];
    assume Heap[wand_1_1, $allocated];
    assume Heap[in_1, $allocated];
    assume Heap[out_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume this_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume tmp_1 != null;
    Mask := Mask[tmp_1, List__val:=Mask[tmp_1, List__val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume tmp_1 != null;
    Mask := Mask[tmp_1, List__next:=Mask[tmp_1, List__next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of tmp_1.List__next == cursor_1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tmp_1.List__next (testListAppend.vpr@245.12--245.40) [42396]"}
        HasDirectPerm(Mask, tmp_1, List__next);
    assume Heap[tmp_1, List__next] == cursor_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of tmp_suffix_1 == Seq(tmp_1.List__val) ++ suffix_1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tmp_1.List__val (testListAppend.vpr@246.12--246.60) [42397]"}
        HasDirectPerm(Mask, tmp_1, List__val);
    assume Seq#Equal(tmp_suffix_1, Seq#Append(Seq#Singleton(Heap[tmp_1, List__val]), suffix_1));
    assume state(Heap, Mask);
    assume wand_1_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(wand_1_1):=Mask[null, Wand_list_for_list__valid_wand(wand_1_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1(wand_1) == tmp_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@249.12--249.48) [42398]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@249.12--249.48) [42399]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_in_1(Heap, wand_1_1) == tmp_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(wand_1) == tmp_suffix_1 ++ L2_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@250.12--250.50) [42400]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@250.12--250.50) [42401]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, wand_1_1), Seq#Append(tmp_suffix_1, L2_1));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(wand_1) == this_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@251.12--251.49) [42402]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@251.12--251.49) [42403]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_out_1(Heap, wand_1_1) == this_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(wand_1) == L1_1 ++ L2_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@252.12--252.51) [42404]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@252.12--252.51) [42405]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, wand_1_1), Seq#Append(L1_1, L2_1));
    assume state(Heap, Mask);
    assume in_1 != null;
    assume state(Heap, Mask);
    assume in_1 == cursor_1;
    assume state(Heap, Mask);
    assume Seq#Equal(in_1_0, Seq#Append(suffix_1, L2_1));
    assume state(Heap, Mask);
    assume out_1 != null;
    assume state(Heap, Mask);
    assume out_1 == this_1;
    assume state(Heap, Mask);
    assume Seq#Equal(out_1_0, Seq#Append(L1_1, L2_1));
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Wand_list_for_list__valid_wand(sys__result):=PostMask[null, Wand_list_for_list__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@261.11--261.52) [42406]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@261.11--261.52) [42407]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_in_1(PostHeap, sys__result) == in_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@262.11--262.54) [42408]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@262.11--262.54) [42409]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_in_1_0(PostHeap, sys__result), in_1_0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@263.11--263.53) [42410]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@263.11--263.53) [42411]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_out_1(PostHeap, sys__result) == out_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@264.11--264.55) [42412]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@264.11--264.55) [42413]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_out_1_0(PostHeap, sys__result), out_1_0);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_14, $allocated];
    assume Heap[__flatten_16, $allocated];
    assume Heap[__flatten_20, $allocated];
    assume Heap[__flatten_22, $allocated];
    assume Heap[__flatten_23, $allocated];
    assume Heap[__flatten_24, $allocated];
    assume Heap[__flatten_26, $allocated];
    assume Heap[__flatten_28, $allocated];
    assume Heap[__flatten_60, $allocated];
    assume Heap[__flatten_64, $allocated];
    assume Heap[__flatten_66, $allocated];
    assume Heap[__flatten_67, $allocated];
    assume Heap[__flatten_68, $allocated];
    assume Heap[__flatten_70, $allocated];
  
  // -- Translating statement: __flatten_14 := Wand_list_for_list__Wand_list_for_list(current_thread_id) -- testListAppend.vpr@295.3--295.76
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_list_for_list__Wand_list_for_list might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@295.3--295.76) [42414]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_14;
    
    // -- Inhaling postcondition
      assume __flatten_14 != null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__lemma:=Mask[__flatten_14, Wand_list_for_list__lemma] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__lemma] == 0;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__in_1:=Mask[__flatten_14, Wand_list_for_list__in_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__in_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__in_1_0:=Mask[__flatten_14, Wand_list_for_list__in_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__out_1:=Mask[__flatten_14, Wand_list_for_list__out_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__out_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__out_1_0:=Mask[__flatten_14, Wand_list_for_list__out_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__this_1:=Mask[__flatten_14, Wand_list_for_list__this_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__this_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__L2_1:=Mask[__flatten_14, Wand_list_for_list__L2_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__tmp_suffix_1:=Mask[__flatten_14, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__L1_1:=Mask[__flatten_14, Wand_list_for_list__L1_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__tmp_1:=Mask[__flatten_14, Wand_list_for_list__tmp_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__tmp_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__suffix_1:=Mask[__flatten_14, Wand_list_for_list__suffix_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__cursor_1:=Mask[__flatten_14, Wand_list_for_list__cursor_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__cursor_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__wand_1:=Mask[__flatten_14, Wand_list_for_list__wand_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__wand_1] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__this_2:=Mask[__flatten_14, Wand_list_for_list__this_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_14, Wand_list_for_list__this_2] == null;
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__L2_2:=Mask[__flatten_14, Wand_list_for_list__L2_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_14 != null;
      Mask := Mask[__flatten_14, Wand_list_for_list__L1_2:=Mask[__flatten_14, Wand_list_for_list__L1_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_14, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
      assume state(Heap, Mask);
    assume Heap[__flatten_14, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_14 -- testListAppend.vpr@296.3--296.24
    vwand := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_15 := 1 -- testListAppend.vpr@297.3--297.20
    __flatten_15 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_59 := __flatten_15 -- testListAppend.vpr@298.3--298.31
    __flatten_59 := __flatten_15;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__lemma := __flatten_59 -- testListAppend.vpr@299.3--299.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@299.3--299.50) [42415]"}
      FullPerm == Mask[vwand, Wand_list_for_list__lemma];
    Heap := Heap[vwand, Wand_list_for_list__lemma:=__flatten_59];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_16 := this_1 -- testListAppend.vpr@300.3--300.25
    __flatten_16 := this_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_60 := __flatten_16 -- testListAppend.vpr@301.3--301.31
    __flatten_60 := __flatten_16;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__this_1 := __flatten_60 -- testListAppend.vpr@302.3--302.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@302.3--302.51) [42416]"}
      FullPerm == Mask[vwand, Wand_list_for_list__this_1];
    Heap := Heap[vwand, Wand_list_for_list__this_1:=__flatten_60];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := L2_1 -- testListAppend.vpr@303.3--303.23
    __flatten_17 := L2_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_61 := __flatten_17 -- testListAppend.vpr@304.3--304.31
    __flatten_61 := __flatten_17;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__L2_1 := __flatten_61 -- testListAppend.vpr@305.3--305.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@305.3--305.49) [42417]"}
      FullPerm == Mask[vwand, Wand_list_for_list__L2_1];
    Heap := Heap[vwand, Wand_list_for_list__L2_1:=__flatten_61];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := tmp_suffix_1 -- testListAppend.vpr@306.3--306.31
    __flatten_18 := tmp_suffix_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_62 := __flatten_18 -- testListAppend.vpr@307.3--307.31
    __flatten_62 := __flatten_18;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__tmp_suffix_1 := __flatten_62 -- testListAppend.vpr@308.3--308.57
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@308.3--308.57) [42418]"}
      FullPerm == Mask[vwand, Wand_list_for_list__tmp_suffix_1];
    Heap := Heap[vwand, Wand_list_for_list__tmp_suffix_1:=__flatten_62];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := L1_1 -- testListAppend.vpr@309.3--309.23
    __flatten_19 := L1_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_63 := __flatten_19 -- testListAppend.vpr@310.3--310.31
    __flatten_63 := __flatten_19;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__L1_1 := __flatten_63 -- testListAppend.vpr@311.3--311.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@311.3--311.49) [42419]"}
      FullPerm == Mask[vwand, Wand_list_for_list__L1_1];
    Heap := Heap[vwand, Wand_list_for_list__L1_1:=__flatten_63];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_20 := tmp_1 -- testListAppend.vpr@312.3--312.24
    __flatten_20 := tmp_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_64 := __flatten_20 -- testListAppend.vpr@313.3--313.31
    __flatten_64 := __flatten_20;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__tmp_1 := __flatten_64 -- testListAppend.vpr@314.3--314.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@314.3--314.50) [42420]"}
      FullPerm == Mask[vwand, Wand_list_for_list__tmp_1];
    Heap := Heap[vwand, Wand_list_for_list__tmp_1:=__flatten_64];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := suffix_1 -- testListAppend.vpr@315.3--315.27
    __flatten_21 := suffix_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_65 := __flatten_21 -- testListAppend.vpr@316.3--316.31
    __flatten_65 := __flatten_21;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__suffix_1 := __flatten_65 -- testListAppend.vpr@317.3--317.53
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@317.3--317.53) [42421]"}
      FullPerm == Mask[vwand, Wand_list_for_list__suffix_1];
    Heap := Heap[vwand, Wand_list_for_list__suffix_1:=__flatten_65];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_22 := cursor_1 -- testListAppend.vpr@318.3--318.27
    __flatten_22 := cursor_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_66 := __flatten_22 -- testListAppend.vpr@319.3--319.31
    __flatten_66 := __flatten_22;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__cursor_1 := __flatten_66 -- testListAppend.vpr@320.3--320.53
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@320.3--320.53) [42422]"}
      FullPerm == Mask[vwand, Wand_list_for_list__cursor_1];
    Heap := Heap[vwand, Wand_list_for_list__cursor_1:=__flatten_66];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_23 := wand_1 -- testListAppend.vpr@321.3--321.25
    __flatten_23 := wand_1_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_67 := __flatten_23 -- testListAppend.vpr@322.3--322.31
    __flatten_67 := __flatten_23;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__wand_1 := __flatten_67 -- testListAppend.vpr@323.3--323.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@323.3--323.51) [42423]"}
      FullPerm == Mask[vwand, Wand_list_for_list__wand_1];
    Heap := Heap[vwand, Wand_list_for_list__wand_1:=__flatten_67];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_24 := in_1 -- testListAppend.vpr@324.3--324.23
    __flatten_24 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_68 := __flatten_24 -- testListAppend.vpr@325.3--325.31
    __flatten_68 := __flatten_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__in_1 := __flatten_68 -- testListAppend.vpr@326.3--326.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@326.3--326.49) [42424]"}
      FullPerm == Mask[vwand, Wand_list_for_list__in_1];
    Heap := Heap[vwand, Wand_list_for_list__in_1:=__flatten_68];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_25 := in_1_0 -- testListAppend.vpr@327.3--327.25
    __flatten_25 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_69 := __flatten_25 -- testListAppend.vpr@328.3--328.31
    __flatten_69 := __flatten_25;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__in_1_0 := __flatten_69 -- testListAppend.vpr@329.3--329.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@329.3--329.51) [42425]"}
      FullPerm == Mask[vwand, Wand_list_for_list__in_1_0];
    Heap := Heap[vwand, Wand_list_for_list__in_1_0:=__flatten_69];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_26 := out_1 -- testListAppend.vpr@330.3--330.24
    __flatten_26 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_70 := __flatten_26 -- testListAppend.vpr@331.3--331.31
    __flatten_70 := __flatten_26;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__out_1 := __flatten_70 -- testListAppend.vpr@332.3--332.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@332.3--332.50) [42426]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1];
    Heap := Heap[vwand, Wand_list_for_list__out_1:=__flatten_70];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_27 := out_1_0 -- testListAppend.vpr@333.3--333.26
    __flatten_27 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_71 := __flatten_27 -- testListAppend.vpr@334.3--334.31
    __flatten_71 := __flatten_27;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__out_1_0 := __flatten_71 -- testListAppend.vpr@335.3--335.52
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@335.3--335.52) [42427]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1_0];
    Heap := Heap[vwand, Wand_list_for_list__out_1_0:=__flatten_71];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_list_for_list__valid_wand(vwand), write) -- testListAppend.vpr@336.3--336.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@336.3--336.57) [42429]"}
      Mask[vwand, Wand_list_for_list__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__lemma];
    Mask := Mask[vwand, Wand_list_for_list__lemma:=Mask[vwand, Wand_list_for_list__lemma] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_list_for_list__lemma might not hold. (testListAppend.vpr@336.3--336.57) [42430]"}
      1 <= Heap[vwand, Wand_list_for_list__lemma];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@336.3--336.57) [42431]"}
      Mask[vwand, Wand_list_for_list__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1];
    Mask := Mask[vwand, Wand_list_for_list__in_1:=Mask[vwand, Wand_list_for_list__in_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [42432]"}
      Heap[vwand, Wand_list_for_list__in_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@336.3--336.57) [42433]"}
      Mask[vwand, Wand_list_for_list__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1_0];
    Mask := Mask[vwand, Wand_list_for_list__in_1_0:=Mask[vwand, Wand_list_for_list__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@336.3--336.57) [42434]"}
      Mask[vwand, Wand_list_for_list__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1];
    Mask := Mask[vwand, Wand_list_for_list__out_1:=Mask[vwand, Wand_list_for_list__out_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [42435]"}
      Heap[vwand, Wand_list_for_list__out_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@336.3--336.57) [42436]"}
      Mask[vwand, Wand_list_for_list__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1_0];
    Mask := Mask[vwand, Wand_list_for_list__out_1_0:=Mask[vwand, Wand_list_for_list__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@336.3--336.57) [42437]"}
      Mask[vwand, Wand_list_for_list__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_1];
    Mask := Mask[vwand, Wand_list_for_list__this_1:=Mask[vwand, Wand_list_for_list__this_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@336.3--336.57) [42438]"}
      Mask[vwand, Wand_list_for_list__L2_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_1];
    Mask := Mask[vwand, Wand_list_for_list__L2_1:=Mask[vwand, Wand_list_for_list__L2_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@336.3--336.57) [42439]"}
      Mask[vwand, Wand_list_for_list__tmp_suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_suffix_1:=Mask[vwand, Wand_list_for_list__tmp_suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@336.3--336.57) [42440]"}
      Mask[vwand, Wand_list_for_list__L1_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_1];
    Mask := Mask[vwand, Wand_list_for_list__L1_1:=Mask[vwand, Wand_list_for_list__L1_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@336.3--336.57) [42441]"}
      Mask[vwand, Wand_list_for_list__tmp_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_1:=Mask[vwand, Wand_list_for_list__tmp_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@336.3--336.57) [42442]"}
      Mask[vwand, Wand_list_for_list__suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__suffix_1:=Mask[vwand, Wand_list_for_list__suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@336.3--336.57) [42443]"}
      Mask[vwand, Wand_list_for_list__cursor_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__cursor_1];
    Mask := Mask[vwand, Wand_list_for_list__cursor_1:=Mask[vwand, Wand_list_for_list__cursor_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@336.3--336.57) [42444]"}
      Mask[vwand, Wand_list_for_list__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__wand_1];
    Mask := Mask[vwand, Wand_list_for_list__wand_1:=Mask[vwand, Wand_list_for_list__wand_1] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [42445]"}
        Heap[vwand, Wand_list_for_list__this_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@336.3--336.57) [42447]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@336.3--336.57) [42449]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next] - perm];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_1.List__next == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@336.3--336.57) [42450]"}
        Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_suffix_1 == Seq(vwand.Wand_list_for_list__tmp_1.List__val) ++ vwand.Wand_list_for_list__suffix_1 might not hold. (testListAppend.vpr@336.3--336.57) [42451]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), Heap[vwand, Wand_list_for_list__suffix_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [42452]"}
        Heap[vwand, Wand_list_for_list__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand.Wand_list_for_list__wand_1) (testListAppend.vpr@336.3--336.57) [42454]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_list_for_list__valid_wand(vwand), Heap[null, Wand_list_for_list__valid_wand(vwand)], Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])]);
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_1 might not hold. (testListAppend.vpr@336.3--336.57) [42455]"}
        Wand_list_for_list__get_in_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__tmp_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [42456]"}
        Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@336.3--336.57) [42457]"}
        Wand_list_for_list__get_out_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [42458]"}
        Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@336.3--336.57) [42459]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [42460]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@336.3--336.57) [42461]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [42462]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@336.3--336.57) [42463]"}
      Mask[vwand, Wand_list_for_list__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_2];
    Mask := Mask[vwand, Wand_list_for_list__this_2:=Mask[vwand, Wand_list_for_list__this_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@336.3--336.57) [42464]"}
      Mask[vwand, Wand_list_for_list__L2_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_2];
    Mask := Mask[vwand, Wand_list_for_list__L2_2:=Mask[vwand, Wand_list_for_list__L2_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@336.3--336.57) [42465]"}
      Mask[vwand, Wand_list_for_list__L1_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_2];
    Mask := Mask[vwand, Wand_list_for_list__L1_2:=Mask[vwand, Wand_list_for_list__L1_2] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 2) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_2 != null might not hold. (testListAppend.vpr@336.3--336.57) [42466]"}
        Heap[vwand, Wand_list_for_list__this_2] != null;
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@336.3--336.57) [42467]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@336.3--336.57) [42468]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@336.3--336.57) [42469]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@336.3--336.57) [42470]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__lemma <= 2 might not hold. (testListAppend.vpr@336.3--336.57) [42471]"}
      Heap[vwand, Wand_list_for_list__lemma] <= 2;
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(vwand));
    assume Heap[null, Wand_list_for_list__valid_wand(vwand)] == CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if Heap[vwand, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L1_2]), FrameFragment((if Heap[vwand, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    if (!HasDirectPerm(Mask, null, Wand_list_for_list__valid_wand(vwand))) {
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Wand_list_for_list__valid_wand(vwand):=freshVersion];
    }
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__lemma:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__in_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__in_1_0:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__out_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__out_1_0:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__this_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L2_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__tmp_suffix_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L1_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__tmp_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__suffix_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__cursor_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__wand_1:=true]];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][Heap[vwand, Wand_list_for_list__tmp_1], List__val:=true]];
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][Heap[vwand, Wand_list_for_list__tmp_1], List__next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
        { newPMask[o_15, f_51] }
        Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][o_15, f_51] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[vwand, Wand_list_for_list__wand_1])][o_15, f_51] ==> newPMask[o_15, f_51]
      );
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__this_2:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L2_2:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L1_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_28 := vwand -- testListAppend.vpr@337.3--337.24
    __flatten_28 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_28 -- testListAppend.vpr@338.3--338.30
    sys__result := __flatten_28;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_list_for_list__valid_wand(sys__result), write) &&
  //   (Wand_list_for_list__get_in_1(sys__result) == in_1 &&
  //   (Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 &&
  //   (Wand_list_for_list__get_out_1(sys__result) == out_1 &&
  //   Wand_list_for_list__get_out_1_0(sys__result) == out_1_0)))) -- testListAppend.vpr@339.3--339.322
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@339.10--339.322) [42473]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.10--339.322) [42475]"}
        perm <= AssertMask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_list_for_list__valid_wand(sys__result):=AssertMask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.95--339.136) [42476]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.95--339.136) [42477]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@339.10--339.322) [42478]"}
      Wand_list_for_list__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.150--339.193) [42479]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.150--339.193) [42480]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@339.10--339.322) [42481]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.209--339.251) [42482]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.209--339.251) [42483]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@339.10--339.322) [42484]"}
      Wand_list_for_list__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.266--339.310) [42485]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.266--339.310) [42486]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@339.10--339.322) [42487]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@340.3--340.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@259.11--259.30) [42488]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@260.11--260.66) [42489]"}
        perm <= Mask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_list_for_list__valid_wand(sys__result):=Mask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@261.11--261.60) [42490]"}
      Wand_list_for_list__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@262.11--262.64) [42491]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@263.11--263.62) [42492]"}
      Wand_list_for_list__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@264.11--264.66) [42493]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, sys__result), out_1_0);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__Wand_list_for_list_lemma_2
// ==================================================

procedure List__Wand_list_for_list_lemma_2(diz: Ref, current_thread_id: int, this_2: Ref, L2_2: (Seq int), L1_2: (Seq int), in_1: Ref, in_1_0: (Seq int), out_1: Ref, out_1_0: (Seq int)) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var vwand: Ref;
  var __flatten_29: Ref;
  var __flatten_31: Ref;
  var __flatten_34: Ref;
  var __flatten_36: Ref;
  var __flatten_38: Ref;
  var __flatten_74: Ref;
  var __flatten_77: Ref;
  var __flatten_79: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_30: int;
  var __flatten_73: int;
  var __flatten_32: (Seq int);
  var __flatten_75: (Seq int);
  var __flatten_33: (Seq int);
  var __flatten_76: (Seq int);
  var __flatten_35: (Seq int);
  var __flatten_78: (Seq int);
  var __flatten_37: (Seq int);
  var __flatten_80: (Seq int);
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[this_2, $allocated];
    assume Heap[in_1, $allocated];
    assume Heap[out_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume this_2 != null;
    assume state(Heap, Mask);
    assume in_1 != null;
    assume state(Heap, Mask);
    assume in_1 == this_2;
    assume state(Heap, Mask);
    assume Seq#Equal(in_1_0, Seq#Append(L1_2, L2_2));
    assume state(Heap, Mask);
    assume out_1 != null;
    assume state(Heap, Mask);
    assume out_1 == this_2;
    assume state(Heap, Mask);
    assume Seq#Equal(out_1_0, Seq#Append(L1_2, L2_2));
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, Wand_list_for_list__valid_wand(sys__result):=PostMask[null, Wand_list_for_list__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@355.11--355.52) [42494]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@355.11--355.52) [42495]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_in_1(PostHeap, sys__result) == in_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@356.11--356.54) [42496]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@356.11--356.54) [42497]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_in_1_0(PostHeap, sys__result), in_1_0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@357.11--357.53) [42498]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@357.11--357.53) [42499]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_list_for_list__get_out_1(PostHeap, sys__result) == out_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@358.11--358.55) [42500]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@358.11--358.55) [42501]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_list_for_list__get_out_1_0(PostHeap, sys__result), out_1_0);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_29, $allocated];
    assume Heap[__flatten_31, $allocated];
    assume Heap[__flatten_34, $allocated];
    assume Heap[__flatten_36, $allocated];
    assume Heap[__flatten_38, $allocated];
    assume Heap[__flatten_74, $allocated];
    assume Heap[__flatten_77, $allocated];
    assume Heap[__flatten_79, $allocated];
  
  // -- Translating statement: __flatten_29 := Wand_list_for_list__Wand_list_for_list(current_thread_id) -- testListAppend.vpr@379.3--379.76
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_list_for_list__Wand_list_for_list might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@379.3--379.76) [42502]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_29;
    
    // -- Inhaling postcondition
      assume __flatten_29 != null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__lemma:=Mask[__flatten_29, Wand_list_for_list__lemma] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__lemma] == 0;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__in_1:=Mask[__flatten_29, Wand_list_for_list__in_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__in_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__in_1_0:=Mask[__flatten_29, Wand_list_for_list__in_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__out_1:=Mask[__flatten_29, Wand_list_for_list__out_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__out_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__out_1_0:=Mask[__flatten_29, Wand_list_for_list__out_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__this_1:=Mask[__flatten_29, Wand_list_for_list__this_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__this_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__L2_1:=Mask[__flatten_29, Wand_list_for_list__L2_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__tmp_suffix_1:=Mask[__flatten_29, Wand_list_for_list__tmp_suffix_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__L1_1:=Mask[__flatten_29, Wand_list_for_list__L1_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__tmp_1:=Mask[__flatten_29, Wand_list_for_list__tmp_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__tmp_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__suffix_1:=Mask[__flatten_29, Wand_list_for_list__suffix_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__cursor_1:=Mask[__flatten_29, Wand_list_for_list__cursor_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__cursor_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__wand_1:=Mask[__flatten_29, Wand_list_for_list__wand_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__wand_1] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__this_2:=Mask[__flatten_29, Wand_list_for_list__this_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_29, Wand_list_for_list__this_2] == null;
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__L2_2:=Mask[__flatten_29, Wand_list_for_list__L2_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_29 != null;
      Mask := Mask[__flatten_29, Wand_list_for_list__L1_2:=Mask[__flatten_29, Wand_list_for_list__L1_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_29, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
      assume state(Heap, Mask);
    assume Heap[__flatten_29, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_29 -- testListAppend.vpr@380.3--380.24
    vwand := __flatten_29;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_30 := 2 -- testListAppend.vpr@381.3--381.20
    __flatten_30 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_73 := __flatten_30 -- testListAppend.vpr@382.3--382.31
    __flatten_73 := __flatten_30;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__lemma := __flatten_73 -- testListAppend.vpr@383.3--383.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@383.3--383.50) [42503]"}
      FullPerm == Mask[vwand, Wand_list_for_list__lemma];
    Heap := Heap[vwand, Wand_list_for_list__lemma:=__flatten_73];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_31 := this_2 -- testListAppend.vpr@384.3--384.25
    __flatten_31 := this_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_74 := __flatten_31 -- testListAppend.vpr@385.3--385.31
    __flatten_74 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__this_2 := __flatten_74 -- testListAppend.vpr@386.3--386.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@386.3--386.51) [42504]"}
      FullPerm == Mask[vwand, Wand_list_for_list__this_2];
    Heap := Heap[vwand, Wand_list_for_list__this_2:=__flatten_74];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_32 := L2_2 -- testListAppend.vpr@387.3--387.23
    __flatten_32 := L2_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_75 := __flatten_32 -- testListAppend.vpr@388.3--388.31
    __flatten_75 := __flatten_32;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__L2_2 := __flatten_75 -- testListAppend.vpr@389.3--389.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@389.3--389.49) [42505]"}
      FullPerm == Mask[vwand, Wand_list_for_list__L2_2];
    Heap := Heap[vwand, Wand_list_for_list__L2_2:=__flatten_75];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := L1_2 -- testListAppend.vpr@390.3--390.23
    __flatten_33 := L1_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_76 := __flatten_33 -- testListAppend.vpr@391.3--391.31
    __flatten_76 := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__L1_2 := __flatten_76 -- testListAppend.vpr@392.3--392.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@392.3--392.49) [42506]"}
      FullPerm == Mask[vwand, Wand_list_for_list__L1_2];
    Heap := Heap[vwand, Wand_list_for_list__L1_2:=__flatten_76];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_34 := in_1 -- testListAppend.vpr@393.3--393.23
    __flatten_34 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_77 := __flatten_34 -- testListAppend.vpr@394.3--394.31
    __flatten_77 := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__in_1 := __flatten_77 -- testListAppend.vpr@395.3--395.49
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@395.3--395.49) [42507]"}
      FullPerm == Mask[vwand, Wand_list_for_list__in_1];
    Heap := Heap[vwand, Wand_list_for_list__in_1:=__flatten_77];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_35 := in_1_0 -- testListAppend.vpr@396.3--396.25
    __flatten_35 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_78 := __flatten_35 -- testListAppend.vpr@397.3--397.31
    __flatten_78 := __flatten_35;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__in_1_0 := __flatten_78 -- testListAppend.vpr@398.3--398.51
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@398.3--398.51) [42508]"}
      FullPerm == Mask[vwand, Wand_list_for_list__in_1_0];
    Heap := Heap[vwand, Wand_list_for_list__in_1_0:=__flatten_78];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_36 := out_1 -- testListAppend.vpr@399.3--399.24
    __flatten_36 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_79 := __flatten_36 -- testListAppend.vpr@400.3--400.31
    __flatten_79 := __flatten_36;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__out_1 := __flatten_79 -- testListAppend.vpr@401.3--401.50
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@401.3--401.50) [42509]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1];
    Heap := Heap[vwand, Wand_list_for_list__out_1:=__flatten_79];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_37 := out_1_0 -- testListAppend.vpr@402.3--402.26
    __flatten_37 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_80 := __flatten_37 -- testListAppend.vpr@403.3--403.31
    __flatten_80 := __flatten_37;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_list_for_list__out_1_0 := __flatten_80 -- testListAppend.vpr@404.3--404.52
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@404.3--404.52) [42510]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1_0];
    Heap := Heap[vwand, Wand_list_for_list__out_1_0:=__flatten_80];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_list_for_list__valid_wand(vwand), write) -- testListAppend.vpr@405.3--405.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@405.3--405.57) [42512]"}
      Mask[vwand, Wand_list_for_list__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__lemma];
    Mask := Mask[vwand, Wand_list_for_list__lemma:=Mask[vwand, Wand_list_for_list__lemma] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_list_for_list__lemma might not hold. (testListAppend.vpr@405.3--405.57) [42513]"}
      1 <= Heap[vwand, Wand_list_for_list__lemma];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@405.3--405.57) [42514]"}
      Mask[vwand, Wand_list_for_list__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1];
    Mask := Mask[vwand, Wand_list_for_list__in_1:=Mask[vwand, Wand_list_for_list__in_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [42515]"}
      Heap[vwand, Wand_list_for_list__in_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@405.3--405.57) [42516]"}
      Mask[vwand, Wand_list_for_list__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1_0];
    Mask := Mask[vwand, Wand_list_for_list__in_1_0:=Mask[vwand, Wand_list_for_list__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@405.3--405.57) [42517]"}
      Mask[vwand, Wand_list_for_list__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1];
    Mask := Mask[vwand, Wand_list_for_list__out_1:=Mask[vwand, Wand_list_for_list__out_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [42518]"}
      Heap[vwand, Wand_list_for_list__out_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@405.3--405.57) [42519]"}
      Mask[vwand, Wand_list_for_list__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1_0];
    Mask := Mask[vwand, Wand_list_for_list__out_1_0:=Mask[vwand, Wand_list_for_list__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@405.3--405.57) [42520]"}
      Mask[vwand, Wand_list_for_list__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_1];
    Mask := Mask[vwand, Wand_list_for_list__this_1:=Mask[vwand, Wand_list_for_list__this_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@405.3--405.57) [42521]"}
      Mask[vwand, Wand_list_for_list__L2_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_1];
    Mask := Mask[vwand, Wand_list_for_list__L2_1:=Mask[vwand, Wand_list_for_list__L2_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@405.3--405.57) [42522]"}
      Mask[vwand, Wand_list_for_list__tmp_suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_suffix_1:=Mask[vwand, Wand_list_for_list__tmp_suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@405.3--405.57) [42523]"}
      Mask[vwand, Wand_list_for_list__L1_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_1];
    Mask := Mask[vwand, Wand_list_for_list__L1_1:=Mask[vwand, Wand_list_for_list__L1_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@405.3--405.57) [42524]"}
      Mask[vwand, Wand_list_for_list__tmp_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_1:=Mask[vwand, Wand_list_for_list__tmp_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@405.3--405.57) [42525]"}
      Mask[vwand, Wand_list_for_list__suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__suffix_1:=Mask[vwand, Wand_list_for_list__suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@405.3--405.57) [42526]"}
      Mask[vwand, Wand_list_for_list__cursor_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__cursor_1];
    Mask := Mask[vwand, Wand_list_for_list__cursor_1:=Mask[vwand, Wand_list_for_list__cursor_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@405.3--405.57) [42527]"}
      Mask[vwand, Wand_list_for_list__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__wand_1];
    Mask := Mask[vwand, Wand_list_for_list__wand_1:=Mask[vwand, Wand_list_for_list__wand_1] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [42528]"}
        Heap[vwand, Wand_list_for_list__this_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@405.3--405.57) [42530]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@405.3--405.57) [42532]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next] - perm];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_1.List__next == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@405.3--405.57) [42533]"}
        Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_suffix_1 == Seq(vwand.Wand_list_for_list__tmp_1.List__val) ++ vwand.Wand_list_for_list__suffix_1 might not hold. (testListAppend.vpr@405.3--405.57) [42534]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), Heap[vwand, Wand_list_for_list__suffix_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [42535]"}
        Heap[vwand, Wand_list_for_list__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand.Wand_list_for_list__wand_1) (testListAppend.vpr@405.3--405.57) [42537]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_list_for_list__valid_wand(vwand), Heap[null, Wand_list_for_list__valid_wand(vwand)], Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])]);
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_1 might not hold. (testListAppend.vpr@405.3--405.57) [42538]"}
        Wand_list_for_list__get_in_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__tmp_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [42539]"}
        Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@405.3--405.57) [42540]"}
        Wand_list_for_list__get_out_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [42541]"}
        Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@405.3--405.57) [42542]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [42543]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@405.3--405.57) [42544]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [42545]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@405.3--405.57) [42546]"}
      Mask[vwand, Wand_list_for_list__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_2];
    Mask := Mask[vwand, Wand_list_for_list__this_2:=Mask[vwand, Wand_list_for_list__this_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@405.3--405.57) [42547]"}
      Mask[vwand, Wand_list_for_list__L2_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_2];
    Mask := Mask[vwand, Wand_list_for_list__L2_2:=Mask[vwand, Wand_list_for_list__L2_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@405.3--405.57) [42548]"}
      Mask[vwand, Wand_list_for_list__L1_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_2];
    Mask := Mask[vwand, Wand_list_for_list__L1_2:=Mask[vwand, Wand_list_for_list__L1_2] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 2) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_2 != null might not hold. (testListAppend.vpr@405.3--405.57) [42549]"}
        Heap[vwand, Wand_list_for_list__this_2] != null;
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@405.3--405.57) [42550]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@405.3--405.57) [42551]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@405.3--405.57) [42552]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@405.3--405.57) [42553]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__lemma <= 2 might not hold. (testListAppend.vpr@405.3--405.57) [42554]"}
      Heap[vwand, Wand_list_for_list__lemma] <= 2;
    perm := FullPerm;
    Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Wand_list_for_list__valid_wand#trigger(Heap, Wand_list_for_list__valid_wand(vwand));
    assume Heap[null, Wand_list_for_list__valid_wand(vwand)] == CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__lemma]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__in_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__in_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__out_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__out_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__this_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L2_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__tmp_suffix_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L1_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__tmp_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__suffix_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__cursor_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__wand_1]), CombineFrames(FrameFragment((if Heap[vwand, Wand_list_for_list__lemma] == 1 then CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__this_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L2_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_list_for_list__L1_2]), FrameFragment((if Heap[vwand, Wand_list_for_list__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    if (!HasDirectPerm(Mask, null, Wand_list_for_list__valid_wand(vwand))) {
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Wand_list_for_list__valid_wand(vwand):=freshVersion];
    }
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__lemma:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__in_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__in_1_0:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__out_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__out_1_0:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__this_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L2_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__tmp_suffix_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L1_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__tmp_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__suffix_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__cursor_1:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__wand_1:=true]];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][Heap[vwand, Wand_list_for_list__tmp_1], List__val:=true]];
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][Heap[vwand, Wand_list_for_list__tmp_1], List__next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
        { newPMask[o_4, f_54] }
        Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][o_4, f_54] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[vwand, Wand_list_for_list__wand_1])][o_4, f_54] ==> newPMask[o_4, f_54]
      );
      Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__this_2:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L2_2:=true]];
    Heap := Heap[null, Wand_list_for_list__valid_wand#sm(vwand):=Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][vwand, Wand_list_for_list__L1_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_38 := vwand -- testListAppend.vpr@406.3--406.24
    __flatten_38 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_38 -- testListAppend.vpr@407.3--407.30
    sys__result := __flatten_38;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_list_for_list__valid_wand(sys__result), write) &&
  //   (Wand_list_for_list__get_in_1(sys__result) == in_1 &&
  //   (Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 &&
  //   (Wand_list_for_list__get_out_1(sys__result) == out_1 &&
  //   Wand_list_for_list__get_out_1_0(sys__result) == out_1_0)))) -- testListAppend.vpr@408.3--408.322
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@408.10--408.322) [42556]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.10--408.322) [42558]"}
        perm <= AssertMask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_list_for_list__valid_wand(sys__result):=AssertMask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.95--408.136) [42559]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.95--408.136) [42560]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@408.10--408.322) [42561]"}
      Wand_list_for_list__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.150--408.193) [42562]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.150--408.193) [42563]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@408.10--408.322) [42564]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.209--408.251) [42565]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.209--408.251) [42566]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@408.10--408.322) [42567]"}
      Wand_list_for_list__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.266--408.310) [42568]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.266--408.310) [42569]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@408.10--408.322) [42570]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@409.3--409.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@353.11--353.30) [42571]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@354.11--354.66) [42572]"}
        perm <= Mask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_list_for_list__valid_wand(sys__result):=Mask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@355.11--355.60) [42573]"}
      Wand_list_for_list__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@356.11--356.64) [42574]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@357.11--357.62) [42575]"}
      Wand_list_for_list__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@358.11--358.66) [42576]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, sys__result), out_1_0);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__append_iter
// ==================================================

procedure List__append_iter(diz: Ref, current_thread_id: int, l_1: Ref, L1: (Seq int), L2: (Seq int)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var cursor: Ref;
  var vwand: Ref;
  var __flatten_41: Ref;
  var __flatten_42: Ref;
  var __flatten_84: Ref;
  var tmp: Ref;
  var prefix: (Seq int);
  var __flatten_81: (Seq int);
  var __flatten_39: (Seq int);
  var suffix: (Seq int);
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_in_1_0: (Seq int);
  var arg_out_1_0: (Seq int);
  var __flatten_40: (Seq int);
  var __flatten_82: (Seq int);
  var tmp_suffix: (Seq int);
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var arg_in_1_0_1: (Seq int);
  var arg_out_1_0_1: (Seq int);
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(diz) == L1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@416.12--416.31) [42577]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@416.12--416.31) [42578]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, diz), L1);
    assume state(Heap, Mask);
    assume l_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(l) == L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@419.12--419.29) [42579]"}
          l_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@419.12--419.29) [42580]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(l_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, l_1), L2);
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
    PostMask := PostMask[null, List__state(diz):=PostMask[null, List__state(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(diz) == L1 ++ L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@421.11--421.30) [42581]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@421.11--421.30) [42582]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List__state(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(PostHeap, diz), Seq#Append(L1, L2));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[cursor, $allocated];
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_41, $allocated];
    assume Heap[__flatten_42, $allocated];
    assume Heap[__flatten_84, $allocated];
    assume Heap[tmp, $allocated];
  
  // -- Translating statement: cursor := diz -- testListAppend.vpr@436.3--436.16
    cursor := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: prefix := Seq[Int]() -- testListAppend.vpr@437.3--437.23
    prefix := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_81 := List__contents(cursor) -- testListAppend.vpr@438.3--438.41
    
    // -- Check definedness of List__contents(cursor)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@438.19--438.41) [42583]"}
          cursor != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@438.19--438.41) [42584]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(cursor)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    __flatten_81 := List__contents(Heap, cursor);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_39 := __flatten_81 -- testListAppend.vpr@439.3--439.31
    __flatten_39 := __flatten_81;
    assume state(Heap, Mask);
  
  // -- Translating statement: suffix := __flatten_39 -- testListAppend.vpr@440.3--440.25
    suffix := __flatten_39;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := List__Wand_list_for_list_lemma_2(diz, current_thread_id, diz, L2, L1,
  //   diz, L1 ++ L2, diz, L1 ++ L2) -- testListAppend.vpr@441.3--441.111
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_in_1_0 := Seq#Append(L1, L2);
    arg_out_1_0 := Seq#Append(L1, L2);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [42585]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@441.3--441.111) [42586]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [42587]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [42588]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@441.3--441.111) [42589]"}
        diz == diz;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@441.3--441.111) [42590]"}
        Seq#Equal(arg_in_1_0, Seq#Append(L1, L2));
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [42591]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@441.3--441.111) [42592]"}
        diz == diz;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@441.3--441.111) [42593]"}
        Seq#Equal(arg_out_1_0, Seq#Append(L1, L2));
    
    // -- Havocing target variables
      havoc vwand;
    
    // -- Inhaling postcondition
      assume vwand != null;
      perm := FullPerm;
      Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_in_1(Heap, vwand) == diz;
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), arg_in_1_0);
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_out_1(Heap, vwand) == diz;
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), arg_out_1_0);
      assume state(Heap, Mask);
    assume Heap[vwand, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (List__get_next(cursor) != null) -- testListAppend.vpr@442.3--467.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant cursor != null might not hold on entry. Assertion cursor != null might not hold. (testListAppend.vpr@443.15--443.29) [42594]"}
          cursor != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(cursor), write) might not hold on entry. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@444.15--444.46) [42595]"}
            perm <= Mask[null, List__state(cursor)];
        }
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
        assert {:msg "  Loop invariant suffix == List__contents(cursor) might not hold on entry. Assertion suffix == List__contents(cursor) might not hold. (testListAppend.vpr@445.15--445.47) [42596]"}
          Seq#Equal(suffix, List__contents(Heap, cursor));
        assert {:msg "  Loop invariant prefix ++ suffix == L1 might not hold on entry. Assertion prefix ++ suffix == L1 might not hold. (testListAppend.vpr@446.15--446.37) [42597]"}
          Seq#Equal(Seq#Append(prefix, suffix), L1);
        assert {:msg "  Loop invariant l != null might not hold on entry. Assertion l != null might not hold. (testListAppend.vpr@447.15--447.24) [42598]"}
          l_1 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(l), write) might not hold on entry. There might be insufficient permission to access List__state(l) (testListAppend.vpr@448.15--448.41) [42599]"}
            perm <= Mask[null, List__state(l_1)];
        }
        Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] - perm];
        assert {:msg "  Loop invariant List__contents(l) == L2 might not hold on entry. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@449.15--449.38) [42600]"}
          Seq#Equal(List__contents(Heap, l_1), L2);
        assert {:msg "  Loop invariant vwand != null might not hold on entry. Assertion vwand != null might not hold. (testListAppend.vpr@450.15--450.28) [42601]"}
          vwand != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Wand_list_for_list__valid_wand(vwand), write) might not hold on entry. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@451.15--451.64) [42602]"}
            perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
        }
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1(vwand) == cursor might not hold on entry. Assertion Wand_list_for_list__get_in_1(vwand) == cursor might not hold. (testListAppend.vpr@452.15--452.60) [42603]"}
          Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold on entry. Assertion Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold. (testListAppend.vpr@453.15--453.68) [42604]"}
          Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1(vwand) == diz might not hold on entry. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@454.15--454.58) [42605]"}
          Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold on entry. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@455.15--455.65) [42606]"}
          Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc vwand, cursor, suffix, __flatten_40, __flatten_82, prefix, tmp_suffix, tmp, __flatten_41;
      assume Heap[vwand, $allocated];
      assume Heap[cursor, $allocated];
      assume Heap[tmp, $allocated];
      assume Heap[__flatten_41, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume cursor != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of suffix == List__contents(cursor)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@445.25--445.47) [42607]"}
              cursor != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@445.25--445.47) [42608]"}
              NoPerm < perm ==> NoPerm < Mask[null, List__state(cursor)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(suffix, List__contents(Heap, cursor));
        assume state(Heap, Mask);
        assume Seq#Equal(Seq#Append(prefix, suffix), L1);
        assume state(Heap, Mask);
        assume l_1 != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of List__contents(l) == L2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@449.15--449.32) [42609]"}
              l_1 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@449.15--449.32) [42610]"}
              NoPerm < perm ==> NoPerm < Mask[null, List__state(l_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(List__contents(Heap, l_1), L2);
        assume state(Heap, Mask);
        assume vwand != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of Wand_list_for_list__get_in_1(vwand) == cursor
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@452.15--452.50) [42611]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@452.15--452.50) [42612]"}
              NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(vwand)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@453.15--453.52) [42613]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@453.15--453.52) [42614]"}
              NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(vwand)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of Wand_list_for_list__get_out_1(vwand) == diz
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@454.15--454.51) [42615]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@454.15--454.51) [42616]"}
              NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(vwand)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@455.15--455.53) [42617]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@455.15--455.53) [42618]"}
              NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(vwand)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
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
        assume cursor != null;
        perm := FullPerm;
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Seq#Equal(suffix, List__contents(Heap, cursor));
        assume Seq#Equal(Seq#Append(prefix, suffix), L1);
        assume l_1 != null;
        perm := FullPerm;
        Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Seq#Equal(List__contents(Heap, l_1), L2);
        assume vwand != null;
        perm := FullPerm;
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assume state(Heap, Mask);
        assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assume state(Heap, Mask);
        assume Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assume state(Heap, Mask);
        assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of List__get_next(cursor) != null
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function List__get_next might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@442.10--442.32) [42619]"}
              cursor != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__get_next might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@442.10--442.32) [42620]"}
              NoPerm < perm ==> NoPerm < Mask[null, List__state(cursor)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume List__get_next(Heap, cursor) != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: tmp := cursor -- testListAppend.vpr@457.5--457.18
            tmp := cursor;
            assume state(Heap, Mask);
          
          // -- Translating statement: tmp_suffix := suffix -- testListAppend.vpr@458.5--458.25
            tmp_suffix := suffix;
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(List__state(cursor), write) -- testListAppend.vpr@459.5--459.43
            assume List__state#trigger(Heap, List__state(cursor));
            assume Heap[null, List__state(cursor)] == CombineFrames(FrameFragment(Heap[cursor, List__val]), CombineFrames(FrameFragment(Heap[cursor, List__next]), FrameFragment((if Heap[cursor, List__next] != null then Heap[null, List__state(Heap[cursor, List__next])] else EmptyFrame))));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@459.5--459.43) [42621]"}
                perm <= Mask[null, List__state(cursor)];
            }
            Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, List__state(cursor))) {
                havoc newVersion;
                Heap := Heap[null, List__state(cursor):=newVersion];
              }
            perm := FullPerm;
            assume cursor != null;
            Mask := Mask[cursor, List__val:=Mask[cursor, List__val] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume cursor != null;
            Mask := Mask[cursor, List__next:=Mask[cursor, List__next] + perm];
            assume state(Heap, Mask);
            if (Heap[cursor, List__next] != null) {
              perm := FullPerm;
              Mask := Mask[null, List__state(Heap[cursor, List__next]):=Mask[null, List__state(Heap[cursor, List__next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(List__state(cursor), Heap[null, List__state(cursor)], List__state(Heap[cursor, List__next]), Heap[null, List__state(Heap[cursor, List__next])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: prefix := prefix ++ Seq(cursor.List__val) -- testListAppend.vpr@460.5--460.46
            
            // -- Check definedness of prefix ++ Seq(cursor.List__val)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__val (testListAppend.vpr@460.5--460.46) [42622]"}
                HasDirectPerm(Mask, cursor, List__val);
            prefix := Seq#Append(prefix, Seq#Singleton(Heap[cursor, List__val]));
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_82 := List__contents(cursor.List__next) -- testListAppend.vpr@461.5--461.54
            
            // -- Check definedness of List__contents(cursor.List__next)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@461.5--461.54) [42623]"}
                HasDirectPerm(Mask, cursor, List__next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor.List__next != null might not hold. (testListAppend.vpr@461.21--461.54) [42624]"}
                  Heap[cursor, List__next] != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor.List__next) (testListAppend.vpr@461.21--461.54) [42625]"}
                  NoPerm < perm ==> NoPerm < Mask[null, List__state(Heap[cursor, List__next])];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            __flatten_82 := List__contents(Heap, Heap[cursor, List__next]);
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_40 := __flatten_82 -- testListAppend.vpr@462.5--462.33
            __flatten_40 := __flatten_82;
            assume state(Heap, Mask);
          
          // -- Translating statement: suffix := __flatten_40 -- testListAppend.vpr@463.5--463.27
            suffix := __flatten_40;
            assume state(Heap, Mask);
          
          // -- Translating statement: cursor := cursor.List__next -- testListAppend.vpr@464.5--464.32
            
            // -- Check definedness of cursor.List__next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@464.5--464.32) [42626]"}
                HasDirectPerm(Mask, cursor, List__next);
            cursor := Heap[cursor, List__next];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_41 := List__Wand_list_for_list_lemma_1(diz, current_thread_id, diz,
  //   L2, tmp_suffix, L1, tmp, suffix, cursor, vwand, cursor, suffix ++ L2, diz,
  //   L1 ++ L2) -- testListAppend.vpr@465.5--465.167
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_in_1_0_1 := Seq#Append(suffix, L2);
            arg_out_1_0_1 := Seq#Append(L1, L2);
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [42627]"}
                diz != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@465.5--465.167) [42628]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [42629]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access tmp.List__val (testListAppend.vpr@465.5--465.167) [42630]"}
                  perm <= Mask[tmp, List__val];
              }
              Mask := Mask[tmp, List__val:=Mask[tmp, List__val] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access tmp.List__next (testListAppend.vpr@465.5--465.167) [42631]"}
                  perm <= Mask[tmp, List__next];
              }
              Mask := Mask[tmp, List__next:=Mask[tmp, List__next] - perm];
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion tmp.List__next == cursor might not hold. (testListAppend.vpr@465.5--465.167) [42632]"}
                Heap[tmp, List__next] == cursor;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion tmp_suffix == Seq(tmp.List__val) ++ suffix might not hold. (testListAppend.vpr@465.5--465.167) [42633]"}
                Seq#Equal(tmp_suffix, Seq#Append(Seq#Singleton(Heap[tmp, List__val]), suffix));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@465.5--465.167) [42634]"}
                vwand != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@465.5--465.167) [42635]"}
                  perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
              }
              Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1(vwand) == tmp might not hold. (testListAppend.vpr@465.5--465.167) [42636]"}
                Wand_list_for_list__get_in_1(Heap, vwand) == tmp;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1_0(vwand) == tmp_suffix ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [42637]"}
                Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(tmp_suffix, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@465.5--465.167) [42638]"}
                Wand_list_for_list__get_out_1(Heap, vwand) == diz;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [42639]"}
                Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@465.5--465.167) [42640]"}
                cursor != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion cursor == cursor might not hold. (testListAppend.vpr@465.5--465.167) [42641]"}
                cursor == cursor;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion suffix ++ L2 == suffix ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [42642]"}
                Seq#Equal(arg_in_1_0_1, Seq#Append(suffix, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [42643]"}
                diz != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@465.5--465.167) [42644]"}
                diz == diz;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [42645]"}
                Seq#Equal(arg_out_1_0_1, Seq#Append(L1, L2));
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc __flatten_41;
            
            // -- Inhaling postcondition
              assume __flatten_41 != null;
              perm := FullPerm;
              Mask := Mask[null, Wand_list_for_list__valid_wand(__flatten_41):=Mask[null, Wand_list_for_list__valid_wand(__flatten_41)] + perm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
              assume Wand_list_for_list__get_in_1(Heap, __flatten_41) == cursor;
              assume state(Heap, Mask);
              assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, __flatten_41), arg_in_1_0_1);
              assume state(Heap, Mask);
              assume Wand_list_for_list__get_out_1(Heap, __flatten_41) == diz;
              assume state(Heap, Mask);
              assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, __flatten_41), arg_out_1_0_1);
              assume state(Heap, Mask);
            assume Heap[__flatten_41, $allocated];
            assume state(Heap, Mask);
          
          // -- Translating statement: vwand := __flatten_41 -- testListAppend.vpr@466.5--466.26
            vwand := __flatten_41;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant cursor != null might not be preserved. Assertion cursor != null might not hold. (testListAppend.vpr@443.15--443.29) [42646]"}
          cursor != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(cursor), write) might not be preserved. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@444.15--444.46) [42647]"}
            perm <= Mask[null, List__state(cursor)];
        }
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
        assert {:msg "  Loop invariant suffix == List__contents(cursor) might not be preserved. Assertion suffix == List__contents(cursor) might not hold. (testListAppend.vpr@445.15--445.47) [42648]"}
          Seq#Equal(suffix, List__contents(Heap, cursor));
        assert {:msg "  Loop invariant prefix ++ suffix == L1 might not be preserved. Assertion prefix ++ suffix == L1 might not hold. (testListAppend.vpr@446.15--446.37) [42649]"}
          Seq#Equal(Seq#Append(prefix, suffix), L1);
        assert {:msg "  Loop invariant l != null might not be preserved. Assertion l != null might not hold. (testListAppend.vpr@447.15--447.24) [42650]"}
          l_1 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(l), write) might not be preserved. There might be insufficient permission to access List__state(l) (testListAppend.vpr@448.15--448.41) [42651]"}
            perm <= Mask[null, List__state(l_1)];
        }
        Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] - perm];
        assert {:msg "  Loop invariant List__contents(l) == L2 might not be preserved. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@449.15--449.38) [42652]"}
          Seq#Equal(List__contents(Heap, l_1), L2);
        assert {:msg "  Loop invariant vwand != null might not be preserved. Assertion vwand != null might not hold. (testListAppend.vpr@450.15--450.28) [42653]"}
          vwand != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Wand_list_for_list__valid_wand(vwand), write) might not be preserved. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@451.15--451.64) [42654]"}
            perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
        }
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1(vwand) == cursor might not be preserved. Assertion Wand_list_for_list__get_in_1(vwand) == cursor might not hold. (testListAppend.vpr@452.15--452.60) [42655]"}
          Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not be preserved. Assertion Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold. (testListAppend.vpr@453.15--453.68) [42656]"}
          Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1(vwand) == diz might not be preserved. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@454.15--454.58) [42657]"}
          Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not be preserved. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@455.15--455.65) [42658]"}
          Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(List__get_next(Heap, cursor) != null);
      assume state(Heap, Mask);
      assume cursor != null;
      perm := FullPerm;
      Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(suffix, List__contents(Heap, cursor));
      assume Seq#Equal(Seq#Append(prefix, suffix), L1);
      assume l_1 != null;
      perm := FullPerm;
      Mask := Mask[null, List__state(l_1):=Mask[null, List__state(l_1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(List__contents(Heap, l_1), L2);
      assume vwand != null;
      perm := FullPerm;
      Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
      assume state(Heap, Mask);
      assume Wand_list_for_list__get_out_1(Heap, vwand) == diz;
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List__state(cursor), write) -- testListAppend.vpr@468.3--468.41
    assume List__state#trigger(Heap, List__state(cursor));
    assume Heap[null, List__state(cursor)] == CombineFrames(FrameFragment(Heap[cursor, List__val]), CombineFrames(FrameFragment(Heap[cursor, List__next]), FrameFragment((if Heap[cursor, List__next] != null then Heap[null, List__state(Heap[cursor, List__next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@468.3--468.41) [42661]"}
        perm <= Mask[null, List__state(cursor)];
    }
    Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List__state(cursor))) {
        havoc newVersion;
        Heap := Heap[null, List__state(cursor):=newVersion];
      }
    perm := FullPerm;
    assume cursor != null;
    Mask := Mask[cursor, List__val:=Mask[cursor, List__val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume cursor != null;
    Mask := Mask[cursor, List__next:=Mask[cursor, List__next] + perm];
    assume state(Heap, Mask);
    if (Heap[cursor, List__next] != null) {
      perm := FullPerm;
      Mask := Mask[null, List__state(Heap[cursor, List__next]):=Mask[null, List__state(Heap[cursor, List__next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List__state(cursor), Heap[null, List__state(cursor)], List__state(Heap[cursor, List__next]), Heap[null, List__state(Heap[cursor, List__next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_42 := l -- testListAppend.vpr@469.3--469.20
    __flatten_42 := l_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_84 := __flatten_42 -- testListAppend.vpr@470.3--470.31
    __flatten_84 := __flatten_42;
    assume state(Heap, Mask);
  
  // -- Translating statement: cursor.List__next := __flatten_84 -- testListAppend.vpr@471.3--471.36
    assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@471.3--471.36) [42665]"}
      FullPerm == Mask[cursor, List__next];
    Heap := Heap[cursor, List__next:=__flatten_84];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List__state(cursor), write) -- testListAppend.vpr@472.3--472.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access cursor.List__val (testListAppend.vpr@472.3--472.39) [42668]"}
        perm <= Mask[cursor, List__val];
    }
    Mask := Mask[cursor, List__val:=Mask[cursor, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@472.3--472.39) [42670]"}
        perm <= Mask[cursor, List__next];
    }
    Mask := Mask[cursor, List__next:=Mask[cursor, List__next] - perm];
    if (Heap[cursor, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor.List__next) (testListAppend.vpr@472.3--472.39) [42672]"}
          perm <= Mask[null, List__state(Heap[cursor, List__next])];
      }
      Mask := Mask[null, List__state(Heap[cursor, List__next]):=Mask[null, List__state(Heap[cursor, List__next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(List__state(cursor), Heap[null, List__state(cursor)], List__state(Heap[cursor, List__next]), Heap[null, List__state(Heap[cursor, List__next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List__state#trigger(Heap, List__state(cursor));
    assume Heap[null, List__state(cursor)] == CombineFrames(FrameFragment(Heap[cursor, List__val]), CombineFrames(FrameFragment(Heap[cursor, List__next]), FrameFragment((if Heap[cursor, List__next] != null then Heap[null, List__state(Heap[cursor, List__next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, List__state(cursor))) {
      Heap := Heap[null, List__state#sm(cursor):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List__state(cursor):=freshVersion];
    }
    Heap := Heap[null, List__state#sm(cursor):=Heap[null, List__state#sm(cursor)][cursor, List__val:=true]];
    Heap := Heap[null, List__state#sm(cursor):=Heap[null, List__state#sm(cursor)][cursor, List__next:=true]];
    if (Heap[cursor, List__next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
        { newPMask[o_12, f_25] }
        Heap[null, List__state#sm(cursor)][o_12, f_25] || Heap[null, List__state#sm(Heap[cursor, List__next])][o_12, f_25] ==> newPMask[o_12, f_25]
      );
      Heap := Heap[null, List__state#sm(cursor):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Wand_list_for_list___apply(vwand, current_thread_id) -- testListAppend.vpr@473.3--473.55
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@473.3--473.55) [42674]"}
        vwand != null;
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@473.3--473.55) [42675]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@473.3--473.55) [42676]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(vwand)) (testListAppend.vpr@473.3--473.55) [42677]"}
          perm <= Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand))];
      }
      Mask := Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand)):=Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand))] - perm];
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion List__contents(Wand_list_for_list__get_in_1(vwand)) == Wand_list_for_list__get_in_1_0(vwand) might not hold. (testListAppend.vpr@473.3--473.55) [42678]"}
        Seq#Equal(List__contents(Heap, Wand_list_for_list__get_in_1(Heap, vwand)), Wand_list_for_list__get_in_1_0(Heap, vwand));
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion Wand_list_for_list__get_out_1(vwand) != null might not hold. (testListAppend.vpr@473.3--473.55) [42679]"}
        Wand_list_for_list__get_out_1(Heap, vwand) != null;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, List__state(Wand_list_for_list__get_out_1(PreCallHeap, vwand)):=Mask[null, List__state(Wand_list_for_list__get_out_1(PreCallHeap, vwand))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(List__contents(Heap, Wand_list_for_list__get_out_1(PreCallHeap, vwand)), Wand_list_for_list__get_out_1_0(PreCallHeap, vwand));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__append_iter might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@420.11--420.39) [42680]"}
        perm <= Mask[null, List__state(diz)];
    }
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] - perm];
    assert {:msg "  Postcondition of List__append_iter might not hold. Assertion List__contents(diz) == L1 ++ L2 might not hold. (testListAppend.vpr@421.11--421.42) [42681]"}
      Seq#Equal(List__contents(Heap, diz), Seq#Append(L1, L2));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}