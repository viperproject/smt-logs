// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:14:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeWand.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeWand-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_40: Ref, f_46: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_40, f_46] }
  Heap[o_40, $allocated] ==> Heap[Heap[o_40, f_46], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref, f_49: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, f_49] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_45, f_49) ==> Heap[o_45, f_49] == ExhaleHeap[o_45, f_49]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_49: (Field A B) ::
    { ExhaleHeap[o2_20, f_49] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_49] ==> Heap[o2_20, f_49] == ExhaleHeap[o2_20, f_49]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_45: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_45, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_45, $allocated] ==> ExhaleHeap[o_45, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_40: Ref, f_50: (Field A B), v: B ::
  { Heap[o_40, f_50:=v] }
  succHeap(Heap, Heap[o_40, f_50:=v])
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
// - height 6: Tree__tolist
// - height 5: Tree__sorted_list
// - height 4: Wand_state_contains_for_state_contains__get_in_1_0
// - height 3: Wand_state_contains_for_state_contains__get_out_1_0
// - height 2: Wand_state_contains_for_state_contains__get_in_1
// - height 1: Wand_state_contains_for_state_contains__get_out_1
// - height 0: Tree__sorted
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

const unique Wand_state_contains_for_state_contains__lemma: Field NormalField int;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__lemma);
axiom !IsWandField(Wand_state_contains_for_state_contains__lemma);
const unique Wand_state_contains_for_state_contains__in_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__in_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__in_1);
const unique Wand_state_contains_for_state_contains__in_1_0: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__in_1_0);
axiom !IsWandField(Wand_state_contains_for_state_contains__in_1_0);
const unique Wand_state_contains_for_state_contains__out_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__out_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__out_1);
const unique Wand_state_contains_for_state_contains__out_1_0: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__out_1_0);
axiom !IsWandField(Wand_state_contains_for_state_contains__out_1_0);
const unique Wand_state_contains_for_state_contains__this_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__this_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__this_1);
const unique Wand_state_contains_for_state_contains__target_contents_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__target_contents_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__target_contents_1);
const unique Wand_state_contains_for_state_contains__prev_contents_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__prev_contents_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__prev_contents_1);
const unique Wand_state_contains_for_state_contains__prev_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__prev_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__prev_1);
const unique Wand_state_contains_for_state_contains__cur_contents_1: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__cur_contents_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__cur_contents_1);
const unique Wand_state_contains_for_state_contains__top_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__top_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__top_1);
const unique Wand_state_contains_for_state_contains__cur_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__cur_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__cur_1);
const unique Wand_state_contains_for_state_contains__wand_1: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__wand_1);
axiom !IsWandField(Wand_state_contains_for_state_contains__wand_1);
const unique Wand_state_contains_for_state_contains__this_2: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__this_2);
axiom !IsWandField(Wand_state_contains_for_state_contains__this_2);
const unique Wand_state_contains_for_state_contains__target_contents_2: Field NormalField (Seq int);
axiom !IsPredicateField(Wand_state_contains_for_state_contains__target_contents_2);
axiom !IsWandField(Wand_state_contains_for_state_contains__target_contents_2);
const unique Wand_state_contains_for_state_contains__top_2: Field NormalField Ref;
axiom !IsPredicateField(Wand_state_contains_for_state_contains__top_2);
axiom !IsWandField(Wand_state_contains_for_state_contains__top_2);
const unique Tree__data: Field NormalField int;
axiom !IsPredicateField(Tree__data);
axiom !IsWandField(Tree__data);
const unique Tree__left: Field NormalField Ref;
axiom !IsPredicateField(Tree__left);
axiom !IsWandField(Tree__left);
const unique Tree__right: Field NormalField Ref;
axiom !IsPredicateField(Tree__right);
axiom !IsWandField(Tree__right);

// ==================================================
// Translation of function Wand_state_contains_for_state_contains__get_in_1
// ==================================================

// Uninterpreted function definitions
function  Wand_state_contains_for_state_contains__get_in_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_state_contains_for_state_contains__get_in_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_in_1(Heap, diz) }
  Wand_state_contains_for_state_contains__get_in_1(Heap, diz) == Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) && dummyFunction(Wand_state_contains_for_state_contains__get_in_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) }
  dummyFunction(Wand_state_contains_for_state_contains__get_in_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1(Heap, diz) } { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1#triggerStateless(diz), Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> diz != null ==> Wand_state_contains_for_state_contains__get_in_1(Heap, diz) == Heap[diz, Wand_state_contains_for_state_contains__in_1]
);

// Framing axioms
function  Wand_state_contains_for_state_contains__get_in_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) == Wand_state_contains_for_state_contains__get_in_1#frame(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Wand_state_contains_for_state_contains__get_in_1#trigger(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)) ==> diz != null ==> Wand_state_contains_for_state_contains__get_in_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_state_contains_for_state_contains__get_in_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_state_contains_for_state_contains__get_in_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_state_contains_for_state_contains__get_in_1#definedness(diz: Ref) returns (Result: Ref)
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
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__in_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@43.1--49.2) [169125]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1] != null;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]):=UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2] != null;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      }
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@43.1--49.2) [169126]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_state_contains_for_state_contains__in_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__lemma:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__wand_1:=true]];
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_15, f_20] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
          }
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_16, f_21] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[diz, Wand_state_contains_for_state_contains__wand_1])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_state_contains_for_state_contains__in_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion result != null might not hold. (testTreeWand.vpr@46.11--46.25) [169127]"}
      Result != null;
}

// ==================================================
// Translation of function Wand_state_contains_for_state_contains__get_in_1_0
// ==================================================

// Uninterpreted function definitions
function  Wand_state_contains_for_state_contains__get_in_1_0(Heap: HeapType, diz: Ref): Seq int;
function  Wand_state_contains_for_state_contains__get_in_1_0'(Heap: HeapType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_in_1_0(Heap, diz) }
  Wand_state_contains_for_state_contains__get_in_1_0(Heap, diz) == Wand_state_contains_for_state_contains__get_in_1_0'(Heap, diz) && dummyFunction(Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_in_1_0'(Heap, diz) }
  dummyFunction(Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1_0(Heap, diz) } { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless(diz), Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> diz != null ==> Wand_state_contains_for_state_contains__get_in_1_0(Heap, diz) == Heap[diz, Wand_state_contains_for_state_contains__in_1_0]
);

// Framing axioms
function  Wand_state_contains_for_state_contains__get_in_1_0#frame(frame: FrameType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_in_1_0'(Heap, diz) }
  state(Heap, Mask) ==> Wand_state_contains_for_state_contains__get_in_1_0'(Heap, diz) == Wand_state_contains_for_state_contains__get_in_1_0#frame(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  Wand_state_contains_for_state_contains__get_in_1_0#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_state_contains_for_state_contains__get_in_1_0#triggerStateless(diz: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Wand_state_contains_for_state_contains__get_in_1_0#definedness(diz: Ref) returns (Result: (Seq int))
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
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__in_1_0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@51.1--56.2) [169128]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1] != null;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]):=UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2] != null;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      }
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@51.1--56.2) [169129]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_state_contains_for_state_contains__in_1_0);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__lemma:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__wand_1:=true]];
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_52, f_55] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
          }
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_53, f_56] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[diz, Wand_state_contains_for_state_contains__wand_1])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_state_contains_for_state_contains__in_1_0];
}

// ==================================================
// Translation of function Wand_state_contains_for_state_contains__get_out_1
// ==================================================

// Uninterpreted function definitions
function  Wand_state_contains_for_state_contains__get_out_1(Heap: HeapType, diz: Ref): Ref;
function  Wand_state_contains_for_state_contains__get_out_1'(Heap: HeapType, diz: Ref): Ref;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_out_1(Heap, diz) }
  Wand_state_contains_for_state_contains__get_out_1(Heap, diz) == Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) && dummyFunction(Wand_state_contains_for_state_contains__get_out_1#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) }
  dummyFunction(Wand_state_contains_for_state_contains__get_out_1#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1(Heap, diz) } { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1#triggerStateless(diz), Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> diz != null ==> Wand_state_contains_for_state_contains__get_out_1(Heap, diz) == Heap[diz, Wand_state_contains_for_state_contains__out_1]
);

// Framing axioms
function  Wand_state_contains_for_state_contains__get_out_1#frame(frame: FrameType, diz: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) }
  state(Heap, Mask) ==> Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) == Wand_state_contains_for_state_contains__get_out_1#frame(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || Wand_state_contains_for_state_contains__get_out_1#trigger(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)) ==> diz != null ==> Wand_state_contains_for_state_contains__get_out_1'(Heap, diz) != null
);

// Trigger function (controlling recursive postconditions)
function  Wand_state_contains_for_state_contains__get_out_1#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_state_contains_for_state_contains__get_out_1#triggerStateless(diz: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Wand_state_contains_for_state_contains__get_out_1#definedness(diz: Ref) returns (Result: Ref)
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__out_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@58.1--64.2) [169130]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1] != null;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]):=UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2] != null;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      }
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@58.1--64.2) [169131]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_state_contains_for_state_contains__out_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__lemma:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__wand_1:=true]];
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
              { newPMask[o_26, f_29] }
              Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_26, f_29] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_26, f_29] ==> newPMask[o_26, f_29]
            );
            Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
          }
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
            { newPMask[o, f_85] }
            Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o, f_85] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[diz, Wand_state_contains_for_state_contains__wand_1])][o, f_85] ==> newPMask[o, f_85]
          );
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_state_contains_for_state_contains__out_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion result != null might not hold. (testTreeWand.vpr@61.11--61.25) [169132]"}
      Result != null;
}

// ==================================================
// Translation of function Wand_state_contains_for_state_contains__get_out_1_0
// ==================================================

// Uninterpreted function definitions
function  Wand_state_contains_for_state_contains__get_out_1_0(Heap: HeapType, diz: Ref): Seq int;
function  Wand_state_contains_for_state_contains__get_out_1_0'(Heap: HeapType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_out_1_0(Heap, diz) }
  Wand_state_contains_for_state_contains__get_out_1_0(Heap, diz) == Wand_state_contains_for_state_contains__get_out_1_0'(Heap, diz) && dummyFunction(Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__get_out_1_0'(Heap, diz) }
  dummyFunction(Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1_0(Heap, diz) } { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless(diz), Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> diz != null ==> Wand_state_contains_for_state_contains__get_out_1_0(Heap, diz) == Heap[diz, Wand_state_contains_for_state_contains__out_1_0]
);

// Framing axioms
function  Wand_state_contains_for_state_contains__get_out_1_0#frame(frame: FrameType, diz: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), Wand_state_contains_for_state_contains__get_out_1_0'(Heap, diz) }
  state(Heap, Mask) ==> Wand_state_contains_for_state_contains__get_out_1_0'(Heap, diz) == Wand_state_contains_for_state_contains__get_out_1_0#frame(Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  Wand_state_contains_for_state_contains__get_out_1_0#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  Wand_state_contains_for_state_contains__get_out_1_0#triggerStateless(diz: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Wand_state_contains_for_state_contains__get_out_1_0#definedness(diz: Ref) returns (Result: (Seq int))
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
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__out_1_0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@66.1--71.2) [169133]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 1 <= UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma];
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1] != null;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
        assume Seq#Length(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=UnfoldingMask[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(UnfoldingHeap, UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]):=UnfoldingMask[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_in_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Wand_state_contains_for_state_contains__get_out_1(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]) == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(UnfoldingHeap, UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      }
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2:=UnfoldingMask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2] != null;
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
        assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1] == UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2];
        assume Seq#Equal(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0], UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      }
      assume UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@66.1--71.2) [169134]"}
        HasDirectPerm(UnfoldingMask, diz, Wand_state_contains_for_state_contains__out_1_0);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__lemma:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__in_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__out_1_0:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__prev_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__cur_1:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__wand_1:=true]];
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
              { newPMask[o_11, f_3] }
              Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_11, f_3] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_11, f_3] ==> newPMask[o_11, f_3]
            );
            Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
          }
          havoc newPMask;
          assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
            { newPMask[o_35, f_17] }
            Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][o_35, f_17] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[diz, Wand_state_contains_for_state_contains__wand_1])][o_35, f_17] ==> newPMask[o_35, f_17]
          );
          Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=newPMask];
        }
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__this_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__target_contents_2:=true]];
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(diz)][diz, Wand_state_contains_for_state_contains__top_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, Wand_state_contains_for_state_contains__out_1_0];
}

// ==================================================
// Translation of function Tree__tolist
// ==================================================

// Uninterpreted function definitions
function  Tree__tolist(Heap: HeapType, t_2: Ref): Seq int;
function  Tree__tolist'(Heap: HeapType, t_2: Ref): Seq int;
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__tolist(Heap, t_2) }
  Tree__tolist(Heap, t_2) == Tree__tolist'(Heap, t_2) && dummyFunction(Tree__tolist#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__tolist'(Heap, t_2) }
  dummyFunction(Tree__tolist#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__tolist(Heap, t_2) } { state(Heap, Mask), Tree__tolist#triggerStateless(t_2), Tree__state#trigger(Heap, Tree__state(t_2)), Tree__state#trigger(Heap, Tree__state(t_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> Tree__tolist(Heap, t_2) == (if t_2 == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(Tree__tolist'(Heap, Heap[t_2, Tree__left]), Seq#Singleton(Heap[t_2, Tree__data])), Tree__tolist'(Heap, Heap[t_2, Tree__right])))
);

// Framing axioms
function  Tree__tolist#frame(frame: FrameType, t_2: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__tolist'(Heap, t_2) } { state(Heap, Mask), Tree__tolist#triggerStateless(t_2), Tree__state#trigger(Heap, Tree__state(t_2)), Tree__state#trigger(Heap, Tree__state(t_2)) }
  state(Heap, Mask) ==> Tree__tolist'(Heap, t_2) == Tree__tolist#frame(FrameFragment((if t_2 != null then Heap[null, Tree__state(t_2)] else EmptyFrame)), t_2)
);

// Trigger function (controlling recursive postconditions)
function  Tree__tolist#trigger(frame: FrameType, t_2: Ref): bool;

