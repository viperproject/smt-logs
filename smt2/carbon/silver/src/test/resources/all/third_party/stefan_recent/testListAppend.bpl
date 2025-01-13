// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:18:05
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
axiom (forall o_13: Ref, f_18: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_18] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_18], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_14, f_19) ==> Heap[o_14, f_19] == ExhaleHeap[o_14, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_6, f_19] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_19] ==> Heap[o2_6, f_19] == ExhaleHeap[o2_6, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_14: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_14, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_14, $allocated] ==> ExhaleHeap[o_14, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_13: (Field A B), v: B ::
  { Heap[o_13, f_13:=v] }
  succHeap(Heap, Heap[o_13, f_13:=v])
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@40.1--46.2) [165286]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@40.1--46.2) [165287]"}
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
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_15, f_20] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_15, f_20] ==> newPMask[o_15, f_20]
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_list_for_list__get_in_1 might not hold. Assertion result != null might not hold. (testListAppend.vpr@43.11--43.25) [165288]"}
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@48.1--53.2) [165289]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@48.1--53.2) [165290]"}
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
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_16, f_21] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_16, f_21] ==> newPMask[o_16, f_21]
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@55.1--61.2) [165291]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@55.1--61.2) [165292]"}
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
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_52, f_55] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_52, f_55] ==> newPMask[o_52, f_55]
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_list_for_list__get_out_1 might not hold. Assertion result != null might not hold. (testListAppend.vpr@58.11--58.25) [165293]"}
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@63.1--68.2) [165294]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@63.1--68.2) [165295]"}
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
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Wand_list_for_list__valid_wand#sm(diz)][o_53, f_56] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[diz, Wand_list_for_list__wand_1])][o_53, f_56] ==> newPMask[o_53, f_56]
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@70.1--75.2) [165296]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@70.1--75.2) [165297]"}
        HasDirectPerm(UnfoldingMask, diz, List__next);
      if (UnfoldingHeap[diz, List__next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__val (testListAppend.vpr@70.1--75.2) [165298]"}
          HasDirectPerm(UnfoldingMask, diz, List__val);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__val (testListAppend.vpr@70.1--75.2) [165299]"}
          HasDirectPerm(UnfoldingMask, diz, List__val);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@70.1--75.2) [165300]"}
          HasDirectPerm(UnfoldingMask, diz, List__next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          assert {:msg "  Precondition of function List__contents might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@74.115--74.145) [165301]"}
            UnfoldingHeap[diz, List__next] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@74.115--74.145) [165302]"}
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
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, List__state#sm(diz)][o_26, f_29] || Heap[null, List__state#sm(Heap[diz, List__next])][o_26, f_29] ==> newPMask[o_26, f_29]
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@77.1--82.2) [165303]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@77.1--82.2) [165304]"}
        HasDirectPerm(UnfoldingMask, diz, List__next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__val:=true]];
        Heap := Heap[null, List__state#sm(diz):=Heap[null, List__state#sm(diz)][diz, List__next:=true]];
        if (Heap[diz, List__next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
            { newPMask[o, f_85] }
            Heap[null, List__state#sm(diz)][o, f_85] || Heap[null, List__state#sm(Heap[diz, List__next])][o, f_85] ==> newPMask[o, f_85]
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [165305]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    assume 1 <= Heap[diz, Wand_list_for_list__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_list_for_list__in_1:=Mask[diz, Wand_list_for_list__in_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_list_for_list__in_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [165306]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [165307]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [165308]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 1) {
      
      // -- Check definedness of diz.Wand_list_for_list__this_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [165309]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Heap[diz, Wand_list_for_list__this_1] != null;
      
      // -- Check definedness of acc(diz.Wand_list_for_list__tmp_1.List__val, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [165310]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_list_for_list__tmp_1.List__next, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [165311]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      perm := FullPerm;
      assume Heap[diz, Wand_list_for_list__tmp_1] != null;
      Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_list_for_list__tmp_1.List__next == diz.Wand_list_for_list__cursor_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [165312]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@84.1--86.2) [165313]"}
          HasDirectPerm(Mask, Heap[diz, Wand_list_for_list__tmp_1], List__next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@84.1--86.2) [165314]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__cursor_1);
      assume Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] == Heap[diz, Wand_list_for_list__cursor_1];
      
      // -- Check definedness of diz.Wand_list_for_list__tmp_suffix_1 == Seq(diz.Wand_list_for_list__tmp_1.List__val) ++ diz.Wand_list_for_list__suffix_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@84.1--86.2) [165315]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [165316]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@84.1--86.2) [165317]"}
          HasDirectPerm(Mask, Heap[diz, Wand_list_for_list__tmp_1], List__val);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@84.1--86.2) [165318]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__suffix_1);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__val]), Heap[diz, Wand_list_for_list__suffix_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__wand_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165319]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
      assume Heap[diz, Wand_list_for_list__wand_1] != null;
      
      // -- Check definedness of acc(Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165320]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
      perm := FullPerm;
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__tmp_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165321]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1296--85.1356) [165322]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1296--85.1356) [165323]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@84.1--86.2) [165324]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
      assume Wand_list_for_list__get_in_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__tmp_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_in_1_0(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__tmp_suffix_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165325]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1395--85.1457) [165326]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1395--85.1457) [165327]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@84.1--86.2) [165328]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [165329]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__tmp_suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_out_1(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165330]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1535--85.1596) [165331]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1535--85.1596) [165332]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [165333]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Wand_list_for_list__get_out_1(Heap, Heap[diz, Wand_list_for_list__wand_1]) == Heap[diz, Wand_list_for_list__this_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_list_for_list__get_out_1_0(diz.Wand_list_for_list__wand_1) == diz.Wand_list_for_list__L1_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@84.1--86.2) [165334]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@85.1636--85.1699) [165335]"}
            Heap[diz, Wand_list_for_list__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@85.1636--85.1699) [165336]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_list_for_list__valid_wand(Heap[diz, Wand_list_for_list__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@84.1--86.2) [165337]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [165338]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[diz, Wand_list_for_list__wand_1]), Seq#Append(Heap[diz, Wand_list_for_list__L1_1], Heap[diz, Wand_list_for_list__L2_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__in_1 == diz.Wand_list_for_list__cursor_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [165339]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@84.1--86.2) [165340]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__cursor_1);
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__cursor_1];
      
      // -- Check definedness of diz.Wand_list_for_list__in_1_0 == diz.Wand_list_for_list__suffix_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@84.1--86.2) [165341]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@84.1--86.2) [165342]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__suffix_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [165343]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_1);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__suffix_1], Heap[diz, Wand_list_for_list__L2_1]));
      
      // -- Check definedness of diz.Wand_list_for_list__out_1 == diz.Wand_list_for_list__this_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [165344]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@84.1--86.2) [165345]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_1);
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_1];
      
      // -- Check definedness of diz.Wand_list_for_list__out_1_0 == diz.Wand_list_for_list__L1_1 ++ diz.Wand_list_for_list__L2_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@84.1--86.2) [165346]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@84.1--86.2) [165347]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@84.1--86.2) [165348]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [165349]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 2) {
      
      // -- Check definedness of diz.Wand_list_for_list__this_2 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [165350]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__this_2] != null;
      
      // -- Check definedness of diz.Wand_list_for_list__in_1 == diz.Wand_list_for_list__this_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@84.1--86.2) [165351]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [165352]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__in_1] == Heap[diz, Wand_list_for_list__this_2];
      
      // -- Check definedness of diz.Wand_list_for_list__in_1_0 == diz.Wand_list_for_list__L1_2 ++ diz.Wand_list_for_list__L2_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@84.1--86.2) [165353]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@84.1--86.2) [165354]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@84.1--86.2) [165355]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_2);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__in_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
      
      // -- Check definedness of diz.Wand_list_for_list__out_1 == diz.Wand_list_for_list__this_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@84.1--86.2) [165356]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@84.1--86.2) [165357]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__this_2);
      assume Heap[diz, Wand_list_for_list__out_1] == Heap[diz, Wand_list_for_list__this_2];
      
      // -- Check definedness of diz.Wand_list_for_list__out_1_0 == diz.Wand_list_for_list__L1_2 ++ diz.Wand_list_for_list__L2_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@84.1--86.2) [165358]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@84.1--86.2) [165359]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L1_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@84.1--86.2) [165360]"}
          HasDirectPerm(Mask, diz, Wand_list_for_list__L2_2);
      assume Seq#Equal(Heap[diz, Wand_list_for_list__out_1_0], Seq#Append(Heap[diz, Wand_list_for_list__L1_2], Heap[diz, Wand_list_for_list__L2_2]));
    }
    
    // -- Check definedness of diz.Wand_list_for_list__lemma <= 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@84.1--86.2) [165361]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@88.1--90.2) [165362]"}
        HasDirectPerm(Mask, diz, List__next);
    if (Heap[diz, List__next] != null) {
      
      // -- Check definedness of acc(List__state(diz.List__next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.List__next (testListAppend.vpr@88.1--90.2) [165363]"}
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@96.28--96.61) [165364]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@96.28--96.61) [165365]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@97.27--97.60) [165366]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@97.27--97.60) [165367]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion Wand_list_for_list__get_in_1(diz) != null might not hold. (testListAppend.vpr@97.12--97.61) [165368]"}
          Wand_list_for_list__get_in_1(Heap, diz) != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(diz)) (testListAppend.vpr@97.12--97.61) [165369]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@97.65--97.100) [165370]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@97.65--97.100) [165371]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@98.12--98.46) [165372]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@98.12--98.46) [165373]"}
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@99.31--99.65) [165374]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@99.31--99.65) [165375]"}
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
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@100.30--100.64) [165376]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@100.30--100.64) [165377]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@100.11--100.66) [165378]"}
          Wand_list_for_list__get_out_1(oldHeap, diz) != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@100.11--100.66) [165379]"}
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
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@100.74--100.110) [165380]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@100.74--100.110) [165381]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_list_for_list__valid_wand(diz) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@102.3--102.57) [165384]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@103.7--103.41) [165388]"}
        HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
    if (Heap[diz, Wand_list_for_list__lemma] == 1) {
      
      // -- Translating statement: fold acc(List__state(diz.Wand_list_for_list__tmp_1), write) -- testListAppend.vpr@104.5--104.64
        
        // -- Check definedness of acc(List__state(diz.Wand_list_for_list__tmp_1), write)
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@104.5--104.64) [165389]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__tmp_1);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@104.5--104.64) [165392]"}
            perm <= Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val];
        }
        Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@104.5--104.64) [165394]"}
            perm <= Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next];
        }
        Mask := Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[diz, Wand_list_for_list__tmp_1], List__next] - perm];
        if (Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding List__state(diz.Wand_list_for_list__tmp_1) might fail. There might be insufficient permission to access List__state(diz.Wand_list_for_list__tmp_1.List__next) (testListAppend.vpr@104.5--104.64) [165396]"}
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
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1])][o_11, f_3] || Heap[null, List__state#sm(Heap[Heap[diz, Wand_list_for_list__tmp_1], List__next])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          Heap := Heap[null, List__state#sm(Heap[diz, Wand_list_for_list__tmp_1]):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_list_for_list___apply(diz.Wand_list_for_list__wand_1, current_thread_id) -- testListAppend.vpr@105.5--105.82
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Wand_list_for_list__wand_1
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@105.5--105.82) [165398]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__wand_1);
        arg_diz := Heap[diz, Wand_list_for_list__wand_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion diz.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@105.5--105.82) [165399]"}
            arg_diz != null;
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@105.5--105.82) [165400]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz.Wand_list_for_list__wand_1) (testListAppend.vpr@105.5--105.82) [165401]"}
              perm <= Mask[null, Wand_list_for_list__valid_wand(arg_diz)];
          }
          Mask := Mask[null, Wand_list_for_list__valid_wand(arg_diz):=Mask[null, Wand_list_for_list__valid_wand(arg_diz)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1)) (testListAppend.vpr@105.5--105.82) [165402]"}
              perm <= Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz))];
          }
          Mask := Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz)):=Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, arg_diz))] - perm];
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion List__contents(Wand_list_for_list__get_in_1(diz.Wand_list_for_list__wand_1)) == Wand_list_for_list__get_in_1_0(diz.Wand_list_for_list__wand_1) might not hold. (testListAppend.vpr@105.5--105.82) [165403]"}
            Seq#Equal(List__contents(Heap, Wand_list_for_list__get_in_1(Heap, arg_diz)), Wand_list_for_list__get_in_1_0(Heap, arg_diz));
          assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion Wand_list_for_list__get_out_1(diz.Wand_list_for_list__wand_1) != null might not hold. (testListAppend.vpr@105.5--105.82) [165404]"}
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
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        
        // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.32--106.66) [165405]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.32--106.66) [165406]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@106.12--106.182) [165408]"}
            perm <= AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
        }
        AssertMask := AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
        
        // -- Check definedness of List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.100--106.134) [165409]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.100--106.134) [165410]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@106.81--106.136) [165411]"}
              Wand_list_for_list__get_out_1(oldHeap, diz) != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@106.81--106.136) [165412]"}
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
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@106.144--106.180) [165413]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@106.144--106.180) [165414]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@106.12--106.182) [165415]"}
          Seq#Equal(List__contents(AssertHeap, Wand_list_for_list__get_out_1(oldHeap, diz)), Wand_list_for_list__get_out_1_0(oldHeap, diz));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testListAppend.vpr@107.5--107.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (diz.Wand_list_for_list__lemma == 2) -- testListAppend.vpr@108.5--111.4
        
        // -- Check definedness of diz.Wand_list_for_list__lemma == 2
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@108.13--108.47) [165416]"}
            HasDirectPerm(Mask, diz, Wand_list_for_list__lemma);
        if (Heap[diz, Wand_list_for_list__lemma] == 2) {
          
          // -- Translating statement: assert acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write) &&
  //   List__contents(old(Wand_list_for_list__get_out_1(diz))) ==
  //   old(Wand_list_for_list__get_out_1_0(diz)) -- testListAppend.vpr@109.5--109.182
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Heap := AssertHeap;
            ExhaleWellDef0Mask := AssertMask;
            
            // -- Check definedness of acc(List__state(old(Wand_list_for_list__get_out_1(diz))), write)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.32--109.66) [165417]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.32--109.66) [165418]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@109.12--109.182) [165420]"}
                perm <= AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
            }
            AssertMask := AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=AssertMask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
            
            // -- Check definedness of List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.100--109.134) [165421]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.100--109.134) [165422]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                assert {:msg "  Precondition of function List__contents might not hold. Assertion old(Wand_list_for_list__get_out_1(diz)) != null might not hold. (testListAppend.vpr@109.81--109.136) [165423]"}
                  Wand_list_for_list__get_out_1(oldHeap, diz) != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@109.81--109.136) [165424]"}
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
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@109.144--109.180) [165425]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(diz) (testListAppend.vpr@109.144--109.180) [165426]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_list_for_list__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@109.12--109.182) [165427]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(old(Wand_list_for_list__get_out_1(diz))) (testListAppend.vpr@99.11--99.75) [165428]"}
        perm <= Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))];
    }
    Mask := Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz)):=Mask[null, List__state(Wand_list_for_list__get_out_1(oldHeap, diz))] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list___apply might not hold. Assertion List__contents(old(Wand_list_for_list__get_out_1(diz))) == old(Wand_list_for_list__get_out_1_0(diz)) might not hold. (testListAppend.vpr@100.11--100.111) [165429]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@117.11--117.108) [165430]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__lemma);
    assume PostHeap[sys__result, Wand_list_for_list__lemma] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__in_1:=PostMask[sys__result, Wand_list_for_list__in_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@118.11--118.109) [165431]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__in_1);
    assume PostHeap[sys__result, Wand_list_for_list__in_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__in_1_0:=PostMask[sys__result, Wand_list_for_list__in_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@119.11--119.119) [165432]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__in_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__out_1:=PostMask[sys__result, Wand_list_for_list__out_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@120.11--120.111) [165433]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__out_1);
    assume PostHeap[sys__result, Wand_list_for_list__out_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__out_1_0:=PostMask[sys__result, Wand_list_for_list__out_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@121.11--121.121) [165434]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__out_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__this_1:=PostMask[sys__result, Wand_list_for_list__this_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@122.11--122.113) [165435]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__this_1);
    assume PostHeap[sys__result, Wand_list_for_list__this_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L2_1:=PostMask[sys__result, Wand_list_for_list__L2_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@123.11--123.115) [165436]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L2_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__tmp_suffix_1:=PostMask[sys__result, Wand_list_for_list__tmp_suffix_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@124.11--124.131) [165437]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__tmp_suffix_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L1_1:=PostMask[sys__result, Wand_list_for_list__L1_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@125.11--125.115) [165438]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L1_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__tmp_1:=PostMask[sys__result, Wand_list_for_list__tmp_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@126.11--126.111) [165439]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__tmp_1);
    assume PostHeap[sys__result, Wand_list_for_list__tmp_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__suffix_1:=PostMask[sys__result, Wand_list_for_list__suffix_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__suffix_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@127.11--127.123) [165440]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__suffix_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__cursor_1:=PostMask[sys__result, Wand_list_for_list__cursor_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__cursor_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@128.11--128.117) [165441]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__cursor_1);
    assume PostHeap[sys__result, Wand_list_for_list__cursor_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__wand_1:=PostMask[sys__result, Wand_list_for_list__wand_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__wand_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@129.11--129.113) [165442]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__wand_1);
    assume PostHeap[sys__result, Wand_list_for_list__wand_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__this_2:=PostMask[sys__result, Wand_list_for_list__this_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@130.11--130.113) [165443]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__this_2);
    assume PostHeap[sys__result, Wand_list_for_list__this_2] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L2_2:=PostMask[sys__result, Wand_list_for_list__L2_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@131.11--131.115) [165444]"}
        HasDirectPerm(PostMask, sys__result, Wand_list_for_list__L2_2);
    assume Seq#Equal(PostHeap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_list_for_list__L1_2:=PostMask[sys__result, Wand_list_for_list__L1_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@132.11--132.115) [165445]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__lemma (testListAppend.vpr@156.3--156.48) [165446]"}
      FullPerm == Mask[diz, Wand_list_for_list__lemma];
    Heap := Heap[diz, Wand_list_for_list__lemma:=__flatten_45];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__in_1 := null -- testListAppend.vpr@157.3--157.39
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__in_1 (testListAppend.vpr@157.3--157.39) [165447]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__in_1_0 (testListAppend.vpr@160.3--160.49) [165448]"}
      FullPerm == Mask[diz, Wand_list_for_list__in_1_0];
    Heap := Heap[diz, Wand_list_for_list__in_1_0:=__flatten_46];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__out_1 := null -- testListAppend.vpr@161.3--161.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__out_1 (testListAppend.vpr@161.3--161.40) [165449]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__out_1_0 (testListAppend.vpr@164.3--164.50) [165450]"}
      FullPerm == Mask[diz, Wand_list_for_list__out_1_0];
    Heap := Heap[diz, Wand_list_for_list__out_1_0:=__flatten_47];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__this_1 := null -- testListAppend.vpr@165.3--165.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__this_1 (testListAppend.vpr@165.3--165.41) [165451]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L2_1 (testListAppend.vpr@168.3--168.47) [165452]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@171.3--171.55) [165453]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L1_1 (testListAppend.vpr@174.3--174.47) [165454]"}
      FullPerm == Mask[diz, Wand_list_for_list__L1_1];
    Heap := Heap[diz, Wand_list_for_list__L1_1:=__flatten_50];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__tmp_1 := null -- testListAppend.vpr@175.3--175.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__tmp_1 (testListAppend.vpr@175.3--175.40) [165455]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__suffix_1 (testListAppend.vpr@178.3--178.51) [165456]"}
      FullPerm == Mask[diz, Wand_list_for_list__suffix_1];
    Heap := Heap[diz, Wand_list_for_list__suffix_1:=__flatten_51];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__cursor_1 := null -- testListAppend.vpr@179.3--179.43
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__cursor_1 (testListAppend.vpr@179.3--179.43) [165457]"}
      FullPerm == Mask[diz, Wand_list_for_list__cursor_1];
    Heap := Heap[diz, Wand_list_for_list__cursor_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__wand_1 := null -- testListAppend.vpr@180.3--180.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__wand_1 (testListAppend.vpr@180.3--180.41) [165458]"}
      FullPerm == Mask[diz, Wand_list_for_list__wand_1];
    Heap := Heap[diz, Wand_list_for_list__wand_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_list_for_list__this_2 := null -- testListAppend.vpr@181.3--181.41
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__this_2 (testListAppend.vpr@181.3--181.41) [165459]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L2_2 (testListAppend.vpr@184.3--184.47) [165460]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_list_for_list__L1_2 (testListAppend.vpr@187.3--187.47) [165461]"}
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@189.10--189.1800) [165462]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@189.10--189.1800) [165464]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__lemma];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__lemma:=AssertMask[sys__result, Wand_list_for_list__lemma] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__lemma == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@189.10--189.1800) [165465]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__lemma);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__lemma == 0 might not hold. (testListAppend.vpr@189.10--189.1800) [165466]"}
      AssertHeap[sys__result, Wand_list_for_list__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@189.10--189.1800) [165468]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__in_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__in_1:=AssertMask[sys__result, Wand_list_for_list__in_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@189.10--189.1800) [165469]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__in_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__in_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165470]"}
      AssertHeap[sys__result, Wand_list_for_list__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@189.10--189.1800) [165472]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__in_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__in_1_0:=AssertMask[sys__result, Wand_list_for_list__in_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__in_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@189.10--189.1800) [165473]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__in_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__in_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165474]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@189.10--189.1800) [165476]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__out_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__out_1:=AssertMask[sys__result, Wand_list_for_list__out_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@189.10--189.1800) [165477]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__out_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__out_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165478]"}
      AssertHeap[sys__result, Wand_list_for_list__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@189.10--189.1800) [165480]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__out_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__out_1_0:=AssertMask[sys__result, Wand_list_for_list__out_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__out_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@189.10--189.1800) [165481]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__out_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__out_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165482]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@189.10--189.1800) [165484]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__this_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__this_1:=AssertMask[sys__result, Wand_list_for_list__this_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@189.10--189.1800) [165485]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__this_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__this_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165486]"}
      AssertHeap[sys__result, Wand_list_for_list__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@189.10--189.1800) [165488]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L2_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L2_1:=AssertMask[sys__result, Wand_list_for_list__L2_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@189.10--189.1800) [165489]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L2_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L2_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165490]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@189.10--189.1800) [165492]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1:=AssertMask[sys__result, Wand_list_for_list__tmp_suffix_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@189.10--189.1800) [165493]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__tmp_suffix_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165494]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@189.10--189.1800) [165496]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L1_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L1_1:=AssertMask[sys__result, Wand_list_for_list__L1_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@189.10--189.1800) [165497]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L1_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L1_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165498]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@189.10--189.1800) [165500]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__tmp_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__tmp_1:=AssertMask[sys__result, Wand_list_for_list__tmp_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__tmp_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@189.10--189.1800) [165501]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__tmp_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__tmp_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165502]"}
      AssertHeap[sys__result, Wand_list_for_list__tmp_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@189.10--189.1800) [165504]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__suffix_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__suffix_1:=AssertMask[sys__result, Wand_list_for_list__suffix_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__suffix_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@189.10--189.1800) [165505]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__suffix_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165506]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@189.10--189.1800) [165508]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__cursor_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__cursor_1:=AssertMask[sys__result, Wand_list_for_list__cursor_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__cursor_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@189.10--189.1800) [165509]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__cursor_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__cursor_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165510]"}
      AssertHeap[sys__result, Wand_list_for_list__cursor_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@189.10--189.1800) [165512]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__wand_1];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__wand_1:=AssertMask[sys__result, Wand_list_for_list__wand_1] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__wand_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@189.10--189.1800) [165513]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__wand_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__wand_1 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165514]"}
      AssertHeap[sys__result, Wand_list_for_list__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@189.10--189.1800) [165516]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__this_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__this_2:=AssertMask[sys__result, Wand_list_for_list__this_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__this_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@189.10--189.1800) [165517]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__this_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__this_2 == null might not hold. (testListAppend.vpr@189.10--189.1800) [165518]"}
      AssertHeap[sys__result, Wand_list_for_list__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@189.10--189.1800) [165520]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L2_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L2_2:=AssertMask[sys__result, Wand_list_for_list__L2_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L2_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@189.10--189.1800) [165521]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L2_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L2_2 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165522]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@189.10--189.1800) [165524]"}
        perm <= AssertMask[sys__result, Wand_list_for_list__L1_2];
    }
    AssertMask := AssertMask[sys__result, Wand_list_for_list__L1_2:=AssertMask[sys__result, Wand_list_for_list__L1_2] - perm];
    
    // -- Check definedness of sys__result.Wand_list_for_list__L1_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@189.10--189.1800) [165525]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_list_for_list__L1_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_list_for_list__L1_2 == Seq[Int]() might not hold. (testListAppend.vpr@189.10--189.1800) [165526]"}
      Seq#Equal(AssertHeap[sys__result, Wand_list_for_list__L1_2], (Seq#Empty(): Seq int));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@190.3--190.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@116.11--116.30) [165527]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__lemma (testListAppend.vpr@117.11--117.108) [165528]"}
        perm <= Mask[sys__result, Wand_list_for_list__lemma];
    }
    Mask := Mask[sys__result, Wand_list_for_list__lemma:=Mask[sys__result, Wand_list_for_list__lemma] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__lemma == 0 might not hold. (testListAppend.vpr@117.11--117.108) [165529]"}
      Heap[sys__result, Wand_list_for_list__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1 (testListAppend.vpr@118.11--118.109) [165530]"}
        perm <= Mask[sys__result, Wand_list_for_list__in_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__in_1:=Mask[sys__result, Wand_list_for_list__in_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__in_1 == null might not hold. (testListAppend.vpr@118.11--118.109) [165531]"}
      Heap[sys__result, Wand_list_for_list__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__in_1_0 (testListAppend.vpr@119.11--119.119) [165532]"}
        perm <= Mask[sys__result, Wand_list_for_list__in_1_0];
    }
    Mask := Mask[sys__result, Wand_list_for_list__in_1_0:=Mask[sys__result, Wand_list_for_list__in_1_0] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__in_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@119.11--119.119) [165533]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1 (testListAppend.vpr@120.11--120.111) [165534]"}
        perm <= Mask[sys__result, Wand_list_for_list__out_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__out_1:=Mask[sys__result, Wand_list_for_list__out_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__out_1 == null might not hold. (testListAppend.vpr@120.11--120.111) [165535]"}
      Heap[sys__result, Wand_list_for_list__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__out_1_0 (testListAppend.vpr@121.11--121.121) [165536]"}
        perm <= Mask[sys__result, Wand_list_for_list__out_1_0];
    }
    Mask := Mask[sys__result, Wand_list_for_list__out_1_0:=Mask[sys__result, Wand_list_for_list__out_1_0] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__out_1_0 == Seq[Int]() might not hold. (testListAppend.vpr@121.11--121.121) [165537]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__this_1 (testListAppend.vpr@122.11--122.113) [165538]"}
        perm <= Mask[sys__result, Wand_list_for_list__this_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__this_1:=Mask[sys__result, Wand_list_for_list__this_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__this_1 == null might not hold. (testListAppend.vpr@122.11--122.113) [165539]"}
      Heap[sys__result, Wand_list_for_list__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_1 (testListAppend.vpr@123.11--123.115) [165540]"}
        perm <= Mask[sys__result, Wand_list_for_list__L2_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L2_1:=Mask[sys__result, Wand_list_for_list__L2_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L2_1 == Seq[Int]() might not hold. (testListAppend.vpr@123.11--123.115) [165541]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L2_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@124.11--124.131) [165542]"}
        perm <= Mask[sys__result, Wand_list_for_list__tmp_suffix_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__tmp_suffix_1:=Mask[sys__result, Wand_list_for_list__tmp_suffix_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__tmp_suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@124.11--124.131) [165543]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__tmp_suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_1 (testListAppend.vpr@125.11--125.115) [165544]"}
        perm <= Mask[sys__result, Wand_list_for_list__L1_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L1_1:=Mask[sys__result, Wand_list_for_list__L1_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L1_1 == Seq[Int]() might not hold. (testListAppend.vpr@125.11--125.115) [165545]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L1_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__tmp_1 (testListAppend.vpr@126.11--126.111) [165546]"}
        perm <= Mask[sys__result, Wand_list_for_list__tmp_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__tmp_1:=Mask[sys__result, Wand_list_for_list__tmp_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__tmp_1 == null might not hold. (testListAppend.vpr@126.11--126.111) [165547]"}
      Heap[sys__result, Wand_list_for_list__tmp_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__suffix_1 (testListAppend.vpr@127.11--127.123) [165548]"}
        perm <= Mask[sys__result, Wand_list_for_list__suffix_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__suffix_1:=Mask[sys__result, Wand_list_for_list__suffix_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__suffix_1 == Seq[Int]() might not hold. (testListAppend.vpr@127.11--127.123) [165549]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__suffix_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__cursor_1 (testListAppend.vpr@128.11--128.117) [165550]"}
        perm <= Mask[sys__result, Wand_list_for_list__cursor_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__cursor_1:=Mask[sys__result, Wand_list_for_list__cursor_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__cursor_1 == null might not hold. (testListAppend.vpr@128.11--128.117) [165551]"}
      Heap[sys__result, Wand_list_for_list__cursor_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__wand_1 (testListAppend.vpr@129.11--129.113) [165552]"}
        perm <= Mask[sys__result, Wand_list_for_list__wand_1];
    }
    Mask := Mask[sys__result, Wand_list_for_list__wand_1:=Mask[sys__result, Wand_list_for_list__wand_1] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__wand_1 == null might not hold. (testListAppend.vpr@129.11--129.113) [165553]"}
      Heap[sys__result, Wand_list_for_list__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__this_2 (testListAppend.vpr@130.11--130.113) [165554]"}
        perm <= Mask[sys__result, Wand_list_for_list__this_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__this_2:=Mask[sys__result, Wand_list_for_list__this_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__this_2 == null might not hold. (testListAppend.vpr@130.11--130.113) [165555]"}
      Heap[sys__result, Wand_list_for_list__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L2_2 (testListAppend.vpr@131.11--131.115) [165556]"}
        perm <= Mask[sys__result, Wand_list_for_list__L2_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L2_2:=Mask[sys__result, Wand_list_for_list__L2_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L2_2 == Seq[Int]() might not hold. (testListAppend.vpr@131.11--131.115) [165557]"}
      Seq#Equal(Heap[sys__result, Wand_list_for_list__L2_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. There might be insufficient permission to access sys__result.Wand_list_for_list__L1_2 (testListAppend.vpr@132.11--132.115) [165558]"}
        perm <= Mask[sys__result, Wand_list_for_list__L1_2];
    }
    Mask := Mask[sys__result, Wand_list_for_list__L1_2:=Mask[sys__result, Wand_list_for_list__L1_2] - perm];
    assert {:msg "  Postcondition of Wand_list_for_list__Wand_list_for_list might not hold. Assertion sys__result.Wand_list_for_list__L1_2 == Seq[Int]() might not hold. (testListAppend.vpr@132.11--132.115) [165559]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_11: int;
  var __flatten_54: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@197.11--197.38) [165560]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@197.11--197.38) [165561]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@205.3--205.32) [165562]"}
      FullPerm == Mask[diz, List__val];
    Heap := Heap[diz, List__val:=__flatten_54];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.List__next := null -- testListAppend.vpr@206.3--206.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@206.3--206.25) [165563]"}
      FullPerm == Mask[diz, List__next];
    Heap := Heap[diz, List__next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List__state(diz), write) -- testListAppend.vpr@207.3--207.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@207.3--207.36) [165566]"}
        perm <= Mask[diz, List__val];
    }
    Mask := Mask[diz, List__val:=Mask[diz, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@207.3--207.36) [165568]"}
        perm <= Mask[diz, List__next];
    }
    Mask := Mask[diz, List__next:=Mask[diz, List__next] - perm];
    if (Heap[diz, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@207.3--207.36) [165570]"}
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
      assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
        { newPMask[o_35, f_17] }
        Heap[null, List__state#sm(diz)][o_35, f_17] || Heap[null, List__state#sm(Heap[diz, List__next])][o_35, f_17] ==> newPMask[o_35, f_17]
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@209.10--209.114) [165572]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@209.10--209.114) [165574]"}
        perm <= AssertMask[null, List__state(sys__result)];
    }
    AssertMask := AssertMask[null, List__state(sys__result):=AssertMask[null, List__state(sys__result)] - perm];
    
    // -- Check definedness of List__contents(sys__result) == Seq(v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@209.76--209.103) [165575]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@209.76--209.103) [165576]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List__state(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion List__contents(sys__result) == Seq(v) might not hold. (testListAppend.vpr@209.10--209.114) [165577]"}
      Seq#Equal(List__contents(AssertHeap, sys__result), Seq#Singleton(v_2));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@210.3--210.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of List__List might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@195.11--195.30) [165578]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__List might not hold. There might be insufficient permission to access List__state(sys__result) (testListAppend.vpr@196.11--196.47) [165579]"}
        perm <= Mask[null, List__state(sys__result)];
    }
    Mask := Mask[null, List__state(sys__result):=Mask[null, List__state(sys__result)] - perm];
    assert {:msg "  Postcondition of List__List might not hold. Assertion List__contents(sys__result) == Seq(v) might not hold. (testListAppend.vpr@197.11--197.48) [165580]"}
      Seq#Equal(List__contents(Heap, sys__result), Seq#Singleton(v_2));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__append_rec
// ==================================================

procedure List__append_rec(diz: Ref, current_thread_id: int, l_2: Ref, L1: (Seq int), L2: (Seq int)) returns ()
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
    assume Heap[l_2, $allocated];
  
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@217.12--217.31) [165581]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@217.12--217.31) [165582]"}
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
    assume l_2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(l) == L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@220.12--220.29) [165583]"}
          l_2 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@220.12--220.29) [165584]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(l_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, l_2), L2);
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
    PostMask := PostMask[null, List__state(diz):=PostMask[null, List__state(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(diz) == L1 ++ L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@222.11--222.30) [165585]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@222.11--222.30) [165586]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List__state(diz) might fail. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@227.3--227.38) [165589]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@228.7--228.29) [165593]"}
        HasDirectPerm(Mask, diz, List__next);
    if (Heap[diz, List__next] == null) {
      
      // -- Translating statement: __flatten_12 := l -- testListAppend.vpr@229.5--229.22
        __flatten_12 := l_2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_55 := __flatten_12 -- testListAppend.vpr@230.5--230.33
        __flatten_55 := __flatten_12;
        assume state(Heap, Mask);
      
      // -- Translating statement: diz.List__next := __flatten_55 -- testListAppend.vpr@231.5--231.35
        assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@231.5--231.35) [165594]"}
          FullPerm == Mask[diz, List__next];
        Heap := Heap[diz, List__next:=__flatten_55];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_56 := List__contents(diz.List__next) -- testListAppend.vpr@233.5--233.51
        
        // -- Check definedness of List__contents(diz.List__next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@233.5--233.51) [165595]"}
            HasDirectPerm(Mask, diz, List__next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@233.21--233.51) [165596]"}
              Heap[diz, List__next] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@233.21--233.51) [165597]"}
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
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@234.5--234.77) [165598]"}
            HasDirectPerm(Mask, diz, List__next);
        arg_diz := Heap[diz, List__next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion diz.List__next != null might not hold. (testListAppend.vpr@234.5--234.77) [165599]"}
            arg_diz != null;
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@234.5--234.77) [165600]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method List__append_rec might not hold. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@234.5--234.77) [165601]"}
              perm <= Mask[null, List__state(arg_diz)];
          }
          Mask := Mask[null, List__state(arg_diz):=Mask[null, List__state(arg_diz)] - perm];
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion List__contents(diz.List__next) == __flatten_56 might not hold. (testListAppend.vpr@234.5--234.77) [165602]"}
            Seq#Equal(List__contents(Heap, arg_diz), __flatten_56);
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion l != null might not hold. (testListAppend.vpr@234.5--234.77) [165603]"}
            l_2 != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method List__append_rec might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@234.5--234.77) [165604]"}
              perm <= Mask[null, List__state(l_2)];
          }
          Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] - perm];
          assert {:msg "  The precondition of method List__append_rec might not hold. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@234.5--234.77) [165605]"}
            Seq#Equal(List__contents(Heap, l_2), L2);
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__val (testListAppend.vpr@236.3--236.36) [165608]"}
        perm <= Mask[diz, List__val];
    }
    Mask := Mask[diz, List__val:=Mask[diz, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access diz.List__next (testListAppend.vpr@236.3--236.36) [165610]"}
        perm <= Mask[diz, List__next];
    }
    Mask := Mask[diz, List__next:=Mask[diz, List__next] - perm];
    if (Heap[diz, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(diz) might fail. There might be insufficient permission to access List__state(diz.List__next) (testListAppend.vpr@236.3--236.36) [165612]"}
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
      assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
        { newPMask[o_1, f_11] }
        Heap[null, List__state#sm(diz)][o_1, f_11] || Heap[null, List__state#sm(Heap[diz, List__next])][o_1, f_11] ==> newPMask[o_1, f_11]
      );
      Heap := Heap[null, List__state#sm(diz):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__append_rec might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@221.11--221.39) [165614]"}
        perm <= Mask[null, List__state(diz)];
    }
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] - perm];
    assert {:msg "  Postcondition of List__append_rec might not hold. Assertion List__contents(diz) == L1 ++ L2 might not hold. (testListAppend.vpr@222.11--222.42) [165615]"}
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tmp_1.List__next (testListAppend.vpr@245.12--245.40) [165616]"}
        HasDirectPerm(Mask, tmp_1, List__next);
    assume Heap[tmp_1, List__next] == cursor_1;
    assume state(Heap, Mask);
    
    // -- Check definedness of tmp_suffix_1 == Seq(tmp_1.List__val) ++ suffix_1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tmp_1.List__val (testListAppend.vpr@246.12--246.60) [165617]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@249.12--249.48) [165618]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@249.12--249.48) [165619]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@250.12--250.50) [165620]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@250.12--250.50) [165621]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@251.12--251.49) [165622]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@251.12--251.49) [165623]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion wand_1 != null might not hold. (testListAppend.vpr@252.12--252.51) [165624]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(wand_1) (testListAppend.vpr@252.12--252.51) [165625]"}
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
      oldHeap := Heap;
      oldMask := Mask;
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@261.11--261.52) [165626]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@261.11--261.52) [165627]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@262.11--262.54) [165628]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@262.11--262.54) [165629]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@263.11--263.53) [165630]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@263.11--263.53) [165631]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@264.11--264.55) [165632]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@264.11--264.55) [165633]"}
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Wand_list_for_list__Wand_list_for_list might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@295.3--295.76) [165634]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@299.3--299.50) [165635]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@302.3--302.51) [165636]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@305.3--305.49) [165637]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@308.3--308.57) [165638]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@311.3--311.49) [165639]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@314.3--314.50) [165640]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@317.3--317.53) [165641]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@320.3--320.53) [165642]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@323.3--323.51) [165643]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@326.3--326.49) [165644]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@329.3--329.51) [165645]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@332.3--332.50) [165646]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@335.3--335.52) [165647]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1_0];
    Heap := Heap[vwand, Wand_list_for_list__out_1_0:=__flatten_71];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_list_for_list__valid_wand(vwand), write) -- testListAppend.vpr@336.3--336.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@336.3--336.57) [165649]"}
      Mask[vwand, Wand_list_for_list__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__lemma];
    Mask := Mask[vwand, Wand_list_for_list__lemma:=Mask[vwand, Wand_list_for_list__lemma] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_list_for_list__lemma might not hold. (testListAppend.vpr@336.3--336.57) [165650]"}
      1 <= Heap[vwand, Wand_list_for_list__lemma];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@336.3--336.57) [165651]"}
      Mask[vwand, Wand_list_for_list__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1];
    Mask := Mask[vwand, Wand_list_for_list__in_1:=Mask[vwand, Wand_list_for_list__in_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [165652]"}
      Heap[vwand, Wand_list_for_list__in_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@336.3--336.57) [165653]"}
      Mask[vwand, Wand_list_for_list__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1_0];
    Mask := Mask[vwand, Wand_list_for_list__in_1_0:=Mask[vwand, Wand_list_for_list__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@336.3--336.57) [165654]"}
      Mask[vwand, Wand_list_for_list__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1];
    Mask := Mask[vwand, Wand_list_for_list__out_1:=Mask[vwand, Wand_list_for_list__out_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [165655]"}
      Heap[vwand, Wand_list_for_list__out_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@336.3--336.57) [165656]"}
      Mask[vwand, Wand_list_for_list__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1_0];
    Mask := Mask[vwand, Wand_list_for_list__out_1_0:=Mask[vwand, Wand_list_for_list__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@336.3--336.57) [165657]"}
      Mask[vwand, Wand_list_for_list__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_1];
    Mask := Mask[vwand, Wand_list_for_list__this_1:=Mask[vwand, Wand_list_for_list__this_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@336.3--336.57) [165658]"}
      Mask[vwand, Wand_list_for_list__L2_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_1];
    Mask := Mask[vwand, Wand_list_for_list__L2_1:=Mask[vwand, Wand_list_for_list__L2_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@336.3--336.57) [165659]"}
      Mask[vwand, Wand_list_for_list__tmp_suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_suffix_1:=Mask[vwand, Wand_list_for_list__tmp_suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@336.3--336.57) [165660]"}
      Mask[vwand, Wand_list_for_list__L1_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_1];
    Mask := Mask[vwand, Wand_list_for_list__L1_1:=Mask[vwand, Wand_list_for_list__L1_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@336.3--336.57) [165661]"}
      Mask[vwand, Wand_list_for_list__tmp_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_1:=Mask[vwand, Wand_list_for_list__tmp_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@336.3--336.57) [165662]"}
      Mask[vwand, Wand_list_for_list__suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__suffix_1:=Mask[vwand, Wand_list_for_list__suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@336.3--336.57) [165663]"}
      Mask[vwand, Wand_list_for_list__cursor_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__cursor_1];
    Mask := Mask[vwand, Wand_list_for_list__cursor_1:=Mask[vwand, Wand_list_for_list__cursor_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@336.3--336.57) [165664]"}
      Mask[vwand, Wand_list_for_list__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__wand_1];
    Mask := Mask[vwand, Wand_list_for_list__wand_1:=Mask[vwand, Wand_list_for_list__wand_1] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [165665]"}
        Heap[vwand, Wand_list_for_list__this_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@336.3--336.57) [165667]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@336.3--336.57) [165669]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next] - perm];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_1.List__next == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@336.3--336.57) [165670]"}
        Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_suffix_1 == Seq(vwand.Wand_list_for_list__tmp_1.List__val) ++ vwand.Wand_list_for_list__suffix_1 might not hold. (testListAppend.vpr@336.3--336.57) [165671]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), Heap[vwand, Wand_list_for_list__suffix_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@336.3--336.57) [165672]"}
        Heap[vwand, Wand_list_for_list__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand.Wand_list_for_list__wand_1) (testListAppend.vpr@336.3--336.57) [165674]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_list_for_list__valid_wand(vwand), Heap[null, Wand_list_for_list__valid_wand(vwand)], Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])]);
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_1 might not hold. (testListAppend.vpr@336.3--336.57) [165675]"}
        Wand_list_for_list__get_in_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__tmp_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [165676]"}
        Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@336.3--336.57) [165677]"}
        Wand_list_for_list__get_out_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [165678]"}
        Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@336.3--336.57) [165679]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [165680]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@336.3--336.57) [165681]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@336.3--336.57) [165682]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@336.3--336.57) [165683]"}
      Mask[vwand, Wand_list_for_list__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_2];
    Mask := Mask[vwand, Wand_list_for_list__this_2:=Mask[vwand, Wand_list_for_list__this_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@336.3--336.57) [165684]"}
      Mask[vwand, Wand_list_for_list__L2_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_2];
    Mask := Mask[vwand, Wand_list_for_list__L2_2:=Mask[vwand, Wand_list_for_list__L2_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@336.3--336.57) [165685]"}
      Mask[vwand, Wand_list_for_list__L1_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_2];
    Mask := Mask[vwand, Wand_list_for_list__L1_2:=Mask[vwand, Wand_list_for_list__L1_2] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 2) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_2 != null might not hold. (testListAppend.vpr@336.3--336.57) [165686]"}
        Heap[vwand, Wand_list_for_list__this_2] != null;
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@336.3--336.57) [165687]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@336.3--336.57) [165688]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@336.3--336.57) [165689]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@336.3--336.57) [165690]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__lemma <= 2 might not hold. (testListAppend.vpr@336.3--336.57) [165691]"}
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
      assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
        { newPMask[o_12, f_9] }
        Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][o_12, f_9] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[vwand, Wand_list_for_list__wand_1])][o_12, f_9] ==> newPMask[o_12, f_9]
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@339.10--339.322) [165693]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.10--339.322) [165695]"}
        perm <= AssertMask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_list_for_list__valid_wand(sys__result):=AssertMask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.95--339.136) [165696]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.95--339.136) [165697]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@339.10--339.322) [165698]"}
      Wand_list_for_list__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.150--339.193) [165699]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.150--339.193) [165700]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@339.10--339.322) [165701]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.209--339.251) [165702]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.209--339.251) [165703]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@339.10--339.322) [165704]"}
      Wand_list_for_list__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@339.266--339.310) [165705]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@339.266--339.310) [165706]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@339.10--339.322) [165707]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@340.3--340.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@259.11--259.30) [165708]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@260.11--260.66) [165709]"}
        perm <= Mask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_list_for_list__valid_wand(sys__result):=Mask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@261.11--261.60) [165710]"}
      Wand_list_for_list__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@262.11--262.64) [165711]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@263.11--263.62) [165712]"}
      Wand_list_for_list__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@264.11--264.66) [165713]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@355.11--355.52) [165714]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@355.11--355.52) [165715]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@356.11--356.54) [165716]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@356.11--356.54) [165717]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@357.11--357.53) [165718]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@357.11--357.53) [165719]"}
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
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@358.11--358.55) [165720]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@358.11--358.55) [165721]"}
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Wand_list_for_list__Wand_list_for_list might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@379.3--379.76) [165722]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@383.3--383.50) [165723]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@386.3--386.51) [165724]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@389.3--389.49) [165725]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@392.3--392.49) [165726]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@395.3--395.49) [165727]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@398.3--398.51) [165728]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@401.3--401.50) [165729]"}
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@404.3--404.52) [165730]"}
      FullPerm == Mask[vwand, Wand_list_for_list__out_1_0];
    Heap := Heap[vwand, Wand_list_for_list__out_1_0:=__flatten_80];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_list_for_list__valid_wand(vwand), write) -- testListAppend.vpr@405.3--405.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__lemma (testListAppend.vpr@405.3--405.57) [165732]"}
      Mask[vwand, Wand_list_for_list__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__lemma];
    Mask := Mask[vwand, Wand_list_for_list__lemma:=Mask[vwand, Wand_list_for_list__lemma] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_list_for_list__lemma might not hold. (testListAppend.vpr@405.3--405.57) [165733]"}
      1 <= Heap[vwand, Wand_list_for_list__lemma];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1 (testListAppend.vpr@405.3--405.57) [165734]"}
      Mask[vwand, Wand_list_for_list__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1];
    Mask := Mask[vwand, Wand_list_for_list__in_1:=Mask[vwand, Wand_list_for_list__in_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [165735]"}
      Heap[vwand, Wand_list_for_list__in_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__in_1_0 (testListAppend.vpr@405.3--405.57) [165736]"}
      Mask[vwand, Wand_list_for_list__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__in_1_0];
    Mask := Mask[vwand, Wand_list_for_list__in_1_0:=Mask[vwand, Wand_list_for_list__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1 (testListAppend.vpr@405.3--405.57) [165737]"}
      Mask[vwand, Wand_list_for_list__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1];
    Mask := Mask[vwand, Wand_list_for_list__out_1:=Mask[vwand, Wand_list_for_list__out_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [165738]"}
      Heap[vwand, Wand_list_for_list__out_1] != null;
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__out_1_0 (testListAppend.vpr@405.3--405.57) [165739]"}
      Mask[vwand, Wand_list_for_list__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__out_1_0];
    Mask := Mask[vwand, Wand_list_for_list__out_1_0:=Mask[vwand, Wand_list_for_list__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_1 (testListAppend.vpr@405.3--405.57) [165740]"}
      Mask[vwand, Wand_list_for_list__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_1];
    Mask := Mask[vwand, Wand_list_for_list__this_1:=Mask[vwand, Wand_list_for_list__this_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_1 (testListAppend.vpr@405.3--405.57) [165741]"}
      Mask[vwand, Wand_list_for_list__L2_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_1];
    Mask := Mask[vwand, Wand_list_for_list__L2_1:=Mask[vwand, Wand_list_for_list__L2_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_suffix_1 (testListAppend.vpr@405.3--405.57) [165742]"}
      Mask[vwand, Wand_list_for_list__tmp_suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_suffix_1:=Mask[vwand, Wand_list_for_list__tmp_suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_1 (testListAppend.vpr@405.3--405.57) [165743]"}
      Mask[vwand, Wand_list_for_list__L1_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_1];
    Mask := Mask[vwand, Wand_list_for_list__L1_1:=Mask[vwand, Wand_list_for_list__L1_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1 (testListAppend.vpr@405.3--405.57) [165744]"}
      Mask[vwand, Wand_list_for_list__tmp_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__tmp_1];
    Mask := Mask[vwand, Wand_list_for_list__tmp_1:=Mask[vwand, Wand_list_for_list__tmp_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__suffix_1 (testListAppend.vpr@405.3--405.57) [165745]"}
      Mask[vwand, Wand_list_for_list__suffix_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__suffix_1];
    Mask := Mask[vwand, Wand_list_for_list__suffix_1:=Mask[vwand, Wand_list_for_list__suffix_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__cursor_1 (testListAppend.vpr@405.3--405.57) [165746]"}
      Mask[vwand, Wand_list_for_list__cursor_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__cursor_1];
    Mask := Mask[vwand, Wand_list_for_list__cursor_1:=Mask[vwand, Wand_list_for_list__cursor_1] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__wand_1 (testListAppend.vpr@405.3--405.57) [165747]"}
      Mask[vwand, Wand_list_for_list__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__wand_1];
    Mask := Mask[vwand, Wand_list_for_list__wand_1:=Mask[vwand, Wand_list_for_list__wand_1] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 1) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [165748]"}
        Heap[vwand, Wand_list_for_list__this_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__val (testListAppend.vpr@405.3--405.57) [165750]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__tmp_1.List__next (testListAppend.vpr@405.3--405.57) [165752]"}
          perm <= Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next];
      }
      Mask := Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next:=Mask[Heap[vwand, Wand_list_for_list__tmp_1], List__next] - perm];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_1.List__next == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@405.3--405.57) [165753]"}
        Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__next] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__tmp_suffix_1 == Seq(vwand.Wand_list_for_list__tmp_1.List__val) ++ vwand.Wand_list_for_list__suffix_1 might not hold. (testListAppend.vpr@405.3--405.57) [165754]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Seq#Append(Seq#Singleton(Heap[Heap[vwand, Wand_list_for_list__tmp_1], List__val]), Heap[vwand, Wand_list_for_list__suffix_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__wand_1 != null might not hold. (testListAppend.vpr@405.3--405.57) [165755]"}
        Heap[vwand, Wand_list_for_list__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand.Wand_list_for_list__wand_1) (testListAppend.vpr@405.3--405.57) [165757]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]):=Mask[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_list_for_list__valid_wand(vwand), Heap[null, Wand_list_for_list__valid_wand(vwand)], Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1]), Heap[null, Wand_list_for_list__valid_wand(Heap[vwand, Wand_list_for_list__wand_1])]);
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_1 might not hold. (testListAppend.vpr@405.3--405.57) [165758]"}
        Wand_list_for_list__get_in_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__tmp_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_in_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__tmp_suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [165759]"}
        Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__tmp_suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@405.3--405.57) [165760]"}
        Wand_list_for_list__get_out_1(Heap, Heap[vwand, Wand_list_for_list__wand_1]) == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion Wand_list_for_list__get_out_1_0(vwand.Wand_list_for_list__wand_1) == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [165761]"}
        Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, Heap[vwand, Wand_list_for_list__wand_1]), Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__cursor_1 might not hold. (testListAppend.vpr@405.3--405.57) [165762]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__cursor_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__suffix_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [165763]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__suffix_1], Heap[vwand, Wand_list_for_list__L2_1]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_1 might not hold. (testListAppend.vpr@405.3--405.57) [165764]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_1];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_1 ++ vwand.Wand_list_for_list__L2_1 might not hold. (testListAppend.vpr@405.3--405.57) [165765]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_1], Heap[vwand, Wand_list_for_list__L2_1]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__this_2 (testListAppend.vpr@405.3--405.57) [165766]"}
      Mask[vwand, Wand_list_for_list__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__this_2];
    Mask := Mask[vwand, Wand_list_for_list__this_2:=Mask[vwand, Wand_list_for_list__this_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L2_2 (testListAppend.vpr@405.3--405.57) [165767]"}
      Mask[vwand, Wand_list_for_list__L2_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L2_2];
    Mask := Mask[vwand, Wand_list_for_list__L2_2:=Mask[vwand, Wand_list_for_list__L2_2] - wildcard];
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_list_for_list__L1_2 (testListAppend.vpr@405.3--405.57) [165768]"}
      Mask[vwand, Wand_list_for_list__L1_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_list_for_list__L1_2];
    Mask := Mask[vwand, Wand_list_for_list__L1_2:=Mask[vwand, Wand_list_for_list__L1_2] - wildcard];
    if (Heap[vwand, Wand_list_for_list__lemma] == 2) {
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__this_2 != null might not hold. (testListAppend.vpr@405.3--405.57) [165769]"}
        Heap[vwand, Wand_list_for_list__this_2] != null;
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@405.3--405.57) [165770]"}
        Heap[vwand, Wand_list_for_list__in_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__in_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@405.3--405.57) [165771]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__in_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1 == vwand.Wand_list_for_list__this_2 might not hold. (testListAppend.vpr@405.3--405.57) [165772]"}
        Heap[vwand, Wand_list_for_list__out_1] == Heap[vwand, Wand_list_for_list__this_2];
      assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__out_1_0 == vwand.Wand_list_for_list__L1_2 ++ vwand.Wand_list_for_list__L2_2 might not hold. (testListAppend.vpr@405.3--405.57) [165773]"}
        Seq#Equal(Heap[vwand, Wand_list_for_list__out_1_0], Seq#Append(Heap[vwand, Wand_list_for_list__L1_2], Heap[vwand, Wand_list_for_list__L2_2]));
    }
    assert {:msg "  Folding Wand_list_for_list__valid_wand(vwand) might fail. Assertion vwand.Wand_list_for_list__lemma <= 2 might not hold. (testListAppend.vpr@405.3--405.57) [165774]"}
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
      assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
        { newPMask[o_22, f_24] }
        Heap[null, Wand_list_for_list__valid_wand#sm(vwand)][o_22, f_24] || Heap[null, Wand_list_for_list__valid_wand#sm(Heap[vwand, Wand_list_for_list__wand_1])][o_22, f_24] ==> newPMask[o_22, f_24]
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testListAppend.vpr@408.10--408.322) [165776]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.10--408.322) [165778]"}
        perm <= AssertMask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_list_for_list__valid_wand(sys__result):=AssertMask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_list_for_list__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.95--408.136) [165779]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.95--408.136) [165780]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@408.10--408.322) [165781]"}
      Wand_list_for_list__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_list_for_list__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.150--408.193) [165782]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.150--408.193) [165783]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@408.10--408.322) [165784]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_list_for_list__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.209--408.251) [165785]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.209--408.251) [165786]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@408.10--408.322) [165787]"}
      Wand_list_for_list__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_list_for_list__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@408.266--408.310) [165788]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@408.266--408.310) [165789]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_list_for_list__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@408.10--408.322) [165790]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testListAppend.vpr@409.3--409.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion sys__result != null might not hold. (testListAppend.vpr@353.11--353.30) [165791]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(sys__result) (testListAppend.vpr@354.11--354.66) [165792]"}
        perm <= Mask[null, Wand_list_for_list__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_list_for_list__valid_wand(sys__result):=Mask[null, Wand_list_for_list__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_in_1(sys__result) == in_1 might not hold. (testListAppend.vpr@355.11--355.60) [165793]"}
      Wand_list_for_list__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_in_1_0(sys__result) == in_1_0 might not hold. (testListAppend.vpr@356.11--356.64) [165794]"}
      Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_out_1(sys__result) == out_1 might not hold. (testListAppend.vpr@357.11--357.62) [165795]"}
      Wand_list_for_list__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of List__Wand_list_for_list_lemma_2 might not hold. Assertion Wand_list_for_list__get_out_1_0(sys__result) == out_1_0 might not hold. (testListAppend.vpr@358.11--358.66) [165796]"}
      Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, sys__result), out_1_0);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List__append_iter