// State-independent trigger function
function  Tree__tolist#triggerStateless(t_2: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure Tree__tolist#definedness(t_2: Ref) returns (Result: (Seq int))
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
    assume Heap[t_2, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    if (t_2 != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (t == null ? Seq[Int]() : (unfolding acc(Tree__state(t), write) in Tree__tolist(t.Tree__left) ++ Seq(t.Tree__data) ++ Tree__tolist(t.Tree__right)))
      if (t_2 == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Tree__state#trigger(UnfoldingHeap, Tree__state(t_2));
        assume UnfoldingHeap[null, Tree__state(t_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__data]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__left]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, Tree__right]), CombineFrames(FrameFragment((if UnfoldingHeap[t_2, Tree__left] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t_2, Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] else EmptyFrame))))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree__state(t) (testTreeWand.vpr@73.1--77.2) [169135]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(t_2)];
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__data:=UnfoldingMask[t_2, Tree__data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__left:=UnfoldingMask[t_2, Tree__left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, Tree__right:=UnfoldingMask[t_2, Tree__right] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[t_2, Tree__left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(t_2), UnfoldingHeap[null, Tree__state(t_2)], Tree__state(UnfoldingHeap[t_2, Tree__left]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t_2, Tree__right] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right]):=UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(t_2), UnfoldingHeap[null, Tree__state(t_2)], Tree__state(UnfoldingHeap[t_2, Tree__right]), UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__left (testTreeWand.vpr@73.1--77.2) [169136]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[t_2, Tree__left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeWand.vpr@76.70--76.96) [169137]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Tree__tolist#trigger(FrameFragment((if UnfoldingHeap[t_2, Tree__left] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__left])] else EmptyFrame)), UnfoldingHeap[t_2, Tree__left]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__data (testTreeWand.vpr@73.1--77.2) [169138]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__right (testTreeWand.vpr@73.1--77.2) [169139]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__right);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[t_2, Tree__right] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t.Tree__right) (testTreeWand.vpr@76.121--76.148) [169140]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, Tree__state(UnfoldingHeap[t_2, Tree__right])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Tree__tolist#trigger(FrameFragment((if UnfoldingHeap[t_2, Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[t_2, Tree__right])] else EmptyFrame)), UnfoldingHeap[t_2, Tree__right]);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__data:=true]];
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__left:=true]];
          Heap := Heap[null, Tree__state#sm(t_2):=Heap[null, Tree__state#sm(t_2)][t_2, Tree__right:=true]];
          if (Heap[t_2, Tree__left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
              { newPMask[o_1, f_11] }
              Heap[null, Tree__state#sm(t_2)][o_1, f_11] || Heap[null, Tree__state#sm(Heap[t_2, Tree__left])][o_1, f_11] ==> newPMask[o_1, f_11]
            );
            Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
          }
          if (Heap[t_2, Tree__right] != null) {
            havoc newPMask;
            assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
              { newPMask[o_12, f_9] }
              Heap[null, Tree__state#sm(t_2)][o_12, f_9] || Heap[null, Tree__state#sm(Heap[t_2, Tree__right])][o_12, f_9] ==> newPMask[o_12, f_9]
            );
            Heap := Heap[null, Tree__state#sm(t_2):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if t_2 == null then (Seq#Empty(): Seq int) else Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[t_2, Tree__left]), Seq#Singleton(Heap[t_2, Tree__data])), Tree__tolist(Heap, Heap[t_2, Tree__right])));
}

// ==================================================
// Translation of function Tree__sorted_list
// ==================================================

// Uninterpreted function definitions
function  Tree__sorted_list(Heap: HeapType, s_2: (Seq int)): bool;
function  Tree__sorted_list'(Heap: HeapType, s_2: (Seq int)): bool;
axiom (forall Heap: HeapType, s_2: (Seq int) ::
  { Tree__sorted_list(Heap, s_2) }
  Tree__sorted_list(Heap, s_2) == Tree__sorted_list'(Heap, s_2) && dummyFunction(Tree__sorted_list#triggerStateless(s_2))
);
axiom (forall Heap: HeapType, s_2: (Seq int) ::
  { Tree__sorted_list'(Heap, s_2) }
  dummyFunction(Tree__sorted_list#triggerStateless(s_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Seq int) ::
  { state(Heap, Mask), Tree__sorted_list(Heap, s_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> Tree__sorted_list(Heap, s_2) == (forall i: int, j_9: int ::
    { Seq#Index(s_2, i), Seq#Index(s_2, j_9) }
    0 <= i && (i < j_9 && j_9 < Seq#Length(s_2)) ==> Seq#Index(s_2, i) <= Seq#Index(s_2, j_9)
  )
);

// Framing axioms
function  Tree__sorted_list#frame(frame: FrameType, s_2: (Seq int)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Seq int) ::
  { state(Heap, Mask), Tree__sorted_list'(Heap, s_2) }
  state(Heap, Mask) ==> Tree__sorted_list'(Heap, s_2) == Tree__sorted_list#frame(EmptyFrame, s_2)
);

// Trigger function (controlling recursive postconditions)
function  Tree__sorted_list#trigger(frame: FrameType, s_2: (Seq int)): bool;

// State-independent trigger function
function  Tree__sorted_list#triggerStateless(s_2: (Seq int)): bool;

// Check contract well-formedness and postcondition
procedure Tree__sorted_list#definedness(s_2: (Seq int)) returns (Result: bool)
  modifies Heap, Mask;
{
  var i_33: int;
  var j_17: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall i: Int, j: Int :: { s[i], s[j] } 0 <= i && (i < j && j < |s|) ==> s[i] <= s[j])
      if (*) {
        if (0 <= i_33 && (i_33 < j_17 && j_17 < Seq#Length(s_2))) {
          assert {:msg "  Function might not be well-formed. Index s[i] into s might be negative. (testTreeWand.vpr@79.1--83.2) [169141]"}
            i_33 >= 0;
          assert {:msg "  Function might not be well-formed. Index s[i] into s might exceed sequence length. (testTreeWand.vpr@79.1--83.2) [169142]"}
            i_33 < Seq#Length(s_2);
          assert {:msg "  Function might not be well-formed. Index s[j] into s might be negative. (testTreeWand.vpr@79.1--83.2) [169143]"}
            j_17 >= 0;
          assert {:msg "  Function might not be well-formed. Index s[j] into s might exceed sequence length. (testTreeWand.vpr@79.1--83.2) [169144]"}
            j_17 < Seq#Length(s_2);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall i_2_1: int, j_2_1: int ::
      { Seq#Index(s_2, i_2_1), Seq#Index(s_2, j_2_1) }
      0 <= i_2_1 && (i_2_1 < j_2_1 && j_2_1 < Seq#Length(s_2)) ==> Seq#Index(s_2, i_2_1) <= Seq#Index(s_2, j_2_1)
    );
}

// ==================================================
// Translation of function Tree__sorted
// ==================================================

// Uninterpreted function definitions
function  Tree__sorted(Heap: HeapType, t_2: Ref): bool;
function  Tree__sorted'(Heap: HeapType, t_2: Ref): bool;
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__sorted(Heap, t_2) }
  Tree__sorted(Heap, t_2) == Tree__sorted'(Heap, t_2) && dummyFunction(Tree__sorted#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Ref ::
  { Tree__sorted'(Heap, t_2) }
  dummyFunction(Tree__sorted#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__sorted(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Tree__sorted(Heap, t_2) == Tree__sorted_list(Heap, Tree__tolist(Heap, t_2))
);

// Framing axioms
function  Tree__sorted#frame(frame: FrameType, t_2: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), Tree__sorted'(Heap, t_2) }
  state(Heap, Mask) ==> Tree__sorted'(Heap, t_2) == Tree__sorted#frame(FrameFragment((if t_2 != null then Heap[null, Tree__state(t_2)] else EmptyFrame)), t_2)
);

// Trigger function (controlling recursive postconditions)
function  Tree__sorted#trigger(frame: FrameType, t_2: Ref): bool;

// State-independent trigger function
function  Tree__sorted#triggerStateless(t_2: Ref): bool;

// Check contract well-formedness and postcondition
procedure Tree__sorted#definedness(t_2: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[t_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    if (t_2 != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(t_2):=Mask[null, Tree__state(t_2)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of Tree__sorted_list(Tree__tolist(t))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (t_2 != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t) (testTreeWand.vpr@88.21--88.36) [169145]"}
            NoPerm < perm ==> NoPerm < Mask[null, Tree__state(t_2)];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Tree__sorted_list(Heap, Tree__tolist(Heap, t_2));
}

// ==================================================
// Translation of predicate Wand_state_contains_for_state_contains__valid_wand
// ==================================================

type PredicateType_Wand_state_contains_for_state_contains__valid_wand;
function  Wand_state_contains_for_state_contains__valid_wand(diz: Ref): Field PredicateType_Wand_state_contains_for_state_contains__valid_wand FrameType;
function  Wand_state_contains_for_state_contains__valid_wand#sm(diz: Ref): Field PredicateType_Wand_state_contains_for_state_contains__valid_wand PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Wand_state_contains_for_state_contains__valid_wand(diz)) }
  PredicateMaskField(Wand_state_contains_for_state_contains__valid_wand(diz)) == Wand_state_contains_for_state_contains__valid_wand#sm(diz)
);
axiom (forall diz: Ref ::
  { Wand_state_contains_for_state_contains__valid_wand(diz) }
  IsPredicateField(Wand_state_contains_for_state_contains__valid_wand(diz))
);
axiom (forall diz: Ref ::
  { Wand_state_contains_for_state_contains__valid_wand(diz) }
  getPredWandId(Wand_state_contains_for_state_contains__valid_wand(diz)) == 0
);
function  Wand_state_contains_for_state_contains__valid_wand#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Wand_state_contains_for_state_contains__valid_wand#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_state_contains_for_state_contains__valid_wand(diz), Wand_state_contains_for_state_contains__valid_wand(diz2) }
  Wand_state_contains_for_state_contains__valid_wand(diz) == Wand_state_contains_for_state_contains__valid_wand(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Wand_state_contains_for_state_contains__valid_wand#sm(diz), Wand_state_contains_for_state_contains__valid_wand#sm(diz2) }
  Wand_state_contains_for_state_contains__valid_wand#sm(diz) == Wand_state_contains_for_state_contains__valid_wand#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz)) }
  Wand_state_contains_for_state_contains__valid_wand#everUsed(Wand_state_contains_for_state_contains__valid_wand(diz))
);

procedure Wand_state_contains_for_state_contains__valid_wand#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Wand_state_contains_for_state_contains__valid_wand
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__lemma:=Mask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 <= diz.Wand_state_contains_for_state_contains__lemma
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@91.1--93.2) [169146]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    assume 1 <= Heap[diz, Wand_state_contains_for_state_contains__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1:=Mask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@91.1--93.2) [169147]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1);
    assume Heap[diz, Wand_state_contains_for_state_contains__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1_0:=Mask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1:=Mask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@91.1--93.2) [169148]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1);
    assume Heap[diz, Wand_state_contains_for_state_contains__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1_0:=Mask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_1:=Mask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_1:=Mask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__wand_1:=Mask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@91.1--93.2) [169149]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__this_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@91.1--93.2) [169150]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__this_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__this_1] != null;
      
      // -- Check definedness of |diz.Wand_state_contains_for_state_contains__prev_contents_1| > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@91.1--93.2) [169151]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      
      // -- Check definedness of |diz.Wand_state_contains_for_state_contains__cur_contents_1| > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@91.1--93.2) [169152]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__left, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169153]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__data, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169154]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169155]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_1.Tree__right != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169156]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@91.1--93.2) [169157]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
      if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169158]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@91.1--93.2) [169159]"}
            HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
        perm := FullPerm;
        Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
        assume state(Heap, Mask);
      }
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_1.Tree__left == diz.Wand_state_contains_for_state_contains__cur_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169160]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWand.vpr@91.1--93.2) [169161]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@91.1--93.2) [169162]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_1);
      assume Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_contents_1 == diz.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(diz.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@91.1--93.2) [169163]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@91.1--93.2) [169164]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169165]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWand.vpr@91.1--93.2) [169166]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169167]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@91.1--93.2) [169168]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWand.vpr@92.2097--92.2173) [169169]"}
              NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__wand_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169170]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
      
      // -- Check definedness of acc(Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169171]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
      perm := FullPerm;
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__prev_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169172]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@92.2362--92.2462) [169173]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@92.2362--92.2462) [169174]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@91.1--93.2) [169175]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      assume Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__prev_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..]
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169176]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@92.2522--92.2624) [169177]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@92.2522--92.2624) [169178]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@91.1--93.2) [169179]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__top_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169180]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@92.2698--92.2799) [169181]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@92.2698--92.2799) [169182]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@91.1--93.2) [169183]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_1);
      assume Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__target_contents_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@91.1--93.2) [169184]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@92.2858--92.2961) [169185]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@92.2858--92.2961) [169186]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@91.1--93.2) [169187]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_1);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 == diz.Wand_state_contains_for_state_contains__cur_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@91.1--93.2) [169188]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@91.1--93.2) [169189]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1_0 == diz.Wand_state_contains_for_state_contains__cur_contents_1[1..]
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@91.1--93.2) [169190]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@91.1--93.2) [169191]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1 == diz.Wand_state_contains_for_state_contains__top_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@91.1--93.2) [169192]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@91.1--93.2) [169193]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@91.1--93.2) [169194]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@91.1--93.2) [169195]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_1);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__out_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_2:=Mask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_2:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_2:=Mask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@91.1--93.2) [169196]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__this_2 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@91.1--93.2) [169197]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__this_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__this_2] != null;
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 == diz.Wand_state_contains_for_state_contains__top_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@91.1--93.2) [169198]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@91.1--93.2) [169199]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@91.1--93.2) [169200]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@91.1--93.2) [169201]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_2);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1 == diz.Wand_state_contains_for_state_contains__top_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@91.1--93.2) [169202]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@91.1--93.2) [169203]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@91.1--93.2) [169204]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@91.1--93.2) [169205]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_2);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__out_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma <= 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@91.1--93.2) [169206]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    assume Heap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Tree__state
// ==================================================

type PredicateType_Tree__state;
function  Tree__state(diz: Ref): Field PredicateType_Tree__state FrameType;
function  Tree__state#sm(diz: Ref): Field PredicateType_Tree__state PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Tree__state(diz)) }
  PredicateMaskField(Tree__state(diz)) == Tree__state#sm(diz)
);
axiom (forall diz: Ref ::
  { Tree__state(diz) }
  IsPredicateField(Tree__state(diz))
);
axiom (forall diz: Ref ::
  { Tree__state(diz) }
  getPredWandId(Tree__state(diz)) == 1
);
function  Tree__state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Tree__state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Tree__state(diz), Tree__state(diz2) }
  Tree__state(diz) == Tree__state(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Tree__state#sm(diz), Tree__state#sm(diz2) }
  Tree__state#sm(diz) == Tree__state#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Tree__state#trigger(Heap, Tree__state(diz)) }
  Tree__state#everUsed(Tree__state(diz))
);

procedure Tree__state#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Tree__state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__data:=Mask[diz, Tree__data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__left:=Mask[diz, Tree__left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Tree__right:=Mask[diz, Tree__right] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Tree__left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeWand.vpr@95.1--97.2) [169207]"}
        HasDirectPerm(Mask, diz, Tree__left);
    if (Heap[diz, Tree__left] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeWand.vpr@95.1--97.2) [169208]"}
          HasDirectPerm(Mask, diz, Tree__left);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[diz, Tree__left]):=Mask[null, Tree__state(Heap[diz, Tree__left])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of diz.Tree__right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeWand.vpr@95.1--97.2) [169209]"}
        HasDirectPerm(Mask, diz, Tree__right);
    if (Heap[diz, Tree__right] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeWand.vpr@95.1--97.2) [169210]"}
          HasDirectPerm(Mask, diz, Tree__right);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[diz, Tree__right]):=Mask[null, Tree__state(Heap[diz, Tree__right])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Wand_state_contains_for_state_contains___apply
// ==================================================

procedure Wand_state_contains_for_state_contains___apply(diz: Ref, current_thread_id: int) returns ()
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
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_diz: Ref;
  
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
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Tree__state(Wand_state_contains_for_state_contains__get_in_1(diz)), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@103.28--103.81) [169211]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@103.28--103.81) [169212]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, diz))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Tree__tolist(Wand_state_contains_for_state_contains__get_in_1(diz)) == Wand_state_contains_for_state_contains__get_in_1_0(diz)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@104.25--104.78) [169213]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@104.25--104.78) [169214]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
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
        if (Wand_state_contains_for_state_contains__get_in_1(Heap, diz) != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(diz)) (testTreeWand.vpr@104.12--104.79) [169215]"}
            NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, diz))];
        }
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
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@104.83--104.138) [169216]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@104.83--104.138) [169217]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_in_1(Heap, diz)), Wand_state_contains_for_state_contains__get_in_1_0(Heap, diz));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(diz) != null
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@105.12--105.66) [169218]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@105.12--105.66) [169219]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_out_1(Heap, diz) != null;
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
    
    // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@106.31--106.85) [169220]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@106.31--106.85) [169221]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    PostMask := PostMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=PostMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@107.28--107.82) [169222]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@107.28--107.82) [169223]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@107.11--107.84) [169224]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
        }
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
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@107.92--107.148) [169225]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@107.92--107.148) [169226]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Tree__tolist(PostHeap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) -- testTreeWand.vpr@109.3--109.77
    assume Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz));
    assume Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_state_contains_for_state_contains__valid_wand(diz) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@109.3--109.77) [169229]"}
        perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
    }
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Wand_state_contains_for_state_contains__valid_wand(diz))) {
        havoc newVersion;
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__lemma:=Mask[diz, Wand_state_contains_for_state_contains__lemma] + perm];
    assume state(Heap, Mask);
    assume 1 <= Heap[diz, Wand_state_contains_for_state_contains__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1:=Mask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_state_contains_for_state_contains__in_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1_0:=Mask[diz, Wand_state_contains_for_state_contains__in_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1:=Mask[diz, Wand_state_contains_for_state_contains__out_1] + perm];
    assume state(Heap, Mask);
    assume Heap[diz, Wand_state_contains_for_state_contains__out_1] != null;
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1_0:=Mask[diz, Wand_state_contains_for_state_contains__out_1_0] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_1:=Mask[diz, Wand_state_contains_for_state_contains__this_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_1:=Mask[diz, Wand_state_contains_for_state_contains__top_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_1] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__wand_1:=Mask[diz, Wand_state_contains_for_state_contains__wand_1] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
      assume Heap[diz, Wand_state_contains_for_state_contains__this_1] != null;
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
      assume state(Heap, Mask);
      if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        perm := FullPerm;
        Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
        assume state(Heap, Mask);
      }
      assume Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      assume Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
      perm := FullPerm;
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(diz), Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)], Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__prev_1];
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assume state(Heap, Mask);
      assume Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      assume state(Heap, Mask);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__out_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_2:=Mask[diz, Wand_state_contains_for_state_contains__this_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_2:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_2] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_2:=Mask[diz, Wand_state_contains_for_state_contains__top_2] + perm];
    assume state(Heap, Mask);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
      assume Heap[diz, Wand_state_contains_for_state_contains__this_2] != null;
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__out_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    assume Heap[diz, Wand_state_contains_for_state_contains__lemma] <= 2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (diz.Wand_state_contains_for_state_contains__lemma == 1) -- testTreeWand.vpr@110.3--119.4
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 1
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@110.7--110.61) [169235]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
      
      // -- Translating statement: fold acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write) -- testTreeWand.vpr@111.5--111.85
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write)
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@111.5--111.85) [169236]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWand.vpr@111.5--111.85) [169239]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWand.vpr@111.5--111.85) [169241]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@111.5--111.85) [169243]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__left) (testTreeWand.vpr@111.5--111.85) [169245]"}
              perm <= Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])];
          }
          Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]), Heap[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1])], Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])]);
        }
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWand.vpr@111.5--111.85) [169247]"}
              perm <= Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
          }
          Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]), Heap[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1])], Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=Mask[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1])] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Tree__state#trigger(Heap, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]));
        assume Heap[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1])] == CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data]), CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), CombineFrames(FrameFragment((if Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] != null then Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])] else EmptyFrame)), FrameFragment((if Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))))));
        if (!HasDirectPerm(Mask, null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]))) {
          Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=freshVersion];
        }
        Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
        Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
        Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_8: Ref, f_30: (Field A B) ::
            { newPMask[o_8, f_30] }
            Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][o_8, f_30] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])][o_8, f_30] ==> newPMask[o_8, f_30]
          );
          Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=newPMask];
        }
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          havoc newPMask;
          assume (forall <A, B> o_30: Ref, f_8: (Field A B) ::
            { newPMask[o_30, f_8] }
            Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][o_30, f_8] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_30, f_8] ==> newPMask[o_30, f_8]
          );
          Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write) &&
  //   Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) ==
  //   diz.Wand_state_contains_for_state_contains__prev_contents_1[1..] -- testTreeWand.vpr@112.5--112.225
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write)
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@112.12--112.225) [169249]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) (testTreeWand.vpr@112.12--112.225) [169251]"}
            perm <= AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1])];
        }
        AssertMask := AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1]):=AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1])] - perm];
        
        // -- Check definedness of Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..]
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@112.12--112.225) [169252]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_1);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) (testTreeWand.vpr@112.92--112.156) [169253]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[diz, Wand_state_contains_for_state_contains__prev_1])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@112.12--112.225) [169254]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
        assert {:msg "  Assert might fail. Assertion Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWand.vpr@112.12--112.225) [169255]"}
          Seq#Equal(Tree__tolist(AssertHeap, AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1]), Seq#Drop(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_state_contains_for_state_contains___apply(diz.Wand_state_contains_for_state_contains__wand_1,
  //   current_thread_id) -- testTreeWand.vpr@113.5--113.122
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Wand_state_contains_for_state_contains__wand_1
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@113.5--113.122) [169256]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        arg_diz := Heap[diz, Wand_state_contains_for_state_contains__wand_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@113.5--113.122) [169257]"}
            arg_diz != null;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@113.5--113.122) [169258]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@113.5--113.122) [169259]"}
              perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz)];
          }
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1)) (testTreeWand.vpr@113.5--113.122) [169260]"}
              perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz))];
          }
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz))] - perm];
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1)) == Wand_state_contains_for_state_contains__get_in_1_0(diz.Wand_state_contains_for_state_contains__wand_1) might not hold. (testTreeWand.vpr@113.5--113.122) [169261]"}
            Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz)), Wand_state_contains_for_state_contains__get_in_1_0(Heap, arg_diz));
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(diz.Wand_state_contains_for_state_contains__wand_1) != null might not hold. (testTreeWand.vpr@113.5--113.122) [169262]"}
            Wand_state_contains_for_state_contains__get_out_1(Heap, arg_diz) != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, arg_diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, arg_diz))] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, arg_diz)), Wand_state_contains_for_state_contains__get_out_1_0(PreCallHeap, arg_diz));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write) &&
  //   Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) ==
  //   old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) -- testTreeWand.vpr@114.5--114.240
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        
        // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@114.32--114.86) [169263]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@114.32--114.86) [169264]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@114.12--114.240) [169266]"}
            perm <= AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
        }
        AssertMask := AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
        
        // -- Check definedness of Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@114.118--114.172) [169267]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@114.118--114.172) [169268]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@114.101--114.174) [169269]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
            }
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
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@114.182--114.238) [169270]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@114.182--114.238) [169271]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWand.vpr@114.12--114.240) [169272]"}
          Seq#Equal(Tree__tolist(AssertHeap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWand.vpr@115.5--115.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (diz.Wand_state_contains_for_state_contains__lemma == 2) -- testTreeWand.vpr@116.5--119.4
        
        // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 2
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@116.13--116.67) [169273]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
          
          // -- Translating statement: assert acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write) &&
  //   Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) ==
  //   old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) -- testTreeWand.vpr@117.5--117.240
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Heap := AssertHeap;
            ExhaleWellDef0Mask := AssertMask;
            
            // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@117.32--117.86) [169274]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@117.32--117.86) [169275]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@117.12--117.240) [169277]"}
                perm <= AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
            }
            AssertMask := AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
            
            // -- Check definedness of Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := oldHeap;
                ExhaleWellDef1Mask := oldMask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@117.118--117.172) [169278]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@117.118--117.172) [169279]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@117.101--117.174) [169280]"}
                    NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
                }
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
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@117.182--117.238) [169281]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWand.vpr@117.182--117.238) [169282]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWand.vpr@117.12--117.240) [169283]"}
              Seq#Equal(Tree__tolist(AssertHeap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- testTreeWand.vpr@118.5--118.17
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
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWand.vpr@106.11--106.95) [169284]"}
        perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
    }
    Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWand.vpr@107.11--107.149) [169285]"}
      Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains
// ==================================================

procedure Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains(current_thread_id: int) returns (sys__result: Ref)
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
  var __flatten_46: int;
  var __flatten_3: (Seq int);
  var __flatten_47: (Seq int);
  var __flatten_4: (Seq int);
  var __flatten_48: (Seq int);
  var __flatten_5: (Seq int);
  var __flatten_49: (Seq int);
  var __flatten_6: (Seq int);
  var __flatten_50: (Seq int);
  var __flatten_7: (Seq int);
  var __flatten_51: (Seq int);
  var __flatten_8: (Seq int);
  var __flatten_52: (Seq int);
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
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__lemma:=PostMask[sys__result, Wand_state_contains_for_state_contains__lemma] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__lemma == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@125.11--125.148) [169286]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__lemma);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__in_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__in_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@126.11--126.149) [169287]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__in_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=PostMask[sys__result, Wand_state_contains_for_state_contains__in_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@127.11--127.159) [169288]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__in_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__out_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__out_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@128.11--128.151) [169289]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__out_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=PostMask[sys__result, Wand_state_contains_for_state_contains__out_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@129.11--129.161) [169290]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__out_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__this_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__this_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@130.11--130.153) [169291]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__this_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@131.11--131.181) [169292]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__target_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@132.11--132.177) [169293]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__prev_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__prev_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__prev_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@133.11--133.153) [169294]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__prev_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@134.11--134.175) [169295]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__cur_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__top_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__top_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@135.11--135.151) [169296]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__top_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__cur_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__cur_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@136.11--136.151) [169297]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__cur_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__wand_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__wand_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__wand_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@137.11--137.153) [169298]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__wand_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__this_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__this_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@138.11--138.153) [169299]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__this_2);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@139.11--139.181) [169300]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__target_contents_2);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__top_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__top_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@140.11--140.151) [169301]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__top_2);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__top_2] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Wand_state_contains_for_state_contains__lemma, Wand_state_contains_for_state_contains__in_1, Wand_state_contains_for_state_contains__in_1_0, Wand_state_contains_for_state_contains__out_1, Wand_state_contains_for_state_contains__out_1_0, Wand_state_contains_for_state_contains__this_1, Wand_state_contains_for_state_contains__target_contents_1, Wand_state_contains_for_state_contains__prev_contents_1, Wand_state_contains_for_state_contains__prev_1, Wand_state_contains_for_state_contains__cur_contents_1, Wand_state_contains_for_state_contains__top_1, Wand_state_contains_for_state_contains__cur_1, Wand_state_contains_for_state_contains__wand_1, Wand_state_contains_for_state_contains__this_2, Wand_state_contains_for_state_contains__target_contents_2, Wand_state_contains_for_state_contains__top_2) -- testTreeWand.vpr@157.3--157.814
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__lemma:=Mask[diz, Wand_state_contains_for_state_contains__lemma] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1:=Mask[diz, Wand_state_contains_for_state_contains__in_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1_0:=Mask[diz, Wand_state_contains_for_state_contains__in_1_0] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1:=Mask[diz, Wand_state_contains_for_state_contains__out_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__out_1_0:=Mask[diz, Wand_state_contains_for_state_contains__out_1_0] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_1:=Mask[diz, Wand_state_contains_for_state_contains__this_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__prev_1:=Mask[diz, Wand_state_contains_for_state_contains__prev_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_1:=Mask[diz, Wand_state_contains_for_state_contains__top_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__cur_1:=Mask[diz, Wand_state_contains_for_state_contains__cur_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__wand_1:=Mask[diz, Wand_state_contains_for_state_contains__wand_1] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__this_2:=Mask[diz, Wand_state_contains_for_state_contains__this_2] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__target_contents_2:=Mask[diz, Wand_state_contains_for_state_contains__target_contents_2] + FullPerm];
    Mask := Mask[diz, Wand_state_contains_for_state_contains__top_2:=Mask[diz, Wand_state_contains_for_state_contains__top_2] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := 0 -- testTreeWand.vpr@158.3--158.19
    __flatten_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_46 := __flatten_2 -- testTreeWand.vpr@159.3--159.30
    __flatten_46 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__lemma := __flatten_46 -- testTreeWand.vpr@160.3--160.68
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@160.3--160.68) [169302]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__lemma:=__flatten_46];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__in_1 := null -- testTreeWand.vpr@161.3--161.59
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@161.3--161.59) [169303]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__in_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := Seq[Int]() -- testTreeWand.vpr@162.3--162.28
    __flatten_3 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_47 := __flatten_3 -- testTreeWand.vpr@163.3--163.30
    __flatten_47 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__in_1_0 := __flatten_47 -- testTreeWand.vpr@164.3--164.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@164.3--164.69) [169304]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__in_1_0:=__flatten_47];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__out_1 := null -- testTreeWand.vpr@165.3--165.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@165.3--165.60) [169305]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__out_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := Seq[Int]() -- testTreeWand.vpr@166.3--166.28
    __flatten_4 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_48 := __flatten_4 -- testTreeWand.vpr@167.3--167.30
    __flatten_48 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__out_1_0 := __flatten_48 -- testTreeWand.vpr@168.3--168.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@168.3--168.70) [169306]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__out_1_0:=__flatten_48];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__this_1 := null -- testTreeWand.vpr@169.3--169.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@169.3--169.61) [169307]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__this_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__this_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := Seq[Int]() -- testTreeWand.vpr@170.3--170.28
    __flatten_5 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_49 := __flatten_5 -- testTreeWand.vpr@171.3--171.30
    __flatten_49 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__target_contents_1 := __flatten_49 -- testTreeWand.vpr@172.3--172.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@172.3--172.80) [169308]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__target_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__target_contents_1:=__flatten_49];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := Seq[Int]() -- testTreeWand.vpr@173.3--173.28
    __flatten_6 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_50 := __flatten_6 -- testTreeWand.vpr@174.3--174.30
    __flatten_50 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__prev_contents_1 := __flatten_50 -- testTreeWand.vpr@175.3--175.78
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@175.3--175.78) [169309]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1:=__flatten_50];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__prev_1 := null -- testTreeWand.vpr@176.3--176.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@176.3--176.61) [169310]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__prev_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__prev_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := Seq[Int]() -- testTreeWand.vpr@177.3--177.28
    __flatten_7 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_51 := __flatten_7 -- testTreeWand.vpr@178.3--178.30
    __flatten_51 := __flatten_7;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__cur_contents_1 := __flatten_51 -- testTreeWand.vpr@179.3--179.77
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@179.3--179.77) [169311]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1:=__flatten_51];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__top_1 := null -- testTreeWand.vpr@180.3--180.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@180.3--180.60) [169312]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__top_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__top_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__cur_1 := null -- testTreeWand.vpr@181.3--181.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@181.3--181.60) [169313]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__cur_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__cur_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__wand_1 := null -- testTreeWand.vpr@182.3--182.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@182.3--182.61) [169314]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__wand_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__wand_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__this_2 := null -- testTreeWand.vpr@183.3--183.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@183.3--183.61) [169315]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__this_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__this_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := Seq[Int]() -- testTreeWand.vpr@184.3--184.28
    __flatten_8 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_52 := __flatten_8 -- testTreeWand.vpr@185.3--185.30
    __flatten_52 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__target_contents_2 := __flatten_52 -- testTreeWand.vpr@186.3--186.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@186.3--186.80) [169316]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__target_contents_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__target_contents_2:=__flatten_52];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__top_2 := null -- testTreeWand.vpr@187.3--187.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@187.3--187.60) [169317]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__top_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__top_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTreeWand.vpr@188.3--188.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__lemma, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__lemma == 0 &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__in_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__in_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__in_1_0, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__out_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__out_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__out_1_0, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__this_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__this_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__target_contents_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__target_contents_1 ==
  //   Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__prev_contents_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__prev_contents_1 ==
  //   Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__prev_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__prev_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__cur_contents_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__cur_contents_1 ==
  //   Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__top_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__top_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__cur_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__cur_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__wand_1, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__wand_1 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__this_2, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__this_2 == null &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__target_contents_2, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__target_contents_2 ==
  //   Seq[Int]() &&
  //   (acc(sys__result.Wand_state_contains_for_state_contains__top_2, write) &&
  //   sys__result.Wand_state_contains_for_state_contains__top_2 == null)))))))))))))))) -- testTreeWand.vpr@189.3--189.2498
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWand.vpr@189.10--189.2498) [169318]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@189.10--189.2498) [169320]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma:=AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__lemma == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@189.10--189.2498) [169321]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__lemma);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__lemma == 0 might not hold. (testTreeWand.vpr@189.10--189.2498) [169322]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@189.10--189.2498) [169324]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@189.10--189.2498) [169325]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__in_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__in_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169326]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@189.10--189.2498) [169328]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@189.10--189.2498) [169329]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__in_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169330]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@189.10--189.2498) [169332]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@189.10--189.2498) [169333]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__out_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__out_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169334]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@189.10--189.2498) [169336]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@189.10--189.2498) [169337]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__out_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169338]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@189.10--189.2498) [169340]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@189.10--189.2498) [169341]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__this_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__this_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169342]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@189.10--189.2498) [169344]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@189.10--189.2498) [169345]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__target_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169346]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@189.10--189.2498) [169348]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@189.10--189.2498) [169349]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__prev_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169350]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@189.10--189.2498) [169352]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@189.10--189.2498) [169353]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__prev_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__prev_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169354]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@189.10--189.2498) [169356]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@189.10--189.2498) [169357]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__cur_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169358]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@189.10--189.2498) [169360]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@189.10--189.2498) [169361]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__top_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__top_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169362]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@189.10--189.2498) [169364]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@189.10--189.2498) [169365]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__cur_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__cur_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169366]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@189.10--189.2498) [169368]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__wand_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@189.10--189.2498) [169369]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__wand_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__wand_1 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169370]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@189.10--189.2498) [169372]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@189.10--189.2498) [169373]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__this_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__this_2 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169374]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@189.10--189.2498) [169376]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@189.10--189.2498) [169377]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__target_contents_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]() might not hold. (testTreeWand.vpr@189.10--189.2498) [169378]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@189.10--189.2498) [169380]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@189.10--189.2498) [169381]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__top_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__top_2 == null might not hold. (testTreeWand.vpr@189.10--189.2498) [169382]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__top_2] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWand.vpr@190.3--190.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@124.11--124.30) [169383]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@125.11--125.148) [169384]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__lemma];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__lemma:=Mask[sys__result, Wand_state_contains_for_state_contains__lemma] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__lemma == 0 might not hold. (testTreeWand.vpr@125.11--125.148) [169385]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@126.11--126.149) [169386]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__in_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__in_1:=Mask[sys__result, Wand_state_contains_for_state_contains__in_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__in_1 == null might not hold. (testTreeWand.vpr@126.11--126.149) [169387]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@127.11--127.159) [169388]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]() might not hold. (testTreeWand.vpr@127.11--127.159) [169389]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@128.11--128.151) [169390]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__out_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__out_1:=Mask[sys__result, Wand_state_contains_for_state_contains__out_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__out_1 == null might not hold. (testTreeWand.vpr@128.11--128.151) [169391]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@129.11--129.161) [169392]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]() might not hold. (testTreeWand.vpr@129.11--129.161) [169393]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@130.11--130.153) [169394]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__this_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__this_1:=Mask[sys__result, Wand_state_contains_for_state_contains__this_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__this_1 == null might not hold. (testTreeWand.vpr@130.11--130.153) [169395]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@131.11--131.181) [169396]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@131.11--131.181) [169397]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@132.11--132.177) [169398]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@132.11--132.177) [169399]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@133.11--133.153) [169400]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__prev_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__prev_1:=Mask[sys__result, Wand_state_contains_for_state_contains__prev_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__prev_1 == null might not hold. (testTreeWand.vpr@133.11--133.153) [169401]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@134.11--134.175) [169402]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]() might not hold. (testTreeWand.vpr@134.11--134.175) [169403]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@135.11--135.151) [169404]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__top_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__top_1:=Mask[sys__result, Wand_state_contains_for_state_contains__top_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__top_1 == null might not hold. (testTreeWand.vpr@135.11--135.151) [169405]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@136.11--136.151) [169406]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__cur_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__cur_1:=Mask[sys__result, Wand_state_contains_for_state_contains__cur_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__cur_1 == null might not hold. (testTreeWand.vpr@136.11--136.151) [169407]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@137.11--137.153) [169408]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__wand_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__wand_1:=Mask[sys__result, Wand_state_contains_for_state_contains__wand_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__wand_1 == null might not hold. (testTreeWand.vpr@137.11--137.153) [169409]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@138.11--138.153) [169410]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__this_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__this_2:=Mask[sys__result, Wand_state_contains_for_state_contains__this_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__this_2 == null might not hold. (testTreeWand.vpr@138.11--138.153) [169411]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@139.11--139.181) [169412]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]() might not hold. (testTreeWand.vpr@139.11--139.181) [169413]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@140.11--140.151) [169414]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__top_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__top_2:=Mask[sys__result, Wand_state_contains_for_state_contains__top_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__top_2 == null might not hold. (testTreeWand.vpr@140.11--140.151) [169415]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__top_2] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Tree__Wand_state_contains_for_state_contains_lemma_1
// ==================================================