// ==================================================

procedure List__append_iter(diz: Ref, current_thread_id: int, l_2: Ref, L1: (Seq int), L2: (Seq int)) returns ()
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
    assume Heap[l_2, $allocated];
  
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@416.12--416.31) [165797]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@416.12--416.31) [165798]"}
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
    assume l_2 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of List__contents(l) == L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@419.12--419.29) [165799]"}
          l_2 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@419.12--419.29) [165800]"}
          NoPerm < perm ==> NoPerm < Mask[null, List__state(l_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(List__contents(Heap, l_2), L2);
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
    PostMask := PostMask[null, List__state(diz):=PostMask[null, List__state(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of List__contents(diz) == L1 ++ L2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion diz != null might not hold. (testListAppend.vpr@421.11--421.30) [165801]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@421.11--421.30) [165802]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@438.19--438.41) [165803]"}
          cursor != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@438.19--438.41) [165804]"}
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [165805]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@441.3--441.111) [165806]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [165807]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [165808]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@441.3--441.111) [165809]"}
        diz == diz;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@441.3--441.111) [165810]"}
        Seq#Equal(arg_in_1_0, Seq#Append(L1, L2));
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@441.3--441.111) [165811]"}
        diz != null;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@441.3--441.111) [165812]"}
        diz == diz;
      assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_2 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@441.3--441.111) [165813]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant cursor != null might not hold on entry. Assertion cursor != null might not hold. (testListAppend.vpr@443.15--443.29) [165814]"}
          cursor != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(cursor), write) might not hold on entry. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@444.15--444.46) [165815]"}
            perm <= Mask[null, List__state(cursor)];
        }
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
        assert {:msg "  Loop invariant suffix == List__contents(cursor) might not hold on entry. Assertion suffix == List__contents(cursor) might not hold. (testListAppend.vpr@445.15--445.47) [165816]"}
          Seq#Equal(suffix, List__contents(Heap, cursor));
        assert {:msg "  Loop invariant prefix ++ suffix == L1 might not hold on entry. Assertion prefix ++ suffix == L1 might not hold. (testListAppend.vpr@446.15--446.37) [165817]"}
          Seq#Equal(Seq#Append(prefix, suffix), L1);
        assert {:msg "  Loop invariant l != null might not hold on entry. Assertion l != null might not hold. (testListAppend.vpr@447.15--447.24) [165818]"}
          l_2 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(l), write) might not hold on entry. There might be insufficient permission to access List__state(l) (testListAppend.vpr@448.15--448.41) [165819]"}
            perm <= Mask[null, List__state(l_2)];
        }
        Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] - perm];
        assert {:msg "  Loop invariant List__contents(l) == L2 might not hold on entry. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@449.15--449.38) [165820]"}
          Seq#Equal(List__contents(Heap, l_2), L2);
        assert {:msg "  Loop invariant vwand != null might not hold on entry. Assertion vwand != null might not hold. (testListAppend.vpr@450.15--450.28) [165821]"}
          vwand != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Wand_list_for_list__valid_wand(vwand), write) might not hold on entry. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@451.15--451.64) [165822]"}
            perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
        }
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1(vwand) == cursor might not hold on entry. Assertion Wand_list_for_list__get_in_1(vwand) == cursor might not hold. (testListAppend.vpr@452.15--452.60) [165823]"}
          Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold on entry. Assertion Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold. (testListAppend.vpr@453.15--453.68) [165824]"}
          Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1(vwand) == diz might not hold on entry. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@454.15--454.58) [165825]"}
          Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold on entry. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@455.15--455.65) [165826]"}
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@445.25--445.47) [165827]"}
              cursor != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@445.25--445.47) [165828]"}
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
        assume l_2 != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of List__contents(l) == L2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function List__contents might not hold. Assertion l != null might not hold. (testListAppend.vpr@449.15--449.32) [165829]"}
              l_2 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(l) (testListAppend.vpr@449.15--449.32) [165830]"}
              NoPerm < perm ==> NoPerm < Mask[null, List__state(l_2)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume Seq#Equal(List__contents(Heap, l_2), L2);
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@452.15--452.50) [165831]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@452.15--452.50) [165832]"}
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@453.15--453.52) [165833]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_in_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@453.15--453.52) [165834]"}
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@454.15--454.51) [165835]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@454.15--454.51) [165836]"}
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@455.15--455.53) [165837]"}
              vwand != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_list_for_list__get_out_1_0 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@455.15--455.53) [165838]"}
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
        assume l_2 != null;
        perm := FullPerm;
        Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Seq#Equal(List__contents(Heap, l_2), L2);
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function List__get_next might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@442.10--442.32) [165839]"}
              cursor != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function List__get_next might not hold. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@442.10--442.32) [165840]"}
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
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@459.5--459.43) [165841]"}
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
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__val (testListAppend.vpr@460.5--460.46) [165842]"}
                HasDirectPerm(Mask, cursor, List__val);
            prefix := Seq#Append(prefix, Seq#Singleton(Heap[cursor, List__val]));
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_82 := List__contents(cursor.List__next) -- testListAppend.vpr@461.5--461.54
            
            // -- Check definedness of List__contents(cursor.List__next)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@461.5--461.54) [165843]"}
                HasDirectPerm(Mask, cursor, List__next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function List__contents might not hold. Assertion cursor.List__next != null might not hold. (testListAppend.vpr@461.21--461.54) [165844]"}
                  Heap[cursor, List__next] != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function List__contents might not hold. There might be insufficient permission to access List__state(cursor.List__next) (testListAppend.vpr@461.21--461.54) [165845]"}
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
              assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@464.5--464.32) [165846]"}
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
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [165847]"}
                diz != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@465.5--465.167) [165848]"}
                current_thread_id >= 0;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [165849]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access tmp.List__val (testListAppend.vpr@465.5--465.167) [165850]"}
                  perm <= Mask[tmp, List__val];
              }
              Mask := Mask[tmp, List__val:=Mask[tmp, List__val] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access tmp.List__next (testListAppend.vpr@465.5--465.167) [165851]"}
                  perm <= Mask[tmp, List__next];
              }
              Mask := Mask[tmp, List__next:=Mask[tmp, List__next] - perm];
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion tmp.List__next == cursor might not hold. (testListAppend.vpr@465.5--465.167) [165852]"}
                Heap[tmp, List__next] == cursor;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion tmp_suffix == Seq(tmp.List__val) ++ suffix might not hold. (testListAppend.vpr@465.5--465.167) [165853]"}
                Seq#Equal(tmp_suffix, Seq#Append(Seq#Singleton(Heap[tmp, List__val]), suffix));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@465.5--465.167) [165854]"}
                vwand != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@465.5--465.167) [165855]"}
                  perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
              }
              Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1(vwand) == tmp might not hold. (testListAppend.vpr@465.5--465.167) [165856]"}
                Wand_list_for_list__get_in_1(Heap, vwand) == tmp;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_in_1_0(vwand) == tmp_suffix ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [165857]"}
                Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(tmp_suffix, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@465.5--465.167) [165858]"}
                Wand_list_for_list__get_out_1(Heap, vwand) == diz;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [165859]"}
                Seq#Equal(Wand_list_for_list__get_out_1_0(Heap, vwand), Seq#Append(L1, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion cursor != null might not hold. (testListAppend.vpr@465.5--465.167) [165860]"}
                cursor != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion cursor == cursor might not hold. (testListAppend.vpr@465.5--465.167) [165861]"}
                cursor == cursor;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion suffix ++ L2 == suffix ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [165862]"}
                Seq#Equal(arg_in_1_0_1, Seq#Append(suffix, L2));
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz != null might not hold. (testListAppend.vpr@465.5--465.167) [165863]"}
                diz != null;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion diz == diz might not hold. (testListAppend.vpr@465.5--465.167) [165864]"}
                diz == diz;
              assert {:msg "  The precondition of method List__Wand_list_for_list_lemma_1 might not hold. Assertion L1 ++ L2 == L1 ++ L2 might not hold. (testListAppend.vpr@465.5--465.167) [165865]"}
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant cursor != null might not be preserved. Assertion cursor != null might not hold. (testListAppend.vpr@443.15--443.29) [165866]"}
          cursor != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(cursor), write) might not be preserved. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@444.15--444.46) [165867]"}
            perm <= Mask[null, List__state(cursor)];
        }
        Mask := Mask[null, List__state(cursor):=Mask[null, List__state(cursor)] - perm];
        assert {:msg "  Loop invariant suffix == List__contents(cursor) might not be preserved. Assertion suffix == List__contents(cursor) might not hold. (testListAppend.vpr@445.15--445.47) [165868]"}
          Seq#Equal(suffix, List__contents(Heap, cursor));
        assert {:msg "  Loop invariant prefix ++ suffix == L1 might not be preserved. Assertion prefix ++ suffix == L1 might not hold. (testListAppend.vpr@446.15--446.37) [165869]"}
          Seq#Equal(Seq#Append(prefix, suffix), L1);
        assert {:msg "  Loop invariant l != null might not be preserved. Assertion l != null might not hold. (testListAppend.vpr@447.15--447.24) [165870]"}
          l_2 != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(List__state(l), write) might not be preserved. There might be insufficient permission to access List__state(l) (testListAppend.vpr@448.15--448.41) [165871]"}
            perm <= Mask[null, List__state(l_2)];
        }
        Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] - perm];
        assert {:msg "  Loop invariant List__contents(l) == L2 might not be preserved. Assertion List__contents(l) == L2 might not hold. (testListAppend.vpr@449.15--449.38) [165872]"}
          Seq#Equal(List__contents(Heap, l_2), L2);
        assert {:msg "  Loop invariant vwand != null might not be preserved. Assertion vwand != null might not hold. (testListAppend.vpr@450.15--450.28) [165873]"}
          vwand != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Wand_list_for_list__valid_wand(vwand), write) might not be preserved. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@451.15--451.64) [165874]"}
            perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
        }
        Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1(vwand) == cursor might not be preserved. Assertion Wand_list_for_list__get_in_1(vwand) == cursor might not hold. (testListAppend.vpr@452.15--452.60) [165875]"}
          Wand_list_for_list__get_in_1(Heap, vwand) == cursor;
        assert {:msg "  Loop invariant Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not be preserved. Assertion Wand_list_for_list__get_in_1_0(vwand) == suffix ++ L2 might not hold. (testListAppend.vpr@453.15--453.68) [165876]"}
          Seq#Equal(Wand_list_for_list__get_in_1_0(Heap, vwand), Seq#Append(suffix, L2));
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1(vwand) == diz might not be preserved. Assertion Wand_list_for_list__get_out_1(vwand) == diz might not hold. (testListAppend.vpr@454.15--454.58) [165877]"}
          Wand_list_for_list__get_out_1(Heap, vwand) == diz;
        assert {:msg "  Loop invariant Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not be preserved. Assertion Wand_list_for_list__get_out_1_0(vwand) == L1 ++ L2 might not hold. (testListAppend.vpr@455.15--455.65) [165878]"}
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
      assume l_2 != null;
      perm := FullPerm;
      Mask := Mask[null, List__state(l_2):=Mask[null, List__state(l_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Seq#Equal(List__contents(Heap, l_2), L2);
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor) (testListAppend.vpr@468.3--468.41) [165881]"}
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
    __flatten_42 := l_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_84 := __flatten_42 -- testListAppend.vpr@470.3--470.31
    __flatten_84 := __flatten_42;
    assume state(Heap, Mask);
  
  // -- Translating statement: cursor.List__next := __flatten_84 -- testListAppend.vpr@471.3--471.36
    assert {:msg "  Assignment might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@471.3--471.36) [165885]"}
      FullPerm == Mask[cursor, List__next];
    Heap := Heap[cursor, List__next:=__flatten_84];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List__state(cursor), write) -- testListAppend.vpr@472.3--472.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access cursor.List__val (testListAppend.vpr@472.3--472.39) [165888]"}
        perm <= Mask[cursor, List__val];
    }
    Mask := Mask[cursor, List__val:=Mask[cursor, List__val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access cursor.List__next (testListAppend.vpr@472.3--472.39) [165890]"}
        perm <= Mask[cursor, List__next];
    }
    Mask := Mask[cursor, List__next:=Mask[cursor, List__next] - perm];
    if (Heap[cursor, List__next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding List__state(cursor) might fail. There might be insufficient permission to access List__state(cursor.List__next) (testListAppend.vpr@472.3--472.39) [165892]"}
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
      assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
        { newPMask[o_3, f_12] }
        Heap[null, List__state#sm(cursor)][o_3, f_12] || Heap[null, List__state#sm(Heap[cursor, List__next])][o_3, f_12] ==> newPMask[o_3, f_12]
      );
      Heap := Heap[null, List__state#sm(cursor):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Wand_list_for_list___apply(vwand, current_thread_id) -- testListAppend.vpr@473.3--473.55
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion vwand != null might not hold. (testListAppend.vpr@473.3--473.55) [165894]"}
        vwand != null;
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testListAppend.vpr@473.3--473.55) [165895]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access Wand_list_for_list__valid_wand(vwand) (testListAppend.vpr@473.3--473.55) [165896]"}
          perm <= Mask[null, Wand_list_for_list__valid_wand(vwand)];
      }
      Mask := Mask[null, Wand_list_for_list__valid_wand(vwand):=Mask[null, Wand_list_for_list__valid_wand(vwand)] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. There might be insufficient permission to access List__state(Wand_list_for_list__get_in_1(vwand)) (testListAppend.vpr@473.3--473.55) [165897]"}
          perm <= Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand))];
      }
      Mask := Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand)):=Mask[null, List__state(Wand_list_for_list__get_in_1(Heap, vwand))] - perm];
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion List__contents(Wand_list_for_list__get_in_1(vwand)) == Wand_list_for_list__get_in_1_0(vwand) might not hold. (testListAppend.vpr@473.3--473.55) [165898]"}
        Seq#Equal(List__contents(Heap, Wand_list_for_list__get_in_1(Heap, vwand)), Wand_list_for_list__get_in_1_0(Heap, vwand));
      assert {:msg "  The precondition of method Wand_list_for_list___apply might not hold. Assertion Wand_list_for_list__get_out_1(vwand) != null might not hold. (testListAppend.vpr@473.3--473.55) [165899]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List__append_iter might not hold. There might be insufficient permission to access List__state(diz) (testListAppend.vpr@420.11--420.39) [165900]"}
        perm <= Mask[null, List__state(diz)];
    }
    Mask := Mask[null, List__state(diz):=Mask[null, List__state(diz)] - perm];
    assert {:msg "  Postcondition of List__append_iter might not hold. Assertion List__contents(diz) == L1 ++ L2 might not hold. (testListAppend.vpr@421.11--421.42) [165901]"}
      Seq#Equal(List__contents(Heap, diz), Seq#Append(L1, L2));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}