procedure Tree__Wand_state_contains_for_state_contains_lemma_1(diz: Ref, current_thread_id: int, this_1: Ref, target_contents_1: (Seq int), prev_contents_1: (Seq int), prev_1: Ref, cur_contents_1: (Seq int), top_1: Ref, cur_1: Ref, wand_1_1: Ref, in_1: Ref, in_1_0: (Seq int), out_1: Ref, out_1_0: (Seq int)) returns (sys__result: Ref)
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
  var __flatten_9: Ref;
  var __flatten_11: Ref;
  var __flatten_14: Ref;
  var __flatten_16: Ref;
  var __flatten_17: Ref;
  var __flatten_18: Ref;
  var __flatten_19: Ref;
  var __flatten_21: Ref;
  var __flatten_23: Ref;
  var __flatten_55: Ref;
  var __flatten_58: Ref;
  var __flatten_60: Ref;
  var __flatten_61: Ref;
  var __flatten_62: Ref;
  var __flatten_63: Ref;
  var __flatten_65: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_10: int;
  var __flatten_54: int;
  var __flatten_12: (Seq int);
  var __flatten_56: (Seq int);
  var __flatten_13: (Seq int);
  var __flatten_57: (Seq int);
  var __flatten_15: (Seq int);
  var __flatten_59: (Seq int);
  var __flatten_20: (Seq int);
  var __flatten_64: (Seq int);
  var __flatten_22: (Seq int);
  var __flatten_66: (Seq int);
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
    assume Heap[prev_1, $allocated];
    assume Heap[top_1, $allocated];
    assume Heap[cur_1, $allocated];
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
    assume Seq#Length(prev_contents_1) > 0;
    assume state(Heap, Mask);
    assume Seq#Length(cur_contents_1) > 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume prev_1 != null;
    Mask := Mask[prev_1, Tree__left:=Mask[prev_1, Tree__left] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume prev_1 != null;
    Mask := Mask[prev_1, Tree__data:=Mask[prev_1, Tree__data] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume prev_1 != null;
    Mask := Mask[prev_1, Tree__right:=Mask[prev_1, Tree__right] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of prev_1.Tree__right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWand.vpr@202.12--202.88) [169416]"}
        HasDirectPerm(Mask, prev_1, Tree__right);
    if (Heap[prev_1, Tree__right] != null) {
      
      // -- Check definedness of acc(Tree__state(prev_1.Tree__right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWand.vpr@202.12--202.88) [169417]"}
          HasDirectPerm(Mask, prev_1, Tree__right);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[prev_1, Tree__right]):=Mask[null, Tree__state(Heap[prev_1, Tree__right])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of prev_1.Tree__left == cur_1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__left (testTreeWand.vpr@203.12--203.38) [169418]"}
        HasDirectPerm(Mask, prev_1, Tree__left);
    assume Heap[prev_1, Tree__left] == cur_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of prev_contents_1 == cur_contents_1 ++ Seq(prev_1.Tree__data) ++ Tree__tolist(prev_1.Tree__right)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__data (testTreeWand.vpr@204.12--204.107) [169419]"}
        HasDirectPerm(Mask, prev_1, Tree__data);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWand.vpr@204.12--204.107) [169420]"}
        HasDirectPerm(Mask, prev_1, Tree__right);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[prev_1, Tree__right] != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(prev_1.Tree__right) (testTreeWand.vpr@204.75--204.107) [169421]"}
            NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[prev_1, Tree__right])];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(prev_contents_1, Seq#Append(Seq#Append(cur_contents_1, Seq#Singleton(Heap[prev_1, Tree__data])), Tree__tolist(Heap, Heap[prev_1, Tree__right])));
    assume state(Heap, Mask);
    assume wand_1_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(wand_1) == prev_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion wand_1 != null might not hold. (testTreeWand.vpr@207.12--207.68) [169422]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWand.vpr@207.12--207.68) [169423]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_in_1(Heap, wand_1_1) == prev_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(wand_1) == prev_contents_1[1..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion wand_1 != null might not hold. (testTreeWand.vpr@208.12--208.70) [169424]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWand.vpr@208.12--208.70) [169425]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, wand_1_1), Seq#Drop(prev_contents_1, 1));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(wand_1) == top_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion wand_1 != null might not hold. (testTreeWand.vpr@209.12--209.69) [169426]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWand.vpr@209.12--209.69) [169427]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_out_1(Heap, wand_1_1) == top_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(wand_1) == target_contents_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion wand_1 != null might not hold. (testTreeWand.vpr@210.12--210.71) [169428]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWand.vpr@210.12--210.71) [169429]"}
          NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(wand_1_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, wand_1_1), target_contents_1);
    assume state(Heap, Mask);
    assume in_1 != null;
    assume state(Heap, Mask);
    assume in_1 == cur_1;
    assume state(Heap, Mask);
    assume Seq#Equal(in_1_0, Seq#Drop(cur_contents_1, 1));
    assume state(Heap, Mask);
    assume out_1 != null;
    assume state(Heap, Mask);
    assume out_1 == top_1;
    assume state(Heap, Mask);
    assume Seq#Equal(out_1_0, target_contents_1);
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
    PostMask := PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@219.11--219.72) [169430]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@219.11--219.72) [169431]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_in_1(PostHeap, sys__result) == in_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@220.11--220.74) [169432]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@220.11--220.74) [169433]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(PostHeap, sys__result), in_1_0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@221.11--221.73) [169434]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@221.11--221.73) [169435]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_out_1(PostHeap, sys__result) == out_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@222.11--222.75) [169436]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@222.11--222.75) [169437]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(PostHeap, sys__result), out_1_0);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_9, $allocated];
    assume Heap[__flatten_11, $allocated];
    assume Heap[__flatten_14, $allocated];
    assume Heap[__flatten_16, $allocated];
    assume Heap[__flatten_17, $allocated];
    assume Heap[__flatten_18, $allocated];
    assume Heap[__flatten_19, $allocated];
    assume Heap[__flatten_21, $allocated];
    assume Heap[__flatten_23, $allocated];
    assume Heap[__flatten_55, $allocated];
    assume Heap[__flatten_58, $allocated];
    assume Heap[__flatten_60, $allocated];
    assume Heap[__flatten_61, $allocated];
    assume Heap[__flatten_62, $allocated];
    assume Heap[__flatten_63, $allocated];
    assume Heap[__flatten_65, $allocated];
  
  // -- Translating statement: __flatten_9 := Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains(current_thread_id) -- testTreeWand.vpr@253.3--253.115
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@253.3--253.115) [169438]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_9;
    
    // -- Inhaling postcondition
      assume __flatten_9 != null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__lemma:=Mask[__flatten_9, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__lemma] == 0;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__in_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__in_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__in_1_0:=Mask[__flatten_9, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__out_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__out_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__out_1_0:=Mask[__flatten_9, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__this_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__this_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__target_contents_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__prev_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__prev_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__top_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__top_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__cur_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__cur_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__wand_1:=Mask[__flatten_9, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__wand_1] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__this_2:=Mask[__flatten_9, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__this_2] == null;
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__target_contents_2:=Mask[__flatten_9, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_9, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_9 != null;
      Mask := Mask[__flatten_9, Wand_state_contains_for_state_contains__top_2:=Mask[__flatten_9, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_9, Wand_state_contains_for_state_contains__top_2] == null;
      assume state(Heap, Mask);
    assume Heap[__flatten_9, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_9 -- testTreeWand.vpr@254.3--254.23
    vwand := __flatten_9;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := 1 -- testTreeWand.vpr@255.3--255.20
    __flatten_10 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_54 := __flatten_10 -- testTreeWand.vpr@256.3--256.31
    __flatten_54 := __flatten_10;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__lemma := __flatten_54 -- testTreeWand.vpr@257.3--257.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@257.3--257.70) [169439]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__lemma:=__flatten_54];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := this_1 -- testTreeWand.vpr@258.3--258.25
    __flatten_11 := this_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_55 := __flatten_11 -- testTreeWand.vpr@259.3--259.31
    __flatten_55 := __flatten_11;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__this_1 := __flatten_55 -- testTreeWand.vpr@260.3--260.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@260.3--260.71) [169440]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__this_1:=__flatten_55];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := target_contents_1 -- testTreeWand.vpr@261.3--261.36
    __flatten_12 := target_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_56 := __flatten_12 -- testTreeWand.vpr@262.3--262.31
    __flatten_56 := __flatten_12;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__target_contents_1 := __flatten_56 -- testTreeWand.vpr@263.3--263.82
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@263.3--263.82) [169441]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1:=__flatten_56];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_13 := prev_contents_1 -- testTreeWand.vpr@264.3--264.34
    __flatten_13 := prev_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_57 := __flatten_13 -- testTreeWand.vpr@265.3--265.31
    __flatten_57 := __flatten_13;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__prev_contents_1 := __flatten_57 -- testTreeWand.vpr@266.3--266.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@266.3--266.80) [169442]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=__flatten_57];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_14 := prev_1 -- testTreeWand.vpr@267.3--267.25
    __flatten_14 := prev_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_58 := __flatten_14 -- testTreeWand.vpr@268.3--268.31
    __flatten_58 := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__prev_1 := __flatten_58 -- testTreeWand.vpr@269.3--269.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@269.3--269.71) [169443]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__prev_1:=__flatten_58];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_15 := cur_contents_1 -- testTreeWand.vpr@270.3--270.33
    __flatten_15 := cur_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_59 := __flatten_15 -- testTreeWand.vpr@271.3--271.31
    __flatten_59 := __flatten_15;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__cur_contents_1 := __flatten_59 -- testTreeWand.vpr@272.3--272.79
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@272.3--272.79) [169444]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=__flatten_59];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_16 := top_1 -- testTreeWand.vpr@273.3--273.24
    __flatten_16 := top_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_60 := __flatten_16 -- testTreeWand.vpr@274.3--274.31
    __flatten_60 := __flatten_16;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__top_1 := __flatten_60 -- testTreeWand.vpr@275.3--275.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@275.3--275.70) [169445]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__top_1:=__flatten_60];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := cur_1 -- testTreeWand.vpr@276.3--276.24
    __flatten_17 := cur_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_61 := __flatten_17 -- testTreeWand.vpr@277.3--277.31
    __flatten_61 := __flatten_17;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__cur_1 := __flatten_61 -- testTreeWand.vpr@278.3--278.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@278.3--278.70) [169446]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__cur_1:=__flatten_61];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := wand_1 -- testTreeWand.vpr@279.3--279.25
    __flatten_18 := wand_1_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_62 := __flatten_18 -- testTreeWand.vpr@280.3--280.31
    __flatten_62 := __flatten_18;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__wand_1 := __flatten_62 -- testTreeWand.vpr@281.3--281.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@281.3--281.71) [169447]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__wand_1:=__flatten_62];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := in_1 -- testTreeWand.vpr@282.3--282.23
    __flatten_19 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_63 := __flatten_19 -- testTreeWand.vpr@283.3--283.31
    __flatten_63 := __flatten_19;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1 := __flatten_63 -- testTreeWand.vpr@284.3--284.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@284.3--284.69) [169448]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1:=__flatten_63];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_20 := in_1_0 -- testTreeWand.vpr@285.3--285.25
    __flatten_20 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_64 := __flatten_20 -- testTreeWand.vpr@286.3--286.31
    __flatten_64 := __flatten_20;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1_0 := __flatten_64 -- testTreeWand.vpr@287.3--287.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@287.3--287.71) [169449]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1_0:=__flatten_64];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := out_1 -- testTreeWand.vpr@288.3--288.24
    __flatten_21 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_65 := __flatten_21 -- testTreeWand.vpr@289.3--289.31
    __flatten_65 := __flatten_21;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1 := __flatten_65 -- testTreeWand.vpr@290.3--290.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@290.3--290.70) [169450]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1:=__flatten_65];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_22 := out_1_0 -- testTreeWand.vpr@291.3--291.26
    __flatten_22 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_66 := __flatten_22 -- testTreeWand.vpr@292.3--292.31
    __flatten_66 := __flatten_22;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1_0 := __flatten_66 -- testTreeWand.vpr@293.3--293.72
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@293.3--293.72) [169451]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1_0:=__flatten_66];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) -- testTreeWand.vpr@294.3--294.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@294.3--294.77) [169453]"}
      Mask[vwand, Wand_state_contains_for_state_contains__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__lemma:=Mask[vwand, Wand_state_contains_for_state_contains__lemma] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_state_contains_for_state_contains__lemma might not hold. (testTreeWand.vpr@294.3--294.77) [169454]"}
      1 <= Heap[vwand, Wand_state_contains_for_state_contains__lemma];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@294.3--294.77) [169455]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1:=Mask[vwand, Wand_state_contains_for_state_contains__in_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 != null might not hold. (testTreeWand.vpr@294.3--294.77) [169456]"}
      Heap[vwand, Wand_state_contains_for_state_contains__in_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@294.3--294.77) [169457]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@294.3--294.77) [169458]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1:=Mask[vwand, Wand_state_contains_for_state_contains__out_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 != null might not hold. (testTreeWand.vpr@294.3--294.77) [169459]"}
      Heap[vwand, Wand_state_contains_for_state_contains__out_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@294.3--294.77) [169460]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@294.3--294.77) [169461]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_1:=Mask[vwand, Wand_state_contains_for_state_contains__this_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@294.3--294.77) [169462]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@294.3--294.77) [169463]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@294.3--294.77) [169464]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@294.3--294.77) [169465]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@294.3--294.77) [169466]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_1:=Mask[vwand, Wand_state_contains_for_state_contains__top_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@294.3--294.77) [169467]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@294.3--294.77) [169468]"}
      Mask[vwand, Wand_state_contains_for_state_contains__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__wand_1:=Mask[vwand, Wand_state_contains_for_state_contains__wand_1] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_1 != null might not hold. (testTreeWand.vpr@294.3--294.77) [169469]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_1] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__prev_contents_1| > 0 might not hold. (testTreeWand.vpr@294.3--294.77) [169470]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__cur_contents_1| > 0 might not hold. (testTreeWand.vpr@294.3--294.77) [169471]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWand.vpr@294.3--294.77) [169473]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWand.vpr@294.3--294.77) [169475]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@294.3--294.77) [169477]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Tree__state(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWand.vpr@294.3--294.77) [169479]"}
            perm <= Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
        }
        Mask := Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] - perm];
        
        // -- Record predicate instance information
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
      }
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169480]"}
        Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_contents_1 == vwand.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) might not hold. (testTreeWand.vpr@294.3--294.77) [169481]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@294.3--294.77) [169482]"}
        Heap[vwand, Wand_state_contains_for_state_contains__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@294.3--294.77) [169484]"}
          perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])];
      }
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169485]"}
        Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__prev_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWand.vpr@294.3--294.77) [169486]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169487]"}
        Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169488]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169489]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__cur_contents_1[1..] might not hold. (testTreeWand.vpr@294.3--294.77) [169490]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169491]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWand.vpr@294.3--294.77) [169492]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@294.3--294.77) [169493]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_2:=Mask[vwand, Wand_state_contains_for_state_contains__this_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@294.3--294.77) [169494]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@294.3--294.77) [169495]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_2:=Mask[vwand, Wand_state_contains_for_state_contains__top_2] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_2 != null might not hold. (testTreeWand.vpr@294.3--294.77) [169496]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_2] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWand.vpr@294.3--294.77) [169497]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWand.vpr@294.3--294.77) [169498]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWand.vpr@294.3--294.77) [169499]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWand.vpr@294.3--294.77) [169500]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__lemma <= 2 might not hold. (testTreeWand.vpr@294.3--294.77) [169501]"}
      Heap[vwand, Wand_state_contains_for_state_contains__lemma] <= 2;
    perm := FullPerm;
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(vwand));
    assume Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] == CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    if (!HasDirectPerm(Mask, null, Wand_state_contains_for_state_contains__valid_wand(vwand))) {
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=freshVersion];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__lemma:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__in_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__in_1_0:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__out_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__out_1_0:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__prev_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__cur_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__wand_1:=true]];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        havoc newPMask;
        assume (forall <A, B> o_23: Ref, f_37: (Field A B) ::
          { newPMask[o_23, f_37] }
          Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_23, f_37] || Heap[null, Tree__state#sm(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_23, f_37] ==> newPMask[o_23, f_37]
        );
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
      }
      havoc newPMask;
      assume (forall <A, B> o_38: Ref, f_27: (Field A B) ::
        { newPMask[o_38, f_27] }
        Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_38, f_27] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])][o_38, f_27] ==> newPMask[o_38, f_27]
      );
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_23 := vwand -- testTreeWand.vpr@295.3--295.24
    __flatten_23 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_23 -- testTreeWand.vpr@296.3--296.30
    sys__result := __flatten_23;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_state_contains_for_state_contains__valid_wand(sys__result), write) &&
  //   (Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 &&
  //   (Wand_state_contains_for_state_contains__get_in_1_0(sys__result) ==
  //   in_1_0 &&
  //   (Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 &&
  //   Wand_state_contains_for_state_contains__get_out_1_0(sys__result) ==
  //   out_1_0)))) -- testTreeWand.vpr@297.3--297.422
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWand.vpr@297.10--297.422) [169503]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@297.10--297.422) [169505]"}
        perm <= AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@297.115--297.176) [169506]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@297.115--297.176) [169507]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWand.vpr@297.10--297.422) [169508]"}
      Wand_state_contains_for_state_contains__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@297.190--297.253) [169509]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@297.190--297.253) [169510]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWand.vpr@297.10--297.422) [169511]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@297.269--297.331) [169512]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@297.269--297.331) [169513]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWand.vpr@297.10--297.422) [169514]"}
      Wand_state_contains_for_state_contains__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@297.346--297.410) [169515]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@297.346--297.410) [169516]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWand.vpr@297.10--297.422) [169517]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWand.vpr@298.3--298.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@217.11--217.30) [169518]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@218.11--218.86) [169519]"}
        perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWand.vpr@219.11--219.80) [169520]"}
      Wand_state_contains_for_state_contains__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWand.vpr@220.11--220.84) [169521]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWand.vpr@221.11--221.82) [169522]"}
      Wand_state_contains_for_state_contains__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWand.vpr@222.11--222.86) [169523]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, sys__result), out_1_0);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Tree__Wand_state_contains_for_state_contains_lemma_2
// ==================================================

procedure Tree__Wand_state_contains_for_state_contains_lemma_2(diz: Ref, current_thread_id: int, this_2: Ref, target_contents_2: (Seq int), top_2: Ref, in_1: Ref, in_1_0: (Seq int), out_1: Ref, out_1_0: (Seq int)) returns (sys__result: Ref)
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
  var __flatten_24: Ref;
  var __flatten_26: Ref;
  var __flatten_28: Ref;
  var __flatten_29: Ref;
  var __flatten_31: Ref;
  var __flatten_33: Ref;
  var __flatten_69: Ref;
  var __flatten_71: Ref;
  var __flatten_72: Ref;
  var __flatten_74: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_25: int;
  var __flatten_68: int;
  var __flatten_27: (Seq int);
  var __flatten_70: (Seq int);
  var __flatten_30: (Seq int);
  var __flatten_73: (Seq int);
  var __flatten_32: (Seq int);
  var __flatten_75: (Seq int);
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
    assume Heap[top_2, $allocated];
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
    assume in_1 == top_2;
    assume state(Heap, Mask);
    assume Seq#Equal(in_1_0, target_contents_2);
    assume state(Heap, Mask);
    assume out_1 != null;
    assume state(Heap, Mask);
    assume out_1 == top_2;
    assume state(Heap, Mask);
    assume Seq#Equal(out_1_0, target_contents_2);
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
    PostMask := PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@313.11--313.72) [169524]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@313.11--313.72) [169525]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_in_1(PostHeap, sys__result) == in_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@314.11--314.74) [169526]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@314.11--314.74) [169527]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(PostHeap, sys__result), in_1_0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@315.11--315.73) [169528]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@315.11--315.73) [169529]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Wand_state_contains_for_state_contains__get_out_1(PostHeap, sys__result) == out_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@316.11--316.75) [169530]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@316.11--316.75) [169531]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(PostHeap, sys__result), out_1_0);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[vwand, $allocated];
    assume Heap[__flatten_24, $allocated];
    assume Heap[__flatten_26, $allocated];
    assume Heap[__flatten_28, $allocated];
    assume Heap[__flatten_29, $allocated];
    assume Heap[__flatten_31, $allocated];
    assume Heap[__flatten_33, $allocated];
    assume Heap[__flatten_69, $allocated];
    assume Heap[__flatten_71, $allocated];
    assume Heap[__flatten_72, $allocated];
    assume Heap[__flatten_74, $allocated];
  
  // -- Translating statement: __flatten_24 := Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains(current_thread_id) -- testTreeWand.vpr@337.3--337.116
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@337.3--337.116) [169532]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_24;
    
    // -- Inhaling postcondition
      assume __flatten_24 != null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__lemma:=Mask[__flatten_24, Wand_state_contains_for_state_contains__lemma] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__lemma] == 0;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__in_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__in_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__in_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__in_1_0:=Mask[__flatten_24, Wand_state_contains_for_state_contains__in_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__out_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__out_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__out_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__out_1_0:=Mask[__flatten_24, Wand_state_contains_for_state_contains__out_1_0] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__this_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__this_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__this_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__target_contents_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__target_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__prev_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__prev_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__prev_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__top_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__top_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__top_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__cur_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__cur_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__cur_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__wand_1:=Mask[__flatten_24, Wand_state_contains_for_state_contains__wand_1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__wand_1] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__this_2:=Mask[__flatten_24, Wand_state_contains_for_state_contains__this_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__this_2] == null;
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__target_contents_2:=Mask[__flatten_24, Wand_state_contains_for_state_contains__target_contents_2] + perm];
      assume state(Heap, Mask);
      assume Seq#Equal(Heap[__flatten_24, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
      perm := FullPerm;
      assume __flatten_24 != null;
      Mask := Mask[__flatten_24, Wand_state_contains_for_state_contains__top_2:=Mask[__flatten_24, Wand_state_contains_for_state_contains__top_2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_24, Wand_state_contains_for_state_contains__top_2] == null;
      assume state(Heap, Mask);
    assume Heap[__flatten_24, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand := __flatten_24 -- testTreeWand.vpr@338.3--338.24
    vwand := __flatten_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_25 := 2 -- testTreeWand.vpr@339.3--339.20
    __flatten_25 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_68 := __flatten_25 -- testTreeWand.vpr@340.3--340.31
    __flatten_68 := __flatten_25;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__lemma := __flatten_68 -- testTreeWand.vpr@341.3--341.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@341.3--341.70) [169533]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__lemma:=__flatten_68];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_26 := this_2 -- testTreeWand.vpr@342.3--342.25
    __flatten_26 := this_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_69 := __flatten_26 -- testTreeWand.vpr@343.3--343.31
    __flatten_69 := __flatten_26;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__this_2 := __flatten_69 -- testTreeWand.vpr@344.3--344.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@344.3--344.71) [169534]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__this_2:=__flatten_69];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_27 := target_contents_2 -- testTreeWand.vpr@345.3--345.36
    __flatten_27 := target_contents_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_70 := __flatten_27 -- testTreeWand.vpr@346.3--346.31
    __flatten_70 := __flatten_27;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__target_contents_2 := __flatten_70 -- testTreeWand.vpr@347.3--347.82
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@347.3--347.82) [169535]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2:=__flatten_70];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_28 := top_2 -- testTreeWand.vpr@348.3--348.24
    __flatten_28 := top_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_71 := __flatten_28 -- testTreeWand.vpr@349.3--349.31
    __flatten_71 := __flatten_28;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__top_2 := __flatten_71 -- testTreeWand.vpr@350.3--350.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@350.3--350.70) [169536]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__top_2:=__flatten_71];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_29 := in_1 -- testTreeWand.vpr@351.3--351.23
    __flatten_29 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_72 := __flatten_29 -- testTreeWand.vpr@352.3--352.31
    __flatten_72 := __flatten_29;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1 := __flatten_72 -- testTreeWand.vpr@353.3--353.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@353.3--353.69) [169537]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1:=__flatten_72];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_30 := in_1_0 -- testTreeWand.vpr@354.3--354.25
    __flatten_30 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_73 := __flatten_30 -- testTreeWand.vpr@355.3--355.31
    __flatten_73 := __flatten_30;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1_0 := __flatten_73 -- testTreeWand.vpr@356.3--356.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@356.3--356.71) [169538]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1_0:=__flatten_73];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_31 := out_1 -- testTreeWand.vpr@357.3--357.24
    __flatten_31 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_74 := __flatten_31 -- testTreeWand.vpr@358.3--358.31
    __flatten_74 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1 := __flatten_74 -- testTreeWand.vpr@359.3--359.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@359.3--359.70) [169539]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1:=__flatten_74];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_32 := out_1_0 -- testTreeWand.vpr@360.3--360.26
    __flatten_32 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_75 := __flatten_32 -- testTreeWand.vpr@361.3--361.31
    __flatten_75 := __flatten_32;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1_0 := __flatten_75 -- testTreeWand.vpr@362.3--362.72
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@362.3--362.72) [169540]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1_0:=__flatten_75];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) -- testTreeWand.vpr@363.3--363.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWand.vpr@363.3--363.77) [169542]"}
      Mask[vwand, Wand_state_contains_for_state_contains__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__lemma:=Mask[vwand, Wand_state_contains_for_state_contains__lemma] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_state_contains_for_state_contains__lemma might not hold. (testTreeWand.vpr@363.3--363.77) [169543]"}
      1 <= Heap[vwand, Wand_state_contains_for_state_contains__lemma];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWand.vpr@363.3--363.77) [169544]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1:=Mask[vwand, Wand_state_contains_for_state_contains__in_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 != null might not hold. (testTreeWand.vpr@363.3--363.77) [169545]"}
      Heap[vwand, Wand_state_contains_for_state_contains__in_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWand.vpr@363.3--363.77) [169546]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWand.vpr@363.3--363.77) [169547]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1:=Mask[vwand, Wand_state_contains_for_state_contains__out_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 != null might not hold. (testTreeWand.vpr@363.3--363.77) [169548]"}
      Heap[vwand, Wand_state_contains_for_state_contains__out_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWand.vpr@363.3--363.77) [169549]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWand.vpr@363.3--363.77) [169550]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_1:=Mask[vwand, Wand_state_contains_for_state_contains__this_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWand.vpr@363.3--363.77) [169551]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWand.vpr@363.3--363.77) [169552]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWand.vpr@363.3--363.77) [169553]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWand.vpr@363.3--363.77) [169554]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWand.vpr@363.3--363.77) [169555]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_1:=Mask[vwand, Wand_state_contains_for_state_contains__top_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWand.vpr@363.3--363.77) [169556]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWand.vpr@363.3--363.77) [169557]"}
      Mask[vwand, Wand_state_contains_for_state_contains__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__wand_1:=Mask[vwand, Wand_state_contains_for_state_contains__wand_1] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_1 != null might not hold. (testTreeWand.vpr@363.3--363.77) [169558]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_1] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__prev_contents_1| > 0 might not hold. (testTreeWand.vpr@363.3--363.77) [169559]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__cur_contents_1| > 0 might not hold. (testTreeWand.vpr@363.3--363.77) [169560]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWand.vpr@363.3--363.77) [169562]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWand.vpr@363.3--363.77) [169564]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWand.vpr@363.3--363.77) [169566]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Tree__state(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWand.vpr@363.3--363.77) [169568]"}
            perm <= Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
        }
        Mask := Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] - perm];
        
        // -- Record predicate instance information
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
      }
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169569]"}
        Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_contents_1 == vwand.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) might not hold. (testTreeWand.vpr@363.3--363.77) [169570]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWand.vpr@363.3--363.77) [169571]"}
        Heap[vwand, Wand_state_contains_for_state_contains__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand.Wand_state_contains_for_state_contains__wand_1) (testTreeWand.vpr@363.3--363.77) [169573]"}
          perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])];
      }
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169574]"}
        Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__prev_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWand.vpr@363.3--363.77) [169575]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169576]"}
        Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169577]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169578]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__cur_contents_1[1..] might not hold. (testTreeWand.vpr@363.3--363.77) [169579]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169580]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWand.vpr@363.3--363.77) [169581]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWand.vpr@363.3--363.77) [169582]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_2:=Mask[vwand, Wand_state_contains_for_state_contains__this_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWand.vpr@363.3--363.77) [169583]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWand.vpr@363.3--363.77) [169584]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_2:=Mask[vwand, Wand_state_contains_for_state_contains__top_2] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_2 != null might not hold. (testTreeWand.vpr@363.3--363.77) [169585]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_2] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWand.vpr@363.3--363.77) [169586]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWand.vpr@363.3--363.77) [169587]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWand.vpr@363.3--363.77) [169588]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWand.vpr@363.3--363.77) [169589]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__lemma <= 2 might not hold. (testTreeWand.vpr@363.3--363.77) [169590]"}
      Heap[vwand, Wand_state_contains_for_state_contains__lemma] <= 2;
    perm := FullPerm;
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(vwand));
    assume Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] == CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(Heap[vwand, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    if (!HasDirectPerm(Mask, null, Wand_state_contains_for_state_contains__valid_wand(vwand))) {
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=freshVersion];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__lemma:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__in_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__in_1_0:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__out_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__out_1_0:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__prev_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__prev_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__cur_contents_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__cur_1:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__wand_1:=true]];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=true]];
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=true]];
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=true]];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        havoc newPMask;
        assume (forall <A, B> o_31: Ref, f_40: (Field A B) ::
          { newPMask[o_31, f_40] }
          Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_31, f_40] || Heap[null, Tree__state#sm(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_31, f_40] ==> newPMask[o_31, f_40]
        );
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
      }
      havoc newPMask;
      assume (forall <A, B> o_24: Ref, f_54: (Field A B) ::
        { newPMask[o_24, f_54] }
        Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_24, f_54] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])][o_24, f_54] ==> newPMask[o_24, f_54]
      );
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := vwand -- testTreeWand.vpr@364.3--364.24
    __flatten_33 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_33 -- testTreeWand.vpr@365.3--365.30
    sys__result := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_state_contains_for_state_contains__valid_wand(sys__result), write) &&
  //   (Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 &&
  //   (Wand_state_contains_for_state_contains__get_in_1_0(sys__result) ==
  //   in_1_0 &&
  //   (Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 &&
  //   Wand_state_contains_for_state_contains__get_out_1_0(sys__result) ==
  //   out_1_0)))) -- testTreeWand.vpr@366.3--366.422
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWand.vpr@366.10--366.422) [169592]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@366.10--366.422) [169594]"}
        perm <= AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@366.115--366.176) [169595]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@366.115--366.176) [169596]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWand.vpr@366.10--366.422) [169597]"}
      Wand_state_contains_for_state_contains__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@366.190--366.253) [169598]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@366.190--366.253) [169599]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWand.vpr@366.10--366.422) [169600]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@366.269--366.331) [169601]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@366.269--366.331) [169602]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWand.vpr@366.10--366.422) [169603]"}
      Wand_state_contains_for_state_contains__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@366.346--366.410) [169604]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@366.346--366.410) [169605]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWand.vpr@366.10--366.422) [169606]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWand.vpr@367.3--367.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@311.11--311.30) [169607]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWand.vpr@312.11--312.86) [169608]"}
        perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWand.vpr@313.11--313.80) [169609]"}
      Wand_state_contains_for_state_contains__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWand.vpr@314.11--314.84) [169610]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWand.vpr@315.11--315.82) [169611]"}
      Wand_state_contains_for_state_contains__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWand.vpr@316.11--316.86) [169612]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, sys__result), out_1_0);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Tree__del_min
// ==================================================

procedure Tree__del_min(diz: Ref, current_thread_id: int, top: Ref) returns (sys__result: Ref)
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
  var prev: Ref;
  var vwand: Ref;
  var left_1: Ref;
  var cur: Ref;
  var __flatten_36: Ref;
  var __flatten_40: Ref;
  var __flatten_41: Ref;
  var __flatten_43: Ref;
  var __flatten_82: Ref;
  var __flatten_76: (Seq int);
  var __flatten_34: (Seq int);
  var orig_contents: (Seq int);
  var __flatten_77: (Seq int);
  var __flatten_35: (Seq int);
  var target_contents: (Seq int);
  var newVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var cur_contents: (Seq int);
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var __flatten_39: (Seq int);
  var __flatten_80: (Seq int);
  var __flatten_38: (Seq int);
  var __flatten_79: (Seq int);
  var __flatten_37: (Seq int);
  var __flatten_78: (Seq int);
  var prev_contents: (Seq int);
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var arg_in_1_0: (Seq int);
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[top, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume top != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Tree__state(top):=Mask[null, Tree__state(top)] + perm];
    assume state(Heap, Mask);
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
    if (sys__result != null) {
      perm := FullPerm;
      PostMask := PostMask[null, Tree__state(sys__result):=PostMask[null, Tree__state(sys__result)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(Tree__tolist(top))[1..] == Tree__tolist(sys__result)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@376.15--376.32) [169613]"}
            NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
        }
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        if (sys__result != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@376.42--376.67) [169614]"}
            NoPerm < perm ==> NoPerm < PostMask[null, Tree__state(sys__result)];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(PostHeap, sys__result));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(Tree__sorted(top))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@377.15--377.32) [169615]"}
            NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
        }
        // Finish exhale
        // Stop execution
        assume false;
      }
    if (Tree__sorted(oldHeap, top)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of Tree__sorted(sys__result)
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          if (sys__result != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@377.38--377.63) [169616]"}
              NoPerm < perm ==> NoPerm < PostMask[null, Tree__state(sys__result)];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume Tree__sorted(PostHeap, sys__result);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[prev, $allocated];
    assume Heap[vwand, $allocated];
    assume Heap[left_1, $allocated];
    assume Heap[cur, $allocated];
    assume Heap[__flatten_36, $allocated];
    assume Heap[__flatten_40, $allocated];
    assume Heap[__flatten_41, $allocated];
    assume Heap[__flatten_43, $allocated];
    assume Heap[__flatten_82, $allocated];
  
  // -- Translating statement: __flatten_76 := Tree__tolist(top) -- testTreeWand.vpr@402.3--402.36
    
    // -- Check definedness of Tree__tolist(top)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@402.19--402.36) [169617]"}
            NoPerm < perm ==> NoPerm < Mask[null, Tree__state(top)];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    __flatten_76 := Tree__tolist(Heap, top);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_34 := __flatten_76 -- testTreeWand.vpr@403.3--403.31
    __flatten_34 := __flatten_76;
    assume state(Heap, Mask);
  
  // -- Translating statement: orig_contents := __flatten_34 -- testTreeWand.vpr@404.3--404.32
    orig_contents := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_77 := Tree__tolist(top) -- testTreeWand.vpr@405.3--405.36
    
    // -- Check definedness of Tree__tolist(top)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@405.19--405.36) [169618]"}
            NoPerm < perm ==> NoPerm < Mask[null, Tree__state(top)];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    __flatten_77 := Tree__tolist(Heap, top);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_35 := __flatten_77 -- testTreeWand.vpr@406.3--406.31
    __flatten_35 := __flatten_77;
    assume state(Heap, Mask);
  
  // -- Translating statement: target_contents := __flatten_35[1..] -- testTreeWand.vpr@407.3--407.39
    target_contents := Seq#Drop(__flatten_35, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Tree__state(top), write) -- testTreeWand.vpr@408.3--408.38
    assume Tree__state#trigger(Heap, Tree__state(top));
    assume Heap[null, Tree__state(top)] == CombineFrames(FrameFragment(Heap[top, Tree__data]), CombineFrames(FrameFragment(Heap[top, Tree__left]), CombineFrames(FrameFragment(Heap[top, Tree__right]), CombineFrames(FrameFragment((if Heap[top, Tree__left] != null then Heap[null, Tree__state(Heap[top, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[top, Tree__right] != null then Heap[null, Tree__state(Heap[top, Tree__right])] else EmptyFrame))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree__state(top) might fail. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@408.3--408.38) [169621]"}
        perm <= Mask[null, Tree__state(top)];
    }
    Mask := Mask[null, Tree__state(top):=Mask[null, Tree__state(top)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Tree__state(top))) {
        havoc newVersion;
        Heap := Heap[null, Tree__state(top):=newVersion];
      }
    perm := FullPerm;
    assume top != null;
    Mask := Mask[top, Tree__data:=Mask[top, Tree__data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume top != null;
    Mask := Mask[top, Tree__left:=Mask[top, Tree__left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume top != null;
    Mask := Mask[top, Tree__right:=Mask[top, Tree__right] + perm];
    assume state(Heap, Mask);
    if (Heap[top, Tree__left] != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[top, Tree__left]):=Mask[null, Tree__state(Heap[top, Tree__left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree__state(top), Heap[null, Tree__state(top)], Tree__state(Heap[top, Tree__left]), Heap[null, Tree__state(Heap[top, Tree__left])]);
      assume state(Heap, Mask);
    }
    if (Heap[top, Tree__right] != null) {
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[top, Tree__right]):=Mask[null, Tree__state(Heap[top, Tree__right])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Tree__state(top), Heap[null, Tree__state(top)], Tree__state(Heap[top, Tree__right]), Heap[null, Tree__state(Heap[top, Tree__right])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (top.Tree__left == null) -- testTreeWand.vpr@409.3--478.4
    
    // -- Check definedness of top.Tree__left == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access top.Tree__left (testTreeWand.vpr@409.7--409.29) [169627]"}
        HasDirectPerm(Mask, top, Tree__left);
    if (Heap[top, Tree__left] == null) {
      
      // -- Translating statement: assert orig_contents ==
  //   Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++
  //   Tree__tolist(top.Tree__right) -- testTreeWand.vpr@410.5--410.113
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of orig_contents == Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right)
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__left (testTreeWand.vpr@410.12--410.113) [169628]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[top, Tree__left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__left) (testTreeWand.vpr@410.29--410.57) [169629]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__left])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__data (testTreeWand.vpr@410.12--410.113) [169630]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__data);
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__right (testTreeWand.vpr@410.12--410.113) [169631]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__right);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[top, Tree__right] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__right) (testTreeWand.vpr@410.84--410.113) [169632]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__right])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion orig_contents == Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right) might not hold. (testTreeWand.vpr@410.12--410.113) [169633]"}
          Seq#Equal(orig_contents, Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[top, Tree__left]), Seq#Singleton(Heap[top, Tree__data])), Tree__tolist(Heap, Heap[top, Tree__right])));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert Tree__tolist(top.Tree__left) == Seq[Int]() -- testTreeWand.vpr@411.5--411.54
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of Tree__tolist(top.Tree__left) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__left (testTreeWand.vpr@411.12--411.54) [169634]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[top, Tree__left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__left) (testTreeWand.vpr@411.12--411.40) [169635]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__left])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(top.Tree__left) == Seq[Int]() might not hold. (testTreeWand.vpr@411.12--411.54) [169636]"}
          Seq#Equal(Tree__tolist(Heap, Heap[top, Tree__left]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_36 := top.Tree__right -- testTreeWand.vpr@412.5--412.36
        
        // -- Check definedness of top.Tree__right
          assert {:msg "  Assignment might fail. There might be insufficient permission to access top.Tree__right (testTreeWand.vpr@412.5--412.36) [169637]"}
            HasDirectPerm(Mask, top, Tree__right);
        __flatten_36 := Heap[top, Tree__right];
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_36 -- testTreeWand.vpr@413.5--413.32
        sys__result := __flatten_36;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   (old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) &&
  //   (old(Tree__sorted(top)) ==> Tree__sorted(sys__result))) -- testTreeWand.vpr@418.5--418.196
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@418.12--418.196) [169639]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of old(Tree__tolist(top))[1..] == Tree__tolist(sys__result)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@418.85--418.102) [169640]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@418.112--418.137) [169641]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWand.vpr@418.12--418.196) [169642]"}
          Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(AssertHeap, sys__result));
        
        // -- Check definedness of old(Tree__sorted(top))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@418.147--418.164) [169643]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
        if (Tree__sorted(oldHeap, top)) {
          
          // -- Check definedness of Tree__sorted(sys__result)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              if (sys__result != null) {
                perm := FullPerm;
                assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@418.170--418.195) [169644]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
              }
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assert {:msg "  Assert might fail. Assertion Tree__sorted(sys__result) might not hold. (testTreeWand.vpr@418.12--418.196) [169645]"}
            Tree__sorted(AssertHeap, sys__result);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWand.vpr@420.5--420.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: cur := top -- testTreeWand.vpr@422.5--422.15
        cur := top;
        assume state(Heap, Mask);
      
      // -- Translating statement: left := top.Tree__left -- testTreeWand.vpr@423.5--423.27
        
        // -- Check definedness of top.Tree__left
          assert {:msg "  Assignment might fail. There might be insufficient permission to access top.Tree__left (testTreeWand.vpr@423.5--423.27) [169646]"}
            HasDirectPerm(Mask, top, Tree__left);
        left_1 := Heap[top, Tree__left];
        assume state(Heap, Mask);
      
      // -- Translating statement: cur_contents := orig_contents -- testTreeWand.vpr@424.5--424.34
        cur_contents := orig_contents;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert cur_contents ==
  //   Tree__tolist(left) ++ Seq(top.Tree__data) ++
  //   Tree__tolist(top.Tree__right) -- testTreeWand.vpr@425.5--425.102
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of cur_contents == Tree__tolist(left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (left_1 != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left) (testTreeWand.vpr@425.28--425.46) [169647]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(left_1)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__data (testTreeWand.vpr@425.12--425.102) [169648]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__data);
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__right (testTreeWand.vpr@425.12--425.102) [169649]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__right);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[top, Tree__right] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__right) (testTreeWand.vpr@425.73--425.102) [169650]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__right])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion cur_contents == Tree__tolist(left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right) might not hold. (testTreeWand.vpr@425.12--425.102) [169651]"}
          Seq#Equal(cur_contents, Seq#Append(Seq#Append(Tree__tolist(Heap, left_1), Seq#Singleton(Heap[top, Tree__data])), Tree__tolist(Heap, Heap[top, Tree__right])));
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(Tree__state(left), write) -- testTreeWand.vpr@426.5--426.41
        assume Tree__state#trigger(Heap, Tree__state(left_1));
        assume Heap[null, Tree__state(left_1)] == CombineFrames(FrameFragment(Heap[left_1, Tree__data]), CombineFrames(FrameFragment(Heap[left_1, Tree__left]), CombineFrames(FrameFragment(Heap[left_1, Tree__right]), CombineFrames(FrameFragment((if Heap[left_1, Tree__left] != null then Heap[null, Tree__state(Heap[left_1, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[left_1, Tree__right] != null then Heap[null, Tree__state(Heap[left_1, Tree__right])] else EmptyFrame))))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Tree__state(left) might fail. There might be insufficient permission to access Tree__state(left) (testTreeWand.vpr@426.5--426.41) [169654]"}
            perm <= Mask[null, Tree__state(left_1)];
        }
        Mask := Mask[null, Tree__state(left_1):=Mask[null, Tree__state(left_1)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Tree__state(left_1))) {
            havoc newVersion;
            Heap := Heap[null, Tree__state(left_1):=newVersion];
          }
        perm := FullPerm;
        assume left_1 != null;
        Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume left_1 != null;
        Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume left_1 != null;
        Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] + perm];
        assume state(Heap, Mask);
        if (Heap[left_1, Tree__left] != null) {
          perm := FullPerm;
          Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(left_1), Heap[null, Tree__state(left_1)], Tree__state(Heap[left_1, Tree__left]), Heap[null, Tree__state(Heap[left_1, Tree__left])]);
          assume state(Heap, Mask);
        }
        if (Heap[left_1, Tree__right] != null) {
          perm := FullPerm;
          Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Tree__state(left_1), Heap[null, Tree__state(left_1)], Tree__state(Heap[left_1, Tree__right]), Heap[null, Tree__state(Heap[left_1, Tree__right])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: vwand := Tree__Wand_state_contains_for_state_contains_lemma_2(diz, current_thread_id,
  //   diz, target_contents, top, top, target_contents, top, target_contents) -- testTreeWand.vpr@427.5--427.161
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@427.5--427.161) [169660]"}
            diz != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@427.5--427.161) [169661]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@427.5--427.161) [169662]"}
            diz != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top != null might not hold. (testTreeWand.vpr@427.5--427.161) [169663]"}
            top != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top == top might not hold. (testTreeWand.vpr@427.5--427.161) [169664]"}
            top == top;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWand.vpr@427.5--427.161) [169665]"}
            Seq#Equal(target_contents, target_contents);
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top != null might not hold. (testTreeWand.vpr@427.5--427.161) [169666]"}
            top != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top == top might not hold. (testTreeWand.vpr@427.5--427.161) [169667]"}
            top == top;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWand.vpr@427.5--427.161) [169668]"}
            Seq#Equal(target_contents, target_contents);
        
        // -- Havocing target variables
          havoc vwand;
        
        // -- Inhaling postcondition
          assume vwand != null;
          perm := FullPerm;
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == top;
          assume state(Heap, Mask);
          assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), target_contents);
          assume state(Heap, Mask);
          assume Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
          assume state(Heap, Mask);
          assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
          assume state(Heap, Mask);
        assume Heap[vwand, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: while (left.Tree__left != null) -- testTreeWand.vpr@428.5--465.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__left, write) might not hold on entry. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@429.17--429.43) [169669]"}
                perm <= Mask[cur, Tree__left];
            }
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__data, write) might not hold on entry. There might be insufficient permission to access cur.Tree__data (testTreeWand.vpr@430.17--430.43) [169670]"}
                perm <= Mask[cur, Tree__data];
            }
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__right, write) might not hold on entry. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@431.17--431.44) [169671]"}
                perm <= Mask[cur, Tree__right];
            }
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
            assert {:msg "  Loop invariant cur.Tree__left == left might not hold on entry. Assertion cur.Tree__left == left might not hold. (testTreeWand.vpr@432.17--432.39) [169672]"}
              Heap[cur, Tree__left] == left_1;
            if (Heap[cur, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant cur.Tree__right != null ==> acc(Tree__state(cur.Tree__right), write) might not hold on entry. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWand.vpr@433.17--433.87) [169673]"}
                  perm <= Mask[null, Tree__state(Heap[cur, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] - perm];
            }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__left, write) might not hold on entry. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@434.17--434.44) [169674]"}
                perm <= Mask[left_1, Tree__left];
            }
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__data, write) might not hold on entry. There might be insufficient permission to access left.Tree__data (testTreeWand.vpr@435.17--435.44) [169675]"}
                perm <= Mask[left_1, Tree__data];
            }
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__right, write) might not hold on entry. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@436.17--436.45) [169676]"}
                perm <= Mask[left_1, Tree__right];
            }
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] - perm];
            if (Heap[left_1, Tree__left] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__left != null ==> acc(Tree__state(left.Tree__left), write) might not hold on entry. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWand.vpr@437.17--437.87) [169677]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__left])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] - perm];
            }
            if (Heap[left_1, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__right != null ==> acc(Tree__state(left.Tree__right), write) might not hold on entry. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWand.vpr@438.17--438.89) [169678]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] - perm];
            }
            assert {:msg "  Loop invariant cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold on entry. Assertion cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold. (testTreeWand.vpr@439.17--439.176) [169679]"}
              Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assert {:msg "  Loop invariant vwand != null might not hold on entry. Assertion vwand != null might not hold. (testTreeWand.vpr@440.17--440.30) [169680]"}
              vwand != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) might not hold on entry. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@441.17--441.86) [169681]"}
                perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
            }
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold. (testTreeWand.vpr@442.17--442.79) [169682]"}
              Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold. (testTreeWand.vpr@443.17--443.95) [169683]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWand.vpr@444.17--444.80) [169684]"}
              Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWand.vpr@445.17--445.94) [169685]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc vwand, cur_contents, __flatten_39, __flatten_80, __flatten_38, __flatten_79, __flatten_37, __flatten_78, left_1, cur, prev_contents, prev, __flatten_40;
          assume Heap[vwand, $allocated];
          assume Heap[left_1, $allocated];
          assume Heap[cur, $allocated];
          assume Heap[prev, $allocated];
          assume Heap[__flatten_40, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of cur.Tree__left == left
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@432.17--432.39) [169686]"}
                HasDirectPerm(Mask, cur, Tree__left);
            assume Heap[cur, Tree__left] == left_1;
            assume state(Heap, Mask);
            
            // -- Check definedness of cur.Tree__right != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@433.17--433.87) [169687]"}
                HasDirectPerm(Mask, cur, Tree__right);
            if (Heap[cur, Tree__right] != null) {
              
              // -- Check definedness of acc(Tree__state(cur.Tree__right), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@433.17--433.87) [169688]"}
                  HasDirectPerm(Mask, cur, Tree__right);
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of left.Tree__left != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@437.17--437.87) [169689]"}
                HasDirectPerm(Mask, left_1, Tree__left);
            if (Heap[left_1, Tree__left] != null) {
              
              // -- Check definedness of acc(Tree__state(left.Tree__left), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@437.17--437.87) [169690]"}
                  HasDirectPerm(Mask, left_1, Tree__left);
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            
            // -- Check definedness of left.Tree__right != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@438.17--438.89) [169691]"}
                HasDirectPerm(Mask, left_1, Tree__right);
            if (Heap[left_1, Tree__right] != null) {
              
              // -- Check definedness of acc(Tree__state(left.Tree__right), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@438.17--438.89) [169692]"}
                  HasDirectPerm(Mask, left_1, Tree__right);
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@439.17--439.176) [169693]"}
                HasDirectPerm(Mask, left_1, Tree__left);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                if (Heap[left_1, Tree__left] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWand.vpr@439.33--439.62) [169694]"}
                    NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__left])];
                }
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__data (testTreeWand.vpr@439.17--439.176) [169695]"}
                HasDirectPerm(Mask, left_1, Tree__data);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@439.17--439.176) [169696]"}
                HasDirectPerm(Mask, left_1, Tree__right);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                if (Heap[left_1, Tree__right] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWand.vpr@439.90--439.120) [169697]"}
                    NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__right])];
                }
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__data (testTreeWand.vpr@439.17--439.176) [169698]"}
                HasDirectPerm(Mask, cur, Tree__data);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@439.17--439.176) [169699]"}
                HasDirectPerm(Mask, cur, Tree__right);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                if (Heap[cur, Tree__right] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWand.vpr@439.147--439.176) [169700]"}
                    NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[cur, Tree__right])];
                }
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assume state(Heap, Mask);
            assume vwand != null;
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(vwand) == cur
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@442.17--442.72) [169701]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@442.17--442.72) [169702]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..]
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@443.17--443.74) [169703]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@443.17--443.74) [169704]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(vwand) == top
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@444.17--444.73) [169705]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@444.17--444.73) [169706]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@445.17--445.75) [169707]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@445.17--445.75) [169708]"}
                  NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
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
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume cur != null;
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] + perm];
            assume state(Heap, Mask);
            assume Heap[cur, Tree__left] == left_1;
            if (Heap[cur, Tree__right] != null) {
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] + perm];
              assume state(Heap, Mask);
            }
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume left_1 != null;
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] + perm];
            assume state(Heap, Mask);
            if (Heap[left_1, Tree__left] != null) {
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
              assume state(Heap, Mask);
            }
            if (Heap[left_1, Tree__right] != null) {
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assume vwand != null;
            perm := FullPerm;
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assume state(Heap, Mask);
            assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assume state(Heap, Mask);
            assume Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assume state(Heap, Mask);
            assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of left.Tree__left != null
              assert {:msg "  While statement might fail. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@428.12--428.35) [169709]"}
                HasDirectPerm(Mask, left_1, Tree__left);
            assume Heap[left_1, Tree__left] != null;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: prev := cur -- testTreeWand.vpr@447.7--447.18
                prev := cur;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_contents := cur_contents -- testTreeWand.vpr@448.7--448.36
                prev_contents := cur_contents;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur := left -- testTreeWand.vpr@449.7--449.18
                cur := left_1;
                assume state(Heap, Mask);
              
              // -- Translating statement: left := cur.Tree__left -- testTreeWand.vpr@450.7--450.29
                
                // -- Check definedness of cur.Tree__left
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@450.7--450.29) [169710]"}
                    HasDirectPerm(Mask, cur, Tree__left);
                left_1 := Heap[cur, Tree__left];
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(Tree__state(left), write) -- testTreeWand.vpr@451.7--451.43
                assume Tree__state#trigger(Heap, Tree__state(left_1));
                assume Heap[null, Tree__state(left_1)] == CombineFrames(FrameFragment(Heap[left_1, Tree__data]), CombineFrames(FrameFragment(Heap[left_1, Tree__left]), CombineFrames(FrameFragment(Heap[left_1, Tree__right]), CombineFrames(FrameFragment((if Heap[left_1, Tree__left] != null then Heap[null, Tree__state(Heap[left_1, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[left_1, Tree__right] != null then Heap[null, Tree__state(Heap[left_1, Tree__right])] else EmptyFrame))))));
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Tree__state(left) might fail. There might be insufficient permission to access Tree__state(left) (testTreeWand.vpr@451.7--451.43) [169711]"}
                    perm <= Mask[null, Tree__state(left_1)];
                }
                Mask := Mask[null, Tree__state(left_1):=Mask[null, Tree__state(left_1)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, Tree__state(left_1))) {
                    havoc newVersion;
                    Heap := Heap[null, Tree__state(left_1):=newVersion];
                  }
                perm := FullPerm;
                assume left_1 != null;
                Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume left_1 != null;
                Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume left_1 != null;
                Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] + perm];
                assume state(Heap, Mask);
                if (Heap[left_1, Tree__left] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree__state(left_1), Heap[null, Tree__state(left_1)], Tree__state(Heap[left_1, Tree__left]), Heap[null, Tree__state(Heap[left_1, Tree__left])]);
                  assume state(Heap, Mask);
                }
                if (Heap[left_1, Tree__right] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(Tree__state(left_1), Heap[null, Tree__state(left_1)], Tree__state(Heap[left_1, Tree__right]), Heap[null, Tree__state(Heap[left_1, Tree__right])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_78 := Tree__tolist(left.Tree__left) -- testTreeWand.vpr@452.7--452.52
                
                // -- Check definedness of Tree__tolist(left.Tree__left)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@452.7--452.52) [169712]"}
                    HasDirectPerm(Mask, left_1, Tree__left);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (Heap[left_1, Tree__left] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWand.vpr@452.23--452.52) [169713]"}
                        NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__left])];
                    }
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                __flatten_78 := Tree__tolist(Heap, Heap[left_1, Tree__left]);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_37 := __flatten_78 -- testTreeWand.vpr@453.7--453.35
                __flatten_37 := __flatten_78;
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_79 := Tree__tolist(left.Tree__right) -- testTreeWand.vpr@454.7--454.53
                
                // -- Check definedness of Tree__tolist(left.Tree__right)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@454.7--454.53) [169714]"}
                    HasDirectPerm(Mask, left_1, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (Heap[left_1, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWand.vpr@454.23--454.53) [169715]"}
                        NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__right])];
                    }
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                __flatten_79 := Tree__tolist(Heap, Heap[left_1, Tree__right]);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_38 := __flatten_79 -- testTreeWand.vpr@455.7--455.35
                __flatten_38 := __flatten_79;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur_contents := __flatten_37 ++ Seq(left.Tree__data) ++ __flatten_38 -- testTreeWand.vpr@456.7--456.75
                
                // -- Check definedness of __flatten_37 ++ Seq(left.Tree__data) ++ __flatten_38
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__data (testTreeWand.vpr@456.7--456.75) [169716]"}
                    HasDirectPerm(Mask, left_1, Tree__data);
                cur_contents := Seq#Append(Seq#Append(__flatten_37, Seq#Singleton(Heap[left_1, Tree__data])), __flatten_38);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_80 := Tree__tolist(cur.Tree__right) -- testTreeWand.vpr@457.7--457.52
                
                // -- Check definedness of Tree__tolist(cur.Tree__right)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@457.7--457.52) [169717]"}
                    HasDirectPerm(Mask, cur, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    if (Heap[cur, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWand.vpr@457.23--457.52) [169718]"}
                        NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[cur, Tree__right])];
                    }
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                __flatten_80 := Tree__tolist(Heap, Heap[cur, Tree__right]);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_39 := __flatten_80 -- testTreeWand.vpr@458.7--458.35
                __flatten_39 := __flatten_80;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur_contents := cur_contents ++ Seq(cur.Tree__data) ++ __flatten_39 -- testTreeWand.vpr@459.7--459.74
                
                // -- Check definedness of cur_contents ++ Seq(cur.Tree__data) ++ __flatten_39
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__data (testTreeWand.vpr@459.7--459.74) [169719]"}
                    HasDirectPerm(Mask, cur, Tree__data);
                cur_contents := Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[cur, Tree__data])), __flatten_39);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert |prev_contents| > 0 -- testTreeWand.vpr@460.7--460.33
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Assert might fail. Assertion |prev_contents| > 0 might not hold. (testTreeWand.vpr@460.14--460.33) [169720]"}
                  Seq#Length(prev_contents) > 0;
                assume state(Heap, Mask);
              
              // -- Translating statement: assert |cur_contents| > 0 -- testTreeWand.vpr@461.7--461.32
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Assert might fail. Assertion |cur_contents| > 0 might not hold. (testTreeWand.vpr@461.14--461.32) [169721]"}
                  Seq#Length(cur_contents) > 0;
                assume state(Heap, Mask);
              
              // -- Translating statement: assert prev_contents ==
  //   cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) -- testTreeWand.vpr@462.7--462.101
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access prev.Tree__data (testTreeWand.vpr@462.14--462.101) [169722]"}
                    HasDirectPerm(ExhaleWellDef0Mask, prev, Tree__data);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access prev.Tree__right (testTreeWand.vpr@462.14--462.101) [169723]"}
                    HasDirectPerm(ExhaleWellDef0Mask, prev, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    if (ExhaleWellDef0Heap[prev, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(prev.Tree__right) (testTreeWand.vpr@462.71--462.101) [169724]"}
                        NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[prev, Tree__right])];
                    }
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                    ExhaleWellDef0Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) might not hold. (testTreeWand.vpr@462.14--462.101) [169725]"}
                  Seq#Equal(prev_contents, Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[prev, Tree__data])), Tree__tolist(Heap, Heap[prev, Tree__right])));
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_40 := Tree__Wand_state_contains_for_state_contains_lemma_1(diz, current_thread_id,
  //   diz, target_contents, prev_contents, prev, cur_contents, top, cur, vwand,
  //   cur, cur_contents[1..], top, target_contents) -- testTreeWand.vpr@463.7--463.219
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_in_1_0 := Seq#Drop(cur_contents, 1);
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@463.7--463.219) [169726]"}
                    diz != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@463.7--463.219) [169727]"}
                    current_thread_id >= 0;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion diz != null might not hold. (testTreeWand.vpr@463.7--463.219) [169728]"}
                    diz != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion |prev_contents| > 0 might not hold. (testTreeWand.vpr@463.7--463.219) [169729]"}
                    Seq#Length(prev_contents) > 0;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion |cur_contents| > 0 might not hold. (testTreeWand.vpr@463.7--463.219) [169730]"}
                    Seq#Length(cur_contents) > 0;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__left (testTreeWand.vpr@463.7--463.219) [169731]"}
                      perm <= Mask[prev, Tree__left];
                  }
                  Mask := Mask[prev, Tree__left:=Mask[prev, Tree__left] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__data (testTreeWand.vpr@463.7--463.219) [169732]"}
                      perm <= Mask[prev, Tree__data];
                  }
                  Mask := Mask[prev, Tree__data:=Mask[prev, Tree__data] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__right (testTreeWand.vpr@463.7--463.219) [169733]"}
                      perm <= Mask[prev, Tree__right];
                  }
                  Mask := Mask[prev, Tree__right:=Mask[prev, Tree__right] - perm];
                  if (Heap[prev, Tree__right] != null) {
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Tree__state(prev.Tree__right) (testTreeWand.vpr@463.7--463.219) [169734]"}
                        perm <= Mask[null, Tree__state(Heap[prev, Tree__right])];
                    }
                    Mask := Mask[null, Tree__state(Heap[prev, Tree__right]):=Mask[null, Tree__state(Heap[prev, Tree__right])] - perm];
                  }
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion prev.Tree__left == cur might not hold. (testTreeWand.vpr@463.7--463.219) [169735]"}
                    Heap[prev, Tree__left] == cur;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) might not hold. (testTreeWand.vpr@463.7--463.219) [169736]"}
                    Seq#Equal(prev_contents, Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[prev, Tree__data])), Tree__tolist(Heap, Heap[prev, Tree__right])));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@463.7--463.219) [169737]"}
                    vwand != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@463.7--463.219) [169738]"}
                      perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                  }
                  Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == prev might not hold. (testTreeWand.vpr@463.7--463.219) [169739]"}
                    Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == prev;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == prev_contents[1..] might not hold. (testTreeWand.vpr@463.7--463.219) [169740]"}
                    Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(prev_contents, 1));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWand.vpr@463.7--463.219) [169741]"}
                    Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWand.vpr@463.7--463.219) [169742]"}
                    Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur != null might not hold. (testTreeWand.vpr@463.7--463.219) [169743]"}
                    cur != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur == cur might not hold. (testTreeWand.vpr@463.7--463.219) [169744]"}
                    cur == cur;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur_contents[1..] == cur_contents[1..] might not hold. (testTreeWand.vpr@463.7--463.219) [169745]"}
                    Seq#Equal(arg_in_1_0, Seq#Drop(cur_contents, 1));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion top != null might not hold. (testTreeWand.vpr@463.7--463.219) [169746]"}
                    top != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion top == top might not hold. (testTreeWand.vpr@463.7--463.219) [169747]"}
                    top == top;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWand.vpr@463.7--463.219) [169748]"}
                    Seq#Equal(target_contents, target_contents);
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc __flatten_40;
                
                // -- Inhaling postcondition
                  assume __flatten_40 != null;
                  perm := FullPerm;
                  Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(__flatten_40):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(__flatten_40)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                  assume Wand_state_contains_for_state_contains__get_in_1(Heap, __flatten_40) == cur;
                  assume state(Heap, Mask);
                  assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, __flatten_40), arg_in_1_0);
                  assume state(Heap, Mask);
                  assume Wand_state_contains_for_state_contains__get_out_1(Heap, __flatten_40) == top;
                  assume state(Heap, Mask);
                  assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, __flatten_40), target_contents);
                  assume state(Heap, Mask);
                assume Heap[__flatten_40, $allocated];
                assume state(Heap, Mask);
              
              // -- Translating statement: vwand := __flatten_40 -- testTreeWand.vpr@464.7--464.28
                vwand := __flatten_40;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__left, write) might not be preserved. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@429.17--429.43) [169749]"}
                perm <= Mask[cur, Tree__left];
            }
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__data, write) might not be preserved. There might be insufficient permission to access cur.Tree__data (testTreeWand.vpr@430.17--430.43) [169750]"}
                perm <= Mask[cur, Tree__data];
            }
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__right, write) might not be preserved. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@431.17--431.44) [169751]"}
                perm <= Mask[cur, Tree__right];
            }
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
            assert {:msg "  Loop invariant cur.Tree__left == left might not be preserved. Assertion cur.Tree__left == left might not hold. (testTreeWand.vpr@432.17--432.39) [169752]"}
              Heap[cur, Tree__left] == left_1;
            if (Heap[cur, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant cur.Tree__right != null ==> acc(Tree__state(cur.Tree__right), write) might not be preserved. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWand.vpr@433.17--433.87) [169753]"}
                  perm <= Mask[null, Tree__state(Heap[cur, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] - perm];
            }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__left, write) might not be preserved. There might be insufficient permission to access left.Tree__left (testTreeWand.vpr@434.17--434.44) [169754]"}
                perm <= Mask[left_1, Tree__left];
            }
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__data, write) might not be preserved. There might be insufficient permission to access left.Tree__data (testTreeWand.vpr@435.17--435.44) [169755]"}
                perm <= Mask[left_1, Tree__data];
            }
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__right, write) might not be preserved. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@436.17--436.45) [169756]"}
                perm <= Mask[left_1, Tree__right];
            }
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] - perm];
            if (Heap[left_1, Tree__left] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__left != null ==> acc(Tree__state(left.Tree__left), write) might not be preserved. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWand.vpr@437.17--437.87) [169757]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__left])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] - perm];
            }
            if (Heap[left_1, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__right != null ==> acc(Tree__state(left.Tree__right), write) might not be preserved. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWand.vpr@438.17--438.89) [169758]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] - perm];
            }
            assert {:msg "  Loop invariant cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not be preserved. Assertion cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold. (testTreeWand.vpr@439.17--439.176) [169759]"}
              Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assert {:msg "  Loop invariant vwand != null might not be preserved. Assertion vwand != null might not hold. (testTreeWand.vpr@440.17--440.30) [169760]"}
              vwand != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) might not be preserved. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@441.17--441.86) [169761]"}
                perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
            }
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not be preserved. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold. (testTreeWand.vpr@442.17--442.79) [169762]"}
              Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not be preserved. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold. (testTreeWand.vpr@443.17--443.95) [169763]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not be preserved. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWand.vpr@444.17--444.80) [169764]"}
              Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not be preserved. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWand.vpr@445.17--445.94) [169765]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[left_1, Tree__left] != null);
          assume state(Heap, Mask);
          perm := FullPerm;
          assume cur != null;
          Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume cur != null;
          Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume cur != null;
          Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] + perm];
          assume state(Heap, Mask);
          assume Heap[cur, Tree__left] == left_1;
          if (Heap[cur, Tree__right] != null) {
            perm := FullPerm;
            Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] + perm];
            assume state(Heap, Mask);
          }
          perm := FullPerm;
          assume left_1 != null;
          Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume left_1 != null;
          Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume left_1 != null;
          Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] + perm];
          assume state(Heap, Mask);
          if (Heap[left_1, Tree__left] != null) {
            perm := FullPerm;
            Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
            assume state(Heap, Mask);
          }
          if (Heap[left_1, Tree__right] != null) {
            perm := FullPerm;
            Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
            assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
          assume Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
          assume vwand != null;
          perm := FullPerm;
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
          assume state(Heap, Mask);
          assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
          assume state(Heap, Mask);
          assume Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
          assume state(Heap, Mask);
          assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_41 := left.Tree__right -- testTreeWand.vpr@466.5--466.37
        
        // -- Check definedness of left.Tree__right
          assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__right (testTreeWand.vpr@466.5--466.37) [169766]"}
            HasDirectPerm(Mask, left_1, Tree__right);
        __flatten_41 := Heap[left_1, Tree__right];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_82 := __flatten_41 -- testTreeWand.vpr@467.5--467.33
        __flatten_82 := __flatten_41;
        assume state(Heap, Mask);
      
      // -- Translating statement: cur.Tree__left := __flatten_82 -- testTreeWand.vpr@468.5--468.35
        assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@468.5--468.35) [169767]"}
          FullPerm == Mask[cur, Tree__left];
        Heap := Heap[cur, Tree__left:=__flatten_82];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(Tree__state(cur), write) -- testTreeWand.vpr@469.5--469.38
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__data (testTreeWand.vpr@469.5--469.38) [169770]"}
            perm <= Mask[cur, Tree__data];
        }
        Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__left (testTreeWand.vpr@469.5--469.38) [169772]"}
            perm <= Mask[cur, Tree__left];
        }
        Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__right (testTreeWand.vpr@469.5--469.38) [169774]"}
            perm <= Mask[cur, Tree__right];
        }
        Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
        if (Heap[cur, Tree__left] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access Tree__state(cur.Tree__left) (testTreeWand.vpr@469.5--469.38) [169776]"}
              perm <= Mask[null, Tree__state(Heap[cur, Tree__left])];
          }
          Mask := Mask[null, Tree__state(Heap[cur, Tree__left]):=Mask[null, Tree__state(Heap[cur, Tree__left])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(cur), Heap[null, Tree__state(cur)], Tree__state(Heap[cur, Tree__left]), Heap[null, Tree__state(Heap[cur, Tree__left])]);
        }
        if (Heap[cur, Tree__right] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWand.vpr@469.5--469.38) [169778]"}
              perm <= Mask[null, Tree__state(Heap[cur, Tree__right])];
          }
          Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(cur), Heap[null, Tree__state(cur)], Tree__state(Heap[cur, Tree__right]), Heap[null, Tree__state(Heap[cur, Tree__right])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Tree__state(cur):=Mask[null, Tree__state(cur)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Tree__state#trigger(Heap, Tree__state(cur));
        assume Heap[null, Tree__state(cur)] == CombineFrames(FrameFragment(Heap[cur, Tree__data]), CombineFrames(FrameFragment(Heap[cur, Tree__left]), CombineFrames(FrameFragment(Heap[cur, Tree__right]), CombineFrames(FrameFragment((if Heap[cur, Tree__left] != null then Heap[null, Tree__state(Heap[cur, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[cur, Tree__right] != null then Heap[null, Tree__state(Heap[cur, Tree__right])] else EmptyFrame))))));
        if (!HasDirectPerm(Mask, null, Tree__state(cur))) {
          Heap := Heap[null, Tree__state#sm(cur):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Tree__state(cur):=freshVersion];
        }
        Heap := Heap[null, Tree__state#sm(cur):=Heap[null, Tree__state#sm(cur)][cur, Tree__data:=true]];
        Heap := Heap[null, Tree__state#sm(cur):=Heap[null, Tree__state#sm(cur)][cur, Tree__left:=true]];
        Heap := Heap[null, Tree__state#sm(cur):=Heap[null, Tree__state#sm(cur)][cur, Tree__right:=true]];
        if (Heap[cur, Tree__left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_39: Ref, f_48: (Field A B) ::
            { newPMask[o_39, f_48] }
            Heap[null, Tree__state#sm(cur)][o_39, f_48] || Heap[null, Tree__state#sm(Heap[cur, Tree__left])][o_39, f_48] ==> newPMask[o_39, f_48]
          );
          Heap := Heap[null, Tree__state#sm(cur):=newPMask];
        }
        if (Heap[cur, Tree__right] != null) {
          havoc newPMask;
          assume (forall <A, B> o_9: Ref, f_18: (Field A B) ::
            { newPMask[o_9, f_18] }
            Heap[null, Tree__state#sm(cur)][o_9, f_18] || Heap[null, Tree__state#sm(Heap[cur, Tree__right])][o_9, f_18] ==> newPMask[o_9, f_18]
          );
          Heap := Heap[null, Tree__state#sm(cur):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert Tree__tolist(cur) == cur_contents[1..] -- testTreeWand.vpr@470.5--470.50
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of Tree__tolist(cur) == cur_contents[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@470.12--470.29) [169780]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == cur_contents[1..] might not hold. (testTreeWand.vpr@470.12--470.50) [169781]"}
          Seq#Equal(Tree__tolist(Heap, cur), Seq#Drop(cur_contents, 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(cur), write) &&
  //   Tree__tolist(cur) == Tree__tolist(cur) -- testTreeWand.vpr@471.5--471.84
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@471.12--471.84) [169783]"}
            perm <= AssertMask[null, Tree__state(cur)];
        }
        AssertMask := AssertMask[null, Tree__state(cur):=AssertMask[null, Tree__state(cur)] - perm];
        
        // -- Check definedness of Tree__tolist(cur) == Tree__tolist(cur)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@471.45--471.62) [169784]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@471.66--471.83) [169785]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == Tree__tolist(cur) might not hold. (testTreeWand.vpr@471.12--471.84) [169786]"}
          Seq#Equal(Tree__tolist(AssertHeap, cur), Tree__tolist(AssertHeap, cur));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(cur), write) &&
  //   Tree__tolist(cur) == cur_contents[1..] -- testTreeWand.vpr@472.5--472.84
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@472.12--472.84) [169788]"}
            perm <= AssertMask[null, Tree__state(cur)];
        }
        AssertMask := AssertMask[null, Tree__state(cur):=AssertMask[null, Tree__state(cur)] - perm];
        
        // -- Check definedness of Tree__tolist(cur) == cur_contents[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWand.vpr@472.45--472.62) [169789]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == cur_contents[1..] might not hold. (testTreeWand.vpr@472.12--472.84) [169790]"}
          Seq#Equal(Tree__tolist(AssertHeap, cur), Seq#Drop(cur_contents, 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_state_contains_for_state_contains___apply(vwand, current_thread_id) -- testTreeWand.vpr@473.5--473.77
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion vwand != null might not hold. (testTreeWand.vpr@473.5--473.77) [169791]"}
            vwand != null;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWand.vpr@473.5--473.77) [169792]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWand.vpr@473.5--473.77) [169793]"}
              perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
          }
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(vwand)) (testTreeWand.vpr@473.5--473.77) [169794]"}
              perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand))];
          }
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand))] - perm];
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(Wand_state_contains_for_state_contains__get_in_1(vwand)) == Wand_state_contains_for_state_contains__get_in_1_0(vwand) might not hold. (testTreeWand.vpr@473.5--473.77) [169795]"}
            Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_in_1(Heap, vwand)), Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand));
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) != null might not hold. (testTreeWand.vpr@473.5--473.77) [169796]"}
            Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) != null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, vwand)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, vwand))] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_out_1(PreCallHeap, vwand)), Wand_state_contains_for_state_contains__get_out_1_0(PreCallHeap, vwand));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_43 := top -- testTreeWand.vpr@474.5--474.24
        __flatten_43 := top;
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_43 -- testTreeWand.vpr@475.5--475.32
        sys__result := __flatten_43;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   (old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) &&
  //   (old(Tree__sorted(top)) ==> Tree__sorted(sys__result))) -- testTreeWand.vpr@476.5--476.196
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@476.12--476.196) [169798]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of old(Tree__tolist(top))[1..] == Tree__tolist(sys__result)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@476.85--476.102) [169799]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@476.112--476.137) [169800]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWand.vpr@476.12--476.196) [169801]"}
          Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(AssertHeap, sys__result));
        
        // -- Check definedness of old(Tree__sorted(top))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWand.vpr@476.147--476.164) [169802]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
        if (Tree__sorted(oldHeap, top)) {
          
          // -- Check definedness of Tree__sorted(sys__result)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              if (sys__result != null) {
                perm := FullPerm;
                assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@476.170--476.195) [169803]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
              }
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assert {:msg "  Assert might fail. Assertion Tree__sorted(sys__result) might not hold. (testTreeWand.vpr@476.12--476.196) [169804]"}
            Tree__sorted(AssertHeap, sys__result);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWand.vpr@477.5--477.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (sys__result != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Tree__del_min might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWand.vpr@375.11--375.73) [169805]"}
          perm <= Mask[null, Tree__state(sys__result)];
      }
      Mask := Mask[null, Tree__state(sys__result):=Mask[null, Tree__state(sys__result)] - perm];
    }
    assert {:msg "  Postcondition of Tree__del_min might not hold. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWand.vpr@376.11--376.67) [169806]"}
      Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(Heap, sys__result));
    if (Tree__sorted(oldHeap, top)) {
      assert {:msg "  Postcondition of Tree__del_min might not hold. Assertion Tree__sorted(sys__result) might not hold. (testTreeWand.vpr@377.11--377.63) [169807]"}
        Tree__sorted(Heap, sys__result);
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Tree__Tree
// ==================================================

procedure Tree__Tree(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_44: int;
  var __flatten_84: int;
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
    PostMask := PostMask[sys__result, Tree__data:=PostMask[sys__result, Tree__data] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__data (testTreeWand.vpr@484.11--484.78) [169808]"}
        HasDirectPerm(PostMask, sys__result, Tree__data);
    assume PostHeap[sys__result, Tree__data] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__left:=PostMask[sys__result, Tree__left] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__left (testTreeWand.vpr@485.11--485.81) [169809]"}
        HasDirectPerm(PostMask, sys__result, Tree__left);
    assume PostHeap[sys__result, Tree__left] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__right:=PostMask[sys__result, Tree__right] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__right (testTreeWand.vpr@486.11--486.83) [169810]"}
        HasDirectPerm(PostMask, sys__result, Tree__right);
    assume PostHeap[sys__result, Tree__right] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Tree__data, Tree__left, Tree__right) -- testTreeWand.vpr@491.3--491.50
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Tree__data:=Mask[diz, Tree__data] + FullPerm];
    Mask := Mask[diz, Tree__left:=Mask[diz, Tree__left] + FullPerm];
    Mask := Mask[diz, Tree__right:=Mask[diz, Tree__right] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_44 := 0 -- testTreeWand.vpr@492.3--492.20
    __flatten_44 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_84 := __flatten_44 -- testTreeWand.vpr@493.3--493.31
    __flatten_84 := __flatten_44;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__data := __flatten_84 -- testTreeWand.vpr@494.3--494.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__data (testTreeWand.vpr@494.3--494.33) [169811]"}
      FullPerm == Mask[diz, Tree__data];
    Heap := Heap[diz, Tree__data:=__flatten_84];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__left := null -- testTreeWand.vpr@495.3--495.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__left (testTreeWand.vpr@495.3--495.25) [169812]"}
      FullPerm == Mask[diz, Tree__left];
    Heap := Heap[diz, Tree__left:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__right := null -- testTreeWand.vpr@496.3--496.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__right (testTreeWand.vpr@496.3--496.26) [169813]"}
      FullPerm == Mask[diz, Tree__right];
    Heap := Heap[diz, Tree__right:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTreeWand.vpr@497.3--497.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Tree__data, write) && sys__result.Tree__data == 0 &&
  //   (acc(sys__result.Tree__left, write) && sys__result.Tree__left == null &&
  //   (acc(sys__result.Tree__right, write) && sys__result.Tree__right == null))) -- testTreeWand.vpr@498.3--498.258
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWand.vpr@498.10--498.258) [169814]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeWand.vpr@498.10--498.258) [169816]"}
        perm <= AssertMask[sys__result, Tree__data];
    }
    AssertMask := AssertMask[sys__result, Tree__data:=AssertMask[sys__result, Tree__data] - perm];
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeWand.vpr@498.10--498.258) [169817]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__data);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__data == 0 might not hold. (testTreeWand.vpr@498.10--498.258) [169818]"}
      AssertHeap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeWand.vpr@498.10--498.258) [169820]"}
        perm <= AssertMask[sys__result, Tree__left];
    }
    AssertMask := AssertMask[sys__result, Tree__left:=AssertMask[sys__result, Tree__left] - perm];
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeWand.vpr@498.10--498.258) [169821]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__left);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__left == null might not hold. (testTreeWand.vpr@498.10--498.258) [169822]"}
      AssertHeap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeWand.vpr@498.10--498.258) [169824]"}
        perm <= AssertMask[sys__result, Tree__right];
    }
    AssertMask := AssertMask[sys__result, Tree__right:=AssertMask[sys__result, Tree__right] - perm];
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeWand.vpr@498.10--498.258) [169825]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__right);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__right == null might not hold. (testTreeWand.vpr@498.10--498.258) [169826]"}
      AssertHeap[sys__result, Tree__right] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWand.vpr@499.3--499.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result != null might not hold. (testTreeWand.vpr@483.11--483.30) [169827]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__data (testTreeWand.vpr@484.11--484.78) [169828]"}
        perm <= Mask[sys__result, Tree__data];
    }
    Mask := Mask[sys__result, Tree__data:=Mask[sys__result, Tree__data] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__data == 0 might not hold. (testTreeWand.vpr@484.11--484.78) [169829]"}
      Heap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__left (testTreeWand.vpr@485.11--485.81) [169830]"}
        perm <= Mask[sys__result, Tree__left];
    }
    Mask := Mask[sys__result, Tree__left:=Mask[sys__result, Tree__left] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__left == null might not hold. (testTreeWand.vpr@485.11--485.81) [169831]"}
      Heap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__right (testTreeWand.vpr@486.11--486.83) [169832]"}
        perm <= Mask[sys__result, Tree__right];
    }
    Mask := Mask[sys__result, Tree__right:=Mask[sys__result, Tree__right] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__right == null might not hold. (testTreeWand.vpr@486.11--486.83) [169833]"}
      Heap[sys__result, Tree__right] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